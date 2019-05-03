set clock_constraint { \
    name clk \
    module hls_video_processor \
    port ap_clk \
    period 6.6 \
    uncertainty 0.825 \
}

set all_path {}

set false_path {}

set one_path { \
    name conx_path_0 \
    type single_source \
    source { \
            module hls_video_processor \
            instance brightness_V \
            bitWidth 4 \
            type port \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_0

set one_path { \
    name conx_path_1 \
    type single_source \
    source { \
            module hls_video_processor \
            instance color_correct_V \
            bitWidth 1 \
            type port \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_1

