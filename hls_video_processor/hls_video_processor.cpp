#include "hls_video_processor.h"

const unsigned char lut_srgb_encode[256] = {0,13,22,28,34,38,42,46,50,53,56,59,61,64,66,69,71,73,75,77,79,81,83,85,86,88,90,92,93,95,96,98,99,101,102,104,105,106,108,109,110,112,113,114,115,117,118,119,120,121,122,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,148,149,150,151,152,153,154,155,155,156,157,158,159,159,160,161,162,163,163,164,165,166,167,167,168,169,170,170,171,172,173,173,174,175,175,176,177,178,178,179,180,180,181,182,182,183,184,185,185,186,187,187,188,189,189,190,190,191,192,192,193,194,194,195,196,196,197,197,198,199,199,200,200,201,202,202,203,203,204,205,205,206,206,207,208,208,209,209,210,210,211,212,212,213,213,214,214,215,215,216,216,217,218,218,219,219,220,220,221,221,222,222,223,223,224,224,225,226,226,227,227,228,228,229,229,230,230,231,231,232,232,233,233,234,234,235,235,236,236,237,237,238,238,238,239,239,240,240,241,241,242,242,243,243,244,244,245,245,246,246,246,247,247,248,248,249,249,250,250,251,251,251,252,252,253,253,254,254,255,255};
const int           lut_srgb_decode[256] = {0,1,2,4,5,6,7,9,10,11,12,14,15,16,18,19,21,23,25,27,29,31,33,35,37,40,42,45,47,50,53,56,59,62,65,69,72,75,79,83,87,90,94,99,103,107,111,116,121,125,130,135,140,145,151,156,161,167,173,178,184,190,197,203,209,216,222,229,236,243,250,257,264,272,279,287,295,303,311,319,327,336,344,353,362,371,380,389,398,408,417,427,437,447,457,467,477,488,498,509,520,531,542,553,565,576,588,600,612,624,636,649,661,674,687,699,713,726,739,753,766,780,794,808,822,837,851,866,881,896,911,926,941,957,973,989,1005,1021,1037,1053,1070,1087,1104,1121,1138,1155,1173,1190,1208,1226,1244,1263,1281,1300,1318,1337,1356,1376,1395,1415,1434,1454,1474,1494,1515,1535,1556,1577,1598,1619,1640,1662,1683,1705,1727,1749,1771,1794,1816,1839,1862,1885,1909,1932,1956,1979,2003,2027,2052,2076,2101,2126,2151,2176,2201,2227,2252,2278,2304,2330,2357,2383,2410,2437,2464,2491,2518,2546,2573,2601,2629,2658,2686,2715,2744,2773,2802,2831,2860,2890,2920,2950,2980,3011,3041,3072,3103,3134,3165,3197,3228,3260,3292,3325,3357,3390,3422,3455,3488,3522,3555,3589,3623,3657,3691,3725,3760,3795,3830,3865,3900,3936,3972,4008,4044,4080};

// correct the sRGB incoming pixel value to linear RGB color space
// note that this outputs int32 pixels in 28.4 fixed point decimal
void gamma_to_linear(rgb_img_t &src, big_rgb_img_t &dst)
{
	#pragma HLS INLINE

	HLS_SIZE_T rows = src.rows;
	HLS_SIZE_T cols = src.cols;

	pixel_t s;
	big_pixel_t d;

	loop_height: for (HLS_SIZE_T r = 0; r < rows; r++) {
		loop_width: for (HLS_SIZE_T c = 0; c < cols; c++) {
			#pragma HLS loop_flatten off
			#pragma HLS pipeline II=1

			// read a pixel
			src >> s;

			loop_channels: for (HLS_CHANNEL_T ch = 0; ch < HLS_MAT_CN(PIXEL_FORMAT); ch++) {
				#pragma HLS unroll
				d.val[ch] = lut_srgb_decode[s.val[ch]];
			}

			// store new pixel
			dst << d;
	    }
	}
}


// convert int32 big pixels to uint8 normal pixels
void int32_to_uint8(big_rgb_img_t &src, rgb_img_t &dst)
{
	#pragma HLS INLINE

	HLS_SIZE_T rows = src.rows;
	HLS_SIZE_T cols = src.cols;

	big_pixel_t s;
	pixel_t d;

	loop_height: for (HLS_SIZE_T r = 0; r < rows; r++) {
		loop_width: for (HLS_SIZE_T c = 0; c < cols; c++) {
			#pragma HLS loop_flatten off
			#pragma HLS pipeline II=1

			// read a pixel
			src >> s;

			loop_channels: for (HLS_CHANNEL_T ch = 0; ch < HLS_MAT_CN(PIXEL_FORMAT); ch++) {
				#pragma HLS unroll
				// shift for integer part of .4 fixed point, take 8 integer bits
				d.val[ch] = (s.val[ch] >> 4) & 0xFF;
			}

			// store new pixel
			dst << d;
	    }
	}
}


// gamma encode linear RGB pixels to sRGB
// note that this has both input and output as uint8 pixels
void linear_to_gamma(rgb_img_t &src, rgb_img_t &dst)
{
	#pragma HLS INLINE

	HLS_SIZE_T rows = src.rows;
	HLS_SIZE_T cols = src.cols;

	pixel_t s;
	pixel_t d;

	loop_height: for (HLS_SIZE_T r = 0; r < rows; r++) {
		loop_width: for (HLS_SIZE_T c = 0; c < cols; c++) {
			#pragma HLS loop_flatten off
			#pragma HLS pipeline II=1

			// read a pixel
			src >> s;

			loop_channels: for (HLS_CHANNEL_T ch = 0; ch < HLS_MAT_CN(PIXEL_FORMAT); ch++) {
				#pragma HLS unroll
				d.val[ch] = lut_srgb_encode[s.val[ch]];
			}

			// store new pixel
			dst << d;
	    }
	}
}


#define ROWS_CROP_OFFSET ((ROWS_INPUT-ROWS_CROP)/2)
void video_crop(rgb_img_t &src, rgb_img_t &dst)
{
	#pragma HLS INLINE

	HLS_SIZE_T rows = src.rows;
	HLS_SIZE_T cols = src.cols;
	pixel_t p;

	loop_height: for (HLS_SIZE_T r = 0; r < rows; r++) {
		#pragma HLS loop_tripcount min=1080 max=1080
		loop_width: for (HLS_SIZE_T c = 0; c < cols; c++) {
			#pragma HLS loop_tripcount min=1920 max=1920
			#pragma HLS loop_flatten off
			#pragma HLS pipeline II=1

			src >> p;
			// assume that we only crop rows
			if(r >= ROWS_CROP_OFFSET && r < ROWS_CROP + ROWS_CROP_OFFSET) {
				dst << p;
			}
		}
	}
}


// dim the video by adjusting brightness perceptually
// multiply pixel values by array value 0..256 and divide by 256 = 2^8
// array has 16 brightness levels in visually equal increments
// from 25% (perceptual) to 100%, not linear
// additionally, also color correct the white point
const int lut_perceptual_brightness[] = {12, 18, 25, 34, 44, 56, 69, 83, 99, 117, 136, 157, 179, 203, 229, 256};
const int lut_perceptual_brightness_adjusted_g[] = {8, 12, 18, 24, 30, 38, 47, 57, 68, 81, 94, 108, 124, 140, 158, 177};
const int lut_perceptual_brightness_adjusted_b[] = {11, 17, 24, 32, 42, 52, 65, 78, 93, 110, 128, 147, 169, 191, 215, 241};
void brightness_color_adjust(big_rgb_img_t &src, big_rgb_img_t &dst, ap_uint<4> brightness_index, ap_uint<1> color_correct)
{
	HLS_SIZE_T rows = src.rows;
	HLS_SIZE_T cols = src.cols;
	big_pixel_t s;
	big_pixel_t d;

	int scale_r, scale_g, scale_b;

	if(color_correct) {
		scale_r = lut_perceptual_brightness[brightness_index];
		scale_g = lut_perceptual_brightness_adjusted_g[brightness_index];
		scale_b = lut_perceptual_brightness_adjusted_b[brightness_index];
	} else {
		scale_r = lut_perceptual_brightness[brightness_index];
		scale_g = lut_perceptual_brightness[brightness_index];
		scale_b = lut_perceptual_brightness[brightness_index];
	}

	loop_height: for (HLS_SIZE_T r = 0; r < rows; r++) {
		loop_width: for (HLS_SIZE_T c = 0; c < cols; c++) {
			#pragma HLS loop_flatten off

			// we only have to do this at most every 32 pixels
			// as this function processes the post-scaling output
			#pragma HLS pipeline II=32

			src >> s;

			// scale and divide by 256 = 2^8
			// pixels are in GBR order
			d.val[0] = (scale_g * s.val[0]) >> 8;
			d.val[1] = (scale_b * s.val[1]) >> 8;
			d.val[2] = (scale_r * s.val[2]) >> 8;

			dst << d;
		}
	}
}


// downscale by 32 = 2^5 by averaging pixels in each 32x32 block of the input image
void video_scale(big_rgb_img_t &src, big_rgb_img_t &dst)
{
//#pragma HLS INLINE
	HLS_SIZE_T rows = src.rows;
	HLS_SIZE_T cols = src.cols;
	big_pixel_t s;
	big_pixel_t d;
	big_pixel_t sums[COLS_OUTPUT];
	big_pixel_t current_sum;

#ifndef __SYNTHESIS__
	// in simulation, check that memory constraints needed
	// for synthesis are actually achieved - no immediate
	// reads after writes to the same index of sums[]
	int last_write_index = -1;
#endif

	// initialize to zero
	loop_channels_init_zero: for (HLS_SIZE_T c = 0; c < COLS_OUTPUT; c++) {
		sums[c] = big_pixel_t(0, 0, 0);
	}


	// loop over array
	loop_height: for (HLS_SIZE_T r = 0; r < rows; r++) {
		loop_width: for (HLS_SIZE_T c = 0; c < cols; c++) {
			#pragma HLS loop_flatten off

			// there's a lot of memory reading optimizations
			// used here in order to achieve II=1
			#pragma HLS pipeline II=1

			// we never need to read from and write to the same
			// index of 'sums' in consecutive loop iterations
			// ('col_index' below will always be different)
			#pragma HLS DEPENDENCE variable=sums inter RAW distance=2

			// divide by 32 to get index into sum buffer
			HLS_SIZE_T col_index = c >> 5;

			// upon the start of each new output column, we read
			// the current sum for that column (of all rows in the
			// 32x32 tile above the current row
			if((c & (32-1)) == 0) {
				current_sum = sums[col_index];
#ifndef __SYNTHESIS__
				if(col_index == last_write_index) {
					printf("error: col_index = last_write_index = %d\n", last_write_index);
					std::cout << r << " " << c << std::endl;
				}
				assert(col_index != last_write_index && "invalid read after write!");
#endif
			}

			// read and accumulate input
			src >> s;
			loop_channels_sum: for (HLS_CHANNEL_T ch = 0; ch < HLS_MAT_CN(PIXEL_FORMAT); ch++) {
				#pragma HLS unroll
				current_sum.val[ch] += s.val[ch];
			}

			// upon the end of each output column, we store
			// the current sum back into the buffer of sums
			if((c & (32-1)) == (32-1)) {
				// however, if we're also at the end of our output row,
				// we instead need to output the average and zero the sum
				if((r & (32-1)) == (32-1)) {
					loop_channels_divide: for (HLS_CHANNEL_T ch = 0; ch < HLS_MAT_CN(PIXEL_FORMAT); ch++) {
						#pragma HLS unroll
						d.val[ch] = current_sum.val[ch] >> 10; // divide by 2^10 = 32x32
					}

					// write output
					dst << d;

					// reset sum
					sums[col_index] = big_pixel_t(0, 0, 0);
#ifndef __SYNTHESIS__
					last_write_index = col_index;
#endif
				} else {
					// store the current sum back into the array
					sums[col_index] = current_sum;
#ifndef __SYNTHESIS__
					last_write_index = col_index;
#endif
				}
			}
		}
	}
}


// main function for synthesis
void hls_video_processor(stream_t &stream_in, stream_t &stream_out, ap_uint<4> brightness, ap_uint<1> color_correct)
{
	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis register both port=stream_in
	#pragma HLS INTERFACE axis register both port=stream_out
	#pragma HLS INTERFACE ap_stable port=brightness
	#pragma HLS INTERFACE ap_stable port=color_correct

	#pragma HLS DATAFLOW

	rgb_img_t img_input(ROWS_INPUT, COLS_INPUT);
	rgb_img_t img_crop(ROWS_CROP, COLS_CROP);

	big_rgb_img_t img_nogamma(ROWS_CROP, COLS_CROP);
	big_rgb_img_t img_scaled(ROWS_OUTPUT, COLS_OUTPUT);
	big_rgb_img_t img_adjusted(ROWS_OUTPUT, COLS_OUTPUT);

	rgb_img_t img_out(ROWS_OUTPUT, COLS_OUTPUT);
	//rgb_img_t img_out_srgb(ROWS_OUTPUT, COLS_OUTPUT);

	//transforms stream to matrix
	hls::AXIvideo2Mat(stream_in, img_input);

	// crop extra pixels
	video_crop(img_input, img_crop);

	//apply gamma correction
	gamma_to_linear(img_crop, img_nogamma);

	// scale image
	video_scale(img_nogamma, img_scaled);

	// scale image brightness
	brightness_color_adjust(img_scaled, img_adjusted, brightness, color_correct);

	// convert to 8 bit
	int32_to_uint8(img_adjusted, img_out);

	// optional gamma encode (this is unnecessary)
	//linear_to_gamma(img_out, img_out_srgb);

	//transform resulting matrix to output stream
	hls::Mat2AXIvideo(img_out, stream_out);
	//hls::Mat2AXIvideo(img_out_srgb, stream_out);

#ifndef __SYNTHESIS__
	assert(img_input.empty() 	&& "img_input not empty!");
	assert(img_crop.empty() 	&& "img_crop not empty!");
	assert(img_nogamma.empty() 	&& "img_nogamma not empty!");
	assert(img_scaled.empty() 	&& "img_scaled not empty!");
	assert(img_adjusted.empty() && "img_brightnessed not empty!");
	assert(img_out.empty() 		&& "img_out not empty!");
#endif
}
