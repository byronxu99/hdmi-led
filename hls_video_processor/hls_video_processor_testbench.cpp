#include "hls_video_processor.h"
#include <hls_opencv.h>


// These functions are used for creating the sRGB lookup tables
// hard-coded in hls_video_processor.cpp

// uint8 linear value to uint8 gamma encoded
void srgb_gamma_encode()
{
	unsigned char lut[256];

	printf("{");
	for (unsigned int i = 0; i < 256; i++)
	{
		float i_norm = (float)i / 255.0f;
		float i_gamma = 0;
		if(i_norm < 0.0031308f) {
			i_gamma = 12.92f * i_norm;
		} else {
			i_gamma = 1.055f * pow(i_norm, 1.0f/2.4f) - 0.055f;
		}
		//printf("%d %f %f\n", i, i_norm, i_gamma);
		lut[i] = cv::saturate_cast<unsigned char>(round(i_gamma * 255.0f));
		printf("%d,", lut[i]);
	}
	printf("};\n");
}

// uint8 gamma encoded value to int32 28.4 fixed point linear
void srgb_gamma_decode()
{
	int lut[256];

	printf("{");
	for (unsigned int i = 0; i < 256; i++)
	{
		float i_norm = (float)i / 255.0f;
		float i_lin = 0;
		if(i_norm < 0.04045f) {
			i_lin = i_norm / 12.92f;
		} else {
			i_lin = pow((i_norm+0.055f)/1.055f, 2.4f);
		}
		lut[i] = (int)(round(i_lin * 255.0f * (1<<4)));
		printf("%d,", lut[i]);
	}
	printf("};\n");
}


// Software reference for cropping
cv::Mat crop_image_1920_1080(cv::Mat &im)
{
	cv::Mat out(ROWS_CROP, COLS_CROP, CV_8UC3);
	for(int r=0; r<ROWS_CROP; r++) {
		for(int c=0; c<COLS_CROP; c++) {
			out.at<cv::Vec3b>(r, c) = im.at<cv::Vec3b>(r + ((ROWS_INPUT-ROWS_CROP)/2), c);
		}
	}
	return out;
}

// A software reference function for scaling
// Note that this doesn't perform gamma correction, so
// the colors in the output will look different
void scale_c_reference()
{
	int const rows = ROWS_INPUT;
	int const cols = COLS_INPUT;
	int const rows_out = ROWS_OUTPUT;
	int const cols_out = COLS_OUTPUT;

	cv::Mat input = cv::imread(INPUT_IMAGE);
	cv::Mat src = crop_image_1920_1080(input);

	// copy a section of the right size to make the output image
	cv::Mat dst(rows_out, cols_out, CV_8UC3);

	for(int r=0; r<rows_out; r++) {
		for(int c=0; c<cols_out; c++) {
			cv::Vec3i sum(0, 0, 0);
			for(int rr=0; rr<32; rr++) {
				for(int cc=0; cc<32; cc++) {
					sum += src.at<cv::Vec3b>(r*32+rr, c*32+cc);
				}
			}
			dst.at<cv::Vec3b>(r, c) = sum/(32*32);
		}
	}
	cv::imwrite(OUTPUT_REFERENCE_IMAGE, dst);
}


// Main testbench
void hls_video_processor_test()
{
	cv::Mat src = cv::imread(INPUT_IMAGE);
	cv::Mat dst(ROWS_OUTPUT, COLS_OUTPUT, CV_8UC3);
	ap_uint<4> brightness = 0xF;
	ap_uint<1> color_correct = 1;

	stream_t stream_in("stream_in");
	stream_t stream_out("stream_out");

	cvMat2AXIvideo(src, stream_in);
	hls_video_processor(stream_in, stream_out, brightness, color_correct);
	AXIvideo2cvMat(stream_out, dst);

	cv::imwrite(OUTPUT_IMAGE,dst);
}


int main()
{
	// Uncomment to generate the lookup tables
	//srgb_gamma_encode();
	//srgb_gamma_decode();

	scale_c_reference();
	hls_video_processor_test();

	return 0;
}
