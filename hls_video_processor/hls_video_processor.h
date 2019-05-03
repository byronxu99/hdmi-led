#ifndef HLS_VIDEO_PROCESSOR_H_
#define HLS_VIDEO_PROCESSOR_H_

#include <hls_stream.h>
#include <hls_video.h>

// parameters
#define MAX_WIDTH  1920
#define MAX_HEIGHT 1080
#define ROWS_INPUT 1080
#define COLS_INPUT 1920
#define ROWS_CROP (30*32)
#define COLS_CROP (60*32)
#define ROWS_OUTPUT 30
#define COLS_OUTPUT 60

// testbench
#define INPUT_IMAGE "test_img/rover.png"
#define OUTPUT_IMAGE "test_img/rover_out.png"
#define OUTPUT_REFERENCE_IMAGE "test_img/rover_out_ref.png"

// data types
typedef ap_axiu<24,1,1,1> axis_video_t;
typedef hls::stream<axis_video_t> stream_t;

// 8 bit pixel format 0..255
#define PIXEL_FORMAT HLS_8UC3
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, PIXEL_FORMAT> rgb_img_t;
typedef hls::Scalar<HLS_MAT_CN(PIXEL_FORMAT), HLS_TNAME(PIXEL_FORMAT)> pixel_t;

// 32 bit pixel format 0..4095
// Convert to 8 bit by dividing by 2^4 (>> 4) and truncating most significant digits
#define BIG_PIXEL_FORMAT HLS_32SC3
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, BIG_PIXEL_FORMAT> big_rgb_img_t;
typedef hls::Scalar<HLS_MAT_CN(BIG_PIXEL_FORMAT), HLS_TNAME(BIG_PIXEL_FORMAT)> big_pixel_t;

// main function for synthesis
// brightness = 4-bit unsigned integer selecting which brightness level to use
// color_correct = 1-bit value of whether to perform white-point correction or not
void hls_video_processor(stream_t &stream_in, stream_t &stream_out, ap_uint<4> brightness, ap_uint<1> color_correct);

#endif
