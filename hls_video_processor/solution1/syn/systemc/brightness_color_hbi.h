// ==============================================================
// File generated on Thu Apr 25 22:46:37 -0400 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __brightness_color_hbi_H__
#define __brightness_color_hbi_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct brightness_color_hbi_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(brightness_color_hbi_ram) {
        ram[0] = "0b00001011";
        ram[1] = "0b00010001";
        ram[2] = "0b00011000";
        ram[3] = "0b00100000";
        ram[4] = "0b00101010";
        ram[5] = "0b00110100";
        ram[6] = "0b01000001";
        ram[7] = "0b01001110";
        ram[8] = "0b01011101";
        ram[9] = "0b01101110";
        ram[10] = "0b10000000";
        ram[11] = "0b10010011";
        ram[12] = "0b10101001";
        ram[13] = "0b10111111";
        ram[14] = "0b11010111";
        ram[15] = "0b11110001";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(brightness_color_hbi) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


brightness_color_hbi_ram* meminst;


SC_CTOR(brightness_color_hbi) {
meminst = new brightness_color_hbi_ram("brightness_color_hbi_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~brightness_color_hbi() {
    delete meminst;
}


};//endmodule
#endif
