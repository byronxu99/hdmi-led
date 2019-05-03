# FPGA LED Driver
This is a program designed to control a 60x30 LED array using a HDMI video input. Running on a [Pynq Z2](http://www.tul.com.tw/ProductsPYNQ-Z2.html) FPGA, it receives a 1920x1080 video stream, processes it, and outputs the waveform needed to communicate with a series of WS2812B individually addressable LEDs. The goal is to be able to use the LED array like any HDMI external monitor, without a need for special software on the computer side.

Features include
* Real-time video scaling and cropping from 1920x1080 to 60x30
* Triple buffering for smooth handling of different input and output frame rates
* Gamma correction
* Color correction (see [FastLED](https://github.com/FastLED/FastLED/wiki/FastLED-Color-Correction))
* Adjustable output brightness levels

![Picture](https://i.imgur.com/FAmBwoM.jpg)

For another (unrelated) LED array driver, see [led-curtain-2](https://github.com/itf/led-curtain-2).

## Design
* The Zynq processing system initializes the FPGA fabric and generates a 150MHz clock signal.
* HDMI input is decoded to RGB video data by an IP block from the Diligent Vivado Library.
* RGB video is converted to native AXI-Stream video with a Xilinx IP block, crossing clock domains from HDMI pixel clock to FPGA clock.
* The `hls_video_processor` handles crop, scale, gamma correction, color correction, and brightness adjustment operations.
* Incoming pixels are stored into a buffer in the `triple_buffer` module.
* On the outgoing end, the `matrix_controller` generates the necessary buffer locations to read for the next pixel, reversing rows when needed to match the physial array layout.
* The `ws2812b_driver` generates output waveforms to communicate pixel data to the LED strip
* The `user_input` module receives button and switch input and sets inputs to other modules accordingly.

![Block Design](https://i.imgur.com/ZkUan8F.png)

## Development
Prerequisites
* Install Xilinx's [Vivado Design Suite](https://www.xilinx.com/products/design-tools/vivado.html).
* Download the [Diligent Vivado Library](https://github.com/Digilent/vivado-library) and add it to Vivado's IP catalog.
* The [Pynq Z2 site](www.tul.com.tw/ProductsPYNQ-Z2.html) has board files and XDC constraints files available for download.

Vivado HLS
* A good deal of the video processing pipeline is implemented in C++ with [HLS](https://www.xilinx.com/products/design-tools/vivado/integration/esl-design.html).
* C++ source and testbench files are contained in the `hls_video_processor` directory.
* AFter synthesizing to RTL, export the IP for use in the next step.

Vivado
* The main block design brings together IP blocks from the Diligent library, the HLS block, and Verilog modules.
* After generating the bitstream, export hardware for use in Xilinx SDK.

Xilinx SDK
* The SDK is used for creating the initialization code, generating a boot image, and programming the Pynq Z2 board.
* The first-stage bootloader (FSBL) template will initialize a CPU core and load the bitstream. This is all we need, as there's no software component to the LED driver.
* After debugging is done, generate a boot image and program it to non-volatile flash memory.

## Future Work
Potential future improvements
* Parallel output to multiple LED strips. With 60x30 LEDs in series, FPS is limited to around 20. Separating the display into multiple regions and driving multiple LED strips simultaneously will allow for 60 fps video.
* Different LED array sizes. It's currently hard-coded to 60x30. Changing this will require changes in both HLS and Verilog components.

