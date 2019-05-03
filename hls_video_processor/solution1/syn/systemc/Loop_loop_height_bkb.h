// ==============================================================
// File generated on Thu Apr 25 22:46:36 -0400 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __Loop_loop_height_bkb_H__
#define __Loop_loop_height_bkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Loop_loop_height_bkb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 12;
  static const unsigned AddressRange = 256;
  static const unsigned AddressWidth = 8;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in <sc_lv<AddressWidth> > address2;
sc_core::sc_in <sc_logic> ce2;
sc_core::sc_out <sc_lv<DataWidth> > q2;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(Loop_loop_height_bkb_ram) {
        ram[0] = "0b000000000000";
        ram[1] = "0b000000000001";
        ram[2] = "0b000000000010";
        ram[3] = "0b000000000100";
        ram[4] = "0b000000000101";
        ram[5] = "0b000000000110";
        ram[6] = "0b000000000111";
        ram[7] = "0b000000001001";
        ram[8] = "0b000000001010";
        ram[9] = "0b000000001011";
        ram[10] = "0b000000001100";
        ram[11] = "0b000000001110";
        ram[12] = "0b000000001111";
        ram[13] = "0b000000010000";
        ram[14] = "0b000000010010";
        ram[15] = "0b000000010011";
        ram[16] = "0b000000010101";
        ram[17] = "0b000000010111";
        ram[18] = "0b000000011001";
        ram[19] = "0b000000011011";
        ram[20] = "0b000000011101";
        ram[21] = "0b000000011111";
        ram[22] = "0b000000100001";
        ram[23] = "0b000000100011";
        ram[24] = "0b000000100101";
        ram[25] = "0b000000101000";
        ram[26] = "0b000000101010";
        ram[27] = "0b000000101101";
        ram[28] = "0b000000101111";
        ram[29] = "0b000000110010";
        ram[30] = "0b000000110101";
        ram[31] = "0b000000111000";
        ram[32] = "0b000000111011";
        ram[33] = "0b000000111110";
        ram[34] = "0b000001000001";
        ram[35] = "0b000001000101";
        ram[36] = "0b000001001000";
        ram[37] = "0b000001001011";
        ram[38] = "0b000001001111";
        ram[39] = "0b000001010011";
        ram[40] = "0b000001010111";
        ram[41] = "0b000001011010";
        ram[42] = "0b000001011110";
        ram[43] = "0b000001100011";
        ram[44] = "0b000001100111";
        ram[45] = "0b000001101011";
        ram[46] = "0b000001101111";
        ram[47] = "0b000001110100";
        ram[48] = "0b000001111001";
        ram[49] = "0b000001111101";
        ram[50] = "0b000010000010";
        ram[51] = "0b000010000111";
        ram[52] = "0b000010001100";
        ram[53] = "0b000010010001";
        ram[54] = "0b000010010111";
        ram[55] = "0b000010011100";
        ram[56] = "0b000010100001";
        ram[57] = "0b000010100111";
        ram[58] = "0b000010101101";
        ram[59] = "0b000010110010";
        ram[60] = "0b000010111000";
        ram[61] = "0b000010111110";
        ram[62] = "0b000011000101";
        ram[63] = "0b000011001011";
        ram[64] = "0b000011010001";
        ram[65] = "0b000011011000";
        ram[66] = "0b000011011110";
        ram[67] = "0b000011100101";
        ram[68] = "0b000011101100";
        ram[69] = "0b000011110011";
        ram[70] = "0b000011111010";
        ram[71] = "0b000100000001";
        ram[72] = "0b000100001000";
        ram[73] = "0b000100010000";
        ram[74] = "0b000100010111";
        ram[75] = "0b000100011111";
        ram[76] = "0b000100100111";
        ram[77] = "0b000100101111";
        ram[78] = "0b000100110111";
        ram[79] = "0b000100111111";
        ram[80] = "0b000101000111";
        ram[81] = "0b000101010000";
        ram[82] = "0b000101011000";
        ram[83] = "0b000101100001";
        ram[84] = "0b000101101010";
        ram[85] = "0b000101110011";
        ram[86] = "0b000101111100";
        ram[87] = "0b000110000101";
        ram[88] = "0b000110001110";
        ram[89] = "0b000110011000";
        ram[90] = "0b000110100001";
        ram[91] = "0b000110101011";
        ram[92] = "0b000110110101";
        ram[93] = "0b000110111111";
        ram[94] = "0b000111001001";
        ram[95] = "0b000111010011";
        ram[96] = "0b000111011101";
        ram[97] = "0b000111101000";
        ram[98] = "0b000111110010";
        ram[99] = "0b000111111101";
        ram[100] = "0b001000001000";
        ram[101] = "0b001000010011";
        ram[102] = "0b001000011110";
        ram[103] = "0b001000101001";
        ram[104] = "0b001000110101";
        ram[105] = "0b001001000000";
        ram[106] = "0b001001001100";
        ram[107] = "0b001001011000";
        ram[108] = "0b001001100100";
        ram[109] = "0b001001110000";
        ram[110] = "0b001001111100";
        ram[111] = "0b001010001001";
        ram[112] = "0b001010010101";
        ram[113] = "0b001010100010";
        ram[114] = "0b001010101111";
        ram[115] = "0b001010111011";
        ram[116] = "0b001011001001";
        ram[117] = "0b001011010110";
        ram[118] = "0b001011100011";
        ram[119] = "0b001011110001";
        ram[120] = "0b001011111110";
        ram[121] = "0b001100001100";
        ram[122] = "0b001100011010";
        ram[123] = "0b001100101000";
        ram[124] = "0b001100110110";
        ram[125] = "0b001101000101";
        ram[126] = "0b001101010011";
        ram[127] = "0b001101100010";
        ram[128] = "0b001101110001";
        ram[129] = "0b001110000000";
        ram[130] = "0b001110001111";
        ram[131] = "0b001110011110";
        ram[132] = "0b001110101101";
        ram[133] = "0b001110111101";
        ram[134] = "0b001111001101";
        ram[135] = "0b001111011101";
        ram[136] = "0b001111101101";
        ram[137] = "0b001111111101";
        ram[138] = "0b010000001101";
        ram[139] = "0b010000011101";
        ram[140] = "0b010000101110";
        ram[141] = "0b010000111111";
        ram[142] = "0b010001010000";
        ram[143] = "0b010001100001";
        ram[144] = "0b010001110010";
        ram[145] = "0b010010000011";
        ram[146] = "0b010010010101";
        ram[147] = "0b010010100110";
        ram[148] = "0b010010111000";
        ram[149] = "0b010011001010";
        ram[150] = "0b010011011100";
        ram[151] = "0b010011101111";
        ram[152] = "0b010100000001";
        ram[153] = "0b010100010100";
        ram[154] = "0b010100100110";
        ram[155] = "0b010100111001";
        ram[156] = "0b010101001100";
        ram[157] = "0b010101100000";
        ram[158] = "0b010101110011";
        ram[159] = "0b010110000111";
        ram[160] = "0b010110011010";
        ram[161] = "0b010110101110";
        ram[162] = "0b010111000010";
        ram[163] = "0b010111010110";
        ram[164] = "0b010111101011";
        ram[165] = "0b010111111111";
        ram[166] = "0b011000010100";
        ram[167] = "0b011000101001";
        ram[168] = "0b011000111110";
        ram[169] = "0b011001010011";
        ram[170] = "0b011001101000";
        ram[171] = "0b011001111110";
        ram[172] = "0b011010010011";
        ram[173] = "0b011010101001";
        ram[174] = "0b011010111111";
        ram[175] = "0b011011010101";
        ram[176] = "0b011011101011";
        ram[177] = "0b011100000010";
        ram[178] = "0b011100011000";
        ram[179] = "0b011100101111";
        ram[180] = "0b011101000110";
        ram[181] = "0b011101011101";
        ram[182] = "0b011101110101";
        ram[183] = "0b011110001100";
        ram[184] = "0b011110100100";
        ram[185] = "0b011110111011";
        ram[186] = "0b011111010011";
        ram[187] = "0b011111101011";
        ram[188] = "0b100000000100";
        ram[189] = "0b100000011100";
        ram[190] = "0b100000110101";
        ram[191] = "0b100001001110";
        ram[192] = "0b100001100111";
        ram[193] = "0b100010000000";
        ram[194] = "0b100010011001";
        ram[195] = "0b100010110011";
        ram[196] = "0b100011001100";
        ram[197] = "0b100011100110";
        ram[198] = "0b100100000000";
        ram[199] = "0b100100011010";
        ram[200] = "0b100100110101";
        ram[201] = "0b100101001111";
        ram[202] = "0b100101101010";
        ram[203] = "0b100110000101";
        ram[204] = "0b100110100000";
        ram[205] = "0b100110111011";
        ram[206] = "0b100111010110";
        ram[207] = "0b100111110010";
        ram[208] = "0b101000001101";
        ram[209] = "0b101000101001";
        ram[210] = "0b101001000101";
        ram[211] = "0b101001100010";
        ram[212] = "0b101001111110";
        ram[213] = "0b101010011011";
        ram[214] = "0b101010111000";
        ram[215] = "0b101011010101";
        ram[216] = "0b101011110010";
        ram[217] = "0b101100001111";
        ram[218] = "0b101100101100";
        ram[219] = "0b101101001010";
        ram[220] = "0b101101101000";
        ram[221] = "0b101110000110";
        ram[222] = "0b101110100100";
        ram[223] = "0b101111000011";
        ram[224] = "0b101111100001";
        ram[225] = "0b110000000000";
        ram[226] = "0b110000011111";
        ram[227] = "0b110000111110";
        ram[228] = "0b110001011101";
        ram[229] = "0b110001111101";
        ram[230] = "0b110010011100";
        ram[231] = "0b110010111100";
        ram[232] = "0b110011011100";
        ram[233] = "0b110011111101";
        ram[234] = "0b110100011101";
        ram[235] = "0b110100111110";
        ram[236] = "0b110101011110";
        ram[237] = "0b110101111111";
        ram[238] = "0b110110100000";
        ram[239] = "0b110111000010";
        ram[240] = "0b110111100011";
        ram[241] = "0b111000000101";
        ram[242] = "0b111000100111";
        ram[243] = "0b111001001001";
        ram[244] = "0b111001101011";
        ram[245] = "0b111010001101";
        ram[246] = "0b111010110000";
        ram[247] = "0b111011010011";
        ram[248] = "0b111011110110";
        ram[249] = "0b111100011001";
        ram[250] = "0b111100111100";
        ram[251] = "0b111101100000";
        ram[252] = "0b111110000100";
        ram[253] = "0b111110101000";
        ram[254] = "0b111111001100";
        ram[255] = "0b111111110000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
  sensitive<<clk.pos();


SC_METHOD(prc_write_2);
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


void prc_write_1()
{
    if (ce1.read() == sc_dt::Log_1) 
    {
            if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
              q1 = ram[address1.read().to_uint()];
            else
              q1 = sc_lv<DataWidth>();
    }
}


void prc_write_2()
{
    if (ce2.read() == sc_dt::Log_1) 
    {
            if(address2.read().is_01() && address2.read().to_uint()<AddressRange)
              q2 = ram[address2.read().to_uint()];
            else
              q2 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(Loop_loop_height_bkb) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 256;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in <sc_lv<AddressWidth> > address2;
sc_core::sc_in<sc_logic> ce2;
sc_core::sc_out <sc_lv<DataWidth> > q2;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Loop_loop_height_bkb_ram* meminst;


SC_CTOR(Loop_loop_height_bkb) {
meminst = new Loop_loop_height_bkb_ram("Loop_loop_height_bkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->address2(address2);
meminst->ce2(ce2);
meminst->q2(q2);

meminst->reset(reset);
meminst->clk(clk);
}
~Loop_loop_height_bkb() {
    delete meminst;
}


};//endmodule
#endif
