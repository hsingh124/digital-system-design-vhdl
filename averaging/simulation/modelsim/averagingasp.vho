-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "05/19/2021 17:54:27"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lulu_smoother IS
    PORT (
	clk : IN std_logic;
	data_in : IN std_logic_vector(15 DOWNTO 0);
	data_out : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END lulu_smoother;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[8]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[9]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[10]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[11]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[12]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[13]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[14]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[15]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lulu_smoother IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \u2|Decoder1~1_combout\ : std_logic;
SIGNAL \u2|Decoder1~0_combout\ : std_logic;
SIGNAL \l1|sig_arr[1][15]~q\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[1][14]~q\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[1][13]~feeder_combout\ : std_logic;
SIGNAL \l1|sig_arr[1][13]~q\ : std_logic;
SIGNAL \l1|LessThan2~10_combout\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[0][9]~q\ : std_logic;
SIGNAL \l1|sig_arr[1][9]~q\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[1][12]~q\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[1][11]~q\ : std_logic;
SIGNAL \l1|sig_arr[0][13]~q\ : std_logic;
SIGNAL \l1|sig_arr[0][14]~q\ : std_logic;
SIGNAL \l1|sig_arr[0][15]~q\ : std_logic;
SIGNAL \l1|sig_arr[0][12]~q\ : std_logic;
SIGNAL \l1|temp_min~7_combout\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[1][10]~q\ : std_logic;
SIGNAL \l1|sig_arr[0][10]~q\ : std_logic;
SIGNAL \l1|temp_min~9_combout\ : std_logic;
SIGNAL \l1|sig_arr[0][11]~q\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[0][8]~q\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[0][5]~q\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[0][6]~q\ : std_logic;
SIGNAL \l1|LessThan1~3_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[0][1]~q\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[0][0]~q\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[0][2]~q\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[0][3]~q\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[0][7]~q\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \l1|sig_arr[0][4]~q\ : std_logic;
SIGNAL \l1|LessThan1~2_combout\ : std_logic;
SIGNAL \l1|LessThan1~0_combout\ : std_logic;
SIGNAL \l1|temp_min~8_combout\ : std_logic;
SIGNAL \l1|LessThan2~18_combout\ : std_logic;
SIGNAL \l1|LessThan1~1_combout\ : std_logic;
SIGNAL \l1|sig_arr[1][7]~q\ : std_logic;
SIGNAL \l1|LessThan2~6_combout\ : std_logic;
SIGNAL \l1|temp_min~6_combout\ : std_logic;
SIGNAL \l1|sig_arr[1][8]~q\ : std_logic;
SIGNAL \l1|temp_min~5_combout\ : std_logic;
SIGNAL \l1|LessThan2~19_combout\ : std_logic;
SIGNAL \l1|LessThan2~5_combout\ : std_logic;
SIGNAL \l1|LessThan2~12_combout\ : std_logic;
SIGNAL \l1|LessThan2~4_combout\ : std_logic;
SIGNAL \l1|LessThan2~20_combout\ : std_logic;
SIGNAL \l1|LessThan2~9_combout\ : std_logic;
SIGNAL \l1|sig_arr[1][4]~q\ : std_logic;
SIGNAL \l1|temp_min~0_combout\ : std_logic;
SIGNAL \l1|sig_arr[1][6]~q\ : std_logic;
SIGNAL \l1|sig_arr[1][5]~q\ : std_logic;
SIGNAL \l1|LessThan2~15_combout\ : std_logic;
SIGNAL \l1|LessThan2~3_combout\ : std_logic;
SIGNAL \l1|temp_min~3_combout\ : std_logic;
SIGNAL \l1|sig_arr[1][2]~q\ : std_logic;
SIGNAL \l1|sig_arr[1][0]~q\ : std_logic;
SIGNAL \l1|sig_arr[1][1]~q\ : std_logic;
SIGNAL \l1|LessThan2~13_combout\ : std_logic;
SIGNAL \l1|LessThan2~1_combout\ : std_logic;
SIGNAL \l1|sig_arr[1][3]~q\ : std_logic;
SIGNAL \l1|temp_min~4_combout\ : std_logic;
SIGNAL \l1|LessThan2~2_combout\ : std_logic;
SIGNAL \l1|LessThan2~14_combout\ : std_logic;
SIGNAL \l1|LessThan2~0_combout\ : std_logic;
SIGNAL \l1|LessThan2~16_combout\ : std_logic;
SIGNAL \l1|LessThan2~17_combout\ : std_logic;
SIGNAL \l1|LessThan2~7_combout\ : std_logic;
SIGNAL \l1|LessThan2~8_combout\ : std_logic;
SIGNAL \l1|temp_min~11_combout\ : std_logic;
SIGNAL \u2|Decoder1~2_combout\ : std_logic;
SIGNAL \l1|sig_arr[2][6]~q\ : std_logic;
SIGNAL \l1|sig_arr[2][5]~q\ : std_logic;
SIGNAL \l1|sig_arr[2][7]~q\ : std_logic;
SIGNAL \l1|LessThan3~12_combout\ : std_logic;
SIGNAL \l1|temp_min~1_combout\ : std_logic;
SIGNAL \l1|temp_min~2_combout\ : std_logic;
SIGNAL \l1|LessThan3~13_combout\ : std_logic;
SIGNAL \l1|LessThan3~0_combout\ : std_logic;
SIGNAL \l1|sig_arr[2][2]~q\ : std_logic;
SIGNAL \l1|sig_arr[2][3]~q\ : std_logic;
SIGNAL \l1|LessThan3~14_combout\ : std_logic;
SIGNAL \l1|LessThan3~15_combout\ : std_logic;
SIGNAL \l1|LessThan3~4_combout\ : std_logic;
SIGNAL \l1|LessThan3~16_combout\ : std_logic;
SIGNAL \l1|LessThan3~17_combout\ : std_logic;
SIGNAL \l1|LessThan3~5_combout\ : std_logic;
SIGNAL \l1|sig_arr[2][4]~q\ : std_logic;
SIGNAL \l1|sig_arr[2][1]~q\ : std_logic;
SIGNAL \l1|temp_min~15_combout\ : std_logic;
SIGNAL \l1|LessThan3~1_combout\ : std_logic;
SIGNAL \l1|LessThan3~2_combout\ : std_logic;
SIGNAL \l1|sig_arr[2][0]~q\ : std_logic;
SIGNAL \l1|temp_min~10_combout\ : std_logic;
SIGNAL \l1|LessThan3~3_combout\ : std_logic;
SIGNAL \l1|LessThan3~6_combout\ : std_logic;
SIGNAL \l1|sig_arr[2][15]~q\ : std_logic;
SIGNAL \l1|sig_arr[2][14]~q\ : std_logic;
SIGNAL \l1|sig_arr[2][13]~feeder_combout\ : std_logic;
SIGNAL \l1|sig_arr[2][13]~q\ : std_logic;
SIGNAL \l1|LessThan3~11_combout\ : std_logic;
SIGNAL \l1|sig_arr[2][8]~q\ : std_logic;
SIGNAL \l1|sig_arr[2][9]~q\ : std_logic;
SIGNAL \l1|LessThan2~11_combout\ : std_logic;
SIGNAL \l1|temp_min~21_combout\ : std_logic;
SIGNAL \l1|sig_arr[2][12]~q\ : std_logic;
SIGNAL \l1|sig_arr[2][11]~q\ : std_logic;
SIGNAL \l1|temp_min~18_combout\ : std_logic;
SIGNAL \l1|sig_arr[2][10]~q\ : std_logic;
SIGNAL \l1|temp_min~19_combout\ : std_logic;
SIGNAL \l1|temp_min~20_combout\ : std_logic;
SIGNAL \l1|LessThan3~7_combout\ : std_logic;
SIGNAL \l1|temp_min~17_combout\ : std_logic;
SIGNAL \l1|LessThan3~8_combout\ : std_logic;
SIGNAL \l1|LessThan3~9_combout\ : std_logic;
SIGNAL \l1|LessThan3~10_combout\ : std_logic;
SIGNAL \l1|temp_min~33_combout\ : std_logic;
SIGNAL \l1|l_arr[0][8]~q\ : std_logic;
SIGNAL \l1|l_arr[1][8]~q\ : std_logic;
SIGNAL \l1|temp_min~32_combout\ : std_logic;
SIGNAL \l1|l_arr[1][9]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|temp_min~31_combout\ : std_logic;
SIGNAL \l1|l_arr[0][10]~q\ : std_logic;
SIGNAL \l1|l_arr[0][9]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|l_arr[1][10]~q\ : std_logic;
SIGNAL \l1|LessThan6~9_combout\ : std_logic;
SIGNAL \l1|temp_min~35_combout\ : std_logic;
SIGNAL \l1|l_arr[1][11]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|l_arr[0][11]~q\ : std_logic;
SIGNAL \l1|temp_min~34_combout\ : std_logic;
SIGNAL \l1|l_arr[1][12]~q\ : std_logic;
SIGNAL \l1|l_arr[0][12]~q\ : std_logic;
SIGNAL \l1|LessThan6~10_combout\ : std_logic;
SIGNAL \l1|LessThan6~8_combout\ : std_logic;
SIGNAL \l1|l_arr[1][11]~q\ : std_logic;
SIGNAL \l1|LessThan6~11_combout\ : std_logic;
SIGNAL \l1|temp_min~12_combout\ : std_logic;
SIGNAL \l1|temp_min~29_combout\ : std_logic;
SIGNAL \l1|l_arr[1][7]~q\ : std_logic;
SIGNAL \l1|l_arr[0][7]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|temp_min~13_combout\ : std_logic;
SIGNAL \l1|temp_min~30_combout\ : std_logic;
SIGNAL \l1|l_arr[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|l_arr[0][6]~q\ : std_logic;
SIGNAL \l1|LessThan6~7_combout\ : std_logic;
SIGNAL \l1|temp_min~16_combout\ : std_logic;
SIGNAL \l1|temp_min~24_combout\ : std_logic;
SIGNAL \l1|l_arr[0][3]~feeder_combout\ : std_logic;
SIGNAL \l1|l_arr[0][3]~q\ : std_logic;
SIGNAL \l1|temp_min~25_combout\ : std_logic;
SIGNAL \l1|temp_min~26_combout\ : std_logic;
SIGNAL \l1|l_arr[1][2]~q\ : std_logic;
SIGNAL \l1|l_arr[1][3]~q\ : std_logic;
SIGNAL \l1|l_arr[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|LessThan6~1_combout\ : std_logic;
SIGNAL \l1|temp_min~22_combout\ : std_logic;
SIGNAL \l1|l_arr[0][0]~q\ : std_logic;
SIGNAL \l1|temp_min~23_combout\ : std_logic;
SIGNAL \l1|l_arr[0][1]~q\ : std_logic;
SIGNAL \l1|l_arr[1][0]~q\ : std_logic;
SIGNAL \l1|l_arr[1][1]~q\ : std_logic;
SIGNAL \l1|LessThan6~0_combout\ : std_logic;
SIGNAL \l1|LessThan6~2_combout\ : std_logic;
SIGNAL \l1|temp_min~14_combout\ : std_logic;
SIGNAL \l1|temp_min~27_combout\ : std_logic;
SIGNAL \l1|l_arr[1][5]~feeder_combout\ : std_logic;
SIGNAL \l1|l_arr[1][5]~q\ : std_logic;
SIGNAL \l1|temp_min~28_combout\ : std_logic;
SIGNAL \l1|l_arr[1][4]~feeder_combout\ : std_logic;
SIGNAL \l1|l_arr[1][4]~q\ : std_logic;
SIGNAL \l1|l_arr[0][5]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|l_arr[0][4]~q\ : std_logic;
SIGNAL \l1|LessThan6~4_combout\ : std_logic;
SIGNAL \l1|LessThan6~5_combout\ : std_logic;
SIGNAL \l1|LessThan6~3_combout\ : std_logic;
SIGNAL \l1|LessThan6~6_combout\ : std_logic;
SIGNAL \l1|LessThan6~12_combout\ : std_logic;
SIGNAL \l1|temp_max~3_combout\ : std_logic;
SIGNAL \l1|l_arr[2][8]~q\ : std_logic;
SIGNAL \l1|l_arr[2][12]~q\ : std_logic;
SIGNAL \l1|l_arr[0][7]~q\ : std_logic;
SIGNAL \l1|LessThan5~1_combout\ : std_logic;
SIGNAL \l1|l_arr[0][5]~q\ : std_logic;
SIGNAL \l1|l_arr[0][2]~q\ : std_logic;
SIGNAL \l1|LessThan5~0_combout\ : std_logic;
SIGNAL \l1|LessThan5~2_combout\ : std_logic;
SIGNAL \l1|l_arr[2][11]~q\ : std_logic;
SIGNAL \l1|l_arr[2][10]~q\ : std_logic;
SIGNAL \l1|l_arr[2][9]~q\ : std_logic;
SIGNAL \l1|l_arr[2][7]~q\ : std_logic;
SIGNAL \l1|l_arr[2][6]~q\ : std_logic;
SIGNAL \l1|l_arr[1][5]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|l_arr[2][5]~q\ : std_logic;
SIGNAL \l1|l_arr[2][4]~q\ : std_logic;
SIGNAL \l1|l_arr[2][3]~q\ : std_logic;
SIGNAL \l1|l_arr[2][2]~q\ : std_logic;
SIGNAL \l1|l_arr[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|l_arr[2][1]~q\ : std_logic;
SIGNAL \l1|l_arr[2][0]~q\ : std_logic;
SIGNAL \l1|LessThan7~66_cout\ : std_logic;
SIGNAL \l1|LessThan7~62_cout\ : std_logic;
SIGNAL \l1|LessThan7~58_cout\ : std_logic;
SIGNAL \l1|LessThan7~54_cout\ : std_logic;
SIGNAL \l1|LessThan7~50_cout\ : std_logic;
SIGNAL \l1|LessThan7~46_cout\ : std_logic;
SIGNAL \l1|LessThan7~42_cout\ : std_logic;
SIGNAL \l1|LessThan7~38_cout\ : std_logic;
SIGNAL \l1|LessThan7~34_cout\ : std_logic;
SIGNAL \l1|LessThan7~30_cout\ : std_logic;
SIGNAL \l1|LessThan7~26_cout\ : std_logic;
SIGNAL \l1|LessThan7~22_cout\ : std_logic;
SIGNAL \l1|LessThan7~18_cout\ : std_logic;
SIGNAL \l1|LessThan7~14_cout\ : std_logic;
SIGNAL \l1|LessThan7~10_cout\ : std_logic;
SIGNAL \l1|LessThan7~6_cout\ : std_logic;
SIGNAL \l1|LessThan7~1_sumout\ : std_logic;
SIGNAL \u1|sig_arr[0][8]~q\ : std_logic;
SIGNAL \u1|sig_arr[1][8]~q\ : std_logic;
SIGNAL \l1|temp_max~4_combout\ : std_logic;
SIGNAL \u1|sig_arr[0][10]~q\ : std_logic;
SIGNAL \l1|l_arr[0][9]~q\ : std_logic;
SIGNAL \l1|l_arr[1][9]~q\ : std_logic;
SIGNAL \l1|temp_max~5_combout\ : std_logic;
SIGNAL \u1|sig_arr[0][9]~q\ : std_logic;
SIGNAL \u1|sig_arr[1][9]~q\ : std_logic;
SIGNAL \l1|l_out[10]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|sig_arr[1][10]~q\ : std_logic;
SIGNAL \u1|LessThan2~0_combout\ : std_logic;
SIGNAL \l1|temp_max~1_combout\ : std_logic;
SIGNAL \u1|sig_arr[1][12]~q\ : std_logic;
SIGNAL \u1|sig_arr[0][12]~q\ : std_logic;
SIGNAL \l1|temp_max~2_combout\ : std_logic;
SIGNAL \u1|sig_arr[1][11]~q\ : std_logic;
SIGNAL \u1|sig_arr[0][11]~q\ : std_logic;
SIGNAL \u1|LessThan2~8_combout\ : std_logic;
SIGNAL \l1|temp_max~9_combout\ : std_logic;
SIGNAL \l1|l_out[5]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|sig_arr[0][5]~q\ : std_logic;
SIGNAL \u1|sig_arr[1][5]~q\ : std_logic;
SIGNAL \l1|temp_max~7_combout\ : std_logic;
SIGNAL \u1|sig_arr[0][7]~q\ : std_logic;
SIGNAL \u1|sig_arr[1][7]~q\ : std_logic;
SIGNAL \l1|l_arr[1][6]~q\ : std_logic;
SIGNAL \l1|temp_max~8_combout\ : std_logic;
SIGNAL \u1|sig_arr[1][6]~q\ : std_logic;
SIGNAL \u1|sig_arr[0][6]~q\ : std_logic;
SIGNAL \u1|LessThan2~1_combout\ : std_logic;
SIGNAL \u1|LessThan2~5_combout\ : std_logic;
SIGNAL \u1|LessThan2~9_combout\ : std_logic;
SIGNAL \l1|temp_max~6_combout\ : std_logic;
SIGNAL \u1|sig_arr[1][4]~q\ : std_logic;
SIGNAL \u1|sig_arr[0][4]~q\ : std_logic;
SIGNAL \l1|temp_max~11_combout\ : std_logic;
SIGNAL \u1|sig_arr[0][2]~feeder_combout\ : std_logic;
SIGNAL \u1|sig_arr[0][2]~q\ : std_logic;
SIGNAL \u1|sig_arr[1][2]~q\ : std_logic;
SIGNAL \l1|temp_max~10_combout\ : std_logic;
SIGNAL \u1|sig_arr[1][3]~q\ : std_logic;
SIGNAL \u1|sig_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|temp_max~12_combout\ : std_logic;
SIGNAL \u1|sig_arr[1][1]~q\ : std_logic;
SIGNAL \l1|temp_max~0_combout\ : std_logic;
SIGNAL \u1|sig_arr[0][0]~q\ : std_logic;
SIGNAL \u1|sig_arr[1][0]~q\ : std_logic;
SIGNAL \u1|sig_arr[0][1]~q\ : std_logic;
SIGNAL \u1|LessThan2~2_combout\ : std_logic;
SIGNAL \u1|LessThan2~3_combout\ : std_logic;
SIGNAL \u1|LessThan2~7_combout\ : std_logic;
SIGNAL \u1|LessThan2~4_combout\ : std_logic;
SIGNAL \u1|LessThan2~10_combout\ : std_logic;
SIGNAL \u1|LessThan2~6_combout\ : std_logic;
SIGNAL \u1|temp_max~12_combout\ : std_logic;
SIGNAL \u1|sig_arr[2][8]~q\ : std_logic;
SIGNAL \u1|temp_max~8_combout\ : std_logic;
SIGNAL \u1|sig_arr[2][9]~q\ : std_logic;
SIGNAL \u1|sig_arr[2][10]~q\ : std_logic;
SIGNAL \u1|temp_max~10_combout\ : std_logic;
SIGNAL \u1|sig_arr[2][12]~q\ : std_logic;
SIGNAL \u1|temp_max~9_combout\ : std_logic;
SIGNAL \u1|sig_arr[2][11]~q\ : std_logic;
SIGNAL \u1|temp_max~11_combout\ : std_logic;
SIGNAL \u1|LessThan3~5_combout\ : std_logic;
SIGNAL \u1|LessThan3~6_combout\ : std_logic;
SIGNAL \u1|sig_arr[2][7]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|sig_arr[2][5]~q\ : std_logic;
SIGNAL \u1|temp_max~2_combout\ : std_logic;
SIGNAL \u1|sig_arr[2][6]~q\ : std_logic;
SIGNAL \u1|temp_max~4_combout\ : std_logic;
SIGNAL \u1|temp_max~3_combout\ : std_logic;
SIGNAL \u1|LessThan3~3_combout\ : std_logic;
SIGNAL \u1|LessThan3~0_combout\ : std_logic;
SIGNAL \u1|temp_max~1_combout\ : std_logic;
SIGNAL \u1|sig_arr[2][2]~q\ : std_logic;
SIGNAL \u1|sig_arr[2][3]~q\ : std_logic;
SIGNAL \u1|temp_max~7_combout\ : std_logic;
SIGNAL \u1|sig_arr[0][3]~q\ : std_logic;
SIGNAL \u1|temp_max~6_combout\ : std_logic;
SIGNAL \u1|LessThan3~2_combout\ : std_logic;
SIGNAL \u1|sig_arr[2][4]~q\ : std_logic;
SIGNAL \u1|sig_arr[2][0]~q\ : std_logic;
SIGNAL \u1|temp_max~5_combout\ : std_logic;
SIGNAL \u1|temp_max~0_combout\ : std_logic;
SIGNAL \u1|sig_arr[2][1]~q\ : std_logic;
SIGNAL \u1|LessThan3~9_combout\ : std_logic;
SIGNAL \u1|LessThan3~1_combout\ : std_logic;
SIGNAL \u1|LessThan3~4_combout\ : std_logic;
SIGNAL \u1|LessThan3~7_combout\ : std_logic;
SIGNAL \u1|LessThan3~8_combout\ : std_logic;
SIGNAL \u1|temp_max~15_combout\ : std_logic;
SIGNAL \u1|u_arr[1][1]~q\ : std_logic;
SIGNAL \u1|u_arr[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|temp_max~17_combout\ : std_logic;
SIGNAL \u1|u_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|temp_max~14_combout\ : std_logic;
SIGNAL \u1|u_arr[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|temp_max~16_combout\ : std_logic;
SIGNAL \u1|u_arr[0][2]~q\ : std_logic;
SIGNAL \u1|temp_max~13_combout\ : std_logic;
SIGNAL \u1|u_arr[0][0]~feeder_combout\ : std_logic;
SIGNAL \u1|u_arr[0][0]~q\ : std_logic;
SIGNAL \u1|LessThan5~0_combout\ : std_logic;
SIGNAL \u1|temp_max~19_combout\ : std_logic;
SIGNAL \u1|u_arr[0][10]~q\ : std_logic;
SIGNAL \u1|sig_arr[2][7]~q\ : std_logic;
SIGNAL \u1|temp_max~22_combout\ : std_logic;
SIGNAL \u1|u_arr[0][7]~q\ : std_logic;
SIGNAL \u1|temp_max~25_combout\ : std_logic;
SIGNAL \u1|u_arr[0][9]~q\ : std_logic;
SIGNAL \u1|temp_max~20_combout\ : std_logic;
SIGNAL \u1|u_arr[0][5]~q\ : std_logic;
SIGNAL \u1|temp_max~21_combout\ : std_logic;
SIGNAL \u1|u_arr[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|temp_max~18_combout\ : std_logic;
SIGNAL \u1|u_arr[0][11]~feeder_combout\ : std_logic;
SIGNAL \u1|u_arr[0][11]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|LessThan5~1_combout\ : std_logic;
SIGNAL \u1|u_arr[0][3]~q\ : std_logic;
SIGNAL \u1|u_arr[1][3]~q\ : std_logic;
SIGNAL \u1|temp_max~24_combout\ : std_logic;
SIGNAL \u1|u_arr[0][8]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|u_arr[0][11]~q\ : std_logic;
SIGNAL \u1|temp_max~23_combout\ : std_logic;
SIGNAL \u1|u_arr[0][12]~q\ : std_logic;
SIGNAL \u1|LessThan5~2_combout\ : std_logic;
SIGNAL \u1|LessThan6~0_combout\ : std_logic;
SIGNAL \u1|u_arr[0][1]~q\ : std_logic;
SIGNAL \u1|u_arr[1][2]~q\ : std_logic;
SIGNAL \u1|LessThan6~1_combout\ : std_logic;
SIGNAL \u1|u_arr[0][0]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|u_arr[1][0]~feeder_combout\ : std_logic;
SIGNAL \u1|u_arr[1][0]~q\ : std_logic;
SIGNAL \u1|LessThan6~2_combout\ : std_logic;
SIGNAL \u1|LessThan5~3_combout\ : std_logic;
SIGNAL \u1|LessThan6~3_combout\ : std_logic;
SIGNAL \u1|u_arr[1][7]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|u_arr[1][9]~q\ : std_logic;
SIGNAL \u1|u_arr[0][9]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|u_arr[1][11]~q\ : std_logic;
SIGNAL \u1|u_arr[1][10]~q\ : std_logic;
SIGNAL \u1|u_arr[1][12]~q\ : std_logic;
SIGNAL \u1|LessThan6~9_combout\ : std_logic;
SIGNAL \u1|LessThan6~10_combout\ : std_logic;
SIGNAL \u1|u_arr[0][8]~q\ : std_logic;
SIGNAL \u1|u_arr[1][8]~q\ : std_logic;
SIGNAL \u1|LessThan6~11_combout\ : std_logic;
SIGNAL \u1|u_arr[0][6]~q\ : std_logic;
SIGNAL \u1|u_arr[1][5]~q\ : std_logic;
SIGNAL \u1|u_arr[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|u_arr[0][4]~q\ : std_logic;
SIGNAL \u1|u_arr[1][4]~q\ : std_logic;
SIGNAL \u1|LessThan6~5_combout\ : std_logic;
SIGNAL \u1|LessThan6~6_combout\ : std_logic;
SIGNAL \u1|LessThan6~7_combout\ : std_logic;
SIGNAL \u1|LessThan6~8_combout\ : std_logic;
SIGNAL \u1|LessThan6~4_combout\ : std_logic;
SIGNAL \u1|LessThan6~12_combout\ : std_logic;
SIGNAL \u1|LessThan6~13_combout\ : std_logic;
SIGNAL \u1|LessThan6~14_combout\ : std_logic;
SIGNAL \u1|LessThan6~15_combout\ : std_logic;
SIGNAL \u1|LessThan6~16_combout\ : std_logic;
SIGNAL \u1|temp_min~6_combout\ : std_logic;
SIGNAL \u1|u_arr[2][9]~q\ : std_logic;
SIGNAL \u1|u_arr[2][12]~q\ : std_logic;
SIGNAL \u1|temp_min~1_combout\ : std_logic;
SIGNAL \u1|u_arr[2][11]~q\ : std_logic;
SIGNAL \u1|u_arr[2][10]~q\ : std_logic;
SIGNAL \u1|u_arr[2][8]~q\ : std_logic;
SIGNAL \u1|u_arr[1][7]~q\ : std_logic;
SIGNAL \u1|u_arr[2][7]~q\ : std_logic;
SIGNAL \u1|u_arr[1][6]~q\ : std_logic;
SIGNAL \u1|u_arr[2][6]~q\ : std_logic;
SIGNAL \u1|u_arr[2][5]~q\ : std_logic;
SIGNAL \u1|u_arr[2][4]~q\ : std_logic;
SIGNAL \u1|u_arr[2][3]~q\ : std_logic;
SIGNAL \u1|u_arr[2][2]~q\ : std_logic;
SIGNAL \u1|u_arr[1][1]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|u_arr[2][1]~q\ : std_logic;
SIGNAL \u1|u_arr[2][0]~q\ : std_logic;
SIGNAL \u1|LessThan7~66_cout\ : std_logic;
SIGNAL \u1|LessThan7~62_cout\ : std_logic;
SIGNAL \u1|LessThan7~58_cout\ : std_logic;
SIGNAL \u1|LessThan7~54_cout\ : std_logic;
SIGNAL \u1|LessThan7~50_cout\ : std_logic;
SIGNAL \u1|LessThan7~46_cout\ : std_logic;
SIGNAL \u1|LessThan7~42_cout\ : std_logic;
SIGNAL \u1|LessThan7~38_cout\ : std_logic;
SIGNAL \u1|LessThan7~34_cout\ : std_logic;
SIGNAL \u1|LessThan7~30_cout\ : std_logic;
SIGNAL \u1|LessThan7~26_cout\ : std_logic;
SIGNAL \u1|LessThan7~22_cout\ : std_logic;
SIGNAL \u1|LessThan7~18_cout\ : std_logic;
SIGNAL \u1|LessThan7~14_cout\ : std_logic;
SIGNAL \u1|LessThan7~10_cout\ : std_logic;
SIGNAL \u1|LessThan7~6_cout\ : std_logic;
SIGNAL \u1|LessThan7~1_sumout\ : std_logic;
SIGNAL \l2|sig_arr[2][9]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|sig_arr[0][9]~q\ : std_logic;
SIGNAL \l2|sig_arr[1][9]~q\ : std_logic;
SIGNAL \u1|temp_min~2_combout\ : std_logic;
SIGNAL \l2|sig_arr[2][12]~q\ : std_logic;
SIGNAL \u1|u_arr[1][10]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|temp_min~5_combout\ : std_logic;
SIGNAL \l2|sig_arr[2][10]~q\ : std_logic;
SIGNAL \u1|temp_min~4_combout\ : std_logic;
SIGNAL \l2|sig_arr[1][11]~q\ : std_logic;
SIGNAL \l2|sig_arr[0][12]~q\ : std_logic;
SIGNAL \u1|temp_min~3_combout\ : std_logic;
SIGNAL \l2|sig_arr[0][8]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|sig_arr[0][10]~q\ : std_logic;
SIGNAL \l2|sig_arr[0][11]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|temp_min~8_combout\ : std_logic;
SIGNAL \l2|sig_arr[0][1]~q\ : std_logic;
SIGNAL \u1|temp_min~7_combout\ : std_logic;
SIGNAL \l2|sig_arr[0][4]~q\ : std_logic;
SIGNAL \u1|temp_min~9_combout\ : std_logic;
SIGNAL \l2|sig_arr[0][2]~q\ : std_logic;
SIGNAL \u1|temp_min~13_combout\ : std_logic;
SIGNAL \l2|sig_arr[0][7]~q\ : std_logic;
SIGNAL \u1|u_arr[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|temp_min~0_combout\ : std_logic;
SIGNAL \u1|u_out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|sig_arr[0][0]~q\ : std_logic;
SIGNAL \u1|temp_min~10_combout\ : std_logic;
SIGNAL \l2|sig_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|LessThan1~1_combout\ : std_logic;
SIGNAL \u1|temp_min~12_combout\ : std_logic;
SIGNAL \l2|sig_arr[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|temp_min~11_combout\ : std_logic;
SIGNAL \l2|sig_arr[0][5]~q\ : std_logic;
SIGNAL \l2|LessThan1~2_combout\ : std_logic;
SIGNAL \l2|LessThan1~0_combout\ : std_logic;
SIGNAL \l2|sig_arr[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|sig_arr[0][11]~q\ : std_logic;
SIGNAL \l2|sig_arr[1][6]~q\ : std_logic;
SIGNAL \l2|sig_arr[1][5]~q\ : std_logic;
SIGNAL \l2|LessThan2~13_combout\ : std_logic;
SIGNAL \l2|LessThan2~5_combout\ : std_logic;
SIGNAL \l2|sig_arr[1][2]~q\ : std_logic;
SIGNAL \l2|sig_arr[1][3]~q\ : std_logic;
SIGNAL \l2|sig_arr[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|sig_arr[1][1]~q\ : std_logic;
SIGNAL \l2|sig_arr[1][0]~q\ : std_logic;
SIGNAL \l2|LessThan2~11_combout\ : std_logic;
SIGNAL \l2|LessThan2~12_combout\ : std_logic;
SIGNAL \l2|LessThan2~4_combout\ : std_logic;
SIGNAL \l2|sig_arr[1][4]~q\ : std_logic;
SIGNAL \l2|sig_arr[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|sig_arr[0][6]~q\ : std_logic;
SIGNAL \l2|LessThan2~3_combout\ : std_logic;
SIGNAL \l2|LessThan2~6_combout\ : std_logic;
SIGNAL \l2|sig_arr[1][8]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|sig_arr[0][8]~q\ : std_logic;
SIGNAL \l2|sig_arr[0][10]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|sig_arr[1][10]~q\ : std_logic;
SIGNAL \l2|sig_arr[1][12]~q\ : std_logic;
SIGNAL \l2|LessThan2~0_combout\ : std_logic;
SIGNAL \l2|LessThan2~1_combout\ : std_logic;
SIGNAL \l2|LessThan2~2_combout\ : std_logic;
SIGNAL \l2|sig_arr[1][8]~q\ : std_logic;
SIGNAL \l2|sig_arr[1][11]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|LessThan2~7_combout\ : std_logic;
SIGNAL \l2|LessThan2~8_combout\ : std_logic;
SIGNAL \l2|LessThan2~9_combout\ : std_logic;
SIGNAL \l2|sig_arr[1][7]~q\ : std_logic;
SIGNAL \l2|LessThan2~10_combout\ : std_logic;
SIGNAL \l2|temp_min~10_combout\ : std_logic;
SIGNAL \l2|sig_arr[1][10]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|temp_min~11_combout\ : std_logic;
SIGNAL \l2|temp_min~9_combout\ : std_logic;
SIGNAL \l2|sig_arr[2][11]~q\ : std_logic;
SIGNAL \l2|LessThan3~5_combout\ : std_logic;
SIGNAL \l2|LessThan3~8_combout\ : std_logic;
SIGNAL \l2|LessThan3~7_combout\ : std_logic;
SIGNAL \l2|LessThan3~3_combout\ : std_logic;
SIGNAL \l2|temp_min~25_combout\ : std_logic;
SIGNAL \l2|l_arr[1][9]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|l_arr[0][9]~q\ : std_logic;
SIGNAL \l2|temp_min~3_combout\ : std_logic;
SIGNAL \l2|temp_min~12_combout\ : std_logic;
SIGNAL \l2|temp_min~8_combout\ : std_logic;
SIGNAL \l2|sig_arr[2][8]~q\ : std_logic;
SIGNAL \l2|sig_arr[2][9]~q\ : std_logic;
SIGNAL \l2|LessThan3~6_combout\ : std_logic;
SIGNAL \l2|sig_arr[2][2]~q\ : std_logic;
SIGNAL \l2|sig_arr[2][4]~q\ : std_logic;
SIGNAL \l2|sig_arr[2][3]~q\ : std_logic;
SIGNAL \l2|sig_arr[0][3]~q\ : std_logic;
SIGNAL \l2|LessThan3~9_combout\ : std_logic;
SIGNAL \l2|LessThan3~1_combout\ : std_logic;
SIGNAL \l2|temp_min~5_combout\ : std_logic;
SIGNAL \l2|LessThan3~0_combout\ : std_logic;
SIGNAL \l2|temp_min~1_combout\ : std_logic;
SIGNAL \l2|LessThan3~12_combout\ : std_logic;
SIGNAL \l2|sig_arr[2][6]~q\ : std_logic;
SIGNAL \l2|sig_arr[2][5]~q\ : std_logic;
SIGNAL \l2|temp_min~2_combout\ : std_logic;
SIGNAL \l2|sig_arr[1][5]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|temp_min~4_combout\ : std_logic;
SIGNAL \l2|sig_arr[2][7]~q\ : std_logic;
SIGNAL \l2|LessThan3~10_combout\ : std_logic;
SIGNAL \l2|LessThan3~11_combout\ : std_logic;
SIGNAL \l2|sig_arr[2][0]~q\ : std_logic;
SIGNAL \l2|sig_arr[2][1]~q\ : std_logic;
SIGNAL \l2|temp_min~6_combout\ : std_logic;
SIGNAL \l2|LessThan3~14_combout\ : std_logic;
SIGNAL \l2|sig_arr[2][4]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|LessThan3~13_combout\ : std_logic;
SIGNAL \l2|LessThan3~2_combout\ : std_logic;
SIGNAL \l2|LessThan3~4_combout\ : std_logic;
SIGNAL \l2|sig_arr[2][6]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|temp_min~20_combout\ : std_logic;
SIGNAL \l2|l_arr[0][6]~q\ : std_logic;
SIGNAL \l2|l_arr[1][6]~q\ : std_logic;
SIGNAL \l2|sig_arr[2][7]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|temp_min~19_combout\ : std_logic;
SIGNAL \l2|l_arr[1][7]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|l_arr[0][7]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|LessThan6~7_combout\ : std_logic;
SIGNAL \l2|temp_min~22_combout\ : std_logic;
SIGNAL \l2|l_arr[1][8]~q\ : std_logic;
SIGNAL \l2|temp_min~21_combout\ : std_logic;
SIGNAL \l2|l_arr[1][10]~q\ : std_logic;
SIGNAL \l2|l_arr[0][8]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|l_arr[1][9]~q\ : std_logic;
SIGNAL \l2|l_arr[0][10]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|LessThan6~8_combout\ : std_logic;
SIGNAL \l2|l_arr[0][10]~q\ : std_logic;
SIGNAL \l2|LessThan6~9_combout\ : std_logic;
SIGNAL \l2|temp_min~24_combout\ : std_logic;
SIGNAL \l2|l_arr[1][11]~feeder_combout\ : std_logic;
SIGNAL \l2|l_arr[1][11]~q\ : std_logic;
SIGNAL \l2|temp_min~23_combout\ : std_logic;
SIGNAL \l2|l_arr[1][12]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|l_arr[0][12]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|l_arr[0][11]~q\ : std_logic;
SIGNAL \l2|LessThan6~10_combout\ : std_logic;
SIGNAL \l2|LessThan6~11_combout\ : std_logic;
SIGNAL \l2|l_arr[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|l_arr[0][7]~q\ : std_logic;
SIGNAL \l2|LessThan6~5_combout\ : std_logic;
SIGNAL \l2|temp_min~17_combout\ : std_logic;
SIGNAL \l2|l_arr[1][5]~q\ : std_logic;
SIGNAL \l2|l_arr[0][5]~q\ : std_logic;
SIGNAL \l2|temp_min~18_combout\ : std_logic;
SIGNAL \l2|l_arr[1][4]~q\ : std_logic;
SIGNAL \l2|l_arr[0][4]~q\ : std_logic;
SIGNAL \l2|LessThan6~3_combout\ : std_logic;
SIGNAL \l2|temp_min~16_combout\ : std_logic;
SIGNAL \l2|l_arr[0][2]~feeder_combout\ : std_logic;
SIGNAL \l2|l_arr[0][2]~q\ : std_logic;
SIGNAL \l2|temp_min~7_combout\ : std_logic;
SIGNAL \l2|temp_min~15_combout\ : std_logic;
SIGNAL \l2|l_arr[1][3]~q\ : std_logic;
SIGNAL \l2|l_arr[1][2]~q\ : std_logic;
SIGNAL \l2|l_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|LessThan6~2_combout\ : std_logic;
SIGNAL \l2|LessThan6~4_combout\ : std_logic;
SIGNAL \l2|LessThan6~1_combout\ : std_logic;
SIGNAL \l2|temp_min~0_combout\ : std_logic;
SIGNAL \l2|temp_min~13_combout\ : std_logic;
SIGNAL \l2|l_arr[0][0]~q\ : std_logic;
SIGNAL \l2|temp_min~14_combout\ : std_logic;
SIGNAL \l2|l_arr[0][1]~q\ : std_logic;
SIGNAL \l2|l_arr[1][0]~q\ : std_logic;
SIGNAL \l2|l_arr[1][1]~q\ : std_logic;
SIGNAL \l2|LessThan6~0_combout\ : std_logic;
SIGNAL \l2|LessThan6~6_combout\ : std_logic;
SIGNAL \l2|LessThan6~12_combout\ : std_logic;
SIGNAL \l2|temp_max~5_combout\ : std_logic;
SIGNAL \l2|l_arr[2][9]~q\ : std_logic;
SIGNAL \l2|l_arr[1][12]~q\ : std_logic;
SIGNAL \l2|l_arr[2][12]~q\ : std_logic;
SIGNAL \l2|l_arr[0][12]~q\ : std_logic;
SIGNAL \l2|LessThan5~0_combout\ : std_logic;
SIGNAL \l2|l_arr[0][8]~q\ : std_logic;
SIGNAL \l2|LessThan5~1_combout\ : std_logic;
SIGNAL \l2|LessThan5~2_combout\ : std_logic;
SIGNAL \l2|l_arr[2][11]~q\ : std_logic;
SIGNAL \l2|l_arr[2][10]~q\ : std_logic;
SIGNAL \l2|l_arr[2][8]~q\ : std_logic;
SIGNAL \l2|l_arr[1][7]~q\ : std_logic;
SIGNAL \l2|l_arr[2][7]~q\ : std_logic;
SIGNAL \l2|l_arr[2][6]~q\ : std_logic;
SIGNAL \l2|l_arr[2][5]~q\ : std_logic;
SIGNAL \l2|l_arr[2][4]~q\ : std_logic;
SIGNAL \l2|l_arr[2][3]~q\ : std_logic;
SIGNAL \l2|l_arr[0][3]~q\ : std_logic;
SIGNAL \l2|l_arr[2][2]~q\ : std_logic;
SIGNAL \l2|l_arr[2][1]~q\ : std_logic;
SIGNAL \l2|l_arr[2][0]~q\ : std_logic;
SIGNAL \l2|LessThan7~66_cout\ : std_logic;
SIGNAL \l2|LessThan7~62_cout\ : std_logic;
SIGNAL \l2|LessThan7~58_cout\ : std_logic;
SIGNAL \l2|LessThan7~54_cout\ : std_logic;
SIGNAL \l2|LessThan7~50_cout\ : std_logic;
SIGNAL \l2|LessThan7~46_cout\ : std_logic;
SIGNAL \l2|LessThan7~42_cout\ : std_logic;
SIGNAL \l2|LessThan7~38_cout\ : std_logic;
SIGNAL \l2|LessThan7~34_cout\ : std_logic;
SIGNAL \l2|LessThan7~30_cout\ : std_logic;
SIGNAL \l2|LessThan7~26_cout\ : std_logic;
SIGNAL \l2|LessThan7~22_cout\ : std_logic;
SIGNAL \l2|LessThan7~18_cout\ : std_logic;
SIGNAL \l2|LessThan7~14_cout\ : std_logic;
SIGNAL \l2|LessThan7~10_cout\ : std_logic;
SIGNAL \l2|LessThan7~6_cout\ : std_logic;
SIGNAL \l2|LessThan7~1_sumout\ : std_logic;
SIGNAL \u2|sig_arr[1][9]~q\ : std_logic;
SIGNAL \u2|sig_arr[0][9]~q\ : std_logic;
SIGNAL \l2|temp_max~9_combout\ : std_logic;
SIGNAL \u2|sig_arr[1][5]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|temp_max~8_combout\ : std_logic;
SIGNAL \u2|sig_arr[0][6]~q\ : std_logic;
SIGNAL \u2|sig_arr[1][6]~q\ : std_logic;
SIGNAL \u2|sig_arr[0][5]~q\ : std_logic;
SIGNAL \l2|temp_max~7_combout\ : std_logic;
SIGNAL \u2|sig_arr[0][7]~q\ : std_logic;
SIGNAL \u2|sig_arr[1][7]~q\ : std_logic;
SIGNAL \u2|LessThan2~1_combout\ : std_logic;
SIGNAL \l2|temp_max~2_combout\ : std_logic;
SIGNAL \l2|l_out[11]~feeder_combout\ : std_logic;
SIGNAL \u2|sig_arr[1][11]~q\ : std_logic;
SIGNAL \u2|sig_arr[0][11]~q\ : std_logic;
SIGNAL \l2|temp_max~1_combout\ : std_logic;
SIGNAL \u2|sig_arr[1][12]~feeder_combout\ : std_logic;
SIGNAL \u2|sig_arr[1][12]~q\ : std_logic;
SIGNAL \l2|temp_max~3_combout\ : std_logic;
SIGNAL \u2|sig_arr[1][8]~q\ : std_logic;
SIGNAL \u2|sig_arr[0][8]~q\ : std_logic;
SIGNAL \u2|sig_arr[0][12]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|LessThan2~8_combout\ : std_logic;
SIGNAL \u2|LessThan2~4_combout\ : std_logic;
SIGNAL \u2|LessThan2~10_combout\ : std_logic;
SIGNAL \l2|temp_max~4_combout\ : std_logic;
SIGNAL \u2|sig_arr[1][10]~q\ : std_logic;
SIGNAL \u2|sig_arr[1][9]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|sig_arr[0][10]~q\ : std_logic;
SIGNAL \u2|LessThan2~0_combout\ : std_logic;
SIGNAL \u2|sig_arr[1][12]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|LessThan2~5_combout\ : std_logic;
SIGNAL \u2|LessThan2~9_combout\ : std_logic;
SIGNAL \l2|temp_max~6_combout\ : std_logic;
SIGNAL \u2|sig_arr[1][4]~feeder_combout\ : std_logic;
SIGNAL \u2|sig_arr[1][4]~q\ : std_logic;
SIGNAL \u2|sig_arr[0][4]~q\ : std_logic;
SIGNAL \l2|temp_max~11_combout\ : std_logic;
SIGNAL \u2|sig_arr[0][2]~q\ : std_logic;
SIGNAL \l2|temp_max~10_combout\ : std_logic;
SIGNAL \u2|sig_arr[1][3]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|sig_arr[0][3]~q\ : std_logic;
SIGNAL \u2|sig_arr[1][2]~q\ : std_logic;
SIGNAL \l2|temp_max~12_combout\ : std_logic;
SIGNAL \u2|sig_arr[1][1]~q\ : std_logic;
SIGNAL \u2|sig_arr[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|temp_max~0_combout\ : std_logic;
SIGNAL \u2|sig_arr[1][0]~q\ : std_logic;
SIGNAL \u2|sig_arr[0][0]~q\ : std_logic;
SIGNAL \u2|LessThan2~2_combout\ : std_logic;
SIGNAL \u2|LessThan2~3_combout\ : std_logic;
SIGNAL \u2|LessThan2~7_combout\ : std_logic;
SIGNAL \u2|LessThan2~6_combout\ : std_logic;
SIGNAL \u2|temp_max~8_combout\ : std_logic;
SIGNAL \u2|sig_arr[2][10]~q\ : std_logic;
SIGNAL \u2|sig_arr[2][12]~q\ : std_logic;
SIGNAL \u2|temp_max~10_combout\ : std_logic;
SIGNAL \u2|sig_arr[0][12]~q\ : std_logic;
SIGNAL \u2|temp_max~9_combout\ : std_logic;
SIGNAL \u2|sig_arr[2][11]~q\ : std_logic;
SIGNAL \u2|temp_max~11_combout\ : std_logic;
SIGNAL \u2|LessThan3~5_combout\ : std_logic;
SIGNAL \u2|temp_max~12_combout\ : std_logic;
SIGNAL \u2|sig_arr[2][9]~q\ : std_logic;
SIGNAL \u2|sig_arr[2][8]~q\ : std_logic;
SIGNAL \u2|LessThan3~8_combout\ : std_logic;
SIGNAL \u2|sig_arr[2][7]~q\ : std_logic;
SIGNAL \u2|sig_arr[2][6]~q\ : std_logic;
SIGNAL \u2|temp_max~3_combout\ : std_logic;
SIGNAL \u2|sig_arr[2][5]~q\ : std_logic;
SIGNAL \u2|temp_max~2_combout\ : std_logic;
SIGNAL \u2|sig_arr[1][5]~q\ : std_logic;
SIGNAL \u2|temp_max~4_combout\ : std_logic;
SIGNAL \u2|LessThan3~0_combout\ : std_logic;
SIGNAL \u2|sig_arr[2][0]~q\ : std_logic;
SIGNAL \u2|temp_max~0_combout\ : std_logic;
SIGNAL \u2|sig_arr[0][1]~q\ : std_logic;
SIGNAL \u2|temp_max~5_combout\ : std_logic;
SIGNAL \u2|sig_arr[2][1]~q\ : std_logic;
SIGNAL \u2|sig_arr[2][2]~q\ : std_logic;
SIGNAL \u2|sig_arr[1][3]~q\ : std_logic;
SIGNAL \u2|sig_arr[2][3]~q\ : std_logic;
SIGNAL \u2|LessThan3~9_combout\ : std_logic;
SIGNAL \u2|LessThan3~1_combout\ : std_logic;
SIGNAL \u2|temp_max~6_combout\ : std_logic;
SIGNAL \u2|temp_max~7_combout\ : std_logic;
SIGNAL \u2|LessThan3~2_combout\ : std_logic;
SIGNAL \u2|LessThan3~3_combout\ : std_logic;
SIGNAL \u2|sig_arr[2][4]~q\ : std_logic;
SIGNAL \u2|temp_max~1_combout\ : std_logic;
SIGNAL \u2|LessThan3~4_combout\ : std_logic;
SIGNAL \u2|LessThan3~7_combout\ : std_logic;
SIGNAL \u2|LessThan3~6_combout\ : std_logic;
SIGNAL \u2|temp_max~17_combout\ : std_logic;
SIGNAL \u2|u_arr[1][3]~q\ : std_logic;
SIGNAL \u2|u_arr[0][3]~q\ : std_logic;
SIGNAL \u2|temp_max~16_combout\ : std_logic;
SIGNAL \u2|u_arr[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|u_arr[1][2]~q\ : std_logic;
SIGNAL \u2|temp_max~24_combout\ : std_logic;
SIGNAL \u2|u_arr[0][8]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|temp_max~25_combout\ : std_logic;
SIGNAL \u2|u_arr[0][9]~q\ : std_logic;
SIGNAL \u2|temp_max~18_combout\ : std_logic;
SIGNAL \u2|u_arr[0][11]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|temp_max~19_combout\ : std_logic;
SIGNAL \u2|u_arr[0][10]~feeder_combout\ : std_logic;
SIGNAL \u2|u_arr[0][10]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|temp_max~23_combout\ : std_logic;
SIGNAL \u2|u_arr[0][12]~feeder_combout\ : std_logic;
SIGNAL \u2|u_arr[0][12]~q\ : std_logic;
SIGNAL \u2|LessThan5~2_combout\ : std_logic;
SIGNAL \u2|temp_max~22_combout\ : std_logic;
SIGNAL \u2|u_arr[0][7]~q\ : std_logic;
SIGNAL \u2|temp_max~21_combout\ : std_logic;
SIGNAL \u2|u_arr[0][6]~q\ : std_logic;
SIGNAL \u2|temp_max~20_combout\ : std_logic;
SIGNAL \u2|u_arr[0][5]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|LessThan5~1_combout\ : std_logic;
SIGNAL \u2|temp_max~15_combout\ : std_logic;
SIGNAL \u2|u_arr[0][1]~q\ : std_logic;
SIGNAL \u2|temp_max~13_combout\ : std_logic;
SIGNAL \u2|u_arr[0][0]~q\ : std_logic;
SIGNAL \u2|temp_max~14_combout\ : std_logic;
SIGNAL \u2|u_arr[0][4]~q\ : std_logic;
SIGNAL \u2|LessThan5~0_combout\ : std_logic;
SIGNAL \u2|LessThan5~3_combout\ : std_logic;
SIGNAL \u2|LessThan6~4_combout\ : std_logic;
SIGNAL \u2|u_arr[1][0]~q\ : std_logic;
SIGNAL \u2|LessThan6~2_combout\ : std_logic;
SIGNAL \u2|LessThan6~0_combout\ : std_logic;
SIGNAL \u2|u_arr[1][1]~q\ : std_logic;
SIGNAL \u2|LessThan6~1_combout\ : std_logic;
SIGNAL \u2|LessThan6~3_combout\ : std_logic;
SIGNAL \u2|u_arr[1][5]~q\ : std_logic;
SIGNAL \u2|u_arr[1][6]~q\ : std_logic;
SIGNAL \u2|u_arr[1][4]~q\ : std_logic;
SIGNAL \u2|LessThan6~7_combout\ : std_logic;
SIGNAL \u2|LessThan6~8_combout\ : std_logic;
SIGNAL \u2|u_arr[0][5]~q\ : std_logic;
SIGNAL \u2|LessThan6~5_combout\ : std_logic;
SIGNAL \u2|LessThan6~6_combout\ : std_logic;
SIGNAL \u2|u_arr[1][8]~feeder_combout\ : std_logic;
SIGNAL \u2|u_arr[1][8]~q\ : std_logic;
SIGNAL \u2|u_arr[1][9]~q\ : std_logic;
SIGNAL \u2|u_arr[1][10]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|u_arr[1][12]~q\ : std_logic;
SIGNAL \u2|u_arr[1][11]~q\ : std_logic;
SIGNAL \u2|LessThan6~9_combout\ : std_logic;
SIGNAL \u2|LessThan6~10_combout\ : std_logic;
SIGNAL \u2|LessThan6~13_combout\ : std_logic;
SIGNAL \u2|LessThan6~14_combout\ : std_logic;
SIGNAL \u2|u_arr[1][7]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|LessThan6~12_combout\ : std_logic;
SIGNAL \u2|LessThan6~15_combout\ : std_logic;
SIGNAL \u2|u_arr[1][8]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|u_arr[0][8]~q\ : std_logic;
SIGNAL \u2|u_arr[1][7]~q\ : std_logic;
SIGNAL \u2|LessThan6~11_combout\ : std_logic;
SIGNAL \u2|LessThan6~16_combout\ : std_logic;
SIGNAL \u2|u_arr[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|temp_min~0_combout\ : std_logic;
SIGNAL \u2|u_arr[2][0]~q\ : std_logic;
SIGNAL \u2|u_arr[2][12]~q\ : std_logic;
SIGNAL \u2|temp_min~12_combout\ : std_logic;
SIGNAL \u2|u_arr[2][11]~q\ : std_logic;
SIGNAL \u2|u_arr[1][10]~q\ : std_logic;
SIGNAL \u2|u_arr[2][10]~q\ : std_logic;
SIGNAL \u2|u_arr[1][9]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|u_arr[2][9]~q\ : std_logic;
SIGNAL \u2|u_arr[2][8]~q\ : std_logic;
SIGNAL \u2|u_arr[2][7]~q\ : std_logic;
SIGNAL \u2|u_arr[2][6]~q\ : std_logic;
SIGNAL \u2|u_arr[2][5]~q\ : std_logic;
SIGNAL \u2|u_arr[2][4]~q\ : std_logic;
SIGNAL \u2|u_arr[2][3]~q\ : std_logic;
SIGNAL \u2|u_arr[2][2]~q\ : std_logic;
SIGNAL \u2|u_arr[2][1]~q\ : std_logic;
SIGNAL \u2|LessThan7~66_cout\ : std_logic;
SIGNAL \u2|LessThan7~62_cout\ : std_logic;
SIGNAL \u2|LessThan7~58_cout\ : std_logic;
SIGNAL \u2|LessThan7~54_cout\ : std_logic;
SIGNAL \u2|LessThan7~50_cout\ : std_logic;
SIGNAL \u2|LessThan7~46_cout\ : std_logic;
SIGNAL \u2|LessThan7~42_cout\ : std_logic;
SIGNAL \u2|LessThan7~38_cout\ : std_logic;
SIGNAL \u2|LessThan7~34_cout\ : std_logic;
SIGNAL \u2|LessThan7~30_cout\ : std_logic;
SIGNAL \u2|LessThan7~26_cout\ : std_logic;
SIGNAL \u2|LessThan7~22_cout\ : std_logic;
SIGNAL \u2|LessThan7~18_cout\ : std_logic;
SIGNAL \u2|LessThan7~14_cout\ : std_logic;
SIGNAL \u2|LessThan7~10_cout\ : std_logic;
SIGNAL \u2|LessThan7~6_cout\ : std_logic;
SIGNAL \u2|LessThan7~1_sumout\ : std_logic;
SIGNAL \u2|temp_min~1_combout\ : std_logic;
SIGNAL \u2|u_arr[0][2]~q\ : std_logic;
SIGNAL \u2|temp_min~2_combout\ : std_logic;
SIGNAL \u2|temp_min~3_combout\ : std_logic;
SIGNAL \u2|temp_min~4_combout\ : std_logic;
SIGNAL \u2|temp_min~5_combout\ : std_logic;
SIGNAL \u2|temp_min~6_combout\ : std_logic;
SIGNAL \u2|temp_min~7_combout\ : std_logic;
SIGNAL \u2|temp_min~8_combout\ : std_logic;
SIGNAL \u2|temp_min~9_combout\ : std_logic;
SIGNAL \u2|u_arr[0][10]~q\ : std_logic;
SIGNAL \u2|temp_min~10_combout\ : std_logic;
SIGNAL \u2|u_arr[0][11]~q\ : std_logic;
SIGNAL \u2|temp_min~11_combout\ : std_logic;
SIGNAL \u2|temp_min~13_combout\ : std_logic;
SIGNAL \l1|iter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u2|u_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \l2|l_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|u_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \l1|l_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \l1|ALT_INV_l_arr[1][11]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][9]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][9]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][7]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][5]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][5]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[2][7]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][7]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][10]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][1]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][8]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][9]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][11]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][0]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][9]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][6]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][7]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][4]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][5]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][10]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][11]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][8]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][10]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][11]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][8]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][12]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][12]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][8]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][9]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][10]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][7]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][7]~DUPLICATE_q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][3]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][5]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][9]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][12]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][12]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][7]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][10]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][9]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][8]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][8]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][5]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][10]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][11]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_data_in[13]~input_o\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~17_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~16_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~15_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~14_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~20_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~19_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~18_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~17_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~16_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~15_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan2~10_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan2~9_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan2~8_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~13_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~12_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~11_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~10_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan2~13_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan2~10_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan2~9_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan2~8_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~13_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~12_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~14_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan2~12_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan2~11_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~13_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~12_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~28_combout\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~27_combout\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~25_combout\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~24_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~11_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][15]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][14]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][13]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~10_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~21_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][8]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~20_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][10]~q\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~19_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][11]~q\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~18_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][12]~q\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~17_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][9]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~16_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~15_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][1]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][2]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][3]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~14_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][5]~q\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~13_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][6]~q\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~12_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][7]~q\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~11_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~11_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][4]~q\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~10_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~10_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][15]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][14]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][13]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~9_combout\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~9_combout\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~8_combout\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~7_combout\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~6_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~8_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][8]~q\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~5_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][7]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][9]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][10]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][11]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][12]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][1]~q\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~4_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][2]~q\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~3_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][3]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~2_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][5]~q\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~1_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][6]~q\ : std_logic;
SIGNAL \l1|ALT_INV_temp_min~0_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][4]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[1][0]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][7]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][6]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][5]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][3]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][2]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][1]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][4]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][11]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][10]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][9]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][8]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][12]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][15]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][14]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][13]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[0][0]~q\ : std_logic;
SIGNAL \l1|ALT_INV_sig_arr[2][0]~q\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[2][1]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[2][2]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[2][3]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[2][5]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[2][6]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[2][7]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[2][4]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[2][9]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[2][10]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[2][8]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[2][11]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[2][12]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[2][0]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan6~12_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan6~11_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan6~10_combout\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][11]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][11]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][12]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][12]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan6~9_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan6~8_combout\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][8]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][8]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][9]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][9]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][10]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][10]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan6~7_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan6~6_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan6~5_combout\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][6]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][6]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][7]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][7]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][4]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][4]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][5]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][5]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][2]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][2]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][3]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][3]~q\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][1]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][1]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[0][0]~q\ : std_logic;
SIGNAL \l1|ALT_INV_l_arr[1][0]~q\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~18_combout\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~13_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~12_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[2][8]~q\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~11_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[2][10]~q\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~10_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[2][11]~q\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~9_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[2][12]~q\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~8_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[2][9]~q\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~7_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[2][2]~q\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~6_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[2][3]~q\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~5_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[2][1]~q\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~4_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[2][5]~q\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~3_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[2][6]~q\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[2][7]~q\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[2][4]~q\ : std_logic;
SIGNAL \u1|ALT_INV_temp_max~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[1][1]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[0][1]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[1][2]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[0][2]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[1][3]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[0][3]~q\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[1][5]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[0][5]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[1][6]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[0][6]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[1][7]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[0][7]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[1][4]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[0][4]~q\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[1][9]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[0][9]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[1][10]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[0][10]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[1][8]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[0][8]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[1][11]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[0][11]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[0][12]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[1][12]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[1][0]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[0][0]~q\ : std_logic;
SIGNAL \u1|ALT_INV_sig_arr[2][0]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[2][7]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[2][6]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[2][5]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[2][3]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[2][2]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[2][1]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[2][4]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[2][9]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[2][10]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[2][11]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[2][8]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[2][12]~q\ : std_logic;
SIGNAL \u1|ALT_INV_temp_min~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[2][0]~q\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~16_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~15_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~14_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~13_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~12_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~11_combout\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][7]~q\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~10_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~9_combout\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][10]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][11]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][12]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][9]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][8]~q\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~8_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~7_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~6_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~5_combout\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][4]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][5]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][6]~q\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][1]~q\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][2]~q\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][3]~q\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan5~3_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][8]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][12]~q\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][7]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][6]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][5]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][9]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][10]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][11]~q\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][3]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][2]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][1]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][4]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[0][0]~q\ : std_logic;
SIGNAL \u1|ALT_INV_u_arr[1][0]~q\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~24_combout\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~16_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~12_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][8]~q\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~11_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][10]~q\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~10_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][11]~q\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~9_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][12]~q\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~8_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][9]~q\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~7_combout\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~6_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][1]~q\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~5_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][3]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][2]~q\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~4_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][5]~q\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~3_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][6]~q\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~2_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][7]~q\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~1_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][4]~q\ : std_logic;
SIGNAL \l2|ALT_INV_temp_min~0_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan2~10_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan2~9_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan2~8_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][1]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][2]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][3]~q\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][5]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][6]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][4]~q\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][10]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][11]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][12]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][9]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][8]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][7]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[1][0]~q\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][7]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][6]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][5]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][3]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][2]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][1]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][4]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][9]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][10]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][11]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][8]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][12]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[0][0]~q\ : std_logic;
SIGNAL \l2|ALT_INV_sig_arr[2][0]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[2][1]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[2][2]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[2][3]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[2][5]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[2][6]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[2][7]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[2][4]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[2][9]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[2][10]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[2][8]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[2][11]~q\ : std_logic;
SIGNAL \l2|ALT_INV_temp_max~2_combout\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[2][12]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[2][0]~q\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan6~12_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan6~11_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan6~10_combout\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][11]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][11]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][12]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][12]~q\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan6~9_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan6~8_combout\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][8]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][8]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][9]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][9]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][10]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][10]~q\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan6~7_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan6~6_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan6~5_combout\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][6]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][6]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][7]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][7]~q\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][4]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][4]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][5]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][5]~q\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][2]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][2]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][3]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][3]~q\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][1]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][1]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[0][0]~q\ : std_logic;
SIGNAL \l2|ALT_INV_l_arr[1][0]~q\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~24_combout\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~23_combout\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~19_combout\ : std_logic;
SIGNAL \l1|ALT_INV_iter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u2|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~12_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[2][8]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~11_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[2][10]~q\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~10_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[2][11]~q\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~9_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[2][12]~q\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~8_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[2][9]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~7_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[2][2]~q\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~6_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[2][3]~q\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~5_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[2][1]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~4_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[2][5]~q\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~3_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[2][6]~q\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~2_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[2][7]~q\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~1_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[2][4]~q\ : std_logic;
SIGNAL \u2|ALT_INV_temp_max~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][1]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][1]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][2]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][2]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][3]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][3]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][5]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][5]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][6]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][6]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][7]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][7]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][4]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][4]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][9]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][9]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][10]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][10]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][8]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][8]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][11]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][11]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][12]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][12]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[1][0]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[0][0]~q\ : std_logic;
SIGNAL \u2|ALT_INV_sig_arr[2][0]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[2][12]~q\ : std_logic;
SIGNAL \u2|ALT_INV_temp_min~12_combout\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[2][11]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[2][10]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[2][9]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[2][8]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[2][7]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[2][6]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[2][5]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[2][4]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[2][3]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[2][2]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[2][1]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[2][0]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~16_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~15_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~14_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~13_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~12_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~11_combout\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][7]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~10_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~9_combout\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][10]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][11]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][12]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][9]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][8]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~8_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~7_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~6_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~5_combout\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][4]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][5]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][6]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][1]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][2]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][3]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan5~3_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][8]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][12]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][7]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][6]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][5]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][9]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][10]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][11]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][3]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][2]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][1]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][4]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[0][0]~q\ : std_logic;
SIGNAL \u2|ALT_INV_u_arr[1][0]~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan3~14_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \l1|ALT_INV_LessThan7~1_sumout\ : std_logic;
SIGNAL \l1|ALT_INV_l_out\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \u1|ALT_INV_LessThan7~1_sumout\ : std_logic;
SIGNAL \l2|ALT_INV_LessThan7~1_sumout\ : std_logic;
SIGNAL \l2|ALT_INV_l_out\ : std_logic_vector(12 DOWNTO 4);
SIGNAL \u2|ALT_INV_LessThan7~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\l1|ALT_INV_l_arr[1][11]~DUPLICATE_q\ <= NOT \l1|l_arr[1][11]~DUPLICATE_q\;
\l1|ALT_INV_l_arr[1][9]~DUPLICATE_q\ <= NOT \l1|l_arr[1][9]~DUPLICATE_q\;
\l1|ALT_INV_l_arr[0][9]~DUPLICATE_q\ <= NOT \l1|l_arr[0][9]~DUPLICATE_q\;
\l1|ALT_INV_l_arr[1][6]~DUPLICATE_q\ <= NOT \l1|l_arr[1][6]~DUPLICATE_q\;
\l1|ALT_INV_l_arr[0][7]~DUPLICATE_q\ <= NOT \l1|l_arr[0][7]~DUPLICATE_q\;
\l1|ALT_INV_l_arr[1][5]~DUPLICATE_q\ <= NOT \l1|l_arr[1][5]~DUPLICATE_q\;
\l1|ALT_INV_l_arr[0][5]~DUPLICATE_q\ <= NOT \l1|l_arr[0][5]~DUPLICATE_q\;
\l1|ALT_INV_l_arr[0][2]~DUPLICATE_q\ <= NOT \l1|l_arr[0][2]~DUPLICATE_q\;
\l1|ALT_INV_l_arr[0][1]~DUPLICATE_q\ <= NOT \l1|l_arr[0][1]~DUPLICATE_q\;
\u1|ALT_INV_sig_arr[2][7]~DUPLICATE_q\ <= NOT \u1|sig_arr[2][7]~DUPLICATE_q\;
\u1|ALT_INV_sig_arr[0][3]~DUPLICATE_q\ <= NOT \u1|sig_arr[0][3]~DUPLICATE_q\;
\u1|ALT_INV_u_arr[1][7]~DUPLICATE_q\ <= NOT \u1|u_arr[1][7]~DUPLICATE_q\;
\u1|ALT_INV_u_arr[1][10]~DUPLICATE_q\ <= NOT \u1|u_arr[1][10]~DUPLICATE_q\;
\u1|ALT_INV_u_arr[1][6]~DUPLICATE_q\ <= NOT \u1|u_arr[1][6]~DUPLICATE_q\;
\u1|ALT_INV_u_arr[1][1]~DUPLICATE_q\ <= NOT \u1|u_arr[1][1]~DUPLICATE_q\;
\u1|ALT_INV_u_arr[0][8]~DUPLICATE_q\ <= NOT \u1|u_arr[0][8]~DUPLICATE_q\;
\u1|ALT_INV_u_arr[0][6]~DUPLICATE_q\ <= NOT \u1|u_arr[0][6]~DUPLICATE_q\;
\u1|ALT_INV_u_arr[0][9]~DUPLICATE_q\ <= NOT \u1|u_arr[0][9]~DUPLICATE_q\;
\u1|ALT_INV_u_arr[0][11]~DUPLICATE_q\ <= NOT \u1|u_arr[0][11]~DUPLICATE_q\;
\u1|ALT_INV_u_arr[0][3]~DUPLICATE_q\ <= NOT \u1|u_arr[0][3]~DUPLICATE_q\;
\u1|ALT_INV_u_arr[0][1]~DUPLICATE_q\ <= NOT \u1|u_arr[0][1]~DUPLICATE_q\;
\u1|ALT_INV_u_arr[0][4]~DUPLICATE_q\ <= NOT \u1|u_arr[0][4]~DUPLICATE_q\;
\u1|ALT_INV_u_arr[0][0]~DUPLICATE_q\ <= NOT \u1|u_arr[0][0]~DUPLICATE_q\;
\u1|ALT_INV_u_arr[1][0]~DUPLICATE_q\ <= NOT \u1|u_arr[1][0]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[2][9]~DUPLICATE_q\ <= NOT \l2|sig_arr[2][9]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[2][6]~DUPLICATE_q\ <= NOT \l2|sig_arr[2][6]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[2][7]~DUPLICATE_q\ <= NOT \l2|sig_arr[2][7]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[2][4]~DUPLICATE_q\ <= NOT \l2|sig_arr[2][4]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[1][5]~DUPLICATE_q\ <= NOT \l2|sig_arr[1][5]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[1][6]~DUPLICATE_q\ <= NOT \l2|sig_arr[1][6]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[1][10]~DUPLICATE_q\ <= NOT \l2|sig_arr[1][10]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[1][11]~DUPLICATE_q\ <= NOT \l2|sig_arr[1][11]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[1][8]~DUPLICATE_q\ <= NOT \l2|sig_arr[1][8]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[1][0]~DUPLICATE_q\ <= NOT \l2|sig_arr[1][0]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[0][6]~DUPLICATE_q\ <= NOT \l2|sig_arr[0][6]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[0][3]~DUPLICATE_q\ <= NOT \l2|sig_arr[0][3]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[0][4]~DUPLICATE_q\ <= NOT \l2|sig_arr[0][4]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[0][10]~DUPLICATE_q\ <= NOT \l2|sig_arr[0][10]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[0][11]~DUPLICATE_q\ <= NOT \l2|sig_arr[0][11]~DUPLICATE_q\;
\l2|ALT_INV_sig_arr[0][8]~DUPLICATE_q\ <= NOT \l2|sig_arr[0][8]~DUPLICATE_q\;
\l2|ALT_INV_l_arr[1][12]~DUPLICATE_q\ <= NOT \l2|l_arr[1][12]~DUPLICATE_q\;
\l2|ALT_INV_l_arr[0][12]~DUPLICATE_q\ <= NOT \l2|l_arr[0][12]~DUPLICATE_q\;
\l2|ALT_INV_l_arr[0][8]~DUPLICATE_q\ <= NOT \l2|l_arr[0][8]~DUPLICATE_q\;
\l2|ALT_INV_l_arr[1][9]~DUPLICATE_q\ <= NOT \l2|l_arr[1][9]~DUPLICATE_q\;
\l2|ALT_INV_l_arr[0][10]~DUPLICATE_q\ <= NOT \l2|l_arr[0][10]~DUPLICATE_q\;
\l2|ALT_INV_l_arr[0][6]~DUPLICATE_q\ <= NOT \l2|l_arr[0][6]~DUPLICATE_q\;
\l2|ALT_INV_l_arr[1][7]~DUPLICATE_q\ <= NOT \l2|l_arr[1][7]~DUPLICATE_q\;
\l2|ALT_INV_l_arr[0][7]~DUPLICATE_q\ <= NOT \l2|l_arr[0][7]~DUPLICATE_q\;
\l2|ALT_INV_l_arr[0][3]~DUPLICATE_q\ <= NOT \l2|l_arr[0][3]~DUPLICATE_q\;
\u2|ALT_INV_sig_arr[0][1]~DUPLICATE_q\ <= NOT \u2|sig_arr[0][1]~DUPLICATE_q\;
\u2|ALT_INV_sig_arr[1][3]~DUPLICATE_q\ <= NOT \u2|sig_arr[1][3]~DUPLICATE_q\;
\u2|ALT_INV_sig_arr[1][5]~DUPLICATE_q\ <= NOT \u2|sig_arr[1][5]~DUPLICATE_q\;
\u2|ALT_INV_sig_arr[1][9]~DUPLICATE_q\ <= NOT \u2|sig_arr[1][9]~DUPLICATE_q\;
\u2|ALT_INV_sig_arr[0][12]~DUPLICATE_q\ <= NOT \u2|sig_arr[0][12]~DUPLICATE_q\;
\u2|ALT_INV_sig_arr[1][12]~DUPLICATE_q\ <= NOT \u2|sig_arr[1][12]~DUPLICATE_q\;
\u2|ALT_INV_u_arr[1][7]~DUPLICATE_q\ <= NOT \u2|u_arr[1][7]~DUPLICATE_q\;
\u2|ALT_INV_u_arr[1][10]~DUPLICATE_q\ <= NOT \u2|u_arr[1][10]~DUPLICATE_q\;
\u2|ALT_INV_u_arr[1][9]~DUPLICATE_q\ <= NOT \u2|u_arr[1][9]~DUPLICATE_q\;
\u2|ALT_INV_u_arr[1][8]~DUPLICATE_q\ <= NOT \u2|u_arr[1][8]~DUPLICATE_q\;
\u2|ALT_INV_u_arr[0][8]~DUPLICATE_q\ <= NOT \u2|u_arr[0][8]~DUPLICATE_q\;
\u2|ALT_INV_u_arr[0][5]~DUPLICATE_q\ <= NOT \u2|u_arr[0][5]~DUPLICATE_q\;
\u2|ALT_INV_u_arr[0][10]~DUPLICATE_q\ <= NOT \u2|u_arr[0][10]~DUPLICATE_q\;
\u2|ALT_INV_u_arr[0][11]~DUPLICATE_q\ <= NOT \u2|u_arr[0][11]~DUPLICATE_q\;
\u2|ALT_INV_u_arr[0][2]~DUPLICATE_q\ <= NOT \u2|u_arr[0][2]~DUPLICATE_q\;
\u2|ALT_INV_u_arr[1][0]~DUPLICATE_q\ <= NOT \u2|u_arr[1][0]~DUPLICATE_q\;
\ALT_INV_data_in[13]~input_o\ <= NOT \data_in[13]~input_o\;
\l1|ALT_INV_LessThan3~17_combout\ <= NOT \l1|LessThan3~17_combout\;
\l1|ALT_INV_LessThan3~16_combout\ <= NOT \l1|LessThan3~16_combout\;
\l1|ALT_INV_LessThan3~15_combout\ <= NOT \l1|LessThan3~15_combout\;
\l1|ALT_INV_LessThan3~14_combout\ <= NOT \l1|LessThan3~14_combout\;
\l1|ALT_INV_LessThan2~20_combout\ <= NOT \l1|LessThan2~20_combout\;
\l1|ALT_INV_LessThan2~19_combout\ <= NOT \l1|LessThan2~19_combout\;
\l1|ALT_INV_LessThan2~18_combout\ <= NOT \l1|LessThan2~18_combout\;
\l1|ALT_INV_LessThan2~17_combout\ <= NOT \l1|LessThan2~17_combout\;
\l1|ALT_INV_LessThan2~16_combout\ <= NOT \l1|LessThan2~16_combout\;
\l1|ALT_INV_LessThan2~15_combout\ <= NOT \l1|LessThan2~15_combout\;
\u1|ALT_INV_LessThan2~10_combout\ <= NOT \u1|LessThan2~10_combout\;
\u1|ALT_INV_LessThan2~9_combout\ <= NOT \u1|LessThan2~9_combout\;
\u1|ALT_INV_LessThan2~8_combout\ <= NOT \u1|LessThan2~8_combout\;
\u1|ALT_INV_LessThan2~7_combout\ <= NOT \u1|LessThan2~7_combout\;
\l2|ALT_INV_LessThan3~13_combout\ <= NOT \l2|LessThan3~13_combout\;
\l2|ALT_INV_LessThan3~12_combout\ <= NOT \l2|LessThan3~12_combout\;
\l2|ALT_INV_LessThan3~11_combout\ <= NOT \l2|LessThan3~11_combout\;
\l2|ALT_INV_LessThan3~10_combout\ <= NOT \l2|LessThan3~10_combout\;
\l2|ALT_INV_LessThan3~9_combout\ <= NOT \l2|LessThan3~9_combout\;
\l2|ALT_INV_LessThan2~13_combout\ <= NOT \l2|LessThan2~13_combout\;
\u2|ALT_INV_LessThan2~10_combout\ <= NOT \u2|LessThan2~10_combout\;
\u2|ALT_INV_LessThan2~9_combout\ <= NOT \u2|LessThan2~9_combout\;
\u2|ALT_INV_LessThan2~8_combout\ <= NOT \u2|LessThan2~8_combout\;
\u2|ALT_INV_LessThan2~7_combout\ <= NOT \u2|LessThan2~7_combout\;
\l1|ALT_INV_LessThan3~13_combout\ <= NOT \l1|LessThan3~13_combout\;
\l1|ALT_INV_LessThan3~12_combout\ <= NOT \l1|LessThan3~12_combout\;
\l1|ALT_INV_LessThan2~14_combout\ <= NOT \l1|LessThan2~14_combout\;
\l2|ALT_INV_LessThan3~8_combout\ <= NOT \l2|LessThan3~8_combout\;
\l2|ALT_INV_LessThan3~7_combout\ <= NOT \l2|LessThan3~7_combout\;
\l2|ALT_INV_LessThan2~12_combout\ <= NOT \l2|LessThan2~12_combout\;
\l2|ALT_INV_LessThan2~11_combout\ <= NOT \l2|LessThan2~11_combout\;
\l1|ALT_INV_LessThan2~13_combout\ <= NOT \l1|LessThan2~13_combout\;
\l1|ALT_INV_LessThan2~12_combout\ <= NOT \l1|LessThan2~12_combout\;
\l1|ALT_INV_LessThan1~3_combout\ <= NOT \l1|LessThan1~3_combout\;
\l1|ALT_INV_LessThan1~2_combout\ <= NOT \l1|LessThan1~2_combout\;
\l2|ALT_INV_LessThan1~2_combout\ <= NOT \l2|LessThan1~2_combout\;
\l2|ALT_INV_LessThan1~1_combout\ <= NOT \l2|LessThan1~1_combout\;
\l1|ALT_INV_LessThan5~2_combout\ <= NOT \l1|LessThan5~2_combout\;
\l1|ALT_INV_LessThan5~1_combout\ <= NOT \l1|LessThan5~1_combout\;
\l1|ALT_INV_LessThan5~0_combout\ <= NOT \l1|LessThan5~0_combout\;
\l1|ALT_INV_temp_min~28_combout\ <= NOT \l1|temp_min~28_combout\;
\l1|ALT_INV_temp_min~27_combout\ <= NOT \l1|temp_min~27_combout\;
\l1|ALT_INV_temp_min~25_combout\ <= NOT \l1|temp_min~25_combout\;
\l1|ALT_INV_temp_min~24_combout\ <= NOT \l1|temp_min~24_combout\;
\l1|ALT_INV_LessThan3~11_combout\ <= NOT \l1|LessThan3~11_combout\;
\l1|ALT_INV_sig_arr[2][15]~q\ <= NOT \l1|sig_arr[2][15]~q\;
\l1|ALT_INV_sig_arr[2][14]~q\ <= NOT \l1|sig_arr[2][14]~q\;
\l1|ALT_INV_sig_arr[2][13]~q\ <= NOT \l1|sig_arr[2][13]~q\;
\l1|ALT_INV_LessThan3~10_combout\ <= NOT \l1|LessThan3~10_combout\;
\l1|ALT_INV_LessThan3~9_combout\ <= NOT \l1|LessThan3~9_combout\;
\l1|ALT_INV_LessThan3~8_combout\ <= NOT \l1|LessThan3~8_combout\;
\l1|ALT_INV_temp_min~21_combout\ <= NOT \l1|temp_min~21_combout\;
\l1|ALT_INV_sig_arr[2][8]~q\ <= NOT \l1|sig_arr[2][8]~q\;
\l1|ALT_INV_LessThan3~7_combout\ <= NOT \l1|LessThan3~7_combout\;
\l1|ALT_INV_temp_min~20_combout\ <= NOT \l1|temp_min~20_combout\;
\l1|ALT_INV_sig_arr[2][10]~q\ <= NOT \l1|sig_arr[2][10]~q\;
\l1|ALT_INV_temp_min~19_combout\ <= NOT \l1|temp_min~19_combout\;
\l1|ALT_INV_sig_arr[2][11]~q\ <= NOT \l1|sig_arr[2][11]~q\;
\l1|ALT_INV_temp_min~18_combout\ <= NOT \l1|temp_min~18_combout\;
\l1|ALT_INV_sig_arr[2][12]~q\ <= NOT \l1|sig_arr[2][12]~q\;
\l1|ALT_INV_temp_min~17_combout\ <= NOT \l1|temp_min~17_combout\;
\l1|ALT_INV_sig_arr[2][9]~q\ <= NOT \l1|sig_arr[2][9]~q\;
\l1|ALT_INV_LessThan3~6_combout\ <= NOT \l1|LessThan3~6_combout\;
\l1|ALT_INV_LessThan3~5_combout\ <= NOT \l1|LessThan3~5_combout\;
\l1|ALT_INV_LessThan3~4_combout\ <= NOT \l1|LessThan3~4_combout\;
\l1|ALT_INV_temp_min~16_combout\ <= NOT \l1|temp_min~16_combout\;
\l1|ALT_INV_LessThan3~3_combout\ <= NOT \l1|LessThan3~3_combout\;
\l1|ALT_INV_temp_min~15_combout\ <= NOT \l1|temp_min~15_combout\;
\l1|ALT_INV_sig_arr[2][1]~q\ <= NOT \l1|sig_arr[2][1]~q\;
\l1|ALT_INV_LessThan3~2_combout\ <= NOT \l1|LessThan3~2_combout\;
\l1|ALT_INV_sig_arr[2][2]~q\ <= NOT \l1|sig_arr[2][2]~q\;
\l1|ALT_INV_LessThan3~1_combout\ <= NOT \l1|LessThan3~1_combout\;
\l1|ALT_INV_sig_arr[2][3]~q\ <= NOT \l1|sig_arr[2][3]~q\;
\l1|ALT_INV_LessThan3~0_combout\ <= NOT \l1|LessThan3~0_combout\;
\l1|ALT_INV_temp_min~14_combout\ <= NOT \l1|temp_min~14_combout\;
\l1|ALT_INV_sig_arr[2][5]~q\ <= NOT \l1|sig_arr[2][5]~q\;
\l1|ALT_INV_temp_min~13_combout\ <= NOT \l1|temp_min~13_combout\;
\l1|ALT_INV_sig_arr[2][6]~q\ <= NOT \l1|sig_arr[2][6]~q\;
\l1|ALT_INV_temp_min~12_combout\ <= NOT \l1|temp_min~12_combout\;
\l1|ALT_INV_sig_arr[2][7]~q\ <= NOT \l1|sig_arr[2][7]~q\;
\l1|ALT_INV_temp_min~11_combout\ <= NOT \l1|temp_min~11_combout\;
\l1|ALT_INV_LessThan2~11_combout\ <= NOT \l1|LessThan2~11_combout\;
\l1|ALT_INV_sig_arr[2][4]~q\ <= NOT \l1|sig_arr[2][4]~q\;
\l1|ALT_INV_temp_min~10_combout\ <= NOT \l1|temp_min~10_combout\;
\l1|ALT_INV_LessThan2~10_combout\ <= NOT \l1|LessThan2~10_combout\;
\l1|ALT_INV_sig_arr[1][15]~q\ <= NOT \l1|sig_arr[1][15]~q\;
\l1|ALT_INV_sig_arr[1][14]~q\ <= NOT \l1|sig_arr[1][14]~q\;
\l1|ALT_INV_sig_arr[1][13]~q\ <= NOT \l1|sig_arr[1][13]~q\;
\l1|ALT_INV_LessThan2~9_combout\ <= NOT \l1|LessThan2~9_combout\;
\l1|ALT_INV_temp_min~9_combout\ <= NOT \l1|temp_min~9_combout\;
\l1|ALT_INV_temp_min~8_combout\ <= NOT \l1|temp_min~8_combout\;
\l1|ALT_INV_temp_min~7_combout\ <= NOT \l1|temp_min~7_combout\;
\l1|ALT_INV_temp_min~6_combout\ <= NOT \l1|temp_min~6_combout\;
\l1|ALT_INV_LessThan2~8_combout\ <= NOT \l1|LessThan2~8_combout\;
\l1|ALT_INV_LessThan2~7_combout\ <= NOT \l1|LessThan2~7_combout\;
\l1|ALT_INV_sig_arr[1][8]~q\ <= NOT \l1|sig_arr[1][8]~q\;
\l1|ALT_INV_temp_min~5_combout\ <= NOT \l1|temp_min~5_combout\;
\l1|ALT_INV_sig_arr[1][7]~q\ <= NOT \l1|sig_arr[1][7]~q\;
\l1|ALT_INV_LessThan2~6_combout\ <= NOT \l1|LessThan2~6_combout\;
\l1|ALT_INV_sig_arr[1][9]~q\ <= NOT \l1|sig_arr[1][9]~q\;
\l1|ALT_INV_LessThan2~5_combout\ <= NOT \l1|LessThan2~5_combout\;
\l1|ALT_INV_sig_arr[1][10]~q\ <= NOT \l1|sig_arr[1][10]~q\;
\l1|ALT_INV_LessThan2~4_combout\ <= NOT \l1|LessThan2~4_combout\;
\l1|ALT_INV_sig_arr[1][11]~q\ <= NOT \l1|sig_arr[1][11]~q\;
\l1|ALT_INV_sig_arr[1][12]~q\ <= NOT \l1|sig_arr[1][12]~q\;
\l1|ALT_INV_LessThan2~3_combout\ <= NOT \l1|LessThan2~3_combout\;
\l1|ALT_INV_LessThan2~2_combout\ <= NOT \l1|LessThan2~2_combout\;
\l1|ALT_INV_LessThan2~1_combout\ <= NOT \l1|LessThan2~1_combout\;
\l1|ALT_INV_sig_arr[1][1]~q\ <= NOT \l1|sig_arr[1][1]~q\;
\l1|ALT_INV_temp_min~4_combout\ <= NOT \l1|temp_min~4_combout\;
\l1|ALT_INV_sig_arr[1][2]~q\ <= NOT \l1|sig_arr[1][2]~q\;
\l1|ALT_INV_temp_min~3_combout\ <= NOT \l1|temp_min~3_combout\;
\l1|ALT_INV_sig_arr[1][3]~q\ <= NOT \l1|sig_arr[1][3]~q\;
\l1|ALT_INV_LessThan2~0_combout\ <= NOT \l1|LessThan2~0_combout\;
\l1|ALT_INV_temp_min~2_combout\ <= NOT \l1|temp_min~2_combout\;
\l1|ALT_INV_sig_arr[1][5]~q\ <= NOT \l1|sig_arr[1][5]~q\;
\l1|ALT_INV_temp_min~1_combout\ <= NOT \l1|temp_min~1_combout\;
\l1|ALT_INV_sig_arr[1][6]~q\ <= NOT \l1|sig_arr[1][6]~q\;
\l1|ALT_INV_temp_min~0_combout\ <= NOT \l1|temp_min~0_combout\;
\l1|ALT_INV_sig_arr[1][4]~q\ <= NOT \l1|sig_arr[1][4]~q\;
\l1|ALT_INV_sig_arr[1][0]~q\ <= NOT \l1|sig_arr[1][0]~q\;
\l1|ALT_INV_LessThan1~1_combout\ <= NOT \l1|LessThan1~1_combout\;
\l1|ALT_INV_LessThan1~0_combout\ <= NOT \l1|LessThan1~0_combout\;
\l1|ALT_INV_sig_arr[0][7]~q\ <= NOT \l1|sig_arr[0][7]~q\;
\l1|ALT_INV_sig_arr[0][6]~q\ <= NOT \l1|sig_arr[0][6]~q\;
\l1|ALT_INV_sig_arr[0][5]~q\ <= NOT \l1|sig_arr[0][5]~q\;
\l1|ALT_INV_sig_arr[0][3]~q\ <= NOT \l1|sig_arr[0][3]~q\;
\l1|ALT_INV_sig_arr[0][2]~q\ <= NOT \l1|sig_arr[0][2]~q\;
\l1|ALT_INV_sig_arr[0][1]~q\ <= NOT \l1|sig_arr[0][1]~q\;
\l1|ALT_INV_sig_arr[0][4]~q\ <= NOT \l1|sig_arr[0][4]~q\;
\l1|ALT_INV_sig_arr[0][11]~q\ <= NOT \l1|sig_arr[0][11]~q\;
\l1|ALT_INV_sig_arr[0][10]~q\ <= NOT \l1|sig_arr[0][10]~q\;
\l1|ALT_INV_sig_arr[0][9]~q\ <= NOT \l1|sig_arr[0][9]~q\;
\l1|ALT_INV_sig_arr[0][8]~q\ <= NOT \l1|sig_arr[0][8]~q\;
\l1|ALT_INV_sig_arr[0][12]~q\ <= NOT \l1|sig_arr[0][12]~q\;
\l1|ALT_INV_sig_arr[0][15]~q\ <= NOT \l1|sig_arr[0][15]~q\;
\l1|ALT_INV_sig_arr[0][14]~q\ <= NOT \l1|sig_arr[0][14]~q\;
\l1|ALT_INV_sig_arr[0][13]~q\ <= NOT \l1|sig_arr[0][13]~q\;
\l1|ALT_INV_sig_arr[0][0]~q\ <= NOT \l1|sig_arr[0][0]~q\;
\l1|ALT_INV_sig_arr[2][0]~q\ <= NOT \l1|sig_arr[2][0]~q\;
\l2|ALT_INV_LessThan5~2_combout\ <= NOT \l2|LessThan5~2_combout\;
\l2|ALT_INV_LessThan5~1_combout\ <= NOT \l2|LessThan5~1_combout\;
\l2|ALT_INV_LessThan5~0_combout\ <= NOT \l2|LessThan5~0_combout\;
\l1|ALT_INV_l_arr[2][1]~q\ <= NOT \l1|l_arr[2][1]~q\;
\l1|ALT_INV_l_arr[2][2]~q\ <= NOT \l1|l_arr[2][2]~q\;
\l1|ALT_INV_l_arr[2][3]~q\ <= NOT \l1|l_arr[2][3]~q\;
\l1|ALT_INV_l_arr[2][5]~q\ <= NOT \l1|l_arr[2][5]~q\;
\l1|ALT_INV_l_arr[2][6]~q\ <= NOT \l1|l_arr[2][6]~q\;
\l1|ALT_INV_l_arr[2][7]~q\ <= NOT \l1|l_arr[2][7]~q\;
\l1|ALT_INV_l_arr[2][4]~q\ <= NOT \l1|l_arr[2][4]~q\;
\l1|ALT_INV_l_arr[2][9]~q\ <= NOT \l1|l_arr[2][9]~q\;
\l1|ALT_INV_l_arr[2][10]~q\ <= NOT \l1|l_arr[2][10]~q\;
\l1|ALT_INV_l_arr[2][8]~q\ <= NOT \l1|l_arr[2][8]~q\;
\l1|ALT_INV_l_arr[2][11]~q\ <= NOT \l1|l_arr[2][11]~q\;
\l1|ALT_INV_l_arr[2][12]~q\ <= NOT \l1|l_arr[2][12]~q\;
\l1|ALT_INV_l_arr[2][0]~q\ <= NOT \l1|l_arr[2][0]~q\;
\l1|ALT_INV_LessThan6~12_combout\ <= NOT \l1|LessThan6~12_combout\;
\l1|ALT_INV_LessThan6~11_combout\ <= NOT \l1|LessThan6~11_combout\;
\l1|ALT_INV_LessThan6~10_combout\ <= NOT \l1|LessThan6~10_combout\;
\l1|ALT_INV_l_arr[1][11]~q\ <= NOT \l1|l_arr[1][11]~q\;
\l1|ALT_INV_l_arr[0][11]~q\ <= NOT \l1|l_arr[0][11]~q\;
\l1|ALT_INV_l_arr[1][12]~q\ <= NOT \l1|l_arr[1][12]~q\;
\l1|ALT_INV_l_arr[0][12]~q\ <= NOT \l1|l_arr[0][12]~q\;
\l1|ALT_INV_LessThan6~9_combout\ <= NOT \l1|LessThan6~9_combout\;
\l1|ALT_INV_LessThan6~8_combout\ <= NOT \l1|LessThan6~8_combout\;
\l1|ALT_INV_l_arr[1][8]~q\ <= NOT \l1|l_arr[1][8]~q\;
\l1|ALT_INV_l_arr[0][8]~q\ <= NOT \l1|l_arr[0][8]~q\;
\l1|ALT_INV_l_arr[1][9]~q\ <= NOT \l1|l_arr[1][9]~q\;
\l1|ALT_INV_l_arr[0][9]~q\ <= NOT \l1|l_arr[0][9]~q\;
\l1|ALT_INV_l_arr[1][10]~q\ <= NOT \l1|l_arr[1][10]~q\;
\l1|ALT_INV_l_arr[0][10]~q\ <= NOT \l1|l_arr[0][10]~q\;
\l1|ALT_INV_LessThan6~7_combout\ <= NOT \l1|LessThan6~7_combout\;
\l1|ALT_INV_LessThan6~6_combout\ <= NOT \l1|LessThan6~6_combout\;
\l1|ALT_INV_LessThan6~5_combout\ <= NOT \l1|LessThan6~5_combout\;
\l1|ALT_INV_l_arr[1][6]~q\ <= NOT \l1|l_arr[1][6]~q\;
\l1|ALT_INV_l_arr[0][6]~q\ <= NOT \l1|l_arr[0][6]~q\;
\l1|ALT_INV_l_arr[1][7]~q\ <= NOT \l1|l_arr[1][7]~q\;
\l1|ALT_INV_l_arr[0][7]~q\ <= NOT \l1|l_arr[0][7]~q\;
\l1|ALT_INV_LessThan6~4_combout\ <= NOT \l1|LessThan6~4_combout\;
\l1|ALT_INV_LessThan6~3_combout\ <= NOT \l1|LessThan6~3_combout\;
\l1|ALT_INV_l_arr[1][4]~q\ <= NOT \l1|l_arr[1][4]~q\;
\l1|ALT_INV_l_arr[0][4]~q\ <= NOT \l1|l_arr[0][4]~q\;
\l1|ALT_INV_l_arr[1][5]~q\ <= NOT \l1|l_arr[1][5]~q\;
\l1|ALT_INV_l_arr[0][5]~q\ <= NOT \l1|l_arr[0][5]~q\;
\l1|ALT_INV_LessThan6~2_combout\ <= NOT \l1|LessThan6~2_combout\;
\l1|ALT_INV_LessThan6~1_combout\ <= NOT \l1|LessThan6~1_combout\;
\l1|ALT_INV_l_arr[1][2]~q\ <= NOT \l1|l_arr[1][2]~q\;
\l1|ALT_INV_l_arr[0][2]~q\ <= NOT \l1|l_arr[0][2]~q\;
\l1|ALT_INV_l_arr[1][3]~q\ <= NOT \l1|l_arr[1][3]~q\;
\l1|ALT_INV_l_arr[0][3]~q\ <= NOT \l1|l_arr[0][3]~q\;
\l1|ALT_INV_LessThan6~0_combout\ <= NOT \l1|LessThan6~0_combout\;
\l1|ALT_INV_l_arr[1][1]~q\ <= NOT \l1|l_arr[1][1]~q\;
\l1|ALT_INV_l_arr[0][1]~q\ <= NOT \l1|l_arr[0][1]~q\;
\l1|ALT_INV_l_arr[0][0]~q\ <= NOT \l1|l_arr[0][0]~q\;
\l1|ALT_INV_l_arr[1][0]~q\ <= NOT \l1|l_arr[1][0]~q\;
\u1|ALT_INV_temp_max~18_combout\ <= NOT \u1|temp_max~18_combout\;
\u1|ALT_INV_temp_max~13_combout\ <= NOT \u1|temp_max~13_combout\;
\u1|ALT_INV_LessThan3~8_combout\ <= NOT \u1|LessThan3~8_combout\;
\u1|ALT_INV_LessThan3~7_combout\ <= NOT \u1|LessThan3~7_combout\;
\u1|ALT_INV_LessThan3~6_combout\ <= NOT \u1|LessThan3~6_combout\;
\u1|ALT_INV_temp_max~12_combout\ <= NOT \u1|temp_max~12_combout\;
\u1|ALT_INV_sig_arr[2][8]~q\ <= NOT \u1|sig_arr[2][8]~q\;
\u1|ALT_INV_LessThan3~5_combout\ <= NOT \u1|LessThan3~5_combout\;
\u1|ALT_INV_temp_max~11_combout\ <= NOT \u1|temp_max~11_combout\;
\u1|ALT_INV_sig_arr[2][10]~q\ <= NOT \u1|sig_arr[2][10]~q\;
\u1|ALT_INV_temp_max~10_combout\ <= NOT \u1|temp_max~10_combout\;
\u1|ALT_INV_sig_arr[2][11]~q\ <= NOT \u1|sig_arr[2][11]~q\;
\u1|ALT_INV_temp_max~9_combout\ <= NOT \u1|temp_max~9_combout\;
\u1|ALT_INV_sig_arr[2][12]~q\ <= NOT \u1|sig_arr[2][12]~q\;
\u1|ALT_INV_temp_max~8_combout\ <= NOT \u1|temp_max~8_combout\;
\u1|ALT_INV_sig_arr[2][9]~q\ <= NOT \u1|sig_arr[2][9]~q\;
\u1|ALT_INV_LessThan3~4_combout\ <= NOT \u1|LessThan3~4_combout\;
\u1|ALT_INV_LessThan3~3_combout\ <= NOT \u1|LessThan3~3_combout\;
\u1|ALT_INV_LessThan3~2_combout\ <= NOT \u1|LessThan3~2_combout\;
\u1|ALT_INV_LessThan3~1_combout\ <= NOT \u1|LessThan3~1_combout\;
\u1|ALT_INV_temp_max~7_combout\ <= NOT \u1|temp_max~7_combout\;
\u1|ALT_INV_sig_arr[2][2]~q\ <= NOT \u1|sig_arr[2][2]~q\;
\u1|ALT_INV_temp_max~6_combout\ <= NOT \u1|temp_max~6_combout\;
\u1|ALT_INV_sig_arr[2][3]~q\ <= NOT \u1|sig_arr[2][3]~q\;
\u1|ALT_INV_temp_max~5_combout\ <= NOT \u1|temp_max~5_combout\;
\u1|ALT_INV_sig_arr[2][1]~q\ <= NOT \u1|sig_arr[2][1]~q\;
\u1|ALT_INV_LessThan3~0_combout\ <= NOT \u1|LessThan3~0_combout\;
\u1|ALT_INV_temp_max~4_combout\ <= NOT \u1|temp_max~4_combout\;
\u1|ALT_INV_sig_arr[2][5]~q\ <= NOT \u1|sig_arr[2][5]~q\;
\u1|ALT_INV_temp_max~3_combout\ <= NOT \u1|temp_max~3_combout\;
\u1|ALT_INV_sig_arr[2][6]~q\ <= NOT \u1|sig_arr[2][6]~q\;
\u1|ALT_INV_temp_max~2_combout\ <= NOT \u1|temp_max~2_combout\;
\u1|ALT_INV_sig_arr[2][7]~q\ <= NOT \u1|sig_arr[2][7]~q\;
\u1|ALT_INV_temp_max~1_combout\ <= NOT \u1|temp_max~1_combout\;
\u1|ALT_INV_sig_arr[2][4]~q\ <= NOT \u1|sig_arr[2][4]~q\;
\u1|ALT_INV_temp_max~0_combout\ <= NOT \u1|temp_max~0_combout\;
\u1|ALT_INV_LessThan2~6_combout\ <= NOT \u1|LessThan2~6_combout\;
\u1|ALT_INV_LessThan2~5_combout\ <= NOT \u1|LessThan2~5_combout\;
\u1|ALT_INV_LessThan2~4_combout\ <= NOT \u1|LessThan2~4_combout\;
\u1|ALT_INV_LessThan2~3_combout\ <= NOT \u1|LessThan2~3_combout\;
\u1|ALT_INV_LessThan2~2_combout\ <= NOT \u1|LessThan2~2_combout\;
\u1|ALT_INV_sig_arr[1][1]~q\ <= NOT \u1|sig_arr[1][1]~q\;
\u1|ALT_INV_sig_arr[0][1]~q\ <= NOT \u1|sig_arr[0][1]~q\;
\u1|ALT_INV_sig_arr[1][2]~q\ <= NOT \u1|sig_arr[1][2]~q\;
\u1|ALT_INV_sig_arr[0][2]~q\ <= NOT \u1|sig_arr[0][2]~q\;
\u1|ALT_INV_sig_arr[1][3]~q\ <= NOT \u1|sig_arr[1][3]~q\;
\u1|ALT_INV_sig_arr[0][3]~q\ <= NOT \u1|sig_arr[0][3]~q\;
\u1|ALT_INV_LessThan2~1_combout\ <= NOT \u1|LessThan2~1_combout\;
\u1|ALT_INV_sig_arr[1][5]~q\ <= NOT \u1|sig_arr[1][5]~q\;
\u1|ALT_INV_sig_arr[0][5]~q\ <= NOT \u1|sig_arr[0][5]~q\;
\u1|ALT_INV_sig_arr[1][6]~q\ <= NOT \u1|sig_arr[1][6]~q\;
\u1|ALT_INV_sig_arr[0][6]~q\ <= NOT \u1|sig_arr[0][6]~q\;
\u1|ALT_INV_sig_arr[1][7]~q\ <= NOT \u1|sig_arr[1][7]~q\;
\u1|ALT_INV_sig_arr[0][7]~q\ <= NOT \u1|sig_arr[0][7]~q\;
\u1|ALT_INV_sig_arr[1][4]~q\ <= NOT \u1|sig_arr[1][4]~q\;
\u1|ALT_INV_sig_arr[0][4]~q\ <= NOT \u1|sig_arr[0][4]~q\;
\u1|ALT_INV_LessThan2~0_combout\ <= NOT \u1|LessThan2~0_combout\;
\u1|ALT_INV_sig_arr[1][9]~q\ <= NOT \u1|sig_arr[1][9]~q\;
\u1|ALT_INV_sig_arr[0][9]~q\ <= NOT \u1|sig_arr[0][9]~q\;
\u1|ALT_INV_sig_arr[1][10]~q\ <= NOT \u1|sig_arr[1][10]~q\;
\u1|ALT_INV_sig_arr[0][10]~q\ <= NOT \u1|sig_arr[0][10]~q\;
\u1|ALT_INV_sig_arr[1][8]~q\ <= NOT \u1|sig_arr[1][8]~q\;
\u1|ALT_INV_sig_arr[0][8]~q\ <= NOT \u1|sig_arr[0][8]~q\;
\u1|ALT_INV_sig_arr[1][11]~q\ <= NOT \u1|sig_arr[1][11]~q\;
\u1|ALT_INV_sig_arr[0][11]~q\ <= NOT \u1|sig_arr[0][11]~q\;
\u1|ALT_INV_sig_arr[0][12]~q\ <= NOT \u1|sig_arr[0][12]~q\;
\u1|ALT_INV_sig_arr[1][12]~q\ <= NOT \u1|sig_arr[1][12]~q\;
\u1|ALT_INV_sig_arr[1][0]~q\ <= NOT \u1|sig_arr[1][0]~q\;
\u1|ALT_INV_sig_arr[0][0]~q\ <= NOT \u1|sig_arr[0][0]~q\;
\u1|ALT_INV_sig_arr[2][0]~q\ <= NOT \u1|sig_arr[2][0]~q\;
\u1|ALT_INV_u_arr[2][7]~q\ <= NOT \u1|u_arr[2][7]~q\;
\u1|ALT_INV_u_arr[2][6]~q\ <= NOT \u1|u_arr[2][6]~q\;
\u1|ALT_INV_u_arr[2][5]~q\ <= NOT \u1|u_arr[2][5]~q\;
\u1|ALT_INV_u_arr[2][3]~q\ <= NOT \u1|u_arr[2][3]~q\;
\u1|ALT_INV_u_arr[2][2]~q\ <= NOT \u1|u_arr[2][2]~q\;
\u1|ALT_INV_u_arr[2][1]~q\ <= NOT \u1|u_arr[2][1]~q\;
\u1|ALT_INV_u_arr[2][4]~q\ <= NOT \u1|u_arr[2][4]~q\;
\u1|ALT_INV_u_arr[2][9]~q\ <= NOT \u1|u_arr[2][9]~q\;
\u1|ALT_INV_u_arr[2][10]~q\ <= NOT \u1|u_arr[2][10]~q\;
\u1|ALT_INV_u_arr[2][11]~q\ <= NOT \u1|u_arr[2][11]~q\;
\u1|ALT_INV_u_arr[2][8]~q\ <= NOT \u1|u_arr[2][8]~q\;
\u1|ALT_INV_u_arr[2][12]~q\ <= NOT \u1|u_arr[2][12]~q\;
\u1|ALT_INV_temp_min~1_combout\ <= NOT \u1|temp_min~1_combout\;
\u1|ALT_INV_u_arr[2][0]~q\ <= NOT \u1|u_arr[2][0]~q\;
\u1|ALT_INV_LessThan6~16_combout\ <= NOT \u1|LessThan6~16_combout\;
\u1|ALT_INV_LessThan6~15_combout\ <= NOT \u1|LessThan6~15_combout\;
\u1|ALT_INV_LessThan6~14_combout\ <= NOT \u1|LessThan6~14_combout\;
\u1|ALT_INV_LessThan6~13_combout\ <= NOT \u1|LessThan6~13_combout\;
\u1|ALT_INV_LessThan6~12_combout\ <= NOT \u1|LessThan6~12_combout\;
\u1|ALT_INV_LessThan6~11_combout\ <= NOT \u1|LessThan6~11_combout\;
\u1|ALT_INV_u_arr[1][7]~q\ <= NOT \u1|u_arr[1][7]~q\;
\u1|ALT_INV_LessThan6~10_combout\ <= NOT \u1|LessThan6~10_combout\;
\u1|ALT_INV_LessThan6~9_combout\ <= NOT \u1|LessThan6~9_combout\;
\u1|ALT_INV_u_arr[1][10]~q\ <= NOT \u1|u_arr[1][10]~q\;
\u1|ALT_INV_u_arr[1][11]~q\ <= NOT \u1|u_arr[1][11]~q\;
\u1|ALT_INV_u_arr[1][12]~q\ <= NOT \u1|u_arr[1][12]~q\;
\u1|ALT_INV_u_arr[1][9]~q\ <= NOT \u1|u_arr[1][9]~q\;
\u1|ALT_INV_u_arr[1][8]~q\ <= NOT \u1|u_arr[1][8]~q\;
\u1|ALT_INV_LessThan6~8_combout\ <= NOT \u1|LessThan6~8_combout\;
\u1|ALT_INV_LessThan6~7_combout\ <= NOT \u1|LessThan6~7_combout\;
\u1|ALT_INV_LessThan6~6_combout\ <= NOT \u1|LessThan6~6_combout\;
\u1|ALT_INV_LessThan6~5_combout\ <= NOT \u1|LessThan6~5_combout\;
\u1|ALT_INV_u_arr[1][4]~q\ <= NOT \u1|u_arr[1][4]~q\;
\u1|ALT_INV_u_arr[1][5]~q\ <= NOT \u1|u_arr[1][5]~q\;
\u1|ALT_INV_u_arr[1][6]~q\ <= NOT \u1|u_arr[1][6]~q\;
\u1|ALT_INV_LessThan6~4_combout\ <= NOT \u1|LessThan6~4_combout\;
\u1|ALT_INV_LessThan6~3_combout\ <= NOT \u1|LessThan6~3_combout\;
\u1|ALT_INV_LessThan6~2_combout\ <= NOT \u1|LessThan6~2_combout\;
\u1|ALT_INV_u_arr[1][1]~q\ <= NOT \u1|u_arr[1][1]~q\;
\u1|ALT_INV_LessThan6~1_combout\ <= NOT \u1|LessThan6~1_combout\;
\u1|ALT_INV_u_arr[1][2]~q\ <= NOT \u1|u_arr[1][2]~q\;
\u1|ALT_INV_LessThan6~0_combout\ <= NOT \u1|LessThan6~0_combout\;
\u1|ALT_INV_u_arr[1][3]~q\ <= NOT \u1|u_arr[1][3]~q\;
\u1|ALT_INV_LessThan5~3_combout\ <= NOT \u1|LessThan5~3_combout\;
\u1|ALT_INV_LessThan5~2_combout\ <= NOT \u1|LessThan5~2_combout\;
\u1|ALT_INV_u_arr[0][8]~q\ <= NOT \u1|u_arr[0][8]~q\;
\u1|ALT_INV_u_arr[0][12]~q\ <= NOT \u1|u_arr[0][12]~q\;
\u1|ALT_INV_LessThan5~1_combout\ <= NOT \u1|LessThan5~1_combout\;
\u1|ALT_INV_u_arr[0][7]~q\ <= NOT \u1|u_arr[0][7]~q\;
\u1|ALT_INV_u_arr[0][6]~q\ <= NOT \u1|u_arr[0][6]~q\;
\u1|ALT_INV_u_arr[0][5]~q\ <= NOT \u1|u_arr[0][5]~q\;
\u1|ALT_INV_u_arr[0][9]~q\ <= NOT \u1|u_arr[0][9]~q\;
\u1|ALT_INV_u_arr[0][10]~q\ <= NOT \u1|u_arr[0][10]~q\;
\u1|ALT_INV_u_arr[0][11]~q\ <= NOT \u1|u_arr[0][11]~q\;
\u1|ALT_INV_LessThan5~0_combout\ <= NOT \u1|LessThan5~0_combout\;
\u1|ALT_INV_u_arr[0][3]~q\ <= NOT \u1|u_arr[0][3]~q\;
\u1|ALT_INV_u_arr[0][2]~q\ <= NOT \u1|u_arr[0][2]~q\;
\u1|ALT_INV_u_arr[0][1]~q\ <= NOT \u1|u_arr[0][1]~q\;
\u1|ALT_INV_u_arr[0][4]~q\ <= NOT \u1|u_arr[0][4]~q\;
\u1|ALT_INV_u_arr[0][0]~q\ <= NOT \u1|u_arr[0][0]~q\;
\u1|ALT_INV_u_arr[1][0]~q\ <= NOT \u1|u_arr[1][0]~q\;
\l2|ALT_INV_temp_min~24_combout\ <= NOT \l2|temp_min~24_combout\;
\l2|ALT_INV_temp_min~16_combout\ <= NOT \l2|temp_min~16_combout\;
\l2|ALT_INV_LessThan3~6_combout\ <= NOT \l2|LessThan3~6_combout\;
\l2|ALT_INV_LessThan3~5_combout\ <= NOT \l2|LessThan3~5_combout\;
\l2|ALT_INV_LessThan3~4_combout\ <= NOT \l2|LessThan3~4_combout\;
\l2|ALT_INV_temp_min~12_combout\ <= NOT \l2|temp_min~12_combout\;
\l2|ALT_INV_sig_arr[2][8]~q\ <= NOT \l2|sig_arr[2][8]~q\;
\l2|ALT_INV_LessThan3~3_combout\ <= NOT \l2|LessThan3~3_combout\;
\l2|ALT_INV_temp_min~11_combout\ <= NOT \l2|temp_min~11_combout\;
\l2|ALT_INV_sig_arr[2][10]~q\ <= NOT \l2|sig_arr[2][10]~q\;
\l2|ALT_INV_temp_min~10_combout\ <= NOT \l2|temp_min~10_combout\;
\l2|ALT_INV_sig_arr[2][11]~q\ <= NOT \l2|sig_arr[2][11]~q\;
\l2|ALT_INV_temp_min~9_combout\ <= NOT \l2|temp_min~9_combout\;
\l2|ALT_INV_sig_arr[2][12]~q\ <= NOT \l2|sig_arr[2][12]~q\;
\l2|ALT_INV_temp_min~8_combout\ <= NOT \l2|temp_min~8_combout\;
\l2|ALT_INV_sig_arr[2][9]~q\ <= NOT \l2|sig_arr[2][9]~q\;
\l2|ALT_INV_LessThan3~2_combout\ <= NOT \l2|LessThan3~2_combout\;
\l2|ALT_INV_LessThan3~1_combout\ <= NOT \l2|LessThan3~1_combout\;
\l2|ALT_INV_temp_min~7_combout\ <= NOT \l2|temp_min~7_combout\;
\l2|ALT_INV_temp_min~6_combout\ <= NOT \l2|temp_min~6_combout\;
\l2|ALT_INV_sig_arr[2][1]~q\ <= NOT \l2|sig_arr[2][1]~q\;
\l2|ALT_INV_temp_min~5_combout\ <= NOT \l2|temp_min~5_combout\;
\l2|ALT_INV_LessThan3~0_combout\ <= NOT \l2|LessThan3~0_combout\;
\l2|ALT_INV_sig_arr[2][3]~q\ <= NOT \l2|sig_arr[2][3]~q\;
\l2|ALT_INV_sig_arr[2][2]~q\ <= NOT \l2|sig_arr[2][2]~q\;
\l2|ALT_INV_temp_min~4_combout\ <= NOT \l2|temp_min~4_combout\;
\l2|ALT_INV_sig_arr[2][5]~q\ <= NOT \l2|sig_arr[2][5]~q\;
\l2|ALT_INV_temp_min~3_combout\ <= NOT \l2|temp_min~3_combout\;
\l2|ALT_INV_sig_arr[2][6]~q\ <= NOT \l2|sig_arr[2][6]~q\;
\l2|ALT_INV_temp_min~2_combout\ <= NOT \l2|temp_min~2_combout\;
\l2|ALT_INV_sig_arr[2][7]~q\ <= NOT \l2|sig_arr[2][7]~q\;
\l2|ALT_INV_temp_min~1_combout\ <= NOT \l2|temp_min~1_combout\;
\l2|ALT_INV_sig_arr[2][4]~q\ <= NOT \l2|sig_arr[2][4]~q\;
\l2|ALT_INV_temp_min~0_combout\ <= NOT \l2|temp_min~0_combout\;
\l2|ALT_INV_LessThan2~10_combout\ <= NOT \l2|LessThan2~10_combout\;
\l2|ALT_INV_LessThan2~9_combout\ <= NOT \l2|LessThan2~9_combout\;
\l2|ALT_INV_LessThan2~8_combout\ <= NOT \l2|LessThan2~8_combout\;
\l2|ALT_INV_LessThan2~7_combout\ <= NOT \l2|LessThan2~7_combout\;
\l2|ALT_INV_LessThan2~6_combout\ <= NOT \l2|LessThan2~6_combout\;
\l2|ALT_INV_LessThan2~5_combout\ <= NOT \l2|LessThan2~5_combout\;
\l2|ALT_INV_LessThan2~4_combout\ <= NOT \l2|LessThan2~4_combout\;
\l2|ALT_INV_sig_arr[1][1]~q\ <= NOT \l2|sig_arr[1][1]~q\;
\l2|ALT_INV_sig_arr[1][2]~q\ <= NOT \l2|sig_arr[1][2]~q\;
\l2|ALT_INV_sig_arr[1][3]~q\ <= NOT \l2|sig_arr[1][3]~q\;
\l2|ALT_INV_LessThan2~3_combout\ <= NOT \l2|LessThan2~3_combout\;
\l2|ALT_INV_sig_arr[1][5]~q\ <= NOT \l2|sig_arr[1][5]~q\;
\l2|ALT_INV_sig_arr[1][6]~q\ <= NOT \l2|sig_arr[1][6]~q\;
\l2|ALT_INV_sig_arr[1][4]~q\ <= NOT \l2|sig_arr[1][4]~q\;
\l2|ALT_INV_LessThan2~2_combout\ <= NOT \l2|LessThan2~2_combout\;
\l2|ALT_INV_LessThan2~1_combout\ <= NOT \l2|LessThan2~1_combout\;
\l2|ALT_INV_LessThan2~0_combout\ <= NOT \l2|LessThan2~0_combout\;
\l2|ALT_INV_sig_arr[1][10]~q\ <= NOT \l2|sig_arr[1][10]~q\;
\l2|ALT_INV_sig_arr[1][11]~q\ <= NOT \l2|sig_arr[1][11]~q\;
\l2|ALT_INV_sig_arr[1][12]~q\ <= NOT \l2|sig_arr[1][12]~q\;
\l2|ALT_INV_sig_arr[1][9]~q\ <= NOT \l2|sig_arr[1][9]~q\;
\l2|ALT_INV_sig_arr[1][8]~q\ <= NOT \l2|sig_arr[1][8]~q\;
\l2|ALT_INV_sig_arr[1][7]~q\ <= NOT \l2|sig_arr[1][7]~q\;
\l2|ALT_INV_sig_arr[1][0]~q\ <= NOT \l2|sig_arr[1][0]~q\;
\l2|ALT_INV_LessThan1~0_combout\ <= NOT \l2|LessThan1~0_combout\;
\l2|ALT_INV_sig_arr[0][7]~q\ <= NOT \l2|sig_arr[0][7]~q\;
\l2|ALT_INV_sig_arr[0][6]~q\ <= NOT \l2|sig_arr[0][6]~q\;
\l2|ALT_INV_sig_arr[0][5]~q\ <= NOT \l2|sig_arr[0][5]~q\;
\l2|ALT_INV_sig_arr[0][3]~q\ <= NOT \l2|sig_arr[0][3]~q\;
\l2|ALT_INV_sig_arr[0][2]~q\ <= NOT \l2|sig_arr[0][2]~q\;
\l2|ALT_INV_sig_arr[0][1]~q\ <= NOT \l2|sig_arr[0][1]~q\;
\l2|ALT_INV_sig_arr[0][4]~q\ <= NOT \l2|sig_arr[0][4]~q\;
\l2|ALT_INV_sig_arr[0][9]~q\ <= NOT \l2|sig_arr[0][9]~q\;
\l2|ALT_INV_sig_arr[0][10]~q\ <= NOT \l2|sig_arr[0][10]~q\;
\l2|ALT_INV_sig_arr[0][11]~q\ <= NOT \l2|sig_arr[0][11]~q\;
\l2|ALT_INV_sig_arr[0][8]~q\ <= NOT \l2|sig_arr[0][8]~q\;
\l2|ALT_INV_sig_arr[0][12]~q\ <= NOT \l2|sig_arr[0][12]~q\;
\l2|ALT_INV_sig_arr[0][0]~q\ <= NOT \l2|sig_arr[0][0]~q\;
\l2|ALT_INV_sig_arr[2][0]~q\ <= NOT \l2|sig_arr[2][0]~q\;
\l2|ALT_INV_l_arr[2][1]~q\ <= NOT \l2|l_arr[2][1]~q\;
\l2|ALT_INV_l_arr[2][2]~q\ <= NOT \l2|l_arr[2][2]~q\;
\l2|ALT_INV_l_arr[2][3]~q\ <= NOT \l2|l_arr[2][3]~q\;
\l2|ALT_INV_l_arr[2][5]~q\ <= NOT \l2|l_arr[2][5]~q\;
\l2|ALT_INV_l_arr[2][6]~q\ <= NOT \l2|l_arr[2][6]~q\;
\l2|ALT_INV_l_arr[2][7]~q\ <= NOT \l2|l_arr[2][7]~q\;
\l2|ALT_INV_l_arr[2][4]~q\ <= NOT \l2|l_arr[2][4]~q\;
\l2|ALT_INV_l_arr[2][9]~q\ <= NOT \l2|l_arr[2][9]~q\;
\l2|ALT_INV_l_arr[2][10]~q\ <= NOT \l2|l_arr[2][10]~q\;
\l2|ALT_INV_l_arr[2][8]~q\ <= NOT \l2|l_arr[2][8]~q\;
\l2|ALT_INV_l_arr[2][11]~q\ <= NOT \l2|l_arr[2][11]~q\;
\l2|ALT_INV_temp_max~2_combout\ <= NOT \l2|temp_max~2_combout\;
\l2|ALT_INV_l_arr[2][12]~q\ <= NOT \l2|l_arr[2][12]~q\;
\l2|ALT_INV_l_arr[2][0]~q\ <= NOT \l2|l_arr[2][0]~q\;
\l2|ALT_INV_LessThan6~12_combout\ <= NOT \l2|LessThan6~12_combout\;
\l2|ALT_INV_LessThan6~11_combout\ <= NOT \l2|LessThan6~11_combout\;
\l2|ALT_INV_LessThan6~10_combout\ <= NOT \l2|LessThan6~10_combout\;
\l2|ALT_INV_l_arr[1][11]~q\ <= NOT \l2|l_arr[1][11]~q\;
\l2|ALT_INV_l_arr[0][11]~q\ <= NOT \l2|l_arr[0][11]~q\;
\l2|ALT_INV_l_arr[1][12]~q\ <= NOT \l2|l_arr[1][12]~q\;
\l2|ALT_INV_l_arr[0][12]~q\ <= NOT \l2|l_arr[0][12]~q\;
\l2|ALT_INV_LessThan6~9_combout\ <= NOT \l2|LessThan6~9_combout\;
\l2|ALT_INV_LessThan6~8_combout\ <= NOT \l2|LessThan6~8_combout\;
\l2|ALT_INV_l_arr[1][8]~q\ <= NOT \l2|l_arr[1][8]~q\;
\l2|ALT_INV_l_arr[0][8]~q\ <= NOT \l2|l_arr[0][8]~q\;
\l2|ALT_INV_l_arr[1][9]~q\ <= NOT \l2|l_arr[1][9]~q\;
\l2|ALT_INV_l_arr[0][9]~q\ <= NOT \l2|l_arr[0][9]~q\;
\l2|ALT_INV_l_arr[1][10]~q\ <= NOT \l2|l_arr[1][10]~q\;
\l2|ALT_INV_l_arr[0][10]~q\ <= NOT \l2|l_arr[0][10]~q\;
\l2|ALT_INV_LessThan6~7_combout\ <= NOT \l2|LessThan6~7_combout\;
\l2|ALT_INV_LessThan6~6_combout\ <= NOT \l2|LessThan6~6_combout\;
\l2|ALT_INV_LessThan6~5_combout\ <= NOT \l2|LessThan6~5_combout\;
\l2|ALT_INV_l_arr[1][6]~q\ <= NOT \l2|l_arr[1][6]~q\;
\l2|ALT_INV_l_arr[0][6]~q\ <= NOT \l2|l_arr[0][6]~q\;
\l2|ALT_INV_l_arr[1][7]~q\ <= NOT \l2|l_arr[1][7]~q\;
\l2|ALT_INV_l_arr[0][7]~q\ <= NOT \l2|l_arr[0][7]~q\;
\l2|ALT_INV_LessThan6~4_combout\ <= NOT \l2|LessThan6~4_combout\;
\l2|ALT_INV_LessThan6~3_combout\ <= NOT \l2|LessThan6~3_combout\;
\l2|ALT_INV_l_arr[1][4]~q\ <= NOT \l2|l_arr[1][4]~q\;
\l2|ALT_INV_l_arr[0][4]~q\ <= NOT \l2|l_arr[0][4]~q\;
\l2|ALT_INV_l_arr[1][5]~q\ <= NOT \l2|l_arr[1][5]~q\;
\l2|ALT_INV_l_arr[0][5]~q\ <= NOT \l2|l_arr[0][5]~q\;
\l2|ALT_INV_LessThan6~2_combout\ <= NOT \l2|LessThan6~2_combout\;
\l2|ALT_INV_LessThan6~1_combout\ <= NOT \l2|LessThan6~1_combout\;
\l2|ALT_INV_l_arr[1][2]~q\ <= NOT \l2|l_arr[1][2]~q\;
\l2|ALT_INV_l_arr[0][2]~q\ <= NOT \l2|l_arr[0][2]~q\;
\l2|ALT_INV_l_arr[1][3]~q\ <= NOT \l2|l_arr[1][3]~q\;
\l2|ALT_INV_l_arr[0][3]~q\ <= NOT \l2|l_arr[0][3]~q\;
\l2|ALT_INV_LessThan6~0_combout\ <= NOT \l2|LessThan6~0_combout\;
\l2|ALT_INV_l_arr[1][1]~q\ <= NOT \l2|l_arr[1][1]~q\;
\l2|ALT_INV_l_arr[0][1]~q\ <= NOT \l2|l_arr[0][1]~q\;
\l2|ALT_INV_l_arr[0][0]~q\ <= NOT \l2|l_arr[0][0]~q\;
\l2|ALT_INV_l_arr[1][0]~q\ <= NOT \l2|l_arr[1][0]~q\;
\u2|ALT_INV_temp_max~24_combout\ <= NOT \u2|temp_max~24_combout\;
\u2|ALT_INV_temp_max~23_combout\ <= NOT \u2|temp_max~23_combout\;
\u2|ALT_INV_temp_max~19_combout\ <= NOT \u2|temp_max~19_combout\;
\l1|ALT_INV_iter\(1) <= NOT \l1|iter\(1);
\l1|ALT_INV_iter\(0) <= NOT \l1|iter\(0);
\u2|ALT_INV_LessThan3~8_combout\ <= NOT \u2|LessThan3~8_combout\;
\u2|ALT_INV_LessThan3~7_combout\ <= NOT \u2|LessThan3~7_combout\;
\u2|ALT_INV_LessThan3~6_combout\ <= NOT \u2|LessThan3~6_combout\;
\u2|ALT_INV_temp_max~12_combout\ <= NOT \u2|temp_max~12_combout\;
\u2|ALT_INV_sig_arr[2][8]~q\ <= NOT \u2|sig_arr[2][8]~q\;
\u2|ALT_INV_LessThan3~5_combout\ <= NOT \u2|LessThan3~5_combout\;
\u2|ALT_INV_temp_max~11_combout\ <= NOT \u2|temp_max~11_combout\;
\u2|ALT_INV_sig_arr[2][10]~q\ <= NOT \u2|sig_arr[2][10]~q\;
\u2|ALT_INV_temp_max~10_combout\ <= NOT \u2|temp_max~10_combout\;
\u2|ALT_INV_sig_arr[2][11]~q\ <= NOT \u2|sig_arr[2][11]~q\;
\u2|ALT_INV_temp_max~9_combout\ <= NOT \u2|temp_max~9_combout\;
\u2|ALT_INV_sig_arr[2][12]~q\ <= NOT \u2|sig_arr[2][12]~q\;
\u2|ALT_INV_temp_max~8_combout\ <= NOT \u2|temp_max~8_combout\;
\u2|ALT_INV_sig_arr[2][9]~q\ <= NOT \u2|sig_arr[2][9]~q\;
\u2|ALT_INV_LessThan3~4_combout\ <= NOT \u2|LessThan3~4_combout\;
\u2|ALT_INV_LessThan3~3_combout\ <= NOT \u2|LessThan3~3_combout\;
\u2|ALT_INV_LessThan3~2_combout\ <= NOT \u2|LessThan3~2_combout\;
\u2|ALT_INV_LessThan3~1_combout\ <= NOT \u2|LessThan3~1_combout\;
\u2|ALT_INV_temp_max~7_combout\ <= NOT \u2|temp_max~7_combout\;
\u2|ALT_INV_sig_arr[2][2]~q\ <= NOT \u2|sig_arr[2][2]~q\;
\u2|ALT_INV_temp_max~6_combout\ <= NOT \u2|temp_max~6_combout\;
\u2|ALT_INV_sig_arr[2][3]~q\ <= NOT \u2|sig_arr[2][3]~q\;
\u2|ALT_INV_temp_max~5_combout\ <= NOT \u2|temp_max~5_combout\;
\u2|ALT_INV_sig_arr[2][1]~q\ <= NOT \u2|sig_arr[2][1]~q\;
\u2|ALT_INV_LessThan3~0_combout\ <= NOT \u2|LessThan3~0_combout\;
\u2|ALT_INV_temp_max~4_combout\ <= NOT \u2|temp_max~4_combout\;
\u2|ALT_INV_sig_arr[2][5]~q\ <= NOT \u2|sig_arr[2][5]~q\;
\u2|ALT_INV_temp_max~3_combout\ <= NOT \u2|temp_max~3_combout\;
\u2|ALT_INV_sig_arr[2][6]~q\ <= NOT \u2|sig_arr[2][6]~q\;
\u2|ALT_INV_temp_max~2_combout\ <= NOT \u2|temp_max~2_combout\;
\u2|ALT_INV_sig_arr[2][7]~q\ <= NOT \u2|sig_arr[2][7]~q\;
\u2|ALT_INV_temp_max~1_combout\ <= NOT \u2|temp_max~1_combout\;
\u2|ALT_INV_sig_arr[2][4]~q\ <= NOT \u2|sig_arr[2][4]~q\;
\u2|ALT_INV_temp_max~0_combout\ <= NOT \u2|temp_max~0_combout\;
\u2|ALT_INV_LessThan2~6_combout\ <= NOT \u2|LessThan2~6_combout\;
\u2|ALT_INV_LessThan2~5_combout\ <= NOT \u2|LessThan2~5_combout\;
\u2|ALT_INV_LessThan2~4_combout\ <= NOT \u2|LessThan2~4_combout\;
\u2|ALT_INV_LessThan2~3_combout\ <= NOT \u2|LessThan2~3_combout\;
\u2|ALT_INV_LessThan2~2_combout\ <= NOT \u2|LessThan2~2_combout\;
\u2|ALT_INV_sig_arr[1][1]~q\ <= NOT \u2|sig_arr[1][1]~q\;
\u2|ALT_INV_sig_arr[0][1]~q\ <= NOT \u2|sig_arr[0][1]~q\;
\u2|ALT_INV_sig_arr[1][2]~q\ <= NOT \u2|sig_arr[1][2]~q\;
\u2|ALT_INV_sig_arr[0][2]~q\ <= NOT \u2|sig_arr[0][2]~q\;
\u2|ALT_INV_sig_arr[1][3]~q\ <= NOT \u2|sig_arr[1][3]~q\;
\u2|ALT_INV_sig_arr[0][3]~q\ <= NOT \u2|sig_arr[0][3]~q\;
\u2|ALT_INV_LessThan2~1_combout\ <= NOT \u2|LessThan2~1_combout\;
\u2|ALT_INV_sig_arr[1][5]~q\ <= NOT \u2|sig_arr[1][5]~q\;
\u2|ALT_INV_sig_arr[0][5]~q\ <= NOT \u2|sig_arr[0][5]~q\;
\u2|ALT_INV_sig_arr[1][6]~q\ <= NOT \u2|sig_arr[1][6]~q\;
\u2|ALT_INV_sig_arr[0][6]~q\ <= NOT \u2|sig_arr[0][6]~q\;
\u2|ALT_INV_sig_arr[1][7]~q\ <= NOT \u2|sig_arr[1][7]~q\;
\u2|ALT_INV_sig_arr[0][7]~q\ <= NOT \u2|sig_arr[0][7]~q\;
\u2|ALT_INV_sig_arr[1][4]~q\ <= NOT \u2|sig_arr[1][4]~q\;
\u2|ALT_INV_sig_arr[0][4]~q\ <= NOT \u2|sig_arr[0][4]~q\;
\u2|ALT_INV_LessThan2~0_combout\ <= NOT \u2|LessThan2~0_combout\;
\u2|ALT_INV_sig_arr[1][9]~q\ <= NOT \u2|sig_arr[1][9]~q\;
\u2|ALT_INV_sig_arr[0][9]~q\ <= NOT \u2|sig_arr[0][9]~q\;
\u2|ALT_INV_sig_arr[1][10]~q\ <= NOT \u2|sig_arr[1][10]~q\;
\u2|ALT_INV_sig_arr[0][10]~q\ <= NOT \u2|sig_arr[0][10]~q\;
\u2|ALT_INV_sig_arr[1][8]~q\ <= NOT \u2|sig_arr[1][8]~q\;
\u2|ALT_INV_sig_arr[0][8]~q\ <= NOT \u2|sig_arr[0][8]~q\;
\u2|ALT_INV_sig_arr[1][11]~q\ <= NOT \u2|sig_arr[1][11]~q\;
\u2|ALT_INV_sig_arr[0][11]~q\ <= NOT \u2|sig_arr[0][11]~q\;
\u2|ALT_INV_sig_arr[0][12]~q\ <= NOT \u2|sig_arr[0][12]~q\;
\u2|ALT_INV_sig_arr[1][12]~q\ <= NOT \u2|sig_arr[1][12]~q\;
\u2|ALT_INV_sig_arr[1][0]~q\ <= NOT \u2|sig_arr[1][0]~q\;
\u2|ALT_INV_sig_arr[0][0]~q\ <= NOT \u2|sig_arr[0][0]~q\;
\u2|ALT_INV_sig_arr[2][0]~q\ <= NOT \u2|sig_arr[2][0]~q\;
\u2|ALT_INV_u_arr[2][12]~q\ <= NOT \u2|u_arr[2][12]~q\;
\u2|ALT_INV_temp_min~12_combout\ <= NOT \u2|temp_min~12_combout\;
\u2|ALT_INV_u_arr[2][11]~q\ <= NOT \u2|u_arr[2][11]~q\;
\u2|ALT_INV_u_arr[2][10]~q\ <= NOT \u2|u_arr[2][10]~q\;
\u2|ALT_INV_u_arr[2][9]~q\ <= NOT \u2|u_arr[2][9]~q\;
\u2|ALT_INV_u_arr[2][8]~q\ <= NOT \u2|u_arr[2][8]~q\;
\u2|ALT_INV_u_arr[2][7]~q\ <= NOT \u2|u_arr[2][7]~q\;
\u2|ALT_INV_u_arr[2][6]~q\ <= NOT \u2|u_arr[2][6]~q\;
\u2|ALT_INV_u_arr[2][5]~q\ <= NOT \u2|u_arr[2][5]~q\;
\u2|ALT_INV_u_arr[2][4]~q\ <= NOT \u2|u_arr[2][4]~q\;
\u2|ALT_INV_u_arr[2][3]~q\ <= NOT \u2|u_arr[2][3]~q\;
\u2|ALT_INV_u_arr[2][2]~q\ <= NOT \u2|u_arr[2][2]~q\;
\u2|ALT_INV_u_arr[2][1]~q\ <= NOT \u2|u_arr[2][1]~q\;
\u2|ALT_INV_u_arr[2][0]~q\ <= NOT \u2|u_arr[2][0]~q\;
\u2|ALT_INV_LessThan6~16_combout\ <= NOT \u2|LessThan6~16_combout\;
\u2|ALT_INV_LessThan6~15_combout\ <= NOT \u2|LessThan6~15_combout\;
\u2|ALT_INV_LessThan6~14_combout\ <= NOT \u2|LessThan6~14_combout\;
\u2|ALT_INV_LessThan6~13_combout\ <= NOT \u2|LessThan6~13_combout\;
\u2|ALT_INV_LessThan6~12_combout\ <= NOT \u2|LessThan6~12_combout\;
\u2|ALT_INV_LessThan6~11_combout\ <= NOT \u2|LessThan6~11_combout\;
\u2|ALT_INV_u_arr[1][7]~q\ <= NOT \u2|u_arr[1][7]~q\;
\u2|ALT_INV_LessThan6~10_combout\ <= NOT \u2|LessThan6~10_combout\;
\u2|ALT_INV_LessThan6~9_combout\ <= NOT \u2|LessThan6~9_combout\;
\u2|ALT_INV_u_arr[1][10]~q\ <= NOT \u2|u_arr[1][10]~q\;
\u2|ALT_INV_u_arr[1][11]~q\ <= NOT \u2|u_arr[1][11]~q\;
\u2|ALT_INV_u_arr[1][12]~q\ <= NOT \u2|u_arr[1][12]~q\;
\u2|ALT_INV_u_arr[1][9]~q\ <= NOT \u2|u_arr[1][9]~q\;
\u2|ALT_INV_u_arr[1][8]~q\ <= NOT \u2|u_arr[1][8]~q\;
\u2|ALT_INV_LessThan6~8_combout\ <= NOT \u2|LessThan6~8_combout\;
\u2|ALT_INV_LessThan6~7_combout\ <= NOT \u2|LessThan6~7_combout\;
\u2|ALT_INV_LessThan6~6_combout\ <= NOT \u2|LessThan6~6_combout\;
\u2|ALT_INV_LessThan6~5_combout\ <= NOT \u2|LessThan6~5_combout\;
\u2|ALT_INV_u_arr[1][4]~q\ <= NOT \u2|u_arr[1][4]~q\;
\u2|ALT_INV_u_arr[1][5]~q\ <= NOT \u2|u_arr[1][5]~q\;
\u2|ALT_INV_u_arr[1][6]~q\ <= NOT \u2|u_arr[1][6]~q\;
\u2|ALT_INV_LessThan6~4_combout\ <= NOT \u2|LessThan6~4_combout\;
\u2|ALT_INV_LessThan6~3_combout\ <= NOT \u2|LessThan6~3_combout\;
\u2|ALT_INV_LessThan6~2_combout\ <= NOT \u2|LessThan6~2_combout\;
\u2|ALT_INV_u_arr[1][1]~q\ <= NOT \u2|u_arr[1][1]~q\;
\u2|ALT_INV_LessThan6~1_combout\ <= NOT \u2|LessThan6~1_combout\;
\u2|ALT_INV_u_arr[1][2]~q\ <= NOT \u2|u_arr[1][2]~q\;
\u2|ALT_INV_LessThan6~0_combout\ <= NOT \u2|LessThan6~0_combout\;
\u2|ALT_INV_u_arr[1][3]~q\ <= NOT \u2|u_arr[1][3]~q\;
\u2|ALT_INV_LessThan5~3_combout\ <= NOT \u2|LessThan5~3_combout\;
\u2|ALT_INV_LessThan5~2_combout\ <= NOT \u2|LessThan5~2_combout\;
\u2|ALT_INV_u_arr[0][8]~q\ <= NOT \u2|u_arr[0][8]~q\;
\u2|ALT_INV_u_arr[0][12]~q\ <= NOT \u2|u_arr[0][12]~q\;
\u2|ALT_INV_LessThan5~1_combout\ <= NOT \u2|LessThan5~1_combout\;
\u2|ALT_INV_u_arr[0][7]~q\ <= NOT \u2|u_arr[0][7]~q\;
\u2|ALT_INV_u_arr[0][6]~q\ <= NOT \u2|u_arr[0][6]~q\;
\u2|ALT_INV_u_arr[0][5]~q\ <= NOT \u2|u_arr[0][5]~q\;
\u2|ALT_INV_u_arr[0][9]~q\ <= NOT \u2|u_arr[0][9]~q\;
\u2|ALT_INV_u_arr[0][10]~q\ <= NOT \u2|u_arr[0][10]~q\;
\u2|ALT_INV_u_arr[0][11]~q\ <= NOT \u2|u_arr[0][11]~q\;
\u2|ALT_INV_LessThan5~0_combout\ <= NOT \u2|LessThan5~0_combout\;
\u2|ALT_INV_u_arr[0][3]~q\ <= NOT \u2|u_arr[0][3]~q\;
\u2|ALT_INV_u_arr[0][2]~q\ <= NOT \u2|u_arr[0][2]~q\;
\u2|ALT_INV_u_arr[0][1]~q\ <= NOT \u2|u_arr[0][1]~q\;
\u2|ALT_INV_u_arr[0][4]~q\ <= NOT \u2|u_arr[0][4]~q\;
\u2|ALT_INV_u_arr[0][0]~q\ <= NOT \u2|u_arr[0][0]~q\;
\u2|ALT_INV_u_arr[1][0]~q\ <= NOT \u2|u_arr[1][0]~q\;
\u2|ALT_INV_LessThan3~9_combout\ <= NOT \u2|LessThan3~9_combout\;
\l2|ALT_INV_LessThan3~14_combout\ <= NOT \l2|LessThan3~14_combout\;
\u1|ALT_INV_LessThan3~9_combout\ <= NOT \u1|LessThan3~9_combout\;
\l1|ALT_INV_LessThan7~1_sumout\ <= NOT \l1|LessThan7~1_sumout\;
\l1|ALT_INV_l_out\(2) <= NOT \l1|l_out\(2);
\u1|ALT_INV_LessThan7~1_sumout\ <= NOT \u1|LessThan7~1_sumout\;
\l2|ALT_INV_LessThan7~1_sumout\ <= NOT \l2|LessThan7~1_sumout\;
\l2|ALT_INV_l_out\(4) <= NOT \l2|l_out\(4);
\l2|ALT_INV_l_out\(12) <= NOT \l2|l_out\(12);
\u2|ALT_INV_LessThan7~1_sumout\ <= NOT \u2|LessThan7~1_sumout\;

-- Location: IOOBUF_X64_Y0_N36
\data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u_out\(0),
	devoe => ww_devoe,
	o => ww_data_out(0));

-- Location: IOOBUF_X62_Y0_N2
\data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u_out\(1),
	devoe => ww_devoe,
	o => ww_data_out(1));

-- Location: IOOBUF_X66_Y0_N93
\data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u_out\(2),
	devoe => ww_devoe,
	o => ww_data_out(2));

-- Location: IOOBUF_X58_Y0_N76
\data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u_out\(3),
	devoe => ww_devoe,
	o => ww_data_out(3));

-- Location: IOOBUF_X60_Y0_N53
\data_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u_out\(4),
	devoe => ww_devoe,
	o => ww_data_out(4));

-- Location: IOOBUF_X66_Y0_N59
\data_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u_out\(5),
	devoe => ww_devoe,
	o => ww_data_out(5));

-- Location: IOOBUF_X60_Y0_N36
\data_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u_out\(6),
	devoe => ww_devoe,
	o => ww_data_out(6));

-- Location: IOOBUF_X62_Y0_N36
\data_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u_out\(7),
	devoe => ww_devoe,
	o => ww_data_out(7));

-- Location: IOOBUF_X62_Y0_N19
\data_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u_out\(8),
	devoe => ww_devoe,
	o => ww_data_out(8));

-- Location: IOOBUF_X64_Y0_N2
\data_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u_out\(9),
	devoe => ww_devoe,
	o => ww_data_out(9));

-- Location: IOOBUF_X64_Y0_N53
\data_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u_out\(10),
	devoe => ww_devoe,
	o => ww_data_out(10));

-- Location: IOOBUF_X70_Y0_N36
\data_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u_out\(11),
	devoe => ww_devoe,
	o => ww_data_out(11));

-- Location: IOOBUF_X58_Y0_N93
\data_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u_out\(12),
	devoe => ww_devoe,
	o => ww_data_out(12));

-- Location: IOOBUF_X89_Y16_N39
\data_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(13));

-- Location: IOOBUF_X38_Y81_N2
\data_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(14));

-- Location: IOOBUF_X14_Y0_N36
\data_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(15));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X56_Y0_N1
\data_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: FF_X61_Y7_N11
\l1|iter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|Decoder1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|iter\(1));

-- Location: LABCELL_X61_Y7_N24
\u2|Decoder1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Decoder1~1_combout\ = ( !\l1|iter\(0) & ( !\l1|iter\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \l1|ALT_INV_iter\(0),
	dataf => \l1|ALT_INV_iter\(1),
	combout => \u2|Decoder1~1_combout\);

-- Location: FF_X61_Y7_N47
\l1|iter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|Decoder1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|iter\(0));

-- Location: LABCELL_X61_Y7_N51
\u2|Decoder1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Decoder1~0_combout\ = ( \l1|iter\(0) & ( !\l1|iter\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \l1|ALT_INV_iter\(0),
	dataf => \l1|ALT_INV_iter\(1),
	combout => \u2|Decoder1~0_combout\);

-- Location: FF_X61_Y5_N31
\l1|sig_arr[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[15]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][15]~q\);

-- Location: IOIBUF_X56_Y0_N35
\data_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: FF_X60_Y6_N11
\l1|sig_arr[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[14]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][14]~q\);

-- Location: IOIBUF_X58_Y0_N41
\data_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: MLABCELL_X59_Y4_N36
\l1|sig_arr[1][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|sig_arr[1][13]~feeder_combout\ = ( \data_in[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[13]~input_o\,
	combout => \l1|sig_arr[1][13]~feeder_combout\);

-- Location: FF_X59_Y4_N37
\l1|sig_arr[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|sig_arr[1][13]~feeder_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][13]~q\);

-- Location: LABCELL_X60_Y6_N9
\l1|LessThan2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~10_combout\ = ( !\l1|sig_arr[1][13]~q\ & ( (!\l1|sig_arr[1][15]~q\ & !\l1|sig_arr[1][14]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l1|ALT_INV_sig_arr[1][15]~q\,
	datad => \l1|ALT_INV_sig_arr[1][14]~q\,
	dataf => \l1|ALT_INV_sig_arr[1][13]~q\,
	combout => \l1|LessThan2~10_combout\);

-- Location: IOIBUF_X60_Y0_N1
\data_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: FF_X60_Y5_N23
\l1|sig_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[9]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][9]~q\);

-- Location: FF_X60_Y5_N8
\l1|sig_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[9]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][9]~q\);

-- Location: IOIBUF_X54_Y0_N52
\data_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: FF_X60_Y6_N20
\l1|sig_arr[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[12]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][12]~q\);

-- Location: IOIBUF_X50_Y0_N58
\data_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: FF_X60_Y6_N8
\l1|sig_arr[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[11]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][11]~q\);

-- Location: FF_X61_Y5_N23
\l1|sig_arr[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[13]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][13]~q\);

-- Location: FF_X61_Y6_N8
\l1|sig_arr[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[14]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][14]~q\);

-- Location: FF_X60_Y5_N14
\l1|sig_arr[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[15]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][15]~q\);

-- Location: FF_X60_Y5_N17
\l1|sig_arr[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[12]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][12]~q\);

-- Location: LABCELL_X61_Y5_N27
\l1|temp_min~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~7_combout\ = ( !\l1|sig_arr[0][12]~q\ & ( (!\l1|sig_arr[0][13]~q\ & (!\l1|sig_arr[0][14]~q\ & !\l1|sig_arr[0][15]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][13]~q\,
	datab => \l1|ALT_INV_sig_arr[0][14]~q\,
	datac => \l1|ALT_INV_sig_arr[0][15]~q\,
	dataf => \l1|ALT_INV_sig_arr[0][12]~q\,
	combout => \l1|temp_min~7_combout\);

-- Location: IOIBUF_X54_Y0_N1
\data_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: FF_X60_Y5_N11
\l1|sig_arr[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[10]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][10]~q\);

-- Location: FF_X60_Y5_N50
\l1|sig_arr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[10]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][10]~q\);

-- Location: LABCELL_X60_Y5_N15
\l1|temp_min~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~9_combout\ = ( \l1|sig_arr[0][10]~q\ & ( (!\l1|sig_arr[0][13]~q\ & (!\l1|sig_arr[0][14]~q\ & (!\l1|sig_arr[0][15]~q\ & !\l1|sig_arr[0][12]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][13]~q\,
	datab => \l1|ALT_INV_sig_arr[0][14]~q\,
	datac => \l1|ALT_INV_sig_arr[0][15]~q\,
	datad => \l1|ALT_INV_sig_arr[0][12]~q\,
	dataf => \l1|ALT_INV_sig_arr[0][10]~q\,
	combout => \l1|temp_min~9_combout\);

-- Location: FF_X60_Y5_N26
\l1|sig_arr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[11]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][11]~q\);

-- Location: IOIBUF_X54_Y0_N35
\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: FF_X60_Y5_N5
\l1|sig_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[8]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][8]~q\);

-- Location: IOIBUF_X68_Y0_N18
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: FF_X61_Y5_N26
\l1|sig_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][5]~q\);

-- Location: IOIBUF_X60_Y0_N18
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: FF_X61_Y5_N41
\l1|sig_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][6]~q\);

-- Location: LABCELL_X60_Y5_N45
\l1|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan1~3_combout\ = ( !\l1|sig_arr[0][11]~q\ & ( (!\l1|sig_arr[0][8]~q\) # ((!\l1|sig_arr[0][5]~q\ & !\l1|sig_arr[0][6]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][8]~q\,
	datac => \l1|ALT_INV_sig_arr[0][5]~q\,
	datad => \l1|ALT_INV_sig_arr[0][6]~q\,
	dataf => \l1|ALT_INV_sig_arr[0][11]~q\,
	combout => \l1|LessThan1~3_combout\);

-- Location: IOIBUF_X56_Y0_N52
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: FF_X60_Y5_N29
\l1|sig_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][1]~q\);

-- Location: IOIBUF_X56_Y0_N18
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: FF_X60_Y5_N41
\l1|sig_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][0]~q\);

-- Location: IOIBUF_X89_Y6_N21
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: FF_X61_Y5_N47
\l1|sig_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][2]~q\);

-- Location: IOIBUF_X50_Y0_N75
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: FF_X61_Y5_N20
\l1|sig_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][3]~q\);

-- Location: IOIBUF_X62_Y0_N52
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: FF_X60_Y5_N20
\l1|sig_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][7]~q\);

-- Location: IOIBUF_X58_Y0_N58
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: FF_X61_Y6_N47
\l1|sig_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[0][4]~q\);

-- Location: LABCELL_X60_Y5_N18
\l1|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan1~2_combout\ = ( !\l1|sig_arr[0][7]~q\ & ( \l1|sig_arr[0][4]~q\ & ( (!\l1|sig_arr[0][1]~q\ & (!\l1|sig_arr[0][0]~q\ & (!\l1|sig_arr[0][2]~q\ & !\l1|sig_arr[0][3]~q\))) ) ) ) # ( !\l1|sig_arr[0][7]~q\ & ( !\l1|sig_arr[0][4]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][1]~q\,
	datab => \l1|ALT_INV_sig_arr[0][0]~q\,
	datac => \l1|ALT_INV_sig_arr[0][2]~q\,
	datad => \l1|ALT_INV_sig_arr[0][3]~q\,
	datae => \l1|ALT_INV_sig_arr[0][7]~q\,
	dataf => \l1|ALT_INV_sig_arr[0][4]~q\,
	combout => \l1|LessThan1~2_combout\);

-- Location: LABCELL_X60_Y5_N51
\l1|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan1~0_combout\ = ( \l1|LessThan1~3_combout\ & ( \l1|LessThan1~2_combout\ & ( (\l1|sig_arr[0][12]~q\ & ((\l1|sig_arr[0][10]~q\) # (\l1|sig_arr[0][9]~q\))) ) ) ) # ( !\l1|LessThan1~3_combout\ & ( \l1|LessThan1~2_combout\ & ( \l1|sig_arr[0][12]~q\ 
-- ) ) ) # ( \l1|LessThan1~3_combout\ & ( !\l1|LessThan1~2_combout\ & ( (\l1|sig_arr[0][12]~q\ & (((\l1|sig_arr[0][8]~q\) # (\l1|sig_arr[0][10]~q\)) # (\l1|sig_arr[0][9]~q\))) ) ) ) # ( !\l1|LessThan1~3_combout\ & ( !\l1|LessThan1~2_combout\ & ( 
-- \l1|sig_arr[0][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000001110000111100001111000011110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][9]~q\,
	datab => \l1|ALT_INV_sig_arr[0][10]~q\,
	datac => \l1|ALT_INV_sig_arr[0][12]~q\,
	datad => \l1|ALT_INV_sig_arr[0][8]~q\,
	datae => \l1|ALT_INV_LessThan1~3_combout\,
	dataf => \l1|ALT_INV_LessThan1~2_combout\,
	combout => \l1|LessThan1~0_combout\);

-- Location: LABCELL_X60_Y5_N24
\l1|temp_min~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~8_combout\ = ( !\l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[0][13]~q\ & (!\l1|sig_arr[0][15]~q\ & (!\l1|sig_arr[0][14]~q\ & \l1|sig_arr[0][11]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][13]~q\,
	datab => \l1|ALT_INV_sig_arr[0][15]~q\,
	datac => \l1|ALT_INV_sig_arr[0][14]~q\,
	datad => \l1|ALT_INV_sig_arr[0][11]~q\,
	dataf => \l1|ALT_INV_LessThan1~0_combout\,
	combout => \l1|temp_min~8_combout\);

-- Location: LABCELL_X60_Y5_N0
\l1|LessThan2~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~18_combout\ = ( \l1|temp_min~9_combout\ & ( \l1|temp_min~8_combout\ & ( (!\l1|sig_arr[1][12]~q\ & ((!\l1|sig_arr[1][11]~q\) # ((!\l1|temp_min~7_combout\) # (!\l1|sig_arr[1][10]~q\)))) # (\l1|sig_arr[1][12]~q\ & (!\l1|temp_min~7_combout\ & 
-- ((!\l1|sig_arr[1][11]~q\) # (!\l1|sig_arr[1][10]~q\)))) ) ) ) # ( !\l1|temp_min~9_combout\ & ( \l1|temp_min~8_combout\ & ( (!\l1|sig_arr[1][12]~q\ & ((!\l1|sig_arr[1][11]~q\) # (!\l1|temp_min~7_combout\))) # (\l1|sig_arr[1][12]~q\ & 
-- (!\l1|sig_arr[1][11]~q\ & !\l1|temp_min~7_combout\)) ) ) ) # ( \l1|temp_min~9_combout\ & ( !\l1|temp_min~8_combout\ & ( (!\l1|sig_arr[1][12]~q\ & ((!\l1|temp_min~7_combout\) # ((!\l1|sig_arr[1][11]~q\ & !\l1|sig_arr[1][10]~q\)))) # (\l1|sig_arr[1][12]~q\ 
-- & (!\l1|sig_arr[1][11]~q\ & (!\l1|temp_min~7_combout\ & !\l1|sig_arr[1][10]~q\))) ) ) ) # ( !\l1|temp_min~9_combout\ & ( !\l1|temp_min~8_combout\ & ( (!\l1|sig_arr[1][12]~q\ & !\l1|temp_min~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000111010001010000011101000111010001111101011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[1][12]~q\,
	datab => \l1|ALT_INV_sig_arr[1][11]~q\,
	datac => \l1|ALT_INV_temp_min~7_combout\,
	datad => \l1|ALT_INV_sig_arr[1][10]~q\,
	datae => \l1|ALT_INV_temp_min~9_combout\,
	dataf => \l1|ALT_INV_temp_min~8_combout\,
	combout => \l1|LessThan2~18_combout\);

-- Location: LABCELL_X60_Y5_N27
\l1|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan1~1_combout\ = ( !\l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[0][13]~q\ & (!\l1|sig_arr[0][15]~q\ & !\l1|sig_arr[0][14]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][13]~q\,
	datab => \l1|ALT_INV_sig_arr[0][15]~q\,
	datac => \l1|ALT_INV_sig_arr[0][14]~q\,
	dataf => \l1|ALT_INV_LessThan1~0_combout\,
	combout => \l1|LessThan1~1_combout\);

-- Location: FF_X60_Y5_N35
\l1|sig_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][7]~q\);

-- Location: LABCELL_X60_Y5_N6
\l1|LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~6_combout\ = ( \l1|sig_arr[1][9]~q\ & ( \l1|sig_arr[0][9]~q\ & ( (((\l1|sig_arr[0][12]~q\) # (\l1|sig_arr[0][14]~q\)) # (\l1|sig_arr[0][15]~q\)) # (\l1|sig_arr[0][13]~q\) ) ) ) # ( !\l1|sig_arr[1][9]~q\ & ( \l1|sig_arr[0][9]~q\ & ( 
-- (!\l1|sig_arr[0][13]~q\ & (!\l1|sig_arr[0][15]~q\ & (!\l1|sig_arr[0][14]~q\ & !\l1|sig_arr[0][12]~q\))) ) ) ) # ( \l1|sig_arr[1][9]~q\ & ( !\l1|sig_arr[0][9]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][13]~q\,
	datab => \l1|ALT_INV_sig_arr[0][15]~q\,
	datac => \l1|ALT_INV_sig_arr[0][14]~q\,
	datad => \l1|ALT_INV_sig_arr[0][12]~q\,
	datae => \l1|ALT_INV_sig_arr[1][9]~q\,
	dataf => \l1|ALT_INV_sig_arr[0][9]~q\,
	combout => \l1|LessThan2~6_combout\);

-- Location: LABCELL_X60_Y5_N42
\l1|temp_min~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~6_combout\ = ( !\l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[0][8]~q\ & (!\l1|sig_arr[0][15]~q\ & (!\l1|sig_arr[0][14]~q\ & !\l1|sig_arr[0][13]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][8]~q\,
	datab => \l1|ALT_INV_sig_arr[0][15]~q\,
	datac => \l1|ALT_INV_sig_arr[0][14]~q\,
	datad => \l1|ALT_INV_sig_arr[0][13]~q\,
	dataf => \l1|ALT_INV_LessThan1~0_combout\,
	combout => \l1|temp_min~6_combout\);

-- Location: FF_X60_Y5_N56
\l1|sig_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[8]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][8]~q\);

-- Location: LABCELL_X60_Y5_N12
\l1|temp_min~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~5_combout\ = ( !\l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[0][13]~q\ & (!\l1|sig_arr[0][14]~q\ & (\l1|sig_arr[0][7]~q\ & !\l1|sig_arr[0][15]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][13]~q\,
	datab => \l1|ALT_INV_sig_arr[0][14]~q\,
	datac => \l1|ALT_INV_sig_arr[0][7]~q\,
	datad => \l1|ALT_INV_sig_arr[0][15]~q\,
	dataf => \l1|ALT_INV_LessThan1~0_combout\,
	combout => \l1|temp_min~5_combout\);

-- Location: LABCELL_X60_Y5_N57
\l1|LessThan2~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~19_combout\ = ( \l1|temp_min~5_combout\ & ( (!\l1|LessThan2~6_combout\ & ((!\l1|sig_arr[1][7]~q\ & ((!\l1|temp_min~6_combout\) # (!\l1|sig_arr[1][8]~q\))) # (\l1|sig_arr[1][7]~q\ & (!\l1|temp_min~6_combout\ & !\l1|sig_arr[1][8]~q\)))) ) ) # 
-- ( !\l1|temp_min~5_combout\ & ( (!\l1|LessThan2~6_combout\ & (!\l1|temp_min~6_combout\ & !\l1|sig_arr[1][8]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011001000100000001100100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[1][7]~q\,
	datab => \l1|ALT_INV_LessThan2~6_combout\,
	datac => \l1|ALT_INV_temp_min~6_combout\,
	datad => \l1|ALT_INV_sig_arr[1][8]~q\,
	dataf => \l1|ALT_INV_temp_min~5_combout\,
	combout => \l1|LessThan2~19_combout\);

-- Location: LABCELL_X60_Y5_N9
\l1|LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~5_combout\ = ( \l1|sig_arr[1][10]~q\ & ( \l1|sig_arr[0][10]~q\ & ( (((\l1|sig_arr[0][14]~q\) # (\l1|sig_arr[0][12]~q\)) # (\l1|sig_arr[0][15]~q\)) # (\l1|sig_arr[0][13]~q\) ) ) ) # ( !\l1|sig_arr[1][10]~q\ & ( \l1|sig_arr[0][10]~q\ & ( 
-- (!\l1|sig_arr[0][13]~q\ & (!\l1|sig_arr[0][15]~q\ & (!\l1|sig_arr[0][12]~q\ & !\l1|sig_arr[0][14]~q\))) ) ) ) # ( \l1|sig_arr[1][10]~q\ & ( !\l1|sig_arr[0][10]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][13]~q\,
	datab => \l1|ALT_INV_sig_arr[0][15]~q\,
	datac => \l1|ALT_INV_sig_arr[0][12]~q\,
	datad => \l1|ALT_INV_sig_arr[0][14]~q\,
	datae => \l1|ALT_INV_sig_arr[1][10]~q\,
	dataf => \l1|ALT_INV_sig_arr[0][10]~q\,
	combout => \l1|LessThan2~5_combout\);

-- Location: LABCELL_X60_Y6_N6
\l1|LessThan2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~12_combout\ = ( \l1|sig_arr[0][15]~q\ & ( (\l1|sig_arr[1][12]~q\ & !\l1|sig_arr[1][11]~q\) ) ) # ( !\l1|sig_arr[0][15]~q\ & ( (!\l1|sig_arr[1][12]~q\ & (!\l1|sig_arr[0][12]~q\ & (!\l1|sig_arr[0][11]~q\ $ (\l1|sig_arr[1][11]~q\)))) # 
-- (\l1|sig_arr[1][12]~q\ & (\l1|sig_arr[0][12]~q\ & (!\l1|sig_arr[0][11]~q\ $ (\l1|sig_arr[1][11]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001100001000010000101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[1][12]~q\,
	datab => \l1|ALT_INV_sig_arr[0][11]~q\,
	datac => \l1|ALT_INV_sig_arr[0][12]~q\,
	datad => \l1|ALT_INV_sig_arr[1][11]~q\,
	dataf => \l1|ALT_INV_sig_arr[0][15]~q\,
	combout => \l1|LessThan2~12_combout\);

-- Location: LABCELL_X60_Y6_N21
\l1|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~4_combout\ = ( \l1|sig_arr[0][13]~q\ & ( \l1|LessThan1~0_combout\ & ( (\l1|sig_arr[1][12]~q\ & !\l1|sig_arr[1][11]~q\) ) ) ) # ( !\l1|sig_arr[0][13]~q\ & ( \l1|LessThan1~0_combout\ & ( (\l1|sig_arr[1][12]~q\ & !\l1|sig_arr[1][11]~q\) ) ) ) # 
-- ( \l1|sig_arr[0][13]~q\ & ( !\l1|LessThan1~0_combout\ & ( (\l1|sig_arr[1][12]~q\ & !\l1|sig_arr[1][11]~q\) ) ) ) # ( !\l1|sig_arr[0][13]~q\ & ( !\l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[0][14]~q\ & (((\l1|LessThan2~12_combout\)))) # 
-- (\l1|sig_arr[0][14]~q\ & (\l1|sig_arr[1][12]~q\ & ((!\l1|sig_arr[1][11]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100001010001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][14]~q\,
	datab => \l1|ALT_INV_sig_arr[1][12]~q\,
	datac => \l1|ALT_INV_LessThan2~12_combout\,
	datad => \l1|ALT_INV_sig_arr[1][11]~q\,
	datae => \l1|ALT_INV_sig_arr[0][13]~q\,
	dataf => \l1|ALT_INV_LessThan1~0_combout\,
	combout => \l1|LessThan2~4_combout\);

-- Location: LABCELL_X60_Y6_N3
\l1|LessThan2~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~20_combout\ = (!\l1|LessThan2~5_combout\ & \l1|LessThan2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l1|ALT_INV_LessThan2~5_combout\,
	datad => \l1|ALT_INV_LessThan2~4_combout\,
	combout => \l1|LessThan2~20_combout\);

-- Location: LABCELL_X60_Y5_N36
\l1|LessThan2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~9_combout\ = ( !\l1|LessThan2~19_combout\ & ( \l1|LessThan2~20_combout\ & ( (!\l1|LessThan2~18_combout\ & ((!\l1|sig_arr[0][9]~q\) # ((!\l1|LessThan1~1_combout\) # (\l1|sig_arr[1][9]~q\)))) ) ) ) # ( \l1|LessThan2~19_combout\ & ( 
-- !\l1|LessThan2~20_combout\ & ( !\l1|LessThan2~18_combout\ ) ) ) # ( !\l1|LessThan2~19_combout\ & ( !\l1|LessThan2~20_combout\ & ( !\l1|LessThan2~18_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000101100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][9]~q\,
	datab => \l1|ALT_INV_sig_arr[1][9]~q\,
	datac => \l1|ALT_INV_LessThan2~18_combout\,
	datad => \l1|ALT_INV_LessThan1~1_combout\,
	datae => \l1|ALT_INV_LessThan2~19_combout\,
	dataf => \l1|ALT_INV_LessThan2~20_combout\,
	combout => \l1|LessThan2~9_combout\);

-- Location: FF_X61_Y6_N32
\l1|sig_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][4]~q\);

-- Location: LABCELL_X61_Y6_N18
\l1|temp_min~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~0_combout\ = ( !\l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[0][15]~q\ & (!\l1|sig_arr[0][14]~q\ & (!\l1|sig_arr[0][13]~q\ & !\l1|sig_arr[0][4]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][15]~q\,
	datab => \l1|ALT_INV_sig_arr[0][14]~q\,
	datac => \l1|ALT_INV_sig_arr[0][13]~q\,
	datad => \l1|ALT_INV_sig_arr[0][4]~q\,
	dataf => \l1|ALT_INV_LessThan1~0_combout\,
	combout => \l1|temp_min~0_combout\);

-- Location: FF_X61_Y5_N11
\l1|sig_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][6]~q\);

-- Location: FF_X61_Y5_N35
\l1|sig_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][5]~q\);

-- Location: LABCELL_X61_Y5_N3
\l1|LessThan2~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~15_combout\ = ( \l1|sig_arr[0][5]~q\ & ( (!\l1|sig_arr[0][15]~q\ & (!\l1|sig_arr[0][14]~q\ & ((!\l1|sig_arr[1][6]~q\) # (\l1|sig_arr[0][6]~q\)))) ) ) # ( !\l1|sig_arr[0][5]~q\ & ( (!\l1|sig_arr[0][15]~q\ & (!\l1|sig_arr[0][14]~q\ & 
-- (\l1|sig_arr[0][6]~q\ & !\l1|sig_arr[1][6]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000010001000000010001000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][15]~q\,
	datab => \l1|ALT_INV_sig_arr[0][14]~q\,
	datac => \l1|ALT_INV_sig_arr[0][6]~q\,
	datad => \l1|ALT_INV_sig_arr[1][6]~q\,
	dataf => \l1|ALT_INV_sig_arr[0][5]~q\,
	combout => \l1|LessThan2~15_combout\);

-- Location: LABCELL_X60_Y5_N30
\l1|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~3_combout\ = ( \l1|LessThan2~15_combout\ & ( !\l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[0][13]~q\ & ((!\l1|sig_arr[1][5]~q\) # ((!\l1|sig_arr[1][6]~q\ & \l1|sig_arr[0][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[1][6]~q\,
	datab => \l1|ALT_INV_sig_arr[1][5]~q\,
	datac => \l1|ALT_INV_sig_arr[0][13]~q\,
	datad => \l1|ALT_INV_sig_arr[0][6]~q\,
	datae => \l1|ALT_INV_LessThan2~15_combout\,
	dataf => \l1|ALT_INV_LessThan1~0_combout\,
	combout => \l1|LessThan2~3_combout\);

-- Location: LABCELL_X61_Y5_N6
\l1|temp_min~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~3_combout\ = ( !\l1|sig_arr[0][15]~q\ & ( !\l1|LessThan1~0_combout\ & ( (\l1|sig_arr[0][3]~q\ & (!\l1|sig_arr[0][13]~q\ & !\l1|sig_arr[0][14]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][3]~q\,
	datac => \l1|ALT_INV_sig_arr[0][13]~q\,
	datad => \l1|ALT_INV_sig_arr[0][14]~q\,
	datae => \l1|ALT_INV_sig_arr[0][15]~q\,
	dataf => \l1|ALT_INV_LessThan1~0_combout\,
	combout => \l1|temp_min~3_combout\);

-- Location: FF_X59_Y5_N38
\l1|sig_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][2]~q\);

-- Location: FF_X61_Y6_N35
\l1|sig_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][0]~q\);

-- Location: FF_X61_Y6_N17
\l1|sig_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][1]~q\);

-- Location: LABCELL_X61_Y6_N36
\l1|LessThan2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~13_combout\ = ( \l1|sig_arr[0][15]~q\ & ( (!\l1|sig_arr[1][1]~q\ & !\l1|sig_arr[1][0]~q\) ) ) # ( !\l1|sig_arr[0][15]~q\ & ( (!\l1|sig_arr[1][1]~q\ & (((\l1|sig_arr[0][0]~q\ & !\l1|sig_arr[1][0]~q\)) # (\l1|sig_arr[0][1]~q\))) # 
-- (\l1|sig_arr[1][1]~q\ & (\l1|sig_arr[0][0]~q\ & (!\l1|sig_arr[1][0]~q\ & \l1|sig_arr[0][1]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011011100010000001101110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][0]~q\,
	datab => \l1|ALT_INV_sig_arr[1][1]~q\,
	datac => \l1|ALT_INV_sig_arr[1][0]~q\,
	datad => \l1|ALT_INV_sig_arr[0][1]~q\,
	dataf => \l1|ALT_INV_sig_arr[0][15]~q\,
	combout => \l1|LessThan2~13_combout\);

-- Location: LABCELL_X61_Y6_N54
\l1|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~1_combout\ = ( \l1|LessThan2~13_combout\ & ( \l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[1][0]~q\ & !\l1|sig_arr[1][1]~q\) ) ) ) # ( !\l1|LessThan2~13_combout\ & ( \l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[1][0]~q\ & !\l1|sig_arr[1][1]~q\) ) 
-- ) ) # ( \l1|LessThan2~13_combout\ & ( !\l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[1][0]~q\ & ((!\l1|sig_arr[1][1]~q\) # ((!\l1|sig_arr[0][14]~q\ & !\l1|sig_arr[0][13]~q\)))) # (\l1|sig_arr[1][0]~q\ & (!\l1|sig_arr[0][14]~q\ & (!\l1|sig_arr[0][13]~q\))) ) 
-- ) ) # ( !\l1|LessThan2~13_combout\ & ( !\l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[1][0]~q\ & (!\l1|sig_arr[1][1]~q\ & ((\l1|sig_arr[0][13]~q\) # (\l1|sig_arr[0][14]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000111010101100000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[1][0]~q\,
	datab => \l1|ALT_INV_sig_arr[0][14]~q\,
	datac => \l1|ALT_INV_sig_arr[0][13]~q\,
	datad => \l1|ALT_INV_sig_arr[1][1]~q\,
	datae => \l1|ALT_INV_LessThan2~13_combout\,
	dataf => \l1|ALT_INV_LessThan1~0_combout\,
	combout => \l1|LessThan2~1_combout\);

-- Location: FF_X61_Y6_N2
\l1|sig_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[1][3]~q\);

-- Location: LABCELL_X61_Y5_N0
\l1|temp_min~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~4_combout\ = ( !\l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[0][15]~q\ & (!\l1|sig_arr[0][14]~q\ & (!\l1|sig_arr[0][13]~q\ & \l1|sig_arr[0][2]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][15]~q\,
	datab => \l1|ALT_INV_sig_arr[0][14]~q\,
	datac => \l1|ALT_INV_sig_arr[0][13]~q\,
	datad => \l1|ALT_INV_sig_arr[0][2]~q\,
	dataf => \l1|ALT_INV_LessThan1~0_combout\,
	combout => \l1|temp_min~4_combout\);

-- Location: LABCELL_X61_Y6_N0
\l1|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~2_combout\ = ( \l1|temp_min~4_combout\ & ( (!\l1|temp_min~3_combout\ & (!\l1|sig_arr[1][3]~q\ & ((!\l1|sig_arr[1][2]~q\) # (\l1|LessThan2~1_combout\)))) # (\l1|temp_min~3_combout\ & ((!\l1|sig_arr[1][2]~q\) # ((!\l1|sig_arr[1][3]~q\) # 
-- (\l1|LessThan2~1_combout\)))) ) ) # ( !\l1|temp_min~4_combout\ & ( (!\l1|temp_min~3_combout\ & (!\l1|sig_arr[1][2]~q\ & (\l1|LessThan2~1_combout\ & !\l1|sig_arr[1][3]~q\))) # (\l1|temp_min~3_combout\ & ((!\l1|sig_arr[1][3]~q\) # ((!\l1|sig_arr[1][2]~q\ & 
-- \l1|LessThan2~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100000100010111010000010011011111010001011101111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_temp_min~3_combout\,
	datab => \l1|ALT_INV_sig_arr[1][2]~q\,
	datac => \l1|ALT_INV_LessThan2~1_combout\,
	datad => \l1|ALT_INV_sig_arr[1][3]~q\,
	dataf => \l1|ALT_INV_temp_min~4_combout\,
	combout => \l1|LessThan2~2_combout\);

-- Location: LABCELL_X61_Y5_N30
\l1|LessThan2~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~14_combout\ = ( \l1|sig_arr[0][15]~q\ & ( \l1|sig_arr[0][5]~q\ & ( (!\l1|sig_arr[1][5]~q\ & !\l1|sig_arr[1][6]~q\) ) ) ) # ( !\l1|sig_arr[0][15]~q\ & ( \l1|sig_arr[0][5]~q\ & ( (\l1|sig_arr[1][5]~q\ & (!\l1|sig_arr[0][6]~q\ $ 
-- (\l1|sig_arr[1][6]~q\))) ) ) ) # ( \l1|sig_arr[0][15]~q\ & ( !\l1|sig_arr[0][5]~q\ & ( (!\l1|sig_arr[1][5]~q\ & !\l1|sig_arr[1][6]~q\) ) ) ) # ( !\l1|sig_arr[0][15]~q\ & ( !\l1|sig_arr[0][5]~q\ & ( (!\l1|sig_arr[1][5]~q\ & (!\l1|sig_arr[0][6]~q\ $ 
-- (\l1|sig_arr[1][6]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000111100000000000000001100000000111111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l1|ALT_INV_sig_arr[0][6]~q\,
	datac => \l1|ALT_INV_sig_arr[1][5]~q\,
	datad => \l1|ALT_INV_sig_arr[1][6]~q\,
	datae => \l1|ALT_INV_sig_arr[0][15]~q\,
	dataf => \l1|ALT_INV_sig_arr[0][5]~q\,
	combout => \l1|LessThan2~14_combout\);

-- Location: LABCELL_X61_Y5_N57
\l1|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~0_combout\ = ( \l1|sig_arr[0][14]~q\ & ( \l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[1][6]~q\ & !\l1|sig_arr[1][5]~q\) ) ) ) # ( !\l1|sig_arr[0][14]~q\ & ( \l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[1][6]~q\ & !\l1|sig_arr[1][5]~q\) ) ) ) # ( 
-- \l1|sig_arr[0][14]~q\ & ( !\l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[1][6]~q\ & !\l1|sig_arr[1][5]~q\) ) ) ) # ( !\l1|sig_arr[0][14]~q\ & ( !\l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[0][13]~q\ & (((\l1|LessThan2~14_combout\)))) # (\l1|sig_arr[0][13]~q\ 
-- & (!\l1|sig_arr[1][6]~q\ & ((!\l1|sig_arr[1][5]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111000001010110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][13]~q\,
	datab => \l1|ALT_INV_sig_arr[1][6]~q\,
	datac => \l1|ALT_INV_LessThan2~14_combout\,
	datad => \l1|ALT_INV_sig_arr[1][5]~q\,
	datae => \l1|ALT_INV_sig_arr[0][14]~q\,
	dataf => \l1|ALT_INV_LessThan1~0_combout\,
	combout => \l1|LessThan2~0_combout\);

-- Location: LABCELL_X61_Y5_N12
\l1|LessThan2~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~16_combout\ = ( \l1|sig_arr[1][8]~q\ & ( \l1|sig_arr[0][15]~q\ & ( !\l1|sig_arr[1][7]~q\ ) ) ) # ( \l1|sig_arr[1][8]~q\ & ( !\l1|sig_arr[0][15]~q\ & ( (!\l1|sig_arr[0][14]~q\ & (\l1|sig_arr[0][8]~q\ & (!\l1|sig_arr[0][7]~q\ $ 
-- (\l1|sig_arr[1][7]~q\)))) # (\l1|sig_arr[0][14]~q\ & (((!\l1|sig_arr[1][7]~q\)))) ) ) ) # ( !\l1|sig_arr[1][8]~q\ & ( !\l1|sig_arr[0][15]~q\ & ( (!\l1|sig_arr[0][8]~q\ & (!\l1|sig_arr[0][14]~q\ & (!\l1|sig_arr[0][7]~q\ $ (\l1|sig_arr[1][7]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000011111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][7]~q\,
	datab => \l1|ALT_INV_sig_arr[0][8]~q\,
	datac => \l1|ALT_INV_sig_arr[1][7]~q\,
	datad => \l1|ALT_INV_sig_arr[0][14]~q\,
	datae => \l1|ALT_INV_sig_arr[1][8]~q\,
	dataf => \l1|ALT_INV_sig_arr[0][15]~q\,
	combout => \l1|LessThan2~16_combout\);

-- Location: LABCELL_X60_Y5_N54
\l1|LessThan2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~17_combout\ = ( \l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[1][7]~q\ & (!\l1|LessThan2~6_combout\ & \l1|sig_arr[1][8]~q\)) ) ) # ( !\l1|LessThan1~0_combout\ & ( (!\l1|LessThan2~6_combout\ & ((!\l1|sig_arr[0][13]~q\) # ((!\l1|sig_arr[1][7]~q\ 
-- & \l1|sig_arr[1][8]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001000110000001100100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[1][7]~q\,
	datab => \l1|ALT_INV_LessThan2~6_combout\,
	datac => \l1|ALT_INV_sig_arr[0][13]~q\,
	datad => \l1|ALT_INV_sig_arr[1][8]~q\,
	dataf => \l1|ALT_INV_LessThan1~0_combout\,
	combout => \l1|LessThan2~17_combout\);

-- Location: LABCELL_X60_Y6_N30
\l1|LessThan2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~7_combout\ = ( \l1|LessThan2~4_combout\ & ( \l1|LessThan2~17_combout\ & ( (!\l1|LessThan2~5_combout\ & (((\l1|LessThan1~0_combout\) # (\l1|LessThan2~16_combout\)) # (\l1|sig_arr[0][13]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][13]~q\,
	datab => \l1|ALT_INV_LessThan2~16_combout\,
	datac => \l1|ALT_INV_LessThan1~0_combout\,
	datad => \l1|ALT_INV_LessThan2~5_combout\,
	datae => \l1|ALT_INV_LessThan2~4_combout\,
	dataf => \l1|ALT_INV_LessThan2~17_combout\,
	combout => \l1|LessThan2~7_combout\);

-- Location: LABCELL_X61_Y6_N30
\l1|LessThan2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~8_combout\ = ( \l1|sig_arr[1][4]~q\ & ( \l1|LessThan2~7_combout\ & ( ((!\l1|temp_min~0_combout\ & (\l1|LessThan2~2_combout\ & \l1|LessThan2~0_combout\))) # (\l1|LessThan2~3_combout\) ) ) ) # ( !\l1|sig_arr[1][4]~q\ & ( 
-- \l1|LessThan2~7_combout\ & ( ((\l1|LessThan2~0_combout\ & ((!\l1|temp_min~0_combout\) # (\l1|LessThan2~2_combout\)))) # (\l1|LessThan2~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011101111110011001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_temp_min~0_combout\,
	datab => \l1|ALT_INV_LessThan2~3_combout\,
	datac => \l1|ALT_INV_LessThan2~2_combout\,
	datad => \l1|ALT_INV_LessThan2~0_combout\,
	datae => \l1|ALT_INV_sig_arr[1][4]~q\,
	dataf => \l1|ALT_INV_LessThan2~7_combout\,
	combout => \l1|LessThan2~8_combout\);

-- Location: MLABCELL_X59_Y5_N3
\l1|temp_min~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~11_combout\ = ( \l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & ((!\l1|temp_min~0_combout\))) # (\l1|LessThan2~10_combout\ & (\l1|sig_arr[1][4]~q\)) ) ) # ( !\l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & 
-- (((!\l1|temp_min~0_combout\)))) # (\l1|LessThan2~10_combout\ & ((!\l1|LessThan2~9_combout\ & (\l1|sig_arr[1][4]~q\)) # (\l1|LessThan2~9_combout\ & ((!\l1|temp_min~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100000100101111110000010010101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan2~10_combout\,
	datab => \l1|ALT_INV_LessThan2~9_combout\,
	datac => \l1|ALT_INV_sig_arr[1][4]~q\,
	datad => \l1|ALT_INV_temp_min~0_combout\,
	dataf => \l1|ALT_INV_LessThan2~8_combout\,
	combout => \l1|temp_min~11_combout\);

-- Location: LABCELL_X61_Y7_N15
\u2|Decoder1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Decoder1~2_combout\ = ( \l1|iter\(1) & ( !\l1|iter\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l1|ALT_INV_iter\(0),
	dataf => \l1|ALT_INV_iter\(1),
	combout => \u2|Decoder1~2_combout\);

-- Location: FF_X60_Y4_N35
\l1|sig_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][6]~q\);

-- Location: FF_X60_Y4_N50
\l1|sig_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][5]~q\);

-- Location: FF_X60_Y4_N32
\l1|sig_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][7]~q\);

-- Location: LABCELL_X60_Y4_N48
\l1|LessThan3~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~12_combout\ = ( \l1|sig_arr[2][5]~q\ & ( \l1|sig_arr[2][7]~q\ & ( (\l1|sig_arr[1][5]~q\ & (\l1|sig_arr[1][7]~q\ & (!\l1|sig_arr[2][6]~q\ $ (\l1|sig_arr[1][6]~q\)))) ) ) ) # ( !\l1|sig_arr[2][5]~q\ & ( \l1|sig_arr[2][7]~q\ & ( 
-- (!\l1|sig_arr[1][5]~q\ & (\l1|sig_arr[1][7]~q\ & (!\l1|sig_arr[2][6]~q\ $ (\l1|sig_arr[1][6]~q\)))) ) ) ) # ( \l1|sig_arr[2][5]~q\ & ( !\l1|sig_arr[2][7]~q\ & ( (\l1|sig_arr[1][5]~q\ & (!\l1|sig_arr[1][7]~q\ & (!\l1|sig_arr[2][6]~q\ $ 
-- (\l1|sig_arr[1][6]~q\)))) ) ) ) # ( !\l1|sig_arr[2][5]~q\ & ( !\l1|sig_arr[2][7]~q\ & ( (!\l1|sig_arr[1][5]~q\ & (!\l1|sig_arr[1][7]~q\ & (!\l1|sig_arr[2][6]~q\ $ (\l1|sig_arr[1][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[2][6]~q\,
	datab => \l1|ALT_INV_sig_arr[1][5]~q\,
	datac => \l1|ALT_INV_sig_arr[1][7]~q\,
	datad => \l1|ALT_INV_sig_arr[1][6]~q\,
	datae => \l1|ALT_INV_sig_arr[2][5]~q\,
	dataf => \l1|ALT_INV_sig_arr[2][7]~q\,
	combout => \l1|LessThan3~12_combout\);

-- Location: LABCELL_X60_Y4_N39
\l1|temp_min~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~1_combout\ = ( \l1|sig_arr[0][6]~q\ & ( !\l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[0][14]~q\ & (!\l1|sig_arr[0][13]~q\ & !\l1|sig_arr[0][15]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][14]~q\,
	datab => \l1|ALT_INV_sig_arr[0][13]~q\,
	datac => \l1|ALT_INV_sig_arr[0][15]~q\,
	datae => \l1|ALT_INV_sig_arr[0][6]~q\,
	dataf => \l1|ALT_INV_LessThan1~0_combout\,
	combout => \l1|temp_min~1_combout\);

-- Location: LABCELL_X61_Y5_N24
\l1|temp_min~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~2_combout\ = ( !\l1|LessThan1~0_combout\ & ( (!\l1|sig_arr[0][13]~q\ & (!\l1|sig_arr[0][14]~q\ & (!\l1|sig_arr[0][15]~q\ & \l1|sig_arr[0][5]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][13]~q\,
	datab => \l1|ALT_INV_sig_arr[0][14]~q\,
	datac => \l1|ALT_INV_sig_arr[0][15]~q\,
	datad => \l1|ALT_INV_sig_arr[0][5]~q\,
	dataf => \l1|ALT_INV_LessThan1~0_combout\,
	combout => \l1|temp_min~2_combout\);

-- Location: LABCELL_X60_Y4_N0
\l1|LessThan3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~13_combout\ = ( \l1|temp_min~2_combout\ & ( \l1|temp_min~5_combout\ & ( (\l1|sig_arr[2][5]~q\ & (\l1|sig_arr[2][7]~q\ & (!\l1|sig_arr[2][6]~q\ $ (\l1|temp_min~1_combout\)))) ) ) ) # ( !\l1|temp_min~2_combout\ & ( \l1|temp_min~5_combout\ & ( 
-- (!\l1|sig_arr[2][5]~q\ & (\l1|sig_arr[2][7]~q\ & (!\l1|sig_arr[2][6]~q\ $ (\l1|temp_min~1_combout\)))) ) ) ) # ( \l1|temp_min~2_combout\ & ( !\l1|temp_min~5_combout\ & ( (\l1|sig_arr[2][5]~q\ & (!\l1|sig_arr[2][7]~q\ & (!\l1|sig_arr[2][6]~q\ $ 
-- (\l1|temp_min~1_combout\)))) ) ) ) # ( !\l1|temp_min~2_combout\ & ( !\l1|temp_min~5_combout\ & ( (!\l1|sig_arr[2][5]~q\ & (!\l1|sig_arr[2][7]~q\ & (!\l1|sig_arr[2][6]~q\ $ (\l1|temp_min~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[2][5]~q\,
	datab => \l1|ALT_INV_sig_arr[2][7]~q\,
	datac => \l1|ALT_INV_sig_arr[2][6]~q\,
	datad => \l1|ALT_INV_temp_min~1_combout\,
	datae => \l1|ALT_INV_temp_min~2_combout\,
	dataf => \l1|ALT_INV_temp_min~5_combout\,
	combout => \l1|LessThan3~13_combout\);

-- Location: MLABCELL_X59_Y5_N24
\l1|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~0_combout\ = ( \l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & ((\l1|LessThan3~13_combout\))) # (\l1|LessThan2~10_combout\ & (\l1|LessThan3~12_combout\)) ) ) # ( !\l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & 
-- (((\l1|LessThan3~13_combout\)))) # (\l1|LessThan2~10_combout\ & ((!\l1|LessThan2~9_combout\ & (\l1|LessThan3~12_combout\)) # (\l1|LessThan2~9_combout\ & ((\l1|LessThan3~13_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan2~10_combout\,
	datab => \l1|ALT_INV_LessThan2~9_combout\,
	datac => \l1|ALT_INV_LessThan3~12_combout\,
	datad => \l1|ALT_INV_LessThan3~13_combout\,
	dataf => \l1|ALT_INV_LessThan2~8_combout\,
	combout => \l1|LessThan3~0_combout\);

-- Location: FF_X59_Y5_N47
\l1|sig_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][2]~q\);

-- Location: FF_X59_Y5_N17
\l1|sig_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][3]~q\);

-- Location: MLABCELL_X59_Y5_N48
\l1|LessThan3~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~14_combout\ = ( \l1|LessThan2~10_combout\ & ( \l1|temp_min~3_combout\ & ( (!\l1|sig_arr[1][3]~q\ & (\l1|sig_arr[1][2]~q\ & (!\l1|sig_arr[2][2]~q\ & !\l1|sig_arr[2][3]~q\))) # (\l1|sig_arr[1][3]~q\ & ((!\l1|sig_arr[2][3]~q\) # 
-- ((\l1|sig_arr[1][2]~q\ & !\l1|sig_arr[2][2]~q\)))) ) ) ) # ( !\l1|LessThan2~10_combout\ & ( \l1|temp_min~3_combout\ & ( (!\l1|sig_arr[2][2]~q\) # (!\l1|sig_arr[2][3]~q\) ) ) ) # ( \l1|LessThan2~10_combout\ & ( !\l1|temp_min~3_combout\ & ( 
-- (!\l1|sig_arr[1][3]~q\ & (\l1|sig_arr[1][2]~q\ & (!\l1|sig_arr[2][2]~q\ & !\l1|sig_arr[2][3]~q\))) # (\l1|sig_arr[1][3]~q\ & ((!\l1|sig_arr[2][3]~q\) # ((\l1|sig_arr[1][2]~q\ & !\l1|sig_arr[2][2]~q\)))) ) ) ) # ( !\l1|LessThan2~10_combout\ & ( 
-- !\l1|temp_min~3_combout\ & ( (!\l1|sig_arr[2][2]~q\ & !\l1|sig_arr[2][3]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000010011110000010011111111110011000100111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[1][2]~q\,
	datab => \l1|ALT_INV_sig_arr[2][2]~q\,
	datac => \l1|ALT_INV_sig_arr[1][3]~q\,
	datad => \l1|ALT_INV_sig_arr[2][3]~q\,
	datae => \l1|ALT_INV_LessThan2~10_combout\,
	dataf => \l1|ALT_INV_temp_min~3_combout\,
	combout => \l1|LessThan3~14_combout\);

-- Location: LABCELL_X57_Y5_N57
\l1|LessThan3~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~15_combout\ = ( \l1|temp_min~4_combout\ & ( \l1|temp_min~3_combout\ & ( (!\l1|sig_arr[2][2]~q\) # (!\l1|sig_arr[2][3]~q\) ) ) ) # ( !\l1|temp_min~4_combout\ & ( \l1|temp_min~3_combout\ & ( !\l1|sig_arr[2][3]~q\ ) ) ) # ( 
-- \l1|temp_min~4_combout\ & ( !\l1|temp_min~3_combout\ & ( (!\l1|sig_arr[2][2]~q\ & !\l1|sig_arr[2][3]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011110000111100001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l1|ALT_INV_sig_arr[2][2]~q\,
	datac => \l1|ALT_INV_sig_arr[2][3]~q\,
	datae => \l1|ALT_INV_temp_min~4_combout\,
	dataf => \l1|ALT_INV_temp_min~3_combout\,
	combout => \l1|LessThan3~15_combout\);

-- Location: MLABCELL_X59_Y5_N0
\l1|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~4_combout\ = ( \l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & ((\l1|LessThan3~15_combout\))) # (\l1|LessThan2~10_combout\ & (\l1|LessThan3~14_combout\)) ) ) # ( !\l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & 
-- (((\l1|LessThan3~15_combout\)))) # (\l1|LessThan2~10_combout\ & ((!\l1|LessThan2~9_combout\ & (\l1|LessThan3~14_combout\)) # (\l1|LessThan2~9_combout\ & ((\l1|LessThan3~15_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan2~10_combout\,
	datab => \l1|ALT_INV_LessThan2~9_combout\,
	datac => \l1|ALT_INV_LessThan3~14_combout\,
	datad => \l1|ALT_INV_LessThan3~15_combout\,
	dataf => \l1|ALT_INV_LessThan2~8_combout\,
	combout => \l1|LessThan3~4_combout\);

-- Location: LABCELL_X60_Y4_N33
\l1|LessThan3~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~16_combout\ = ( \l1|sig_arr[2][6]~q\ & ( \l1|sig_arr[1][5]~q\ & ( (!\l1|sig_arr[2][7]~q\ & (((!\l1|sig_arr[2][5]~q\ & \l1|sig_arr[1][6]~q\)) # (\l1|sig_arr[1][7]~q\))) # (\l1|sig_arr[2][7]~q\ & (!\l1|sig_arr[2][5]~q\ & (\l1|sig_arr[1][6]~q\ 
-- & \l1|sig_arr[1][7]~q\))) ) ) ) # ( !\l1|sig_arr[2][6]~q\ & ( \l1|sig_arr[1][5]~q\ & ( (!\l1|sig_arr[2][7]~q\ & ((!\l1|sig_arr[2][5]~q\) # ((\l1|sig_arr[1][7]~q\) # (\l1|sig_arr[1][6]~q\)))) # (\l1|sig_arr[2][7]~q\ & (\l1|sig_arr[1][7]~q\ & 
-- ((!\l1|sig_arr[2][5]~q\) # (\l1|sig_arr[1][6]~q\)))) ) ) ) # ( \l1|sig_arr[2][6]~q\ & ( !\l1|sig_arr[1][5]~q\ & ( (!\l1|sig_arr[2][7]~q\ & \l1|sig_arr[1][7]~q\) ) ) ) # ( !\l1|sig_arr[2][6]~q\ & ( !\l1|sig_arr[1][5]~q\ & ( (!\l1|sig_arr[1][6]~q\ & 
-- (!\l1|sig_arr[2][7]~q\ & \l1|sig_arr[1][7]~q\)) # (\l1|sig_arr[1][6]~q\ & ((!\l1|sig_arr[2][7]~q\) # (\l1|sig_arr[1][7]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011000000001111000010110000111110110010000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[2][5]~q\,
	datab => \l1|ALT_INV_sig_arr[1][6]~q\,
	datac => \l1|ALT_INV_sig_arr[2][7]~q\,
	datad => \l1|ALT_INV_sig_arr[1][7]~q\,
	datae => \l1|ALT_INV_sig_arr[2][6]~q\,
	dataf => \l1|ALT_INV_sig_arr[1][5]~q\,
	combout => \l1|LessThan3~16_combout\);

-- Location: LABCELL_X60_Y4_N6
\l1|LessThan3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~17_combout\ = ( \l1|temp_min~2_combout\ & ( \l1|temp_min~5_combout\ & ( (!\l1|sig_arr[2][7]~q\) # ((!\l1|sig_arr[2][6]~q\ & ((!\l1|sig_arr[2][5]~q\) # (\l1|temp_min~1_combout\))) # (\l1|sig_arr[2][6]~q\ & (!\l1|sig_arr[2][5]~q\ & 
-- \l1|temp_min~1_combout\))) ) ) ) # ( !\l1|temp_min~2_combout\ & ( \l1|temp_min~5_combout\ & ( (!\l1|sig_arr[2][7]~q\) # ((!\l1|sig_arr[2][6]~q\ & \l1|temp_min~1_combout\)) ) ) ) # ( \l1|temp_min~2_combout\ & ( !\l1|temp_min~5_combout\ & ( 
-- (!\l1|sig_arr[2][7]~q\ & ((!\l1|sig_arr[2][6]~q\ & ((!\l1|sig_arr[2][5]~q\) # (\l1|temp_min~1_combout\))) # (\l1|sig_arr[2][6]~q\ & (!\l1|sig_arr[2][5]~q\ & \l1|temp_min~1_combout\)))) ) ) ) # ( !\l1|temp_min~2_combout\ & ( !\l1|temp_min~5_combout\ & ( 
-- (!\l1|sig_arr[2][6]~q\ & (!\l1|sig_arr[2][7]~q\ & \l1|temp_min~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000100000001100100011001100111011101110110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[2][6]~q\,
	datab => \l1|ALT_INV_sig_arr[2][7]~q\,
	datac => \l1|ALT_INV_sig_arr[2][5]~q\,
	datad => \l1|ALT_INV_temp_min~1_combout\,
	datae => \l1|ALT_INV_temp_min~2_combout\,
	dataf => \l1|ALT_INV_temp_min~5_combout\,
	combout => \l1|LessThan3~17_combout\);

-- Location: MLABCELL_X59_Y5_N27
\l1|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~5_combout\ = ( \l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & ((\l1|LessThan3~17_combout\))) # (\l1|LessThan2~10_combout\ & (\l1|LessThan3~16_combout\)) ) ) # ( !\l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & 
-- (((\l1|LessThan3~17_combout\)))) # (\l1|LessThan2~10_combout\ & ((!\l1|LessThan2~9_combout\ & (\l1|LessThan3~16_combout\)) # (\l1|LessThan2~9_combout\ & ((\l1|LessThan3~17_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan2~10_combout\,
	datab => \l1|ALT_INV_LessThan2~9_combout\,
	datac => \l1|ALT_INV_LessThan3~16_combout\,
	datad => \l1|ALT_INV_LessThan3~17_combout\,
	dataf => \l1|ALT_INV_LessThan2~8_combout\,
	combout => \l1|LessThan3~5_combout\);

-- Location: FF_X59_Y5_N7
\l1|sig_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][4]~q\);

-- Location: FF_X59_Y5_N23
\l1|sig_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][1]~q\);

-- Location: MLABCELL_X59_Y5_N39
\l1|temp_min~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~15_combout\ = ( \l1|LessThan2~9_combout\ & ( \l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|sig_arr[0][1]~q\ & ((\l1|LessThan1~1_combout\)))) # (\l1|LessThan2~10_combout\ & (((\l1|sig_arr[1][1]~q\)))) ) ) ) # ( 
-- !\l1|LessThan2~9_combout\ & ( \l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|sig_arr[0][1]~q\ & ((\l1|LessThan1~1_combout\)))) # (\l1|LessThan2~10_combout\ & (((\l1|sig_arr[1][1]~q\)))) ) ) ) # ( \l1|LessThan2~9_combout\ & ( 
-- !\l1|LessThan2~8_combout\ & ( (\l1|sig_arr[0][1]~q\ & \l1|LessThan1~1_combout\) ) ) ) # ( !\l1|LessThan2~9_combout\ & ( !\l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|sig_arr[0][1]~q\ & ((\l1|LessThan1~1_combout\)))) # 
-- (\l1|LessThan2~10_combout\ & (((\l1|sig_arr[1][1]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000000000011001100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan2~10_combout\,
	datab => \l1|ALT_INV_sig_arr[0][1]~q\,
	datac => \l1|ALT_INV_sig_arr[1][1]~q\,
	datad => \l1|ALT_INV_LessThan1~1_combout\,
	datae => \l1|ALT_INV_LessThan2~9_combout\,
	dataf => \l1|ALT_INV_LessThan2~8_combout\,
	combout => \l1|temp_min~15_combout\);

-- Location: MLABCELL_X59_Y5_N18
\l1|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~1_combout\ = ( \l1|LessThan2~9_combout\ & ( \l1|LessThan2~8_combout\ & ( !\l1|sig_arr[2][3]~q\ $ (((!\l1|LessThan2~10_combout\ & ((!\l1|temp_min~3_combout\))) # (\l1|LessThan2~10_combout\ & (!\l1|sig_arr[1][3]~q\)))) ) ) ) # ( 
-- !\l1|LessThan2~9_combout\ & ( \l1|LessThan2~8_combout\ & ( !\l1|sig_arr[2][3]~q\ $ (((!\l1|LessThan2~10_combout\ & ((!\l1|temp_min~3_combout\))) # (\l1|LessThan2~10_combout\ & (!\l1|sig_arr[1][3]~q\)))) ) ) ) # ( \l1|LessThan2~9_combout\ & ( 
-- !\l1|LessThan2~8_combout\ & ( !\l1|sig_arr[2][3]~q\ $ (!\l1|temp_min~3_combout\) ) ) ) # ( !\l1|LessThan2~9_combout\ & ( !\l1|LessThan2~8_combout\ & ( !\l1|sig_arr[2][3]~q\ $ (((!\l1|LessThan2~10_combout\ & ((!\l1|temp_min~3_combout\))) # 
-- (\l1|LessThan2~10_combout\ & (!\l1|sig_arr[1][3]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011010010000011111111000000011110110100100001111011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[1][3]~q\,
	datab => \l1|ALT_INV_LessThan2~10_combout\,
	datac => \l1|ALT_INV_sig_arr[2][3]~q\,
	datad => \l1|ALT_INV_temp_min~3_combout\,
	datae => \l1|ALT_INV_LessThan2~9_combout\,
	dataf => \l1|ALT_INV_LessThan2~8_combout\,
	combout => \l1|LessThan3~1_combout\);

-- Location: MLABCELL_X59_Y5_N12
\l1|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~2_combout\ = ( \l1|LessThan2~9_combout\ & ( \l1|LessThan2~8_combout\ & ( !\l1|sig_arr[2][2]~q\ $ (((!\l1|LessThan2~10_combout\ & (!\l1|temp_min~4_combout\)) # (\l1|LessThan2~10_combout\ & ((!\l1|sig_arr[1][2]~q\))))) ) ) ) # ( 
-- !\l1|LessThan2~9_combout\ & ( \l1|LessThan2~8_combout\ & ( !\l1|sig_arr[2][2]~q\ $ (((!\l1|LessThan2~10_combout\ & (!\l1|temp_min~4_combout\)) # (\l1|LessThan2~10_combout\ & ((!\l1|sig_arr[1][2]~q\))))) ) ) ) # ( \l1|LessThan2~9_combout\ & ( 
-- !\l1|LessThan2~8_combout\ & ( !\l1|temp_min~4_combout\ $ (!\l1|sig_arr[2][2]~q\) ) ) ) # ( !\l1|LessThan2~9_combout\ & ( !\l1|LessThan2~8_combout\ & ( !\l1|sig_arr[2][2]~q\ $ (((!\l1|LessThan2~10_combout\ & (!\l1|temp_min~4_combout\)) # 
-- (\l1|LessThan2~10_combout\ & ((!\l1|sig_arr[1][2]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011111011000001100111100110000100111110110000010011111011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan2~10_combout\,
	datab => \l1|ALT_INV_temp_min~4_combout\,
	datac => \l1|ALT_INV_sig_arr[1][2]~q\,
	datad => \l1|ALT_INV_sig_arr[2][2]~q\,
	datae => \l1|ALT_INV_LessThan2~9_combout\,
	dataf => \l1|ALT_INV_LessThan2~8_combout\,
	combout => \l1|LessThan3~2_combout\);

-- Location: FF_X59_Y5_N43
\l1|sig_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][0]~q\);

-- Location: MLABCELL_X59_Y5_N33
\l1|temp_min~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~10_combout\ = ( \l1|LessThan2~9_combout\ & ( \l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & (!\l1|sig_arr[0][0]~q\ & ((\l1|LessThan1~1_combout\)))) # (\l1|LessThan2~10_combout\ & (((!\l1|sig_arr[1][0]~q\)))) ) ) ) # ( 
-- !\l1|LessThan2~9_combout\ & ( \l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & (!\l1|sig_arr[0][0]~q\ & ((\l1|LessThan1~1_combout\)))) # (\l1|LessThan2~10_combout\ & (((!\l1|sig_arr[1][0]~q\)))) ) ) ) # ( \l1|LessThan2~9_combout\ & ( 
-- !\l1|LessThan2~8_combout\ & ( (!\l1|sig_arr[0][0]~q\ & \l1|LessThan1~1_combout\) ) ) ) # ( !\l1|LessThan2~9_combout\ & ( !\l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & (!\l1|sig_arr[0][0]~q\ & ((\l1|LessThan1~1_combout\)))) # 
-- (\l1|LessThan2~10_combout\ & (((!\l1|sig_arr[1][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010101100000000001010101000001100101011000000110010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][0]~q\,
	datab => \l1|ALT_INV_sig_arr[1][0]~q\,
	datac => \l1|ALT_INV_LessThan2~10_combout\,
	datad => \l1|ALT_INV_LessThan1~1_combout\,
	datae => \l1|ALT_INV_LessThan2~9_combout\,
	dataf => \l1|ALT_INV_LessThan2~8_combout\,
	combout => \l1|temp_min~10_combout\);

-- Location: MLABCELL_X59_Y5_N42
\l1|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~3_combout\ = ( \l1|sig_arr[2][0]~q\ & ( \l1|temp_min~10_combout\ & ( (!\l1|sig_arr[2][1]~q\ & (\l1|temp_min~15_combout\ & (!\l1|LessThan3~1_combout\ & !\l1|LessThan3~2_combout\))) ) ) ) # ( !\l1|sig_arr[2][0]~q\ & ( \l1|temp_min~10_combout\ 
-- & ( (!\l1|sig_arr[2][1]~q\ & (\l1|temp_min~15_combout\ & (!\l1|LessThan3~1_combout\ & !\l1|LessThan3~2_combout\))) ) ) ) # ( \l1|sig_arr[2][0]~q\ & ( !\l1|temp_min~10_combout\ & ( (!\l1|sig_arr[2][1]~q\ & (\l1|temp_min~15_combout\ & 
-- (!\l1|LessThan3~1_combout\ & !\l1|LessThan3~2_combout\))) ) ) ) # ( !\l1|sig_arr[2][0]~q\ & ( !\l1|temp_min~10_combout\ & ( (!\l1|LessThan3~1_combout\ & (!\l1|LessThan3~2_combout\ & ((!\l1|sig_arr[2][1]~q\) # (\l1|temp_min~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[2][1]~q\,
	datab => \l1|ALT_INV_temp_min~15_combout\,
	datac => \l1|ALT_INV_LessThan3~1_combout\,
	datad => \l1|ALT_INV_LessThan3~2_combout\,
	datae => \l1|ALT_INV_sig_arr[2][0]~q\,
	dataf => \l1|ALT_INV_temp_min~10_combout\,
	combout => \l1|LessThan3~3_combout\);

-- Location: MLABCELL_X59_Y5_N6
\l1|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~6_combout\ = ( \l1|sig_arr[2][4]~q\ & ( \l1|LessThan3~3_combout\ & ( (!\l1|LessThan3~5_combout\ & ((!\l1|temp_min~11_combout\) # (!\l1|LessThan3~0_combout\))) ) ) ) # ( !\l1|sig_arr[2][4]~q\ & ( \l1|LessThan3~3_combout\ & ( 
-- (!\l1|LessThan3~0_combout\ & !\l1|LessThan3~5_combout\) ) ) ) # ( \l1|sig_arr[2][4]~q\ & ( !\l1|LessThan3~3_combout\ & ( (!\l1|LessThan3~5_combout\ & ((!\l1|temp_min~11_combout\) # ((!\l1|LessThan3~0_combout\) # (!\l1|LessThan3~4_combout\)))) ) ) ) # ( 
-- !\l1|sig_arr[2][4]~q\ & ( !\l1|LessThan3~3_combout\ & ( (!\l1|LessThan3~5_combout\ & ((!\l1|LessThan3~0_combout\) # ((!\l1|temp_min~11_combout\ & !\l1|LessThan3~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000000000111111100000000011001100000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_temp_min~11_combout\,
	datab => \l1|ALT_INV_LessThan3~0_combout\,
	datac => \l1|ALT_INV_LessThan3~4_combout\,
	datad => \l1|ALT_INV_LessThan3~5_combout\,
	datae => \l1|ALT_INV_sig_arr[2][4]~q\,
	dataf => \l1|ALT_INV_LessThan3~3_combout\,
	combout => \l1|LessThan3~6_combout\);

-- Location: FF_X60_Y4_N20
\l1|sig_arr[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[15]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][15]~q\);

-- Location: FF_X60_Y4_N23
\l1|sig_arr[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[14]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][14]~q\);

-- Location: MLABCELL_X59_Y4_N45
\l1|sig_arr[2][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|sig_arr[2][13]~feeder_combout\ = ( \data_in[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[13]~input_o\,
	combout => \l1|sig_arr[2][13]~feeder_combout\);

-- Location: FF_X59_Y4_N46
\l1|sig_arr[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|sig_arr[2][13]~feeder_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][13]~q\);

-- Location: LABCELL_X60_Y4_N21
\l1|LessThan3~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~11_combout\ = ( !\l1|sig_arr[2][14]~q\ & ( !\l1|sig_arr[2][13]~q\ & ( !\l1|sig_arr[2][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[2][15]~q\,
	datae => \l1|ALT_INV_sig_arr[2][14]~q\,
	dataf => \l1|ALT_INV_sig_arr[2][13]~q\,
	combout => \l1|LessThan3~11_combout\);

-- Location: FF_X60_Y6_N38
\l1|sig_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[8]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][8]~q\);

-- Location: FF_X59_Y5_N32
\l1|sig_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[9]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][9]~q\);

-- Location: MLABCELL_X59_Y6_N18
\l1|LessThan2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan2~11_combout\ = ( \l1|LessThan2~9_combout\ & ( (\l1|LessThan2~10_combout\ & \l1|LessThan2~8_combout\) ) ) # ( !\l1|LessThan2~9_combout\ & ( \l1|LessThan2~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l1|ALT_INV_LessThan2~10_combout\,
	datad => \l1|ALT_INV_LessThan2~8_combout\,
	dataf => \l1|ALT_INV_LessThan2~9_combout\,
	combout => \l1|LessThan2~11_combout\);

-- Location: MLABCELL_X59_Y6_N45
\l1|temp_min~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~21_combout\ = ( \l1|LessThan2~11_combout\ & ( \l1|sig_arr[1][8]~q\ ) ) # ( !\l1|LessThan2~11_combout\ & ( !\l1|temp_min~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[1][8]~q\,
	datad => \l1|ALT_INV_temp_min~6_combout\,
	dataf => \l1|ALT_INV_LessThan2~11_combout\,
	combout => \l1|temp_min~21_combout\);

-- Location: FF_X60_Y6_N2
\l1|sig_arr[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[12]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][12]~q\);

-- Location: FF_X60_Y6_N41
\l1|sig_arr[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[11]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][11]~q\);

-- Location: LABCELL_X60_Y6_N27
\l1|temp_min~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~18_combout\ = ( \l1|LessThan2~9_combout\ & ( \l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & (!\l1|temp_min~7_combout\)) # (\l1|LessThan2~10_combout\ & ((\l1|sig_arr[1][12]~q\))) ) ) ) # ( !\l1|LessThan2~9_combout\ & ( 
-- \l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & (!\l1|temp_min~7_combout\)) # (\l1|LessThan2~10_combout\ & ((\l1|sig_arr[1][12]~q\))) ) ) ) # ( \l1|LessThan2~9_combout\ & ( !\l1|LessThan2~8_combout\ & ( !\l1|temp_min~7_combout\ ) ) ) # ( 
-- !\l1|LessThan2~9_combout\ & ( !\l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & (!\l1|temp_min~7_combout\)) # (\l1|LessThan2~10_combout\ & ((\l1|sig_arr[1][12]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101111101010101010101010100000101011111010000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_temp_min~7_combout\,
	datac => \l1|ALT_INV_LessThan2~10_combout\,
	datad => \l1|ALT_INV_sig_arr[1][12]~q\,
	datae => \l1|ALT_INV_LessThan2~9_combout\,
	dataf => \l1|ALT_INV_LessThan2~8_combout\,
	combout => \l1|temp_min~18_combout\);

-- Location: FF_X60_Y6_N59
\l1|sig_arr[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[10]~input_o\,
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|sig_arr[2][10]~q\);

-- Location: LABCELL_X60_Y6_N45
\l1|temp_min~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~19_combout\ = ( \l1|LessThan2~9_combout\ & ( (!\l1|LessThan2~8_combout\ & (((\l1|temp_min~8_combout\)))) # (\l1|LessThan2~8_combout\ & ((!\l1|LessThan2~10_combout\ & (\l1|temp_min~8_combout\)) # (\l1|LessThan2~10_combout\ & 
-- ((\l1|sig_arr[1][11]~q\))))) ) ) # ( !\l1|LessThan2~9_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|temp_min~8_combout\)) # (\l1|LessThan2~10_combout\ & ((\l1|sig_arr[1][11]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan2~8_combout\,
	datab => \l1|ALT_INV_LessThan2~10_combout\,
	datac => \l1|ALT_INV_temp_min~8_combout\,
	datad => \l1|ALT_INV_sig_arr[1][11]~q\,
	dataf => \l1|ALT_INV_LessThan2~9_combout\,
	combout => \l1|temp_min~19_combout\);

-- Location: LABCELL_X60_Y6_N42
\l1|temp_min~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~20_combout\ = ( \l1|LessThan2~9_combout\ & ( (!\l1|LessThan2~8_combout\ & (((\l1|temp_min~9_combout\)))) # (\l1|LessThan2~8_combout\ & ((!\l1|LessThan2~10_combout\ & ((\l1|temp_min~9_combout\))) # (\l1|LessThan2~10_combout\ & 
-- (\l1|sig_arr[1][10]~q\)))) ) ) # ( !\l1|LessThan2~9_combout\ & ( (!\l1|LessThan2~10_combout\ & ((\l1|temp_min~9_combout\))) # (\l1|LessThan2~10_combout\ & (\l1|sig_arr[1][10]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan2~8_combout\,
	datab => \l1|ALT_INV_LessThan2~10_combout\,
	datac => \l1|ALT_INV_sig_arr[1][10]~q\,
	datad => \l1|ALT_INV_temp_min~9_combout\,
	dataf => \l1|ALT_INV_LessThan2~9_combout\,
	combout => \l1|temp_min~20_combout\);

-- Location: LABCELL_X60_Y6_N54
\l1|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~7_combout\ = ( \l1|temp_min~19_combout\ & ( \l1|temp_min~20_combout\ & ( (\l1|sig_arr[2][11]~q\ & (\l1|sig_arr[2][10]~q\ & (!\l1|sig_arr[2][12]~q\ $ (\l1|temp_min~18_combout\)))) ) ) ) # ( !\l1|temp_min~19_combout\ & ( 
-- \l1|temp_min~20_combout\ & ( (!\l1|sig_arr[2][11]~q\ & (\l1|sig_arr[2][10]~q\ & (!\l1|sig_arr[2][12]~q\ $ (\l1|temp_min~18_combout\)))) ) ) ) # ( \l1|temp_min~19_combout\ & ( !\l1|temp_min~20_combout\ & ( (\l1|sig_arr[2][11]~q\ & (!\l1|sig_arr[2][10]~q\ & 
-- (!\l1|sig_arr[2][12]~q\ $ (\l1|temp_min~18_combout\)))) ) ) ) # ( !\l1|temp_min~19_combout\ & ( !\l1|temp_min~20_combout\ & ( (!\l1|sig_arr[2][11]~q\ & (!\l1|sig_arr[2][10]~q\ & (!\l1|sig_arr[2][12]~q\ $ (\l1|temp_min~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[2][12]~q\,
	datab => \l1|ALT_INV_sig_arr[2][11]~q\,
	datac => \l1|ALT_INV_temp_min~18_combout\,
	datad => \l1|ALT_INV_sig_arr[2][10]~q\,
	datae => \l1|ALT_INV_temp_min~19_combout\,
	dataf => \l1|ALT_INV_temp_min~20_combout\,
	combout => \l1|LessThan3~7_combout\);

-- Location: LABCELL_X61_Y7_N6
\l1|temp_min~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~17_combout\ = ( \l1|LessThan2~9_combout\ & ( \l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|sig_arr[0][9]~q\ & (\l1|LessThan1~1_combout\))) # (\l1|LessThan2~10_combout\ & (((\l1|sig_arr[1][9]~q\)))) ) ) ) # ( 
-- !\l1|LessThan2~9_combout\ & ( \l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|sig_arr[0][9]~q\ & (\l1|LessThan1~1_combout\))) # (\l1|LessThan2~10_combout\ & (((\l1|sig_arr[1][9]~q\)))) ) ) ) # ( \l1|LessThan2~9_combout\ & ( 
-- !\l1|LessThan2~8_combout\ & ( (\l1|sig_arr[0][9]~q\ & \l1|LessThan1~1_combout\) ) ) ) # ( !\l1|LessThan2~9_combout\ & ( !\l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|sig_arr[0][9]~q\ & (\l1|LessThan1~1_combout\))) # 
-- (\l1|LessThan2~10_combout\ & (((\l1|sig_arr[1][9]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001010000010100000100001101110000010000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[0][9]~q\,
	datab => \l1|ALT_INV_LessThan2~10_combout\,
	datac => \l1|ALT_INV_LessThan1~1_combout\,
	datad => \l1|ALT_INV_sig_arr[1][9]~q\,
	datae => \l1|ALT_INV_LessThan2~9_combout\,
	dataf => \l1|ALT_INV_LessThan2~8_combout\,
	combout => \l1|temp_min~17_combout\);

-- Location: LABCELL_X60_Y6_N0
\l1|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~8_combout\ = ( \l1|temp_min~17_combout\ & ( (\l1|sig_arr[2][9]~q\ & (\l1|LessThan3~7_combout\ & (!\l1|sig_arr[2][8]~q\ $ (\l1|temp_min~21_combout\)))) ) ) # ( !\l1|temp_min~17_combout\ & ( (!\l1|sig_arr[2][9]~q\ & (\l1|LessThan3~7_combout\ & 
-- (!\l1|sig_arr[2][8]~q\ $ (\l1|temp_min~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000100000000001000010000000000001000010000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[2][8]~q\,
	datab => \l1|ALT_INV_sig_arr[2][9]~q\,
	datac => \l1|ALT_INV_temp_min~21_combout\,
	datad => \l1|ALT_INV_LessThan3~7_combout\,
	dataf => \l1|ALT_INV_temp_min~17_combout\,
	combout => \l1|LessThan3~8_combout\);

-- Location: LABCELL_X60_Y6_N15
\l1|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~9_combout\ = ( \l1|temp_min~19_combout\ & ( \l1|temp_min~20_combout\ & ( (!\l1|sig_arr[2][12]~q\ & ((!\l1|sig_arr[2][11]~q\) # ((!\l1|sig_arr[2][10]~q\) # (\l1|temp_min~18_combout\)))) # (\l1|sig_arr[2][12]~q\ & (\l1|temp_min~18_combout\ & 
-- ((!\l1|sig_arr[2][11]~q\) # (!\l1|sig_arr[2][10]~q\)))) ) ) ) # ( !\l1|temp_min~19_combout\ & ( \l1|temp_min~20_combout\ & ( (!\l1|sig_arr[2][12]~q\ & (((!\l1|sig_arr[2][11]~q\ & !\l1|sig_arr[2][10]~q\)) # (\l1|temp_min~18_combout\))) # 
-- (\l1|sig_arr[2][12]~q\ & (!\l1|sig_arr[2][11]~q\ & (!\l1|sig_arr[2][10]~q\ & \l1|temp_min~18_combout\))) ) ) ) # ( \l1|temp_min~19_combout\ & ( !\l1|temp_min~20_combout\ & ( (!\l1|sig_arr[2][12]~q\ & ((!\l1|sig_arr[2][11]~q\) # 
-- (\l1|temp_min~18_combout\))) # (\l1|sig_arr[2][12]~q\ & (!\l1|sig_arr[2][11]~q\ & \l1|temp_min~18_combout\)) ) ) ) # ( !\l1|temp_min~19_combout\ & ( !\l1|temp_min~20_combout\ & ( (!\l1|sig_arr[2][12]~q\ & \l1|temp_min~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010100010001110111010000000111010101010100011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[2][12]~q\,
	datab => \l1|ALT_INV_sig_arr[2][11]~q\,
	datac => \l1|ALT_INV_sig_arr[2][10]~q\,
	datad => \l1|ALT_INV_temp_min~18_combout\,
	datae => \l1|ALT_INV_temp_min~19_combout\,
	dataf => \l1|ALT_INV_temp_min~20_combout\,
	combout => \l1|LessThan3~9_combout\);

-- Location: LABCELL_X60_Y6_N36
\l1|LessThan3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan3~10_combout\ = ( \l1|sig_arr[2][8]~q\ & ( \l1|temp_min~21_combout\ & ( (!\l1|LessThan3~9_combout\ & ((!\l1|temp_min~17_combout\) # ((!\l1|LessThan3~7_combout\) # (\l1|sig_arr[2][9]~q\)))) ) ) ) # ( !\l1|sig_arr[2][8]~q\ & ( 
-- \l1|temp_min~21_combout\ & ( (!\l1|LessThan3~9_combout\ & ((!\l1|LessThan3~7_combout\) # ((!\l1|temp_min~17_combout\ & \l1|sig_arr[2][9]~q\)))) ) ) ) # ( \l1|sig_arr[2][8]~q\ & ( !\l1|temp_min~21_combout\ & ( (!\l1|LessThan3~9_combout\ & 
-- ((!\l1|temp_min~17_combout\) # ((!\l1|LessThan3~7_combout\) # (\l1|sig_arr[2][9]~q\)))) ) ) ) # ( !\l1|sig_arr[2][8]~q\ & ( !\l1|temp_min~21_combout\ & ( (!\l1|LessThan3~9_combout\ & ((!\l1|temp_min~17_combout\) # ((!\l1|LessThan3~7_combout\) # 
-- (\l1|sig_arr[2][9]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101100000000111110110000000011110010000000001111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_temp_min~17_combout\,
	datab => \l1|ALT_INV_sig_arr[2][9]~q\,
	datac => \l1|ALT_INV_LessThan3~7_combout\,
	datad => \l1|ALT_INV_LessThan3~9_combout\,
	datae => \l1|ALT_INV_sig_arr[2][8]~q\,
	dataf => \l1|ALT_INV_temp_min~21_combout\,
	combout => \l1|LessThan3~10_combout\);

-- Location: MLABCELL_X59_Y6_N3
\l1|temp_min~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~33_combout\ = ( \l1|sig_arr[2][8]~q\ & ( \l1|temp_min~21_combout\ ) ) # ( !\l1|sig_arr[2][8]~q\ & ( \l1|temp_min~21_combout\ & ( (!\l1|LessThan3~11_combout\) # ((\l1|LessThan3~10_combout\ & ((!\l1|LessThan3~8_combout\) # 
-- (\l1|LessThan3~6_combout\)))) ) ) ) # ( \l1|sig_arr[2][8]~q\ & ( !\l1|temp_min~21_combout\ & ( (\l1|LessThan3~11_combout\ & ((!\l1|LessThan3~10_combout\) # ((!\l1|LessThan3~6_combout\ & \l1|LessThan3~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000001011001100111111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan3~6_combout\,
	datab => \l1|ALT_INV_LessThan3~11_combout\,
	datac => \l1|ALT_INV_LessThan3~8_combout\,
	datad => \l1|ALT_INV_LessThan3~10_combout\,
	datae => \l1|ALT_INV_sig_arr[2][8]~q\,
	dataf => \l1|ALT_INV_temp_min~21_combout\,
	combout => \l1|temp_min~33_combout\);

-- Location: FF_X59_Y6_N10
\l1|l_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~33_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][8]~q\);

-- Location: FF_X60_Y7_N44
\l1|l_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~33_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][8]~q\);

-- Location: LABCELL_X60_Y7_N54
\l1|temp_min~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~32_combout\ = ( \l1|sig_arr[2][9]~q\ & ( \l1|temp_min~17_combout\ ) ) # ( !\l1|sig_arr[2][9]~q\ & ( \l1|temp_min~17_combout\ & ( (!\l1|LessThan3~11_combout\) # ((\l1|LessThan3~10_combout\ & ((!\l1|LessThan3~8_combout\) # 
-- (\l1|LessThan3~6_combout\)))) ) ) ) # ( \l1|sig_arr[2][9]~q\ & ( !\l1|temp_min~17_combout\ & ( (\l1|LessThan3~11_combout\ & ((!\l1|LessThan3~10_combout\) # ((!\l1|LessThan3~6_combout\ & \l1|LessThan3~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010111011111111010100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan3~10_combout\,
	datab => \l1|ALT_INV_LessThan3~6_combout\,
	datac => \l1|ALT_INV_LessThan3~8_combout\,
	datad => \l1|ALT_INV_LessThan3~11_combout\,
	datae => \l1|ALT_INV_sig_arr[2][9]~q\,
	dataf => \l1|ALT_INV_temp_min~17_combout\,
	combout => \l1|temp_min~32_combout\);

-- Location: FF_X60_Y7_N38
\l1|l_arr[1][9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~32_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][9]~DUPLICATE_q\);

-- Location: LABCELL_X60_Y6_N51
\l1|temp_min~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~31_combout\ = ( \l1|sig_arr[2][10]~q\ & ( \l1|temp_min~20_combout\ ) ) # ( !\l1|sig_arr[2][10]~q\ & ( \l1|temp_min~20_combout\ & ( (!\l1|LessThan3~11_combout\) # ((\l1|LessThan3~10_combout\ & ((!\l1|LessThan3~8_combout\) # 
-- (\l1|LessThan3~6_combout\)))) ) ) ) # ( \l1|sig_arr[2][10]~q\ & ( !\l1|temp_min~20_combout\ & ( (\l1|LessThan3~11_combout\ & ((!\l1|LessThan3~10_combout\) # ((\l1|LessThan3~8_combout\ & !\l1|LessThan3~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001101110011111111001000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan3~8_combout\,
	datab => \l1|ALT_INV_LessThan3~10_combout\,
	datac => \l1|ALT_INV_LessThan3~6_combout\,
	datad => \l1|ALT_INV_LessThan3~11_combout\,
	datae => \l1|ALT_INV_sig_arr[2][10]~q\,
	dataf => \l1|ALT_INV_temp_min~20_combout\,
	combout => \l1|temp_min~31_combout\);

-- Location: FF_X60_Y7_N14
\l1|l_arr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~31_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][10]~q\);

-- Location: FF_X60_Y7_N23
\l1|l_arr[0][9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~32_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][9]~DUPLICATE_q\);

-- Location: FF_X60_Y6_N23
\l1|l_arr[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~31_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][10]~q\);

-- Location: LABCELL_X60_Y7_N39
\l1|LessThan6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan6~9_combout\ = ( \l1|l_arr[0][9]~DUPLICATE_q\ & ( \l1|l_arr[1][10]~q\ & ( (!\l1|l_arr[0][10]~q\) # ((\l1|l_arr[1][9]~DUPLICATE_q\ & (\l1|l_arr[1][8]~q\ & !\l1|l_arr[0][8]~q\))) ) ) ) # ( !\l1|l_arr[0][9]~DUPLICATE_q\ & ( \l1|l_arr[1][10]~q\ & 
-- ( ((!\l1|l_arr[0][10]~q\) # ((\l1|l_arr[1][8]~q\ & !\l1|l_arr[0][8]~q\))) # (\l1|l_arr[1][9]~DUPLICATE_q\) ) ) ) # ( \l1|l_arr[0][9]~DUPLICATE_q\ & ( !\l1|l_arr[1][10]~q\ & ( (\l1|l_arr[1][9]~DUPLICATE_q\ & (!\l1|l_arr[0][10]~q\ & (\l1|l_arr[1][8]~q\ & 
-- !\l1|l_arr[0][8]~q\))) ) ) ) # ( !\l1|l_arr[0][9]~DUPLICATE_q\ & ( !\l1|l_arr[1][10]~q\ & ( (!\l1|l_arr[0][10]~q\ & (((\l1|l_arr[1][8]~q\ & !\l1|l_arr[0][8]~q\)) # (\l1|l_arr[1][9]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001000100000001000000000011011111110111011100110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_l_arr[1][9]~DUPLICATE_q\,
	datab => \l1|ALT_INV_l_arr[0][10]~q\,
	datac => \l1|ALT_INV_l_arr[1][8]~q\,
	datad => \l1|ALT_INV_l_arr[0][8]~q\,
	datae => \l1|ALT_INV_l_arr[0][9]~DUPLICATE_q\,
	dataf => \l1|ALT_INV_l_arr[1][10]~q\,
	combout => \l1|LessThan6~9_combout\);

-- Location: LABCELL_X60_Y7_N0
\l1|temp_min~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~35_combout\ = ( \l1|LessThan3~10_combout\ & ( \l1|LessThan3~8_combout\ & ( (!\l1|LessThan3~6_combout\ & ((!\l1|LessThan3~11_combout\ & (\l1|temp_min~19_combout\)) # (\l1|LessThan3~11_combout\ & ((\l1|sig_arr[2][11]~q\))))) # 
-- (\l1|LessThan3~6_combout\ & (\l1|temp_min~19_combout\)) ) ) ) # ( !\l1|LessThan3~10_combout\ & ( \l1|LessThan3~8_combout\ & ( (!\l1|LessThan3~11_combout\ & (\l1|temp_min~19_combout\)) # (\l1|LessThan3~11_combout\ & ((\l1|sig_arr[2][11]~q\))) ) ) ) # ( 
-- \l1|LessThan3~10_combout\ & ( !\l1|LessThan3~8_combout\ & ( \l1|temp_min~19_combout\ ) ) ) # ( !\l1|LessThan3~10_combout\ & ( !\l1|LessThan3~8_combout\ & ( (!\l1|LessThan3~11_combout\ & (\l1|temp_min~19_combout\)) # (\l1|LessThan3~11_combout\ & 
-- ((\l1|sig_arr[2][11]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010101010101010101000011110101010100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_temp_min~19_combout\,
	datab => \l1|ALT_INV_LessThan3~6_combout\,
	datac => \l1|ALT_INV_sig_arr[2][11]~q\,
	datad => \l1|ALT_INV_LessThan3~11_combout\,
	datae => \l1|ALT_INV_LessThan3~10_combout\,
	dataf => \l1|ALT_INV_LessThan3~8_combout\,
	combout => \l1|temp_min~35_combout\);

-- Location: FF_X60_Y7_N8
\l1|l_arr[1][11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~35_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][11]~DUPLICATE_q\);

-- Location: FF_X60_Y7_N35
\l1|l_arr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~35_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][11]~q\);

-- Location: LABCELL_X60_Y7_N51
\l1|temp_min~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~34_combout\ = ( \l1|LessThan3~10_combout\ & ( \l1|LessThan3~8_combout\ & ( (!\l1|LessThan3~11_combout\ & (((\l1|temp_min~18_combout\)))) # (\l1|LessThan3~11_combout\ & ((!\l1|LessThan3~6_combout\ & (\l1|sig_arr[2][12]~q\)) # 
-- (\l1|LessThan3~6_combout\ & ((\l1|temp_min~18_combout\))))) ) ) ) # ( !\l1|LessThan3~10_combout\ & ( \l1|LessThan3~8_combout\ & ( (!\l1|LessThan3~11_combout\ & ((\l1|temp_min~18_combout\))) # (\l1|LessThan3~11_combout\ & (\l1|sig_arr[2][12]~q\)) ) ) ) # ( 
-- \l1|LessThan3~10_combout\ & ( !\l1|LessThan3~8_combout\ & ( \l1|temp_min~18_combout\ ) ) ) # ( !\l1|LessThan3~10_combout\ & ( !\l1|LessThan3~8_combout\ & ( (!\l1|LessThan3~11_combout\ & ((\l1|temp_min~18_combout\))) # (\l1|LessThan3~11_combout\ & 
-- (\l1|sig_arr[2][12]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000000001111111100010001110111010001000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_sig_arr[2][12]~q\,
	datab => \l1|ALT_INV_LessThan3~11_combout\,
	datac => \l1|ALT_INV_LessThan3~6_combout\,
	datad => \l1|ALT_INV_temp_min~18_combout\,
	datae => \l1|ALT_INV_LessThan3~10_combout\,
	dataf => \l1|ALT_INV_LessThan3~8_combout\,
	combout => \l1|temp_min~34_combout\);

-- Location: FF_X60_Y7_N11
\l1|l_arr[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~34_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][12]~q\);

-- Location: FF_X60_Y7_N20
\l1|l_arr[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~34_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][12]~q\);

-- Location: LABCELL_X60_Y7_N9
\l1|LessThan6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan6~10_combout\ = ( \l1|l_arr[1][12]~q\ & ( \l1|l_arr[0][12]~q\ & ( !\l1|l_arr[1][11]~DUPLICATE_q\ $ (\l1|l_arr[0][11]~q\) ) ) ) # ( !\l1|l_arr[1][12]~q\ & ( !\l1|l_arr[0][12]~q\ & ( !\l1|l_arr[1][11]~DUPLICATE_q\ $ (\l1|l_arr[0][11]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000000000000000000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l1|ALT_INV_l_arr[1][11]~DUPLICATE_q\,
	datad => \l1|ALT_INV_l_arr[0][11]~q\,
	datae => \l1|ALT_INV_l_arr[1][12]~q\,
	dataf => \l1|ALT_INV_l_arr[0][12]~q\,
	combout => \l1|LessThan6~10_combout\);

-- Location: LABCELL_X60_Y7_N45
\l1|LessThan6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan6~8_combout\ = ( \l1|l_arr[0][9]~DUPLICATE_q\ & ( \l1|l_arr[0][8]~q\ & ( (\l1|l_arr[1][9]~DUPLICATE_q\ & (\l1|l_arr[1][8]~q\ & (!\l1|l_arr[0][10]~q\ $ (\l1|l_arr[1][10]~q\)))) ) ) ) # ( !\l1|l_arr[0][9]~DUPLICATE_q\ & ( \l1|l_arr[0][8]~q\ & ( 
-- (!\l1|l_arr[1][9]~DUPLICATE_q\ & (\l1|l_arr[1][8]~q\ & (!\l1|l_arr[0][10]~q\ $ (\l1|l_arr[1][10]~q\)))) ) ) ) # ( \l1|l_arr[0][9]~DUPLICATE_q\ & ( !\l1|l_arr[0][8]~q\ & ( (\l1|l_arr[1][9]~DUPLICATE_q\ & (!\l1|l_arr[1][8]~q\ & (!\l1|l_arr[0][10]~q\ $ 
-- (\l1|l_arr[1][10]~q\)))) ) ) ) # ( !\l1|l_arr[0][9]~DUPLICATE_q\ & ( !\l1|l_arr[0][8]~q\ & ( (!\l1|l_arr[1][9]~DUPLICATE_q\ & (!\l1|l_arr[1][8]~q\ & (!\l1|l_arr[0][10]~q\ $ (\l1|l_arr[1][10]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_l_arr[1][9]~DUPLICATE_q\,
	datab => \l1|ALT_INV_l_arr[1][8]~q\,
	datac => \l1|ALT_INV_l_arr[0][10]~q\,
	datad => \l1|ALT_INV_l_arr[1][10]~q\,
	datae => \l1|ALT_INV_l_arr[0][9]~DUPLICATE_q\,
	dataf => \l1|ALT_INV_l_arr[0][8]~q\,
	combout => \l1|LessThan6~8_combout\);

-- Location: FF_X60_Y7_N7
\l1|l_arr[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~35_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][11]~q\);

-- Location: LABCELL_X60_Y7_N24
\l1|LessThan6~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan6~11_combout\ = (!\l1|l_arr[0][12]~q\ & (((!\l1|l_arr[0][11]~q\ & \l1|l_arr[1][11]~q\)) # (\l1|l_arr[1][12]~q\))) # (\l1|l_arr[0][12]~q\ & (!\l1|l_arr[0][11]~q\ & (\l1|l_arr[1][12]~q\ & \l1|l_arr[1][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010001110000011001000111000001100100011100000110010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_l_arr[0][11]~q\,
	datab => \l1|ALT_INV_l_arr[0][12]~q\,
	datac => \l1|ALT_INV_l_arr[1][12]~q\,
	datad => \l1|ALT_INV_l_arr[1][11]~q\,
	combout => \l1|LessThan6~11_combout\);

-- Location: LABCELL_X61_Y7_N12
\l1|temp_min~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~12_combout\ = ( \l1|LessThan2~9_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|temp_min~5_combout\)) # (\l1|LessThan2~10_combout\ & ((!\l1|LessThan2~8_combout\ & (\l1|temp_min~5_combout\)) # (\l1|LessThan2~8_combout\ & 
-- ((\l1|sig_arr[1][7]~q\))))) ) ) # ( !\l1|LessThan2~9_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|temp_min~5_combout\)) # (\l1|LessThan2~10_combout\ & ((\l1|sig_arr[1][7]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101010101010001110101010101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_temp_min~5_combout\,
	datab => \l1|ALT_INV_LessThan2~10_combout\,
	datac => \l1|ALT_INV_sig_arr[1][7]~q\,
	datad => \l1|ALT_INV_LessThan2~8_combout\,
	dataf => \l1|ALT_INV_LessThan2~9_combout\,
	combout => \l1|temp_min~12_combout\);

-- Location: LABCELL_X60_Y7_N57
\l1|temp_min~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~29_combout\ = ( \l1|sig_arr[2][7]~q\ & ( \l1|temp_min~12_combout\ ) ) # ( !\l1|sig_arr[2][7]~q\ & ( \l1|temp_min~12_combout\ & ( (!\l1|LessThan3~11_combout\) # ((\l1|LessThan3~10_combout\ & ((!\l1|LessThan3~8_combout\) # 
-- (\l1|LessThan3~6_combout\)))) ) ) ) # ( \l1|sig_arr[2][7]~q\ & ( !\l1|temp_min~12_combout\ & ( (\l1|LessThan3~11_combout\ & ((!\l1|LessThan3~10_combout\) # ((!\l1|LessThan3~6_combout\ & \l1|LessThan3~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000111011110101111100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan3~10_combout\,
	datab => \l1|ALT_INV_LessThan3~6_combout\,
	datac => \l1|ALT_INV_LessThan3~11_combout\,
	datad => \l1|ALT_INV_LessThan3~8_combout\,
	datae => \l1|ALT_INV_sig_arr[2][7]~q\,
	dataf => \l1|ALT_INV_temp_min~12_combout\,
	combout => \l1|temp_min~29_combout\);

-- Location: FF_X60_Y7_N29
\l1|l_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~29_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][7]~q\);

-- Location: FF_X60_Y7_N32
\l1|l_arr[0][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~29_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][7]~DUPLICATE_q\);

-- Location: LABCELL_X57_Y6_N21
\l1|temp_min~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~13_combout\ = ( \l1|LessThan2~8_combout\ & ( \l1|LessThan2~9_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|temp_min~1_combout\)) # (\l1|LessThan2~10_combout\ & ((\l1|sig_arr[1][6]~q\))) ) ) ) # ( !\l1|LessThan2~8_combout\ & ( 
-- \l1|LessThan2~9_combout\ & ( \l1|temp_min~1_combout\ ) ) ) # ( \l1|LessThan2~8_combout\ & ( !\l1|LessThan2~9_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|temp_min~1_combout\)) # (\l1|LessThan2~10_combout\ & ((\l1|sig_arr[1][6]~q\))) ) ) ) # ( 
-- !\l1|LessThan2~8_combout\ & ( !\l1|LessThan2~9_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|temp_min~1_combout\)) # (\l1|LessThan2~10_combout\ & ((\l1|sig_arr[1][6]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100110011001100110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan2~10_combout\,
	datab => \l1|ALT_INV_temp_min~1_combout\,
	datac => \l1|ALT_INV_sig_arr[1][6]~q\,
	datae => \l1|ALT_INV_LessThan2~8_combout\,
	dataf => \l1|ALT_INV_LessThan2~9_combout\,
	combout => \l1|temp_min~13_combout\);

-- Location: LABCELL_X60_Y6_N48
\l1|temp_min~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~30_combout\ = ( \l1|sig_arr[2][6]~q\ & ( \l1|temp_min~13_combout\ ) ) # ( !\l1|sig_arr[2][6]~q\ & ( \l1|temp_min~13_combout\ & ( (!\l1|LessThan3~11_combout\) # ((\l1|LessThan3~10_combout\ & ((!\l1|LessThan3~8_combout\) # 
-- (\l1|LessThan3~6_combout\)))) ) ) ) # ( \l1|sig_arr[2][6]~q\ & ( !\l1|temp_min~13_combout\ & ( (\l1|LessThan3~11_combout\ & ((!\l1|LessThan3~10_combout\) # ((\l1|LessThan3~8_combout\ & !\l1|LessThan3~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000110011110010111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan3~8_combout\,
	datab => \l1|ALT_INV_LessThan3~10_combout\,
	datac => \l1|ALT_INV_LessThan3~11_combout\,
	datad => \l1|ALT_INV_LessThan3~6_combout\,
	datae => \l1|ALT_INV_sig_arr[2][6]~q\,
	dataf => \l1|ALT_INV_temp_min~13_combout\,
	combout => \l1|temp_min~30_combout\);

-- Location: FF_X60_Y6_N26
\l1|l_arr[1][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~30_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][6]~DUPLICATE_q\);

-- Location: FF_X60_Y6_N35
\l1|l_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~30_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][6]~q\);

-- Location: LABCELL_X60_Y7_N18
\l1|LessThan6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan6~7_combout\ = ( \l1|l_arr[1][6]~DUPLICATE_q\ & ( \l1|l_arr[0][6]~q\ & ( (\l1|l_arr[1][7]~q\ & !\l1|l_arr[0][7]~DUPLICATE_q\) ) ) ) # ( !\l1|l_arr[1][6]~DUPLICATE_q\ & ( \l1|l_arr[0][6]~q\ & ( (\l1|l_arr[1][7]~q\ & 
-- !\l1|l_arr[0][7]~DUPLICATE_q\) ) ) ) # ( \l1|l_arr[1][6]~DUPLICATE_q\ & ( !\l1|l_arr[0][6]~q\ & ( (!\l1|l_arr[0][7]~DUPLICATE_q\) # (\l1|l_arr[1][7]~q\) ) ) ) # ( !\l1|l_arr[1][6]~DUPLICATE_q\ & ( !\l1|l_arr[0][6]~q\ & ( (\l1|l_arr[1][7]~q\ & 
-- !\l1|l_arr[0][7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111111110000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l1|ALT_INV_l_arr[1][7]~q\,
	datad => \l1|ALT_INV_l_arr[0][7]~DUPLICATE_q\,
	datae => \l1|ALT_INV_l_arr[1][6]~DUPLICATE_q\,
	dataf => \l1|ALT_INV_l_arr[0][6]~q\,
	combout => \l1|LessThan6~7_combout\);

-- Location: MLABCELL_X59_Y6_N6
\l1|temp_min~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~16_combout\ = ( \l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & ((\l1|temp_min~3_combout\))) # (\l1|LessThan2~10_combout\ & (\l1|sig_arr[1][3]~q\)) ) ) # ( !\l1|LessThan2~8_combout\ & ( (!\l1|LessThan2~10_combout\ & 
-- (((\l1|temp_min~3_combout\)))) # (\l1|LessThan2~10_combout\ & ((!\l1|LessThan2~9_combout\ & (\l1|sig_arr[1][3]~q\)) # (\l1|LessThan2~9_combout\ & ((\l1|temp_min~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100001111000110110000111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan2~10_combout\,
	datab => \l1|ALT_INV_sig_arr[1][3]~q\,
	datac => \l1|ALT_INV_temp_min~3_combout\,
	datad => \l1|ALT_INV_LessThan2~9_combout\,
	dataf => \l1|ALT_INV_LessThan2~8_combout\,
	combout => \l1|temp_min~16_combout\);

-- Location: MLABCELL_X59_Y6_N15
\l1|temp_min~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~24_combout\ = ( \l1|sig_arr[2][3]~q\ & ( \l1|temp_min~16_combout\ ) ) # ( !\l1|sig_arr[2][3]~q\ & ( \l1|temp_min~16_combout\ & ( (!\l1|LessThan3~11_combout\) # ((\l1|LessThan3~10_combout\ & ((!\l1|LessThan3~8_combout\) # 
-- (\l1|LessThan3~6_combout\)))) ) ) ) # ( \l1|sig_arr[2][3]~q\ & ( !\l1|temp_min~16_combout\ & ( (\l1|LessThan3~11_combout\ & ((!\l1|LessThan3~10_combout\) # ((\l1|LessThan3~8_combout\ & !\l1|LessThan3~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000110010001011011100110111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan3~10_combout\,
	datab => \l1|ALT_INV_LessThan3~11_combout\,
	datac => \l1|ALT_INV_LessThan3~8_combout\,
	datad => \l1|ALT_INV_LessThan3~6_combout\,
	datae => \l1|ALT_INV_sig_arr[2][3]~q\,
	dataf => \l1|ALT_INV_temp_min~16_combout\,
	combout => \l1|temp_min~24_combout\);

-- Location: LABCELL_X57_Y6_N15
\l1|l_arr[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|l_arr[0][3]~feeder_combout\ = ( \l1|temp_min~24_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \l1|ALT_INV_temp_min~24_combout\,
	combout => \l1|l_arr[0][3]~feeder_combout\);

-- Location: FF_X57_Y6_N16
\l1|l_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|l_arr[0][3]~feeder_combout\,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][3]~q\);

-- Location: MLABCELL_X59_Y6_N51
\l1|temp_min~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~25_combout\ = ( \l1|LessThan2~11_combout\ & ( \l1|sig_arr[1][2]~q\ ) ) # ( !\l1|LessThan2~11_combout\ & ( \l1|temp_min~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l1|ALT_INV_temp_min~4_combout\,
	datad => \l1|ALT_INV_sig_arr[1][2]~q\,
	dataf => \l1|ALT_INV_LessThan2~11_combout\,
	combout => \l1|temp_min~25_combout\);

-- Location: MLABCELL_X59_Y6_N0
\l1|temp_min~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~26_combout\ = ( \l1|sig_arr[2][2]~q\ & ( \l1|temp_min~25_combout\ ) ) # ( !\l1|sig_arr[2][2]~q\ & ( \l1|temp_min~25_combout\ & ( (!\l1|LessThan3~11_combout\) # ((\l1|LessThan3~10_combout\ & ((!\l1|LessThan3~8_combout\) # 
-- (\l1|LessThan3~6_combout\)))) ) ) ) # ( \l1|sig_arr[2][2]~q\ & ( !\l1|temp_min~25_combout\ & ( (\l1|LessThan3~11_combout\ & ((!\l1|LessThan3~10_combout\) # ((!\l1|LessThan3~6_combout\ & \l1|LessThan3~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011001011001111110011011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan3~6_combout\,
	datab => \l1|ALT_INV_LessThan3~11_combout\,
	datac => \l1|ALT_INV_LessThan3~10_combout\,
	datad => \l1|ALT_INV_LessThan3~8_combout\,
	datae => \l1|ALT_INV_sig_arr[2][2]~q\,
	dataf => \l1|ALT_INV_temp_min~25_combout\,
	combout => \l1|temp_min~26_combout\);

-- Location: FF_X59_Y6_N50
\l1|l_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~26_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][2]~q\);

-- Location: FF_X59_Y6_N56
\l1|l_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~24_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][3]~q\);

-- Location: FF_X59_Y6_N32
\l1|l_arr[0][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~26_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][2]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y6_N54
\l1|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan6~1_combout\ = ( \l1|l_arr[0][2]~DUPLICATE_q\ & ( (\l1|l_arr[1][2]~q\ & (!\l1|l_arr[0][3]~q\ $ (\l1|l_arr[1][3]~q\))) ) ) # ( !\l1|l_arr[0][2]~DUPLICATE_q\ & ( (!\l1|l_arr[1][2]~q\ & (!\l1|l_arr[0][3]~q\ $ (\l1|l_arr[1][3]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l1|ALT_INV_l_arr[0][3]~q\,
	datac => \l1|ALT_INV_l_arr[1][2]~q\,
	datad => \l1|ALT_INV_l_arr[1][3]~q\,
	dataf => \l1|ALT_INV_l_arr[0][2]~DUPLICATE_q\,
	combout => \l1|LessThan6~1_combout\);

-- Location: MLABCELL_X59_Y6_N36
\l1|temp_min~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~22_combout\ = ( \l1|sig_arr[2][0]~q\ & ( \l1|LessThan3~6_combout\ & ( (!\l1|temp_min~10_combout\) # ((!\l1|LessThan3~10_combout\ & \l1|LessThan3~11_combout\)) ) ) ) # ( !\l1|sig_arr[2][0]~q\ & ( \l1|LessThan3~6_combout\ & ( 
-- (!\l1|temp_min~10_combout\ & ((!\l1|LessThan3~11_combout\) # (\l1|LessThan3~10_combout\))) ) ) ) # ( \l1|sig_arr[2][0]~q\ & ( !\l1|LessThan3~6_combout\ & ( (!\l1|temp_min~10_combout\) # ((\l1|LessThan3~11_combout\ & ((!\l1|LessThan3~10_combout\) # 
-- (\l1|LessThan3~8_combout\)))) ) ) ) # ( !\l1|sig_arr[2][0]~q\ & ( !\l1|LessThan3~6_combout\ & ( (!\l1|temp_min~10_combout\ & ((!\l1|LessThan3~11_combout\) # ((!\l1|LessThan3~8_combout\ & \l1|LessThan3~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001000101010101111101110101010000010101010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_temp_min~10_combout\,
	datab => \l1|ALT_INV_LessThan3~8_combout\,
	datac => \l1|ALT_INV_LessThan3~10_combout\,
	datad => \l1|ALT_INV_LessThan3~11_combout\,
	datae => \l1|ALT_INV_sig_arr[2][0]~q\,
	dataf => \l1|ALT_INV_LessThan3~6_combout\,
	combout => \l1|temp_min~22_combout\);

-- Location: FF_X59_Y6_N23
\l1|l_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~22_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][0]~q\);

-- Location: MLABCELL_X59_Y6_N12
\l1|temp_min~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~23_combout\ = ( \l1|sig_arr[2][1]~q\ & ( \l1|temp_min~15_combout\ ) ) # ( !\l1|sig_arr[2][1]~q\ & ( \l1|temp_min~15_combout\ & ( (!\l1|LessThan3~11_combout\) # ((\l1|LessThan3~10_combout\ & ((!\l1|LessThan3~8_combout\) # 
-- (\l1|LessThan3~6_combout\)))) ) ) ) # ( \l1|sig_arr[2][1]~q\ & ( !\l1|temp_min~15_combout\ & ( (\l1|LessThan3~11_combout\ & ((!\l1|LessThan3~10_combout\) # ((!\l1|LessThan3~6_combout\ & \l1|LessThan3~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100011001011011101110011011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan3~10_combout\,
	datab => \l1|ALT_INV_LessThan3~11_combout\,
	datac => \l1|ALT_INV_LessThan3~6_combout\,
	datad => \l1|ALT_INV_LessThan3~8_combout\,
	datae => \l1|ALT_INV_sig_arr[2][1]~q\,
	dataf => \l1|ALT_INV_temp_min~15_combout\,
	combout => \l1|temp_min~23_combout\);

-- Location: FF_X60_Y6_N14
\l1|l_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~23_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][1]~q\);

-- Location: FF_X59_Y6_N59
\l1|l_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~22_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][0]~q\);

-- Location: FF_X59_Y6_N44
\l1|l_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~23_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][1]~q\);

-- Location: MLABCELL_X59_Y6_N57
\l1|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan6~0_combout\ = ( \l1|l_arr[1][1]~q\ & ( (!\l1|l_arr[0][1]~q\) # ((!\l1|l_arr[0][0]~q\ & \l1|l_arr[1][0]~q\)) ) ) # ( !\l1|l_arr[1][1]~q\ & ( (!\l1|l_arr[0][0]~q\ & (!\l1|l_arr[0][1]~q\ & \l1|l_arr[1][0]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000011110000111110101111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_l_arr[0][0]~q\,
	datac => \l1|ALT_INV_l_arr[0][1]~q\,
	datad => \l1|ALT_INV_l_arr[1][0]~q\,
	dataf => \l1|ALT_INV_l_arr[1][1]~q\,
	combout => \l1|LessThan6~0_combout\);

-- Location: MLABCELL_X59_Y6_N48
\l1|LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan6~2_combout\ = ( \l1|l_arr[0][3]~q\ & ( (!\l1|l_arr[0][2]~DUPLICATE_q\ & (\l1|l_arr[1][3]~q\ & \l1|l_arr[1][2]~q\)) ) ) # ( !\l1|l_arr[0][3]~q\ & ( ((!\l1|l_arr[0][2]~DUPLICATE_q\ & \l1|l_arr[1][2]~q\)) # (\l1|l_arr[1][3]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l1|ALT_INV_l_arr[0][2]~DUPLICATE_q\,
	datac => \l1|ALT_INV_l_arr[1][3]~q\,
	datad => \l1|ALT_INV_l_arr[1][2]~q\,
	dataf => \l1|ALT_INV_l_arr[0][3]~q\,
	combout => \l1|LessThan6~2_combout\);

-- Location: LABCELL_X57_Y5_N36
\l1|temp_min~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~14_combout\ = ( \l1|LessThan2~8_combout\ & ( \l1|LessThan2~9_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|temp_min~2_combout\)) # (\l1|LessThan2~10_combout\ & ((\l1|sig_arr[1][5]~q\))) ) ) ) # ( !\l1|LessThan2~8_combout\ & ( 
-- \l1|LessThan2~9_combout\ & ( \l1|temp_min~2_combout\ ) ) ) # ( \l1|LessThan2~8_combout\ & ( !\l1|LessThan2~9_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|temp_min~2_combout\)) # (\l1|LessThan2~10_combout\ & ((\l1|sig_arr[1][5]~q\))) ) ) ) # ( 
-- !\l1|LessThan2~8_combout\ & ( !\l1|LessThan2~9_combout\ & ( (!\l1|LessThan2~10_combout\ & (\l1|temp_min~2_combout\)) # (\l1|LessThan2~10_combout\ & ((\l1|sig_arr[1][5]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101010101010101010100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_temp_min~2_combout\,
	datab => \l1|ALT_INV_LessThan2~10_combout\,
	datac => \l1|ALT_INV_sig_arr[1][5]~q\,
	datae => \l1|ALT_INV_LessThan2~8_combout\,
	dataf => \l1|ALT_INV_LessThan2~9_combout\,
	combout => \l1|temp_min~14_combout\);

-- Location: MLABCELL_X59_Y5_N54
\l1|temp_min~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~27_combout\ = ( \l1|sig_arr[2][5]~q\ & ( \l1|temp_min~14_combout\ ) ) # ( !\l1|sig_arr[2][5]~q\ & ( \l1|temp_min~14_combout\ & ( (!\l1|LessThan3~11_combout\) # ((\l1|LessThan3~10_combout\ & ((!\l1|LessThan3~8_combout\) # 
-- (\l1|LessThan3~6_combout\)))) ) ) ) # ( \l1|sig_arr[2][5]~q\ & ( !\l1|temp_min~14_combout\ & ( (\l1|LessThan3~11_combout\ & ((!\l1|LessThan3~10_combout\) # ((!\l1|LessThan3~6_combout\ & \l1|LessThan3~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000010010101010111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan3~11_combout\,
	datab => \l1|ALT_INV_LessThan3~6_combout\,
	datac => \l1|ALT_INV_LessThan3~8_combout\,
	datad => \l1|ALT_INV_LessThan3~10_combout\,
	datae => \l1|ALT_INV_sig_arr[2][5]~q\,
	dataf => \l1|ALT_INV_temp_min~14_combout\,
	combout => \l1|temp_min~27_combout\);

-- Location: LABCELL_X57_Y5_N30
\l1|l_arr[1][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|l_arr[1][5]~feeder_combout\ = ( \l1|temp_min~27_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \l1|ALT_INV_temp_min~27_combout\,
	combout => \l1|l_arr[1][5]~feeder_combout\);

-- Location: FF_X57_Y5_N32
\l1|l_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|l_arr[1][5]~feeder_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][5]~q\);

-- Location: MLABCELL_X59_Y5_N57
\l1|temp_min~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_min~28_combout\ = ( \l1|sig_arr[2][4]~q\ & ( \l1|temp_min~11_combout\ ) ) # ( !\l1|sig_arr[2][4]~q\ & ( \l1|temp_min~11_combout\ & ( (!\l1|LessThan3~11_combout\) # ((\l1|LessThan3~10_combout\ & ((!\l1|LessThan3~8_combout\) # 
-- (\l1|LessThan3~6_combout\)))) ) ) ) # ( \l1|sig_arr[2][4]~q\ & ( !\l1|temp_min~11_combout\ & ( (\l1|LessThan3~11_combout\ & ((!\l1|LessThan3~10_combout\) # ((!\l1|LessThan3~6_combout\ & \l1|LessThan3~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101010010101111101010111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan3~11_combout\,
	datab => \l1|ALT_INV_LessThan3~6_combout\,
	datac => \l1|ALT_INV_LessThan3~10_combout\,
	datad => \l1|ALT_INV_LessThan3~8_combout\,
	datae => \l1|ALT_INV_sig_arr[2][4]~q\,
	dataf => \l1|ALT_INV_temp_min~11_combout\,
	combout => \l1|temp_min~28_combout\);

-- Location: LABCELL_X57_Y5_N51
\l1|l_arr[1][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|l_arr[1][4]~feeder_combout\ = ( \l1|temp_min~28_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \l1|ALT_INV_temp_min~28_combout\,
	combout => \l1|l_arr[1][4]~feeder_combout\);

-- Location: FF_X57_Y5_N53
\l1|l_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|l_arr[1][4]~feeder_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][4]~q\);

-- Location: FF_X59_Y5_N53
\l1|l_arr[0][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~27_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][5]~DUPLICATE_q\);

-- Location: FF_X59_Y5_N50
\l1|l_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~28_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][4]~q\);

-- Location: LABCELL_X57_Y5_N3
\l1|LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan6~4_combout\ = ( !\l1|l_arr[0][5]~DUPLICATE_q\ & ( \l1|l_arr[0][4]~q\ & ( \l1|l_arr[1][5]~q\ ) ) ) # ( \l1|l_arr[0][5]~DUPLICATE_q\ & ( !\l1|l_arr[0][4]~q\ & ( (\l1|l_arr[1][5]~q\ & \l1|l_arr[1][4]~q\) ) ) ) # ( !\l1|l_arr[0][5]~DUPLICATE_q\ & 
-- ( !\l1|l_arr[0][4]~q\ & ( (\l1|l_arr[1][4]~q\) # (\l1|l_arr[1][5]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000000000000111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l1|ALT_INV_l_arr[1][5]~q\,
	datad => \l1|ALT_INV_l_arr[1][4]~q\,
	datae => \l1|ALT_INV_l_arr[0][5]~DUPLICATE_q\,
	dataf => \l1|ALT_INV_l_arr[0][4]~q\,
	combout => \l1|LessThan6~4_combout\);

-- Location: LABCELL_X60_Y7_N33
\l1|LessThan6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan6~5_combout\ = ( \l1|l_arr[0][6]~q\ & ( (\l1|l_arr[1][6]~DUPLICATE_q\ & (!\l1|l_arr[1][7]~q\ $ (\l1|l_arr[0][7]~DUPLICATE_q\))) ) ) # ( !\l1|l_arr[0][6]~q\ & ( (!\l1|l_arr[1][6]~DUPLICATE_q\ & (!\l1|l_arr[1][7]~q\ $ 
-- (\l1|l_arr[0][7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_l_arr[1][7]~q\,
	datac => \l1|ALT_INV_l_arr[0][7]~DUPLICATE_q\,
	datad => \l1|ALT_INV_l_arr[1][6]~DUPLICATE_q\,
	dataf => \l1|ALT_INV_l_arr[0][6]~q\,
	combout => \l1|LessThan6~5_combout\);

-- Location: LABCELL_X57_Y5_N18
\l1|LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan6~3_combout\ = ( \l1|l_arr[0][5]~DUPLICATE_q\ & ( \l1|l_arr[0][4]~q\ & ( (\l1|l_arr[1][4]~q\ & \l1|l_arr[1][5]~q\) ) ) ) # ( !\l1|l_arr[0][5]~DUPLICATE_q\ & ( \l1|l_arr[0][4]~q\ & ( (\l1|l_arr[1][4]~q\ & !\l1|l_arr[1][5]~q\) ) ) ) # ( 
-- \l1|l_arr[0][5]~DUPLICATE_q\ & ( !\l1|l_arr[0][4]~q\ & ( (!\l1|l_arr[1][4]~q\ & \l1|l_arr[1][5]~q\) ) ) ) # ( !\l1|l_arr[0][5]~DUPLICATE_q\ & ( !\l1|l_arr[0][4]~q\ & ( (!\l1|l_arr[1][4]~q\ & !\l1|l_arr[1][5]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000001111000000001111000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l1|ALT_INV_l_arr[1][4]~q\,
	datad => \l1|ALT_INV_l_arr[1][5]~q\,
	datae => \l1|ALT_INV_l_arr[0][5]~DUPLICATE_q\,
	dataf => \l1|ALT_INV_l_arr[0][4]~q\,
	combout => \l1|LessThan6~3_combout\);

-- Location: MLABCELL_X59_Y6_N24
\l1|LessThan6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan6~6_combout\ = ( \l1|LessThan6~5_combout\ & ( \l1|LessThan6~3_combout\ & ( (((\l1|LessThan6~1_combout\ & \l1|LessThan6~0_combout\)) # (\l1|LessThan6~4_combout\)) # (\l1|LessThan6~2_combout\) ) ) ) # ( \l1|LessThan6~5_combout\ & ( 
-- !\l1|LessThan6~3_combout\ & ( \l1|LessThan6~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan6~1_combout\,
	datab => \l1|ALT_INV_LessThan6~0_combout\,
	datac => \l1|ALT_INV_LessThan6~2_combout\,
	datad => \l1|ALT_INV_LessThan6~4_combout\,
	datae => \l1|ALT_INV_LessThan6~5_combout\,
	dataf => \l1|ALT_INV_LessThan6~3_combout\,
	combout => \l1|LessThan6~6_combout\);

-- Location: MLABCELL_X59_Y6_N33
\l1|LessThan6~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan6~12_combout\ = ( \l1|LessThan6~7_combout\ & ( \l1|LessThan6~6_combout\ & ( ((\l1|LessThan6~10_combout\ & ((\l1|LessThan6~8_combout\) # (\l1|LessThan6~9_combout\)))) # (\l1|LessThan6~11_combout\) ) ) ) # ( !\l1|LessThan6~7_combout\ & ( 
-- \l1|LessThan6~6_combout\ & ( ((\l1|LessThan6~10_combout\ & ((\l1|LessThan6~8_combout\) # (\l1|LessThan6~9_combout\)))) # (\l1|LessThan6~11_combout\) ) ) ) # ( \l1|LessThan6~7_combout\ & ( !\l1|LessThan6~6_combout\ & ( ((\l1|LessThan6~10_combout\ & 
-- ((\l1|LessThan6~8_combout\) # (\l1|LessThan6~9_combout\)))) # (\l1|LessThan6~11_combout\) ) ) ) # ( !\l1|LessThan6~7_combout\ & ( !\l1|LessThan6~6_combout\ & ( ((\l1|LessThan6~9_combout\ & \l1|LessThan6~10_combout\)) # (\l1|LessThan6~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100111111111100010011111111110001001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan6~9_combout\,
	datab => \l1|ALT_INV_LessThan6~10_combout\,
	datac => \l1|ALT_INV_LessThan6~8_combout\,
	datad => \l1|ALT_INV_LessThan6~11_combout\,
	datae => \l1|ALT_INV_LessThan6~7_combout\,
	dataf => \l1|ALT_INV_LessThan6~6_combout\,
	combout => \l1|LessThan6~12_combout\);

-- Location: LABCELL_X57_Y7_N36
\l1|temp_max~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_max~3_combout\ = ( \l1|LessThan6~12_combout\ & ( \l1|l_arr[1][8]~q\ ) ) # ( !\l1|LessThan6~12_combout\ & ( \l1|l_arr[0][8]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_l_arr[0][8]~q\,
	datac => \l1|ALT_INV_l_arr[1][8]~q\,
	dataf => \l1|ALT_INV_LessThan6~12_combout\,
	combout => \l1|temp_max~3_combout\);

-- Location: FF_X59_Y6_N5
\l1|l_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_min~33_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[2][8]~q\);

-- Location: FF_X60_Y7_N53
\l1|l_arr[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_min~34_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[2][12]~q\);

-- Location: FF_X60_Y7_N31
\l1|l_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~29_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][7]~q\);

-- Location: LABCELL_X60_Y7_N15
\l1|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan5~1_combout\ = ( !\l1|l_arr[0][9]~DUPLICATE_q\ & ( (!\l1|l_arr[0][7]~q\ & (!\l1|l_arr[0][6]~q\ & (!\l1|l_arr[0][10]~q\ & !\l1|l_arr[0][8]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_l_arr[0][7]~q\,
	datab => \l1|ALT_INV_l_arr[0][6]~q\,
	datac => \l1|ALT_INV_l_arr[0][10]~q\,
	datad => \l1|ALT_INV_l_arr[0][8]~q\,
	datae => \l1|ALT_INV_l_arr[0][9]~DUPLICATE_q\,
	combout => \l1|LessThan5~1_combout\);

-- Location: FF_X59_Y5_N52
\l1|l_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~27_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][5]~q\);

-- Location: FF_X59_Y6_N31
\l1|l_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~26_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][2]~q\);

-- Location: MLABCELL_X59_Y6_N21
\l1|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan5~0_combout\ = ( !\l1|l_arr[0][4]~q\ & ( (!\l1|l_arr[0][2]~q\ & (!\l1|l_arr[0][1]~q\ & (!\l1|l_arr[0][3]~q\ & !\l1|l_arr[0][0]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_l_arr[0][2]~q\,
	datab => \l1|ALT_INV_l_arr[0][1]~q\,
	datac => \l1|ALT_INV_l_arr[0][3]~q\,
	datad => \l1|ALT_INV_l_arr[0][0]~q\,
	dataf => \l1|ALT_INV_l_arr[0][4]~q\,
	combout => \l1|LessThan5~0_combout\);

-- Location: LABCELL_X60_Y7_N27
\l1|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan5~2_combout\ = ( \l1|LessThan5~0_combout\ & ( (((!\l1|LessThan5~1_combout\) # (\l1|l_arr[0][5]~q\)) # (\l1|l_arr[0][12]~q\)) # (\l1|l_arr[0][11]~q\) ) ) # ( !\l1|LessThan5~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_l_arr[0][11]~q\,
	datab => \l1|ALT_INV_l_arr[0][12]~q\,
	datac => \l1|ALT_INV_LessThan5~1_combout\,
	datad => \l1|ALT_INV_l_arr[0][5]~q\,
	dataf => \l1|ALT_INV_LessThan5~0_combout\,
	combout => \l1|LessThan5~2_combout\);

-- Location: FF_X60_Y7_N2
\l1|l_arr[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_min~35_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[2][11]~q\);

-- Location: FF_X60_Y6_N53
\l1|l_arr[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_min~31_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[2][10]~q\);

-- Location: FF_X60_Y7_N56
\l1|l_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_min~32_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[2][9]~q\);

-- Location: FF_X60_Y7_N59
\l1|l_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_min~29_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[2][7]~q\);

-- Location: FF_X60_Y6_N50
\l1|l_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_min~30_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[2][6]~q\);

-- Location: FF_X57_Y5_N31
\l1|l_arr[1][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|l_arr[1][5]~feeder_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][5]~DUPLICATE_q\);

-- Location: FF_X59_Y5_N56
\l1|l_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_min~27_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[2][5]~q\);

-- Location: FF_X59_Y5_N59
\l1|l_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_min~28_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[2][4]~q\);

-- Location: FF_X59_Y6_N17
\l1|l_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_min~24_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[2][3]~q\);

-- Location: FF_X59_Y6_N2
\l1|l_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_min~26_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[2][2]~q\);

-- Location: FF_X60_Y6_N13
\l1|l_arr[0][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~23_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][1]~DUPLICATE_q\);

-- Location: FF_X59_Y6_N14
\l1|l_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_min~23_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[2][1]~q\);

-- Location: FF_X59_Y6_N38
\l1|l_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_min~22_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[2][0]~q\);

-- Location: MLABCELL_X59_Y7_N0
\l1|LessThan7~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~66_cout\ = CARRY(( \l1|l_arr[2][0]~q\ ) + ( (!\l1|LessThan6~12_combout\ & ((!\l1|LessThan5~2_combout\) # ((!\l1|l_arr[0][0]~q\)))) # (\l1|LessThan6~12_combout\ & (((!\l1|l_arr[1][0]~q\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan5~2_combout\,
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[1][0]~q\,
	datad => \l1|ALT_INV_l_arr[2][0]~q\,
	dataf => \l1|ALT_INV_l_arr[0][0]~q\,
	cin => GND,
	cout => \l1|LessThan7~66_cout\);

-- Location: MLABCELL_X59_Y7_N3
\l1|LessThan7~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~62_cout\ = CARRY(( (!\l1|LessThan6~12_combout\ & ((!\l1|LessThan5~2_combout\) # ((!\l1|l_arr[0][1]~DUPLICATE_q\)))) # (\l1|LessThan6~12_combout\ & (((!\l1|l_arr[1][1]~q\)))) ) + ( \l1|l_arr[2][1]~q\ ) + ( \l1|LessThan7~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan5~2_combout\,
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[1][1]~q\,
	datad => \l1|ALT_INV_l_arr[0][1]~DUPLICATE_q\,
	dataf => \l1|ALT_INV_l_arr[2][1]~q\,
	cin => \l1|LessThan7~66_cout\,
	cout => \l1|LessThan7~62_cout\);

-- Location: MLABCELL_X59_Y7_N6
\l1|LessThan7~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~58_cout\ = CARRY(( \l1|l_arr[2][2]~q\ ) + ( (!\l1|LessThan6~12_combout\ & ((!\l1|LessThan5~2_combout\) # ((!\l1|l_arr[0][2]~q\)))) # (\l1|LessThan6~12_combout\ & (((!\l1|l_arr[1][2]~q\)))) ) + ( \l1|LessThan7~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan5~2_combout\,
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[1][2]~q\,
	datad => \l1|ALT_INV_l_arr[2][2]~q\,
	dataf => \l1|ALT_INV_l_arr[0][2]~q\,
	cin => \l1|LessThan7~62_cout\,
	cout => \l1|LessThan7~58_cout\);

-- Location: MLABCELL_X59_Y7_N9
\l1|LessThan7~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~54_cout\ = CARRY(( (!\l1|LessThan6~12_combout\ & ((!\l1|LessThan5~2_combout\) # ((!\l1|l_arr[0][3]~q\)))) # (\l1|LessThan6~12_combout\ & (((!\l1|l_arr[1][3]~q\)))) ) + ( \l1|l_arr[2][3]~q\ ) + ( \l1|LessThan7~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan5~2_combout\,
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[1][3]~q\,
	datad => \l1|ALT_INV_l_arr[0][3]~q\,
	dataf => \l1|ALT_INV_l_arr[2][3]~q\,
	cin => \l1|LessThan7~58_cout\,
	cout => \l1|LessThan7~54_cout\);

-- Location: MLABCELL_X59_Y7_N12
\l1|LessThan7~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~50_cout\ = CARRY(( (!\l1|LessThan6~12_combout\ & ((!\l1|LessThan5~2_combout\) # ((!\l1|l_arr[0][4]~q\)))) # (\l1|LessThan6~12_combout\ & (((!\l1|l_arr[1][4]~q\)))) ) + ( \l1|l_arr[2][4]~q\ ) + ( \l1|LessThan7~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan5~2_combout\,
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[1][4]~q\,
	datad => \l1|ALT_INV_l_arr[0][4]~q\,
	dataf => \l1|ALT_INV_l_arr[2][4]~q\,
	cin => \l1|LessThan7~54_cout\,
	cout => \l1|LessThan7~50_cout\);

-- Location: MLABCELL_X59_Y7_N15
\l1|LessThan7~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~46_cout\ = CARRY(( \l1|l_arr[2][5]~q\ ) + ( (!\l1|LessThan6~12_combout\ & ((!\l1|LessThan5~2_combout\) # ((!\l1|l_arr[0][5]~q\)))) # (\l1|LessThan6~12_combout\ & (((!\l1|l_arr[1][5]~DUPLICATE_q\)))) ) + ( \l1|LessThan7~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan5~2_combout\,
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[1][5]~DUPLICATE_q\,
	datad => \l1|ALT_INV_l_arr[2][5]~q\,
	dataf => \l1|ALT_INV_l_arr[0][5]~q\,
	cin => \l1|LessThan7~50_cout\,
	cout => \l1|LessThan7~46_cout\);

-- Location: MLABCELL_X59_Y7_N18
\l1|LessThan7~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~42_cout\ = CARRY(( \l1|l_arr[2][6]~q\ ) + ( (!\l1|LessThan6~12_combout\ & ((!\l1|LessThan5~2_combout\) # ((!\l1|l_arr[0][6]~q\)))) # (\l1|LessThan6~12_combout\ & (((!\l1|l_arr[1][6]~DUPLICATE_q\)))) ) + ( \l1|LessThan7~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan5~2_combout\,
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[1][6]~DUPLICATE_q\,
	datad => \l1|ALT_INV_l_arr[2][6]~q\,
	dataf => \l1|ALT_INV_l_arr[0][6]~q\,
	cin => \l1|LessThan7~46_cout\,
	cout => \l1|LessThan7~42_cout\);

-- Location: MLABCELL_X59_Y7_N21
\l1|LessThan7~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~38_cout\ = CARRY(( \l1|l_arr[2][7]~q\ ) + ( (!\l1|LessThan6~12_combout\ & ((!\l1|LessThan5~2_combout\) # ((!\l1|l_arr[0][7]~q\)))) # (\l1|LessThan6~12_combout\ & (((!\l1|l_arr[1][7]~q\)))) ) + ( \l1|LessThan7~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan5~2_combout\,
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[1][7]~q\,
	datad => \l1|ALT_INV_l_arr[2][7]~q\,
	dataf => \l1|ALT_INV_l_arr[0][7]~q\,
	cin => \l1|LessThan7~42_cout\,
	cout => \l1|LessThan7~38_cout\);

-- Location: MLABCELL_X59_Y7_N24
\l1|LessThan7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~34_cout\ = CARRY(( \l1|l_arr[2][8]~q\ ) + ( (!\l1|LessThan6~12_combout\ & ((!\l1|LessThan5~2_combout\) # ((!\l1|l_arr[0][8]~q\)))) # (\l1|LessThan6~12_combout\ & (((!\l1|l_arr[1][8]~q\)))) ) + ( \l1|LessThan7~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan5~2_combout\,
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[1][8]~q\,
	datad => \l1|ALT_INV_l_arr[2][8]~q\,
	dataf => \l1|ALT_INV_l_arr[0][8]~q\,
	cin => \l1|LessThan7~38_cout\,
	cout => \l1|LessThan7~34_cout\);

-- Location: MLABCELL_X59_Y7_N27
\l1|LessThan7~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~30_cout\ = CARRY(( (!\l1|LessThan6~12_combout\ & ((!\l1|LessThan5~2_combout\) # ((!\l1|l_arr[0][9]~DUPLICATE_q\)))) # (\l1|LessThan6~12_combout\ & (((!\l1|l_arr[1][9]~DUPLICATE_q\)))) ) + ( \l1|l_arr[2][9]~q\ ) + ( \l1|LessThan7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan5~2_combout\,
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[1][9]~DUPLICATE_q\,
	datad => \l1|ALT_INV_l_arr[0][9]~DUPLICATE_q\,
	dataf => \l1|ALT_INV_l_arr[2][9]~q\,
	cin => \l1|LessThan7~34_cout\,
	cout => \l1|LessThan7~30_cout\);

-- Location: MLABCELL_X59_Y7_N30
\l1|LessThan7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~26_cout\ = CARRY(( \l1|l_arr[2][10]~q\ ) + ( (!\l1|LessThan6~12_combout\ & ((!\l1|LessThan5~2_combout\) # ((!\l1|l_arr[0][10]~q\)))) # (\l1|LessThan6~12_combout\ & (((!\l1|l_arr[1][10]~q\)))) ) + ( \l1|LessThan7~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan5~2_combout\,
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[1][10]~q\,
	datad => \l1|ALT_INV_l_arr[2][10]~q\,
	dataf => \l1|ALT_INV_l_arr[0][10]~q\,
	cin => \l1|LessThan7~30_cout\,
	cout => \l1|LessThan7~26_cout\);

-- Location: MLABCELL_X59_Y7_N33
\l1|LessThan7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~22_cout\ = CARRY(( \l1|l_arr[2][11]~q\ ) + ( (!\l1|LessThan6~12_combout\ & ((!\l1|LessThan5~2_combout\) # ((!\l1|l_arr[0][11]~q\)))) # (\l1|LessThan6~12_combout\ & (((!\l1|l_arr[1][11]~q\)))) ) + ( \l1|LessThan7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan5~2_combout\,
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[1][11]~q\,
	datad => \l1|ALT_INV_l_arr[2][11]~q\,
	dataf => \l1|ALT_INV_l_arr[0][11]~q\,
	cin => \l1|LessThan7~26_cout\,
	cout => \l1|LessThan7~22_cout\);

-- Location: MLABCELL_X59_Y7_N36
\l1|LessThan7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~18_cout\ = CARRY(( \l1|l_arr[2][12]~q\ ) + ( (!\l1|LessThan6~12_combout\ & ((!\l1|l_arr[0][12]~q\))) # (\l1|LessThan6~12_combout\ & (!\l1|l_arr[1][12]~q\)) ) + ( \l1|LessThan7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011101110100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_l_arr[1][12]~q\,
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[2][12]~q\,
	dataf => \l1|ALT_INV_l_arr[0][12]~q\,
	cin => \l1|LessThan7~22_cout\,
	cout => \l1|LessThan7~18_cout\);

-- Location: MLABCELL_X59_Y7_N39
\l1|LessThan7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~14_cout\ = CARRY(( VCC ) + ( GND ) + ( \l1|LessThan7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \l1|LessThan7~18_cout\,
	cout => \l1|LessThan7~14_cout\);

-- Location: MLABCELL_X59_Y7_N42
\l1|LessThan7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~10_cout\ = CARRY(( VCC ) + ( GND ) + ( \l1|LessThan7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \l1|LessThan7~14_cout\,
	cout => \l1|LessThan7~10_cout\);

-- Location: MLABCELL_X59_Y7_N45
\l1|LessThan7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~6_cout\ = CARRY(( VCC ) + ( GND ) + ( \l1|LessThan7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \l1|LessThan7~10_cout\,
	cout => \l1|LessThan7~6_cout\);

-- Location: MLABCELL_X59_Y7_N48
\l1|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|LessThan7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \l1|LessThan7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \l1|LessThan7~6_cout\,
	sumout => \l1|LessThan7~1_sumout\);

-- Location: FF_X57_Y7_N37
\l1|l_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~3_combout\,
	asdata => \l1|l_arr[2][8]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out\(8));

-- Location: FF_X61_Y5_N56
\u1|sig_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(8),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[0][8]~q\);

-- Location: FF_X61_Y6_N14
\u1|sig_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(8),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[1][8]~q\);

-- Location: LABCELL_X57_Y7_N18
\l1|temp_max~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_max~4_combout\ = ( \l1|l_arr[1][10]~q\ & ( (\l1|l_arr[0][10]~q\) # (\l1|LessThan6~12_combout\) ) ) # ( !\l1|l_arr[1][10]~q\ & ( (!\l1|LessThan6~12_combout\ & \l1|l_arr[0][10]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan6~12_combout\,
	datab => \l1|ALT_INV_l_arr[0][10]~q\,
	dataf => \l1|ALT_INV_l_arr[1][10]~q\,
	combout => \l1|temp_max~4_combout\);

-- Location: FF_X57_Y7_N20
\l1|l_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~4_combout\,
	asdata => \l1|l_arr[2][10]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out\(10));

-- Location: FF_X61_Y5_N29
\u1|sig_arr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(10),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[0][10]~q\);

-- Location: FF_X60_Y7_N22
\l1|l_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~32_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[0][9]~q\);

-- Location: FF_X60_Y7_N37
\l1|l_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~32_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][9]~q\);

-- Location: LABCELL_X61_Y7_N57
\l1|temp_max~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_max~5_combout\ = ( \l1|l_arr[0][9]~q\ & ( \l1|l_arr[1][9]~q\ ) ) # ( !\l1|l_arr[0][9]~q\ & ( \l1|l_arr[1][9]~q\ & ( \l1|LessThan6~12_combout\ ) ) ) # ( \l1|l_arr[0][9]~q\ & ( !\l1|l_arr[1][9]~q\ & ( !\l1|LessThan6~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l1|ALT_INV_LessThan6~12_combout\,
	datae => \l1|ALT_INV_l_arr[0][9]~q\,
	dataf => \l1|ALT_INV_l_arr[1][9]~q\,
	combout => \l1|temp_max~5_combout\);

-- Location: FF_X61_Y7_N58
\l1|l_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~5_combout\,
	asdata => \l1|l_arr[2][9]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out\(9));

-- Location: FF_X61_Y5_N59
\u1|sig_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(9),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[0][9]~q\);

-- Location: FF_X61_Y5_N17
\u1|sig_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(9),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[1][9]~q\);

-- Location: FF_X57_Y7_N19
\l1|l_out[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~4_combout\,
	asdata => \l1|l_arr[2][10]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out[10]~DUPLICATE_q\);

-- Location: FF_X61_Y5_N8
\u1|sig_arr[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out[10]~DUPLICATE_q\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[1][10]~q\);

-- Location: LABCELL_X61_Y5_N51
\u1|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan2~0_combout\ = ( \u1|sig_arr[1][10]~q\ & ( (\u1|sig_arr[0][10]~q\ & (!\u1|sig_arr[0][9]~q\ $ (\u1|sig_arr[1][9]~q\))) ) ) # ( !\u1|sig_arr[1][10]~q\ & ( (!\u1|sig_arr[0][10]~q\ & (!\u1|sig_arr[0][9]~q\ $ (\u1|sig_arr[1][9]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[0][10]~q\,
	datab => \u1|ALT_INV_sig_arr[0][9]~q\,
	datac => \u1|ALT_INV_sig_arr[1][9]~q\,
	dataf => \u1|ALT_INV_sig_arr[1][10]~q\,
	combout => \u1|LessThan2~0_combout\);

-- Location: LABCELL_X61_Y7_N30
\l1|temp_max~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_max~1_combout\ = ( \l1|l_arr[1][12]~q\ & ( (\l1|l_arr[0][12]~q\) # (\l1|LessThan6~12_combout\) ) ) # ( !\l1|l_arr[1][12]~q\ & ( (!\l1|LessThan6~12_combout\ & \l1|l_arr[0][12]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[0][12]~q\,
	dataf => \l1|ALT_INV_l_arr[1][12]~q\,
	combout => \l1|temp_max~1_combout\);

-- Location: FF_X61_Y7_N31
\l1|l_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~1_combout\,
	asdata => \l1|l_arr[2][12]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out\(12));

-- Location: FF_X61_Y6_N53
\u1|sig_arr[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(12),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[1][12]~q\);

-- Location: FF_X61_Y6_N11
\u1|sig_arr[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(12),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[0][12]~q\);

-- Location: LABCELL_X61_Y7_N39
\l1|temp_max~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_max~2_combout\ = ( \l1|l_arr[1][11]~q\ & ( (\l1|LessThan6~12_combout\) # (\l1|l_arr[0][11]~q\) ) ) # ( !\l1|l_arr[1][11]~q\ & ( (\l1|l_arr[0][11]~q\ & !\l1|LessThan6~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_l_arr[0][11]~q\,
	datac => \l1|ALT_INV_LessThan6~12_combout\,
	dataf => \l1|ALT_INV_l_arr[1][11]~q\,
	combout => \l1|temp_max~2_combout\);

-- Location: FF_X61_Y7_N40
\l1|l_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~2_combout\,
	asdata => \l1|l_arr[2][11]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out\(11));

-- Location: FF_X61_Y6_N26
\u1|sig_arr[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(11),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[1][11]~q\);

-- Location: FF_X61_Y6_N44
\u1|sig_arr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(11),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[0][11]~q\);

-- Location: LABCELL_X61_Y6_N12
\u1|LessThan2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan2~8_combout\ = ( \u1|sig_arr[1][8]~q\ & ( \u1|sig_arr[0][8]~q\ & ( (!\u1|sig_arr[1][12]~q\ & (((!\u1|sig_arr[1][11]~q\ & \u1|sig_arr[0][11]~q\)) # (\u1|sig_arr[0][12]~q\))) # (\u1|sig_arr[1][12]~q\ & (\u1|sig_arr[0][12]~q\ & 
-- (!\u1|sig_arr[1][11]~q\ & \u1|sig_arr[0][11]~q\))) ) ) ) # ( !\u1|sig_arr[1][8]~q\ & ( \u1|sig_arr[0][8]~q\ & ( (!\u1|sig_arr[1][12]~q\ & (((!\u1|sig_arr[1][11]~q\) # (\u1|sig_arr[0][11]~q\)) # (\u1|sig_arr[0][12]~q\))) # (\u1|sig_arr[1][12]~q\ & 
-- (\u1|sig_arr[0][12]~q\ & ((!\u1|sig_arr[1][11]~q\) # (\u1|sig_arr[0][11]~q\)))) ) ) ) # ( \u1|sig_arr[1][8]~q\ & ( !\u1|sig_arr[0][8]~q\ & ( (!\u1|sig_arr[1][12]~q\ & (((!\u1|sig_arr[1][11]~q\ & \u1|sig_arr[0][11]~q\)) # (\u1|sig_arr[0][12]~q\))) # 
-- (\u1|sig_arr[1][12]~q\ & (\u1|sig_arr[0][12]~q\ & (!\u1|sig_arr[1][11]~q\ & \u1|sig_arr[0][11]~q\))) ) ) ) # ( !\u1|sig_arr[1][8]~q\ & ( !\u1|sig_arr[0][8]~q\ & ( (!\u1|sig_arr[1][12]~q\ & (((!\u1|sig_arr[1][11]~q\ & \u1|sig_arr[0][11]~q\)) # 
-- (\u1|sig_arr[0][12]~q\))) # (\u1|sig_arr[1][12]~q\ & (\u1|sig_arr[0][12]~q\ & (!\u1|sig_arr[1][11]~q\ & \u1|sig_arr[0][11]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010001000101011001010110010101110110010001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[1][12]~q\,
	datab => \u1|ALT_INV_sig_arr[0][12]~q\,
	datac => \u1|ALT_INV_sig_arr[1][11]~q\,
	datad => \u1|ALT_INV_sig_arr[0][11]~q\,
	datae => \u1|ALT_INV_sig_arr[1][8]~q\,
	dataf => \u1|ALT_INV_sig_arr[0][8]~q\,
	combout => \u1|LessThan2~8_combout\);

-- Location: LABCELL_X57_Y7_N51
\l1|temp_max~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_max~9_combout\ = ( \l1|l_arr[1][5]~DUPLICATE_q\ & ( \l1|l_arr[0][5]~DUPLICATE_q\ ) ) # ( !\l1|l_arr[1][5]~DUPLICATE_q\ & ( \l1|l_arr[0][5]~DUPLICATE_q\ & ( !\l1|LessThan6~12_combout\ ) ) ) # ( \l1|l_arr[1][5]~DUPLICATE_q\ & ( 
-- !\l1|l_arr[0][5]~DUPLICATE_q\ & ( \l1|LessThan6~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \l1|ALT_INV_LessThan6~12_combout\,
	datae => \l1|ALT_INV_l_arr[1][5]~DUPLICATE_q\,
	dataf => \l1|ALT_INV_l_arr[0][5]~DUPLICATE_q\,
	combout => \l1|temp_max~9_combout\);

-- Location: FF_X57_Y7_N52
\l1|l_out[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~9_combout\,
	asdata => \l1|l_arr[2][5]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out[5]~DUPLICATE_q\);

-- Location: FF_X62_Y5_N20
\u1|sig_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[0][5]~q\);

-- Location: FF_X57_Y7_N53
\l1|l_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~9_combout\,
	asdata => \l1|l_arr[2][5]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out\(5));

-- Location: FF_X61_Y6_N49
\u1|sig_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(5),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[1][5]~q\);

-- Location: LABCELL_X61_Y7_N21
\l1|temp_max~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_max~7_combout\ = ( \l1|l_arr[0][7]~q\ & ( (!\l1|LessThan6~12_combout\) # (\l1|l_arr[1][7]~q\) ) ) # ( !\l1|l_arr[0][7]~q\ & ( (\l1|l_arr[1][7]~q\ & \l1|LessThan6~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_l_arr[1][7]~q\,
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	dataf => \l1|ALT_INV_l_arr[0][7]~q\,
	combout => \l1|temp_max~7_combout\);

-- Location: FF_X61_Y7_N22
\l1|l_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~7_combout\,
	asdata => \l1|l_arr[2][7]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out\(7));

-- Location: FF_X62_Y5_N53
\u1|sig_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(7),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[0][7]~q\);

-- Location: FF_X62_Y5_N44
\u1|sig_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(7),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[1][7]~q\);

-- Location: FF_X60_Y6_N25
\l1|l_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|temp_min~30_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_arr[1][6]~q\);

-- Location: LABCELL_X57_Y7_N54
\l1|temp_max~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_max~8_combout\ = ( \l1|LessThan6~12_combout\ & ( \l1|l_arr[1][6]~q\ ) ) # ( !\l1|LessThan6~12_combout\ & ( \l1|l_arr[0][6]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l1|ALT_INV_l_arr[0][6]~q\,
	datac => \l1|ALT_INV_l_arr[1][6]~q\,
	dataf => \l1|ALT_INV_LessThan6~12_combout\,
	combout => \l1|temp_max~8_combout\);

-- Location: FF_X57_Y7_N55
\l1|l_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~8_combout\,
	asdata => \l1|l_arr[2][6]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out\(6));

-- Location: FF_X61_Y6_N29
\u1|sig_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(6),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[1][6]~q\);

-- Location: FF_X61_Y5_N44
\u1|sig_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(6),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[0][6]~q\);

-- Location: LABCELL_X61_Y6_N42
\u1|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan2~1_combout\ = ( \u1|sig_arr[1][6]~q\ & ( \u1|sig_arr[0][6]~q\ & ( (!\u1|sig_arr[0][5]~q\ & (!\u1|sig_arr[1][5]~q\ & (!\u1|sig_arr[0][7]~q\ $ (\u1|sig_arr[1][7]~q\)))) # (\u1|sig_arr[0][5]~q\ & (\u1|sig_arr[1][5]~q\ & (!\u1|sig_arr[0][7]~q\ $ 
-- (\u1|sig_arr[1][7]~q\)))) ) ) ) # ( !\u1|sig_arr[1][6]~q\ & ( !\u1|sig_arr[0][6]~q\ & ( (!\u1|sig_arr[0][5]~q\ & (!\u1|sig_arr[1][5]~q\ & (!\u1|sig_arr[0][7]~q\ $ (\u1|sig_arr[1][7]~q\)))) # (\u1|sig_arr[0][5]~q\ & (\u1|sig_arr[1][5]~q\ & 
-- (!\u1|sig_arr[0][7]~q\ $ (\u1|sig_arr[1][7]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[0][5]~q\,
	datab => \u1|ALT_INV_sig_arr[1][5]~q\,
	datac => \u1|ALT_INV_sig_arr[0][7]~q\,
	datad => \u1|ALT_INV_sig_arr[1][7]~q\,
	datae => \u1|ALT_INV_sig_arr[1][6]~q\,
	dataf => \u1|ALT_INV_sig_arr[0][6]~q\,
	combout => \u1|LessThan2~1_combout\);

-- Location: LABCELL_X61_Y5_N39
\u1|LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan2~5_combout\ = ( \u1|sig_arr[1][9]~q\ & ( (!\u1|sig_arr[0][10]~q\ & ((!\u1|sig_arr[0][9]~q\) # (\u1|sig_arr[1][10]~q\))) # (\u1|sig_arr[0][10]~q\ & (\u1|sig_arr[1][10]~q\ & !\u1|sig_arr[0][9]~q\)) ) ) # ( !\u1|sig_arr[1][9]~q\ & ( 
-- (!\u1|sig_arr[0][10]~q\ & \u1|sig_arr[1][10]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010110010101100101011001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[0][10]~q\,
	datab => \u1|ALT_INV_sig_arr[1][10]~q\,
	datac => \u1|ALT_INV_sig_arr[0][9]~q\,
	dataf => \u1|ALT_INV_sig_arr[1][9]~q\,
	combout => \u1|LessThan2~5_combout\);

-- Location: LABCELL_X61_Y6_N24
\u1|LessThan2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan2~9_combout\ = ( \u1|sig_arr[0][11]~q\ & ( (!\u1|sig_arr[0][12]~q\ & (((\u1|LessThan2~5_combout\ & \u1|sig_arr[1][11]~q\)) # (\u1|sig_arr[1][12]~q\))) # (\u1|sig_arr[0][12]~q\ & (\u1|LessThan2~5_combout\ & (\u1|sig_arr[1][12]~q\ & 
-- \u1|sig_arr[1][11]~q\))) ) ) # ( !\u1|sig_arr[0][11]~q\ & ( (!\u1|sig_arr[0][12]~q\ & (((\u1|sig_arr[1][11]~q\) # (\u1|sig_arr[1][12]~q\)) # (\u1|LessThan2~5_combout\))) # (\u1|sig_arr[0][12]~q\ & (\u1|sig_arr[1][12]~q\ & ((\u1|sig_arr[1][11]~q\) # 
-- (\u1|LessThan2~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110111001111010011011100111100001100010011010000110001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan2~5_combout\,
	datab => \u1|ALT_INV_sig_arr[0][12]~q\,
	datac => \u1|ALT_INV_sig_arr[1][12]~q\,
	datad => \u1|ALT_INV_sig_arr[1][11]~q\,
	dataf => \u1|ALT_INV_sig_arr[0][11]~q\,
	combout => \u1|LessThan2~9_combout\);

-- Location: LABCELL_X57_Y7_N12
\l1|temp_max~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_max~6_combout\ = ( \l1|l_arr[0][4]~q\ & ( \l1|LessThan6~12_combout\ & ( \l1|l_arr[1][4]~q\ ) ) ) # ( !\l1|l_arr[0][4]~q\ & ( \l1|LessThan6~12_combout\ & ( \l1|l_arr[1][4]~q\ ) ) ) # ( \l1|l_arr[0][4]~q\ & ( !\l1|LessThan6~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l1|ALT_INV_l_arr[1][4]~q\,
	datae => \l1|ALT_INV_l_arr[0][4]~q\,
	dataf => \l1|ALT_INV_LessThan6~12_combout\,
	combout => \l1|temp_max~6_combout\);

-- Location: FF_X57_Y7_N13
\l1|l_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~6_combout\,
	asdata => \l1|l_arr[2][4]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out\(4));

-- Location: FF_X61_Y6_N41
\u1|sig_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(4),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[1][4]~q\);

-- Location: FF_X61_Y6_N22
\u1|sig_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(4),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[0][4]~q\);

-- Location: LABCELL_X57_Y7_N0
\l1|temp_max~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_max~11_combout\ = ( \l1|l_arr[1][2]~q\ & ( (\l1|l_arr[0][2]~q\) # (\l1|LessThan6~12_combout\) ) ) # ( !\l1|l_arr[1][2]~q\ & ( (!\l1|LessThan6~12_combout\ & \l1|l_arr[0][2]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[0][2]~q\,
	dataf => \l1|ALT_INV_l_arr[1][2]~q\,
	combout => \l1|temp_max~11_combout\);

-- Location: FF_X57_Y7_N1
\l1|l_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~11_combout\,
	asdata => \l1|l_arr[2][2]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out\(2));

-- Location: LABCELL_X64_Y6_N33
\u1|sig_arr[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|sig_arr[0][2]~feeder_combout\ = ( \l1|l_out\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \l1|ALT_INV_l_out\(2),
	combout => \u1|sig_arr[0][2]~feeder_combout\);

-- Location: FF_X64_Y6_N34
\u1|sig_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|sig_arr[0][2]~feeder_combout\,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[0][2]~q\);

-- Location: FF_X62_Y6_N14
\u1|sig_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(2),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[1][2]~q\);

-- Location: LABCELL_X57_Y7_N33
\l1|temp_max~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_max~10_combout\ = ( \l1|LessThan6~12_combout\ & ( \l1|l_arr[1][3]~q\ ) ) # ( !\l1|LessThan6~12_combout\ & ( \l1|l_arr[1][3]~q\ & ( \l1|l_arr[0][3]~q\ ) ) ) # ( !\l1|LessThan6~12_combout\ & ( !\l1|l_arr[1][3]~q\ & ( \l1|l_arr[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l1|ALT_INV_l_arr[0][3]~q\,
	datae => \l1|ALT_INV_LessThan6~12_combout\,
	dataf => \l1|ALT_INV_l_arr[1][3]~q\,
	combout => \l1|temp_max~10_combout\);

-- Location: FF_X57_Y7_N34
\l1|l_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~10_combout\,
	asdata => \l1|l_arr[2][3]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out\(3));

-- Location: FF_X61_Y6_N5
\u1|sig_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(3),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[1][3]~q\);

-- Location: FF_X61_Y6_N58
\u1|sig_arr[0][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(3),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[0][3]~DUPLICATE_q\);

-- Location: LABCELL_X57_Y7_N6
\l1|temp_max~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_max~12_combout\ = ( \l1|l_arr[0][1]~DUPLICATE_q\ & ( (!\l1|LessThan6~12_combout\) # (\l1|l_arr[1][1]~q\) ) ) # ( !\l1|l_arr[0][1]~DUPLICATE_q\ & ( (\l1|LessThan6~12_combout\ & \l1|l_arr[1][1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l1|ALT_INV_LessThan6~12_combout\,
	datab => \l1|ALT_INV_l_arr[1][1]~q\,
	dataf => \l1|ALT_INV_l_arr[0][1]~DUPLICATE_q\,
	combout => \l1|temp_max~12_combout\);

-- Location: FF_X57_Y7_N7
\l1|l_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~12_combout\,
	asdata => \l1|l_arr[2][1]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out\(1));

-- Location: FF_X62_Y6_N17
\u1|sig_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(1),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[1][1]~q\);

-- Location: LABCELL_X61_Y7_N42
\l1|temp_max~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \l1|temp_max~0_combout\ = ( \l1|l_arr[1][0]~q\ & ( (\l1|l_arr[0][0]~q\) # (\l1|LessThan6~12_combout\) ) ) # ( !\l1|l_arr[1][0]~q\ & ( (!\l1|LessThan6~12_combout\ & \l1|l_arr[0][0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l1|ALT_INV_LessThan6~12_combout\,
	datac => \l1|ALT_INV_l_arr[0][0]~q\,
	dataf => \l1|ALT_INV_l_arr[1][0]~q\,
	combout => \l1|temp_max~0_combout\);

-- Location: FF_X61_Y7_N43
\l1|l_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l1|temp_max~0_combout\,
	asdata => \l1|l_arr[2][0]~q\,
	sload => \l1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l1|l_out\(0));

-- Location: FF_X63_Y6_N17
\u1|sig_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(0),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[0][0]~q\);

-- Location: FF_X62_Y6_N31
\u1|sig_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(0),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[1][0]~q\);

-- Location: FF_X62_Y6_N25
\u1|sig_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(1),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[0][1]~q\);

-- Location: LABCELL_X62_Y6_N30
\u1|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan2~2_combout\ = ( \u1|sig_arr[0][1]~q\ & ( (\u1|sig_arr[1][1]~q\ & (!\u1|sig_arr[0][0]~q\ & \u1|sig_arr[1][0]~q\)) ) ) # ( !\u1|sig_arr[0][1]~q\ & ( ((!\u1|sig_arr[0][0]~q\ & \u1|sig_arr[1][0]~q\)) # (\u1|sig_arr[1][1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_sig_arr[1][1]~q\,
	datac => \u1|ALT_INV_sig_arr[0][0]~q\,
	datad => \u1|ALT_INV_sig_arr[1][0]~q\,
	dataf => \u1|ALT_INV_sig_arr[0][1]~q\,
	combout => \u1|LessThan2~2_combout\);

-- Location: LABCELL_X62_Y6_N54
\u1|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan2~3_combout\ = ( \u1|LessThan2~2_combout\ & ( (!\u1|sig_arr[1][3]~q\ & (!\u1|sig_arr[0][3]~DUPLICATE_q\ & ((!\u1|sig_arr[0][2]~q\) # (\u1|sig_arr[1][2]~q\)))) # (\u1|sig_arr[1][3]~q\ & ((!\u1|sig_arr[0][2]~q\) # 
-- ((!\u1|sig_arr[0][3]~DUPLICATE_q\) # (\u1|sig_arr[1][2]~q\)))) ) ) # ( !\u1|LessThan2~2_combout\ & ( (!\u1|sig_arr[1][3]~q\ & (!\u1|sig_arr[0][2]~q\ & (\u1|sig_arr[1][2]~q\ & !\u1|sig_arr[0][3]~DUPLICATE_q\))) # (\u1|sig_arr[1][3]~q\ & 
-- ((!\u1|sig_arr[0][3]~DUPLICATE_q\) # ((!\u1|sig_arr[0][2]~q\ & \u1|sig_arr[1][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100000010001011110000001010111111000010111011111100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[0][2]~q\,
	datab => \u1|ALT_INV_sig_arr[1][2]~q\,
	datac => \u1|ALT_INV_sig_arr[1][3]~q\,
	datad => \u1|ALT_INV_sig_arr[0][3]~DUPLICATE_q\,
	dataf => \u1|ALT_INV_LessThan2~2_combout\,
	combout => \u1|LessThan2~3_combout\);

-- Location: LABCELL_X61_Y6_N21
\u1|LessThan2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan2~7_combout\ = ( \u1|LessThan2~3_combout\ & ( (!\u1|sig_arr[0][4]~q\) # (\u1|sig_arr[1][4]~q\) ) ) # ( !\u1|LessThan2~3_combout\ & ( (\u1|sig_arr[1][4]~q\ & !\u1|sig_arr[0][4]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_sig_arr[1][4]~q\,
	datad => \u1|ALT_INV_sig_arr[0][4]~q\,
	dataf => \u1|ALT_INV_LessThan2~3_combout\,
	combout => \u1|LessThan2~7_combout\);

-- Location: LABCELL_X61_Y5_N42
\u1|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan2~4_combout\ = ( \u1|sig_arr[0][6]~q\ & ( \u1|sig_arr[1][5]~q\ & ( (!\u1|sig_arr[1][7]~q\ & (\u1|sig_arr[1][6]~q\ & (!\u1|sig_arr[0][7]~q\ & !\u1|sig_arr[0][5]~q\))) # (\u1|sig_arr[1][7]~q\ & ((!\u1|sig_arr[0][7]~q\) # ((\u1|sig_arr[1][6]~q\ & 
-- !\u1|sig_arr[0][5]~q\)))) ) ) ) # ( !\u1|sig_arr[0][6]~q\ & ( \u1|sig_arr[1][5]~q\ & ( (!\u1|sig_arr[1][7]~q\ & (!\u1|sig_arr[0][7]~q\ & ((!\u1|sig_arr[0][5]~q\) # (\u1|sig_arr[1][6]~q\)))) # (\u1|sig_arr[1][7]~q\ & (((!\u1|sig_arr[0][7]~q\) # 
-- (!\u1|sig_arr[0][5]~q\)) # (\u1|sig_arr[1][6]~q\))) ) ) ) # ( \u1|sig_arr[0][6]~q\ & ( !\u1|sig_arr[1][5]~q\ & ( (\u1|sig_arr[1][7]~q\ & !\u1|sig_arr[0][7]~q\) ) ) ) # ( !\u1|sig_arr[0][6]~q\ & ( !\u1|sig_arr[1][5]~q\ & ( (!\u1|sig_arr[1][6]~q\ & 
-- (\u1|sig_arr[1][7]~q\ & !\u1|sig_arr[0][7]~q\)) # (\u1|sig_arr[1][6]~q\ & ((!\u1|sig_arr[0][7]~q\) # (\u1|sig_arr[1][7]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001001100000011000011110011011100010111000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[1][6]~q\,
	datab => \u1|ALT_INV_sig_arr[1][7]~q\,
	datac => \u1|ALT_INV_sig_arr[0][7]~q\,
	datad => \u1|ALT_INV_sig_arr[0][5]~q\,
	datae => \u1|ALT_INV_sig_arr[0][6]~q\,
	dataf => \u1|ALT_INV_sig_arr[1][5]~q\,
	combout => \u1|LessThan2~4_combout\);

-- Location: LABCELL_X61_Y5_N48
\u1|LessThan2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan2~10_combout\ = ( !\u1|LessThan2~4_combout\ & ( (!\u1|sig_arr[1][8]~q\) # (\u1|sig_arr[0][8]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_sig_arr[1][8]~q\,
	datad => \u1|ALT_INV_sig_arr[0][8]~q\,
	dataf => \u1|ALT_INV_LessThan2~4_combout\,
	combout => \u1|LessThan2~10_combout\);

-- Location: LABCELL_X61_Y6_N51
\u1|LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan2~6_combout\ = ( \u1|LessThan2~7_combout\ & ( \u1|LessThan2~10_combout\ & ( ((\u1|LessThan2~0_combout\ & (!\u1|LessThan2~8_combout\ & \u1|LessThan2~1_combout\))) # (\u1|LessThan2~9_combout\) ) ) ) # ( !\u1|LessThan2~7_combout\ & ( 
-- \u1|LessThan2~10_combout\ & ( \u1|LessThan2~9_combout\ ) ) ) # ( \u1|LessThan2~7_combout\ & ( !\u1|LessThan2~10_combout\ & ( ((\u1|LessThan2~0_combout\ & !\u1|LessThan2~8_combout\)) # (\u1|LessThan2~9_combout\) ) ) ) # ( !\u1|LessThan2~7_combout\ & ( 
-- !\u1|LessThan2~10_combout\ & ( ((\u1|LessThan2~0_combout\ & !\u1|LessThan2~8_combout\)) # (\u1|LessThan2~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111010001001111111100000000111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan2~0_combout\,
	datab => \u1|ALT_INV_LessThan2~8_combout\,
	datac => \u1|ALT_INV_LessThan2~1_combout\,
	datad => \u1|ALT_INV_LessThan2~9_combout\,
	datae => \u1|ALT_INV_LessThan2~7_combout\,
	dataf => \u1|ALT_INV_LessThan2~10_combout\,
	combout => \u1|LessThan2~6_combout\);

-- Location: LABCELL_X62_Y6_N18
\u1|temp_max~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~12_combout\ = ( \u1|LessThan2~6_combout\ & ( \u1|sig_arr[1][8]~q\ ) ) # ( !\u1|LessThan2~6_combout\ & ( \u1|sig_arr[0][8]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_sig_arr[0][8]~q\,
	datad => \u1|ALT_INV_sig_arr[1][8]~q\,
	dataf => \u1|ALT_INV_LessThan2~6_combout\,
	combout => \u1|temp_max~12_combout\);

-- Location: FF_X62_Y6_N2
\u1|sig_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(8),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[2][8]~q\);

-- Location: LABCELL_X62_Y6_N12
\u1|temp_max~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~8_combout\ = ( \u1|sig_arr[1][9]~q\ & ( (\u1|sig_arr[0][9]~q\) # (\u1|LessThan2~6_combout\) ) ) # ( !\u1|sig_arr[1][9]~q\ & ( (!\u1|LessThan2~6_combout\ & \u1|sig_arr[0][9]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan2~6_combout\,
	datac => \u1|ALT_INV_sig_arr[0][9]~q\,
	dataf => \u1|ALT_INV_sig_arr[1][9]~q\,
	combout => \u1|temp_max~8_combout\);

-- Location: FF_X62_Y6_N23
\u1|sig_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(9),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[2][9]~q\);

-- Location: FF_X61_Y5_N53
\u1|sig_arr[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(10),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[2][10]~q\);

-- Location: LABCELL_X61_Y6_N6
\u1|temp_max~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~10_combout\ = ( \u1|sig_arr[0][11]~q\ & ( (!\u1|LessThan2~6_combout\) # (\u1|sig_arr[1][11]~q\) ) ) # ( !\u1|sig_arr[0][11]~q\ & ( (\u1|LessThan2~6_combout\ & \u1|sig_arr[1][11]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_LessThan2~6_combout\,
	datac => \u1|ALT_INV_sig_arr[1][11]~q\,
	dataf => \u1|ALT_INV_sig_arr[0][11]~q\,
	combout => \u1|temp_max~10_combout\);

-- Location: FF_X61_Y7_N5
\u1|sig_arr[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(12),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[2][12]~q\);

-- Location: LABCELL_X61_Y6_N9
\u1|temp_max~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~9_combout\ = ( \u1|sig_arr[1][12]~q\ & ( (\u1|sig_arr[0][12]~q\) # (\u1|LessThan2~6_combout\) ) ) # ( !\u1|sig_arr[1][12]~q\ & ( (!\u1|LessThan2~6_combout\ & \u1|sig_arr[0][12]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_LessThan2~6_combout\,
	datad => \u1|ALT_INV_sig_arr[0][12]~q\,
	dataf => \u1|ALT_INV_sig_arr[1][12]~q\,
	combout => \u1|temp_max~9_combout\);

-- Location: FF_X62_Y6_N50
\u1|sig_arr[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(11),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[2][11]~q\);

-- Location: LABCELL_X61_Y5_N36
\u1|temp_max~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~11_combout\ = ( \u1|LessThan2~6_combout\ & ( \u1|sig_arr[1][10]~q\ ) ) # ( !\u1|LessThan2~6_combout\ & ( \u1|sig_arr[0][10]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[0][10]~q\,
	datab => \u1|ALT_INV_sig_arr[1][10]~q\,
	dataf => \u1|ALT_INV_LessThan2~6_combout\,
	combout => \u1|temp_max~11_combout\);

-- Location: LABCELL_X62_Y6_N48
\u1|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~5_combout\ = ( \u1|sig_arr[2][11]~q\ & ( \u1|temp_max~11_combout\ & ( (\u1|sig_arr[2][10]~q\ & (\u1|temp_max~10_combout\ & (!\u1|sig_arr[2][12]~q\ $ (\u1|temp_max~9_combout\)))) ) ) ) # ( !\u1|sig_arr[2][11]~q\ & ( \u1|temp_max~11_combout\ & 
-- ( (\u1|sig_arr[2][10]~q\ & (!\u1|temp_max~10_combout\ & (!\u1|sig_arr[2][12]~q\ $ (\u1|temp_max~9_combout\)))) ) ) ) # ( \u1|sig_arr[2][11]~q\ & ( !\u1|temp_max~11_combout\ & ( (!\u1|sig_arr[2][10]~q\ & (\u1|temp_max~10_combout\ & (!\u1|sig_arr[2][12]~q\ 
-- $ (\u1|temp_max~9_combout\)))) ) ) ) # ( !\u1|sig_arr[2][11]~q\ & ( !\u1|temp_max~11_combout\ & ( (!\u1|sig_arr[2][10]~q\ & (!\u1|temp_max~10_combout\ & (!\u1|sig_arr[2][12]~q\ $ (\u1|temp_max~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[2][10]~q\,
	datab => \u1|ALT_INV_temp_max~10_combout\,
	datac => \u1|ALT_INV_sig_arr[2][12]~q\,
	datad => \u1|ALT_INV_temp_max~9_combout\,
	datae => \u1|ALT_INV_sig_arr[2][11]~q\,
	dataf => \u1|ALT_INV_temp_max~11_combout\,
	combout => \u1|LessThan3~5_combout\);

-- Location: LABCELL_X62_Y6_N21
\u1|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~6_combout\ = ( \u1|LessThan3~5_combout\ & ( (!\u1|temp_max~12_combout\ & (!\u1|sig_arr[2][8]~q\ & (!\u1|temp_max~8_combout\ $ (\u1|sig_arr[2][9]~q\)))) # (\u1|temp_max~12_combout\ & (\u1|sig_arr[2][8]~q\ & (!\u1|temp_max~8_combout\ $ 
-- (\u1|sig_arr[2][9]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_temp_max~12_combout\,
	datab => \u1|ALT_INV_sig_arr[2][8]~q\,
	datac => \u1|ALT_INV_temp_max~8_combout\,
	datad => \u1|ALT_INV_sig_arr[2][9]~q\,
	dataf => \u1|ALT_INV_LessThan3~5_combout\,
	combout => \u1|LessThan3~6_combout\);

-- Location: FF_X63_Y6_N38
\u1|sig_arr[2][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(7),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[2][7]~DUPLICATE_q\);

-- Location: FF_X63_Y6_N46
\u1|sig_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(5),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[2][5]~q\);

-- Location: LABCELL_X63_Y6_N51
\u1|temp_max~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~2_combout\ = ( \u1|LessThan2~6_combout\ & ( \u1|sig_arr[1][7]~q\ ) ) # ( !\u1|LessThan2~6_combout\ & ( \u1|sig_arr[0][7]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_sig_arr[0][7]~q\,
	datad => \u1|ALT_INV_sig_arr[1][7]~q\,
	dataf => \u1|ALT_INV_LessThan2~6_combout\,
	combout => \u1|temp_max~2_combout\);

-- Location: FF_X59_Y6_N29
\u1|sig_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(6),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[2][6]~q\);

-- Location: LABCELL_X63_Y6_N57
\u1|temp_max~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~4_combout\ = ( \u1|LessThan2~6_combout\ & ( \u1|sig_arr[1][5]~q\ ) ) # ( !\u1|LessThan2~6_combout\ & ( \u1|sig_arr[0][5]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_sig_arr[1][5]~q\,
	datad => \u1|ALT_INV_sig_arr[0][5]~q\,
	dataf => \u1|ALT_INV_LessThan2~6_combout\,
	combout => \u1|temp_max~4_combout\);

-- Location: LABCELL_X61_Y6_N27
\u1|temp_max~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~3_combout\ = ( \u1|LessThan2~6_combout\ & ( \u1|sig_arr[1][6]~q\ ) ) # ( !\u1|LessThan2~6_combout\ & ( \u1|sig_arr[0][6]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_sig_arr[0][6]~q\,
	datad => \u1|ALT_INV_sig_arr[1][6]~q\,
	dataf => \u1|ALT_INV_LessThan2~6_combout\,
	combout => \u1|temp_max~3_combout\);

-- Location: LABCELL_X63_Y6_N18
\u1|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~3_combout\ = ( \u1|temp_max~4_combout\ & ( \u1|temp_max~3_combout\ & ( (\u1|sig_arr[2][7]~DUPLICATE_q\ & !\u1|temp_max~2_combout\) ) ) ) # ( !\u1|temp_max~4_combout\ & ( \u1|temp_max~3_combout\ & ( (!\u1|sig_arr[2][7]~DUPLICATE_q\ & 
-- (\u1|sig_arr[2][5]~q\ & (!\u1|temp_max~2_combout\ & \u1|sig_arr[2][6]~q\))) # (\u1|sig_arr[2][7]~DUPLICATE_q\ & ((!\u1|temp_max~2_combout\) # ((\u1|sig_arr[2][5]~q\ & \u1|sig_arr[2][6]~q\)))) ) ) ) # ( \u1|temp_max~4_combout\ & ( !\u1|temp_max~3_combout\ 
-- & ( (!\u1|sig_arr[2][7]~DUPLICATE_q\ & (!\u1|temp_max~2_combout\ & \u1|sig_arr[2][6]~q\)) # (\u1|sig_arr[2][7]~DUPLICATE_q\ & ((!\u1|temp_max~2_combout\) # (\u1|sig_arr[2][6]~q\))) ) ) ) # ( !\u1|temp_max~4_combout\ & ( !\u1|temp_max~3_combout\ & ( 
-- (!\u1|sig_arr[2][7]~DUPLICATE_q\ & (!\u1|temp_max~2_combout\ & ((\u1|sig_arr[2][6]~q\) # (\u1|sig_arr[2][5]~q\)))) # (\u1|sig_arr[2][7]~DUPLICATE_q\ & (((!\u1|temp_max~2_combout\) # (\u1|sig_arr[2][6]~q\)) # (\u1|sig_arr[2][5]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000111110101010100001111010101010000011100010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[2][7]~DUPLICATE_q\,
	datab => \u1|ALT_INV_sig_arr[2][5]~q\,
	datac => \u1|ALT_INV_temp_max~2_combout\,
	datad => \u1|ALT_INV_sig_arr[2][6]~q\,
	datae => \u1|ALT_INV_temp_max~4_combout\,
	dataf => \u1|ALT_INV_temp_max~3_combout\,
	combout => \u1|LessThan3~3_combout\);

-- Location: LABCELL_X63_Y6_N39
\u1|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~0_combout\ = ( \u1|temp_max~4_combout\ & ( \u1|temp_max~2_combout\ & ( (\u1|sig_arr[2][5]~q\ & (\u1|sig_arr[2][7]~DUPLICATE_q\ & (!\u1|sig_arr[2][6]~q\ $ (\u1|temp_max~3_combout\)))) ) ) ) # ( !\u1|temp_max~4_combout\ & ( 
-- \u1|temp_max~2_combout\ & ( (!\u1|sig_arr[2][5]~q\ & (\u1|sig_arr[2][7]~DUPLICATE_q\ & (!\u1|sig_arr[2][6]~q\ $ (\u1|temp_max~3_combout\)))) ) ) ) # ( \u1|temp_max~4_combout\ & ( !\u1|temp_max~2_combout\ & ( (\u1|sig_arr[2][5]~q\ & 
-- (!\u1|sig_arr[2][7]~DUPLICATE_q\ & (!\u1|sig_arr[2][6]~q\ $ (\u1|temp_max~3_combout\)))) ) ) ) # ( !\u1|temp_max~4_combout\ & ( !\u1|temp_max~2_combout\ & ( (!\u1|sig_arr[2][5]~q\ & (!\u1|sig_arr[2][7]~DUPLICATE_q\ & (!\u1|sig_arr[2][6]~q\ $ 
-- (\u1|temp_max~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[2][6]~q\,
	datab => \u1|ALT_INV_sig_arr[2][5]~q\,
	datac => \u1|ALT_INV_temp_max~3_combout\,
	datad => \u1|ALT_INV_sig_arr[2][7]~DUPLICATE_q\,
	datae => \u1|ALT_INV_temp_max~4_combout\,
	dataf => \u1|ALT_INV_temp_max~2_combout\,
	combout => \u1|LessThan3~0_combout\);

-- Location: LABCELL_X61_Y6_N39
\u1|temp_max~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~1_combout\ = ( \u1|LessThan2~6_combout\ & ( \u1|sig_arr[1][4]~q\ ) ) # ( !\u1|LessThan2~6_combout\ & ( \u1|sig_arr[0][4]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_sig_arr[0][4]~q\,
	datad => \u1|ALT_INV_sig_arr[1][4]~q\,
	dataf => \u1|ALT_INV_LessThan2~6_combout\,
	combout => \u1|temp_max~1_combout\);

-- Location: FF_X62_Y6_N56
\u1|sig_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(2),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[2][2]~q\);

-- Location: FF_X62_Y6_N52
\u1|sig_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(3),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[2][3]~q\);

-- Location: LABCELL_X62_Y6_N57
\u1|temp_max~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~7_combout\ = (!\u1|LessThan2~6_combout\ & (\u1|sig_arr[0][2]~q\)) # (\u1|LessThan2~6_combout\ & ((\u1|sig_arr[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[0][2]~q\,
	datac => \u1|ALT_INV_sig_arr[1][2]~q\,
	datad => \u1|ALT_INV_LessThan2~6_combout\,
	combout => \u1|temp_max~7_combout\);

-- Location: FF_X61_Y6_N59
\u1|sig_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(3),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[0][3]~q\);

-- Location: LABCELL_X61_Y6_N3
\u1|temp_max~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~6_combout\ = ( \u1|LessThan2~6_combout\ & ( \u1|sig_arr[1][3]~q\ ) ) # ( !\u1|LessThan2~6_combout\ & ( \u1|sig_arr[0][3]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_sig_arr[0][3]~q\,
	datad => \u1|ALT_INV_sig_arr[1][3]~q\,
	dataf => \u1|ALT_INV_LessThan2~6_combout\,
	combout => \u1|temp_max~6_combout\);

-- Location: LABCELL_X62_Y6_N33
\u1|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~2_combout\ = ( \u1|temp_max~6_combout\ & ( (\u1|sig_arr[2][2]~q\ & (\u1|sig_arr[2][3]~q\ & !\u1|temp_max~7_combout\)) ) ) # ( !\u1|temp_max~6_combout\ & ( ((\u1|sig_arr[2][2]~q\ & !\u1|temp_max~7_combout\)) # (\u1|sig_arr[2][3]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[2][2]~q\,
	datac => \u1|ALT_INV_sig_arr[2][3]~q\,
	datad => \u1|ALT_INV_temp_max~7_combout\,
	dataf => \u1|ALT_INV_temp_max~6_combout\,
	combout => \u1|LessThan3~2_combout\);

-- Location: FF_X63_Y6_N43
\u1|sig_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(4),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[2][4]~q\);

-- Location: FF_X63_Y6_N20
\u1|sig_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(0),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[2][0]~q\);

-- Location: LABCELL_X62_Y6_N15
\u1|temp_max~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~5_combout\ = ( \u1|sig_arr[0][1]~q\ & ( (!\u1|LessThan2~6_combout\) # (\u1|sig_arr[1][1]~q\) ) ) # ( !\u1|sig_arr[0][1]~q\ & ( (\u1|LessThan2~6_combout\ & \u1|sig_arr[1][1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan2~6_combout\,
	datad => \u1|ALT_INV_sig_arr[1][1]~q\,
	dataf => \u1|ALT_INV_sig_arr[0][1]~q\,
	combout => \u1|temp_max~5_combout\);

-- Location: LABCELL_X63_Y6_N12
\u1|temp_max~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~0_combout\ = ( \u1|LessThan2~6_combout\ & ( \u1|sig_arr[0][0]~q\ & ( \u1|sig_arr[1][0]~q\ ) ) ) # ( !\u1|LessThan2~6_combout\ & ( \u1|sig_arr[0][0]~q\ ) ) # ( \u1|LessThan2~6_combout\ & ( !\u1|sig_arr[0][0]~q\ & ( \u1|sig_arr[1][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_sig_arr[1][0]~q\,
	datae => \u1|ALT_INV_LessThan2~6_combout\,
	dataf => \u1|ALT_INV_sig_arr[0][0]~q\,
	combout => \u1|temp_max~0_combout\);

-- Location: FF_X63_Y6_N34
\u1|sig_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(1),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[2][1]~q\);

-- Location: LABCELL_X62_Y6_N24
\u1|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~9_combout\ = ( !\u1|LessThan2~6_combout\ & ( (!\u1|sig_arr[2][2]~q\ & (((!\u1|sig_arr[0][2]~q\ & (!\u1|sig_arr[2][3]~q\ $ (\u1|sig_arr[0][3]~DUPLICATE_q\)))))) # (\u1|sig_arr[2][2]~q\ & (((\u1|sig_arr[0][2]~q\ & (!\u1|sig_arr[2][3]~q\ $ 
-- (\u1|sig_arr[0][3]~DUPLICATE_q\)))))) ) ) # ( \u1|LessThan2~6_combout\ & ( (!\u1|sig_arr[2][2]~q\ & (!\u1|sig_arr[1][2]~q\ & (!\u1|sig_arr[2][3]~q\ $ ((\u1|sig_arr[1][3]~q\))))) # (\u1|sig_arr[2][2]~q\ & (\u1|sig_arr[1][2]~q\ & (!\u1|sig_arr[2][3]~q\ $ 
-- ((\u1|sig_arr[1][3]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1000001010000010100000100100000101000001010000011000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[2][2]~q\,
	datab => \u1|ALT_INV_sig_arr[2][3]~q\,
	datac => \u1|ALT_INV_sig_arr[1][3]~q\,
	datad => \u1|ALT_INV_sig_arr[1][2]~q\,
	datae => \u1|ALT_INV_LessThan2~6_combout\,
	dataf => \u1|ALT_INV_sig_arr[0][2]~q\,
	datag => \u1|ALT_INV_sig_arr[0][3]~DUPLICATE_q\,
	combout => \u1|LessThan3~9_combout\);

-- Location: LABCELL_X63_Y6_N33
\u1|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~1_combout\ = ( \u1|sig_arr[2][1]~q\ & ( \u1|LessThan3~9_combout\ & ( (!\u1|temp_max~5_combout\) # ((\u1|sig_arr[2][0]~q\ & !\u1|temp_max~0_combout\)) ) ) ) # ( !\u1|sig_arr[2][1]~q\ & ( \u1|LessThan3~9_combout\ & ( (\u1|sig_arr[2][0]~q\ & 
-- (!\u1|temp_max~5_combout\ & !\u1|temp_max~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000001101110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[2][0]~q\,
	datab => \u1|ALT_INV_temp_max~5_combout\,
	datac => \u1|ALT_INV_temp_max~0_combout\,
	datae => \u1|ALT_INV_sig_arr[2][1]~q\,
	dataf => \u1|ALT_INV_LessThan3~9_combout\,
	combout => \u1|LessThan3~1_combout\);

-- Location: LABCELL_X63_Y6_N42
\u1|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~4_combout\ = ( \u1|sig_arr[2][4]~q\ & ( \u1|LessThan3~1_combout\ & ( (!\u1|LessThan3~3_combout\ & !\u1|LessThan3~0_combout\) ) ) ) # ( !\u1|sig_arr[2][4]~q\ & ( \u1|LessThan3~1_combout\ & ( (!\u1|LessThan3~3_combout\ & 
-- ((!\u1|LessThan3~0_combout\) # (\u1|temp_max~1_combout\))) ) ) ) # ( \u1|sig_arr[2][4]~q\ & ( !\u1|LessThan3~1_combout\ & ( (!\u1|LessThan3~3_combout\ & ((!\u1|LessThan3~0_combout\) # ((\u1|temp_max~1_combout\ & !\u1|LessThan3~2_combout\)))) ) ) ) # ( 
-- !\u1|sig_arr[2][4]~q\ & ( !\u1|LessThan3~1_combout\ & ( (!\u1|LessThan3~3_combout\ & ((!\u1|LessThan3~0_combout\) # ((!\u1|LessThan3~2_combout\) # (\u1|temp_max~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001010100010101000100010001010100010101000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan3~3_combout\,
	datab => \u1|ALT_INV_LessThan3~0_combout\,
	datac => \u1|ALT_INV_temp_max~1_combout\,
	datad => \u1|ALT_INV_LessThan3~2_combout\,
	datae => \u1|ALT_INV_sig_arr[2][4]~q\,
	dataf => \u1|ALT_INV_LessThan3~1_combout\,
	combout => \u1|LessThan3~4_combout\);

-- Location: LABCELL_X61_Y5_N21
\u1|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~7_combout\ = ( \u1|temp_max~11_combout\ & ( \u1|temp_max~9_combout\ & ( (\u1|sig_arr[2][12]~q\ & (\u1|sig_arr[2][11]~q\ & !\u1|temp_max~10_combout\)) ) ) ) # ( !\u1|temp_max~11_combout\ & ( \u1|temp_max~9_combout\ & ( (\u1|sig_arr[2][12]~q\ 
-- & ((!\u1|sig_arr[2][10]~q\ & (\u1|sig_arr[2][11]~q\ & !\u1|temp_max~10_combout\)) # (\u1|sig_arr[2][10]~q\ & ((!\u1|temp_max~10_combout\) # (\u1|sig_arr[2][11]~q\))))) ) ) ) # ( \u1|temp_max~11_combout\ & ( !\u1|temp_max~9_combout\ & ( 
-- ((\u1|sig_arr[2][11]~q\ & !\u1|temp_max~10_combout\)) # (\u1|sig_arr[2][12]~q\) ) ) ) # ( !\u1|temp_max~11_combout\ & ( !\u1|temp_max~9_combout\ & ( ((!\u1|sig_arr[2][10]~q\ & (\u1|sig_arr[2][11]~q\ & !\u1|temp_max~10_combout\)) # (\u1|sig_arr[2][10]~q\ & 
-- ((!\u1|temp_max~10_combout\) # (\u1|sig_arr[2][11]~q\)))) # (\u1|sig_arr[2][12]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100110111001111110011001100010011000000010000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[2][10]~q\,
	datab => \u1|ALT_INV_sig_arr[2][12]~q\,
	datac => \u1|ALT_INV_sig_arr[2][11]~q\,
	datad => \u1|ALT_INV_temp_max~10_combout\,
	datae => \u1|ALT_INV_temp_max~11_combout\,
	dataf => \u1|ALT_INV_temp_max~9_combout\,
	combout => \u1|LessThan3~7_combout\);

-- Location: LABCELL_X62_Y6_N0
\u1|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~8_combout\ = ( \u1|LessThan3~5_combout\ & ( (!\u1|sig_arr[2][9]~q\ & (!\u1|temp_max~8_combout\ & (!\u1|temp_max~12_combout\ & \u1|sig_arr[2][8]~q\))) # (\u1|sig_arr[2][9]~q\ & ((!\u1|temp_max~8_combout\) # ((!\u1|temp_max~12_combout\ & 
-- \u1|sig_arr[2][8]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100110101000100010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[2][9]~q\,
	datab => \u1|ALT_INV_temp_max~8_combout\,
	datac => \u1|ALT_INV_temp_max~12_combout\,
	datad => \u1|ALT_INV_sig_arr[2][8]~q\,
	dataf => \u1|ALT_INV_LessThan3~5_combout\,
	combout => \u1|LessThan3~8_combout\);

-- Location: LABCELL_X63_Y6_N0
\u1|temp_max~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~15_combout\ = ( \u1|sig_arr[2][1]~q\ & ( \u1|temp_max~5_combout\ ) ) # ( !\u1|sig_arr[2][1]~q\ & ( \u1|temp_max~5_combout\ & ( (!\u1|LessThan3~7_combout\ & (!\u1|LessThan3~8_combout\ & ((!\u1|LessThan3~6_combout\) # 
-- (\u1|LessThan3~4_combout\)))) ) ) ) # ( \u1|sig_arr[2][1]~q\ & ( !\u1|temp_max~5_combout\ & ( (((\u1|LessThan3~6_combout\ & !\u1|LessThan3~4_combout\)) # (\u1|LessThan3~8_combout\)) # (\u1|LessThan3~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011111111111110110000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan3~6_combout\,
	datab => \u1|ALT_INV_LessThan3~4_combout\,
	datac => \u1|ALT_INV_LessThan3~7_combout\,
	datad => \u1|ALT_INV_LessThan3~8_combout\,
	datae => \u1|ALT_INV_sig_arr[2][1]~q\,
	dataf => \u1|ALT_INV_temp_max~5_combout\,
	combout => \u1|temp_max~15_combout\);

-- Location: FF_X63_Y5_N56
\u1|u_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~15_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][1]~q\);

-- Location: FF_X62_Y5_N11
\u1|u_arr[0][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~15_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][1]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y6_N45
\u1|temp_max~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~17_combout\ = ( \u1|sig_arr[2][3]~q\ & ( \u1|temp_max~6_combout\ ) ) # ( !\u1|sig_arr[2][3]~q\ & ( \u1|temp_max~6_combout\ & ( (!\u1|LessThan3~7_combout\ & (!\u1|LessThan3~8_combout\ & ((!\u1|LessThan3~6_combout\) # 
-- (\u1|LessThan3~4_combout\)))) ) ) ) # ( \u1|sig_arr[2][3]~q\ & ( !\u1|temp_max~6_combout\ & ( (((\u1|LessThan3~6_combout\ & !\u1|LessThan3~4_combout\)) # (\u1|LessThan3~8_combout\)) # (\u1|LessThan3~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011111111111110110000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan3~6_combout\,
	datab => \u1|ALT_INV_LessThan3~4_combout\,
	datac => \u1|ALT_INV_LessThan3~7_combout\,
	datad => \u1|ALT_INV_LessThan3~8_combout\,
	datae => \u1|ALT_INV_sig_arr[2][3]~q\,
	dataf => \u1|ALT_INV_temp_max~6_combout\,
	combout => \u1|temp_max~17_combout\);

-- Location: FF_X62_Y5_N14
\u1|u_arr[0][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~17_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][3]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N9
\u1|temp_max~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~14_combout\ = ( \u1|sig_arr[2][4]~q\ & ( \u1|temp_max~1_combout\ ) ) # ( !\u1|sig_arr[2][4]~q\ & ( \u1|temp_max~1_combout\ & ( (!\u1|LessThan3~8_combout\ & (!\u1|LessThan3~7_combout\ & ((!\u1|LessThan3~6_combout\) # 
-- (\u1|LessThan3~4_combout\)))) ) ) ) # ( \u1|sig_arr[2][4]~q\ & ( !\u1|temp_max~1_combout\ & ( (((\u1|LessThan3~6_combout\ & !\u1|LessThan3~4_combout\)) # (\u1|LessThan3~7_combout\)) # (\u1|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011111111111110110000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan3~6_combout\,
	datab => \u1|ALT_INV_LessThan3~4_combout\,
	datac => \u1|ALT_INV_LessThan3~8_combout\,
	datad => \u1|ALT_INV_LessThan3~7_combout\,
	datae => \u1|ALT_INV_sig_arr[2][4]~q\,
	dataf => \u1|ALT_INV_temp_max~1_combout\,
	combout => \u1|temp_max~14_combout\);

-- Location: FF_X62_Y5_N2
\u1|u_arr[0][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~14_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][4]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y6_N6
\u1|temp_max~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~16_combout\ = ( \u1|sig_arr[2][2]~q\ & ( \u1|temp_max~7_combout\ ) ) # ( !\u1|sig_arr[2][2]~q\ & ( \u1|temp_max~7_combout\ & ( (!\u1|LessThan3~8_combout\ & (!\u1|LessThan3~7_combout\ & ((!\u1|LessThan3~6_combout\) # 
-- (\u1|LessThan3~4_combout\)))) ) ) ) # ( \u1|sig_arr[2][2]~q\ & ( !\u1|temp_max~7_combout\ & ( (((!\u1|LessThan3~4_combout\ & \u1|LessThan3~6_combout\)) # (\u1|LessThan3~7_combout\)) # (\u1|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111011111111110100010000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan3~8_combout\,
	datab => \u1|ALT_INV_LessThan3~4_combout\,
	datac => \u1|ALT_INV_LessThan3~6_combout\,
	datad => \u1|ALT_INV_LessThan3~7_combout\,
	datae => \u1|ALT_INV_sig_arr[2][2]~q\,
	dataf => \u1|ALT_INV_temp_max~7_combout\,
	combout => \u1|temp_max~16_combout\);

-- Location: FF_X62_Y5_N5
\u1|u_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~16_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][2]~q\);

-- Location: LABCELL_X63_Y6_N3
\u1|temp_max~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~13_combout\ = ( \u1|sig_arr[2][0]~q\ & ( \u1|temp_max~0_combout\ ) ) # ( !\u1|sig_arr[2][0]~q\ & ( \u1|temp_max~0_combout\ & ( (!\u1|LessThan3~8_combout\ & (!\u1|LessThan3~7_combout\ & ((!\u1|LessThan3~6_combout\) # 
-- (\u1|LessThan3~4_combout\)))) ) ) ) # ( \u1|sig_arr[2][0]~q\ & ( !\u1|temp_max~0_combout\ & ( (((\u1|LessThan3~6_combout\ & !\u1|LessThan3~4_combout\)) # (\u1|LessThan3~7_combout\)) # (\u1|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011111111111110110000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan3~6_combout\,
	datab => \u1|ALT_INV_LessThan3~4_combout\,
	datac => \u1|ALT_INV_LessThan3~8_combout\,
	datad => \u1|ALT_INV_LessThan3~7_combout\,
	datae => \u1|ALT_INV_sig_arr[2][0]~q\,
	dataf => \u1|ALT_INV_temp_max~0_combout\,
	combout => \u1|temp_max~13_combout\);

-- Location: LABCELL_X63_Y5_N18
\u1|u_arr[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u_arr[0][0]~feeder_combout\ = ( \u1|temp_max~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_temp_max~13_combout\,
	combout => \u1|u_arr[0][0]~feeder_combout\);

-- Location: FF_X63_Y5_N19
\u1|u_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|u_arr[0][0]~feeder_combout\,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][0]~q\);

-- Location: LABCELL_X62_Y5_N3
\u1|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan5~0_combout\ = ( \u1|u_arr[0][2]~q\ & ( \u1|u_arr[0][0]~q\ & ( \u1|u_arr[0][4]~DUPLICATE_q\ ) ) ) # ( !\u1|u_arr[0][2]~q\ & ( \u1|u_arr[0][0]~q\ & ( \u1|u_arr[0][4]~DUPLICATE_q\ ) ) ) # ( \u1|u_arr[0][2]~q\ & ( !\u1|u_arr[0][0]~q\ & ( 
-- \u1|u_arr[0][4]~DUPLICATE_q\ ) ) ) # ( !\u1|u_arr[0][2]~q\ & ( !\u1|u_arr[0][0]~q\ & ( (\u1|u_arr[0][4]~DUPLICATE_q\ & ((\u1|u_arr[0][3]~DUPLICATE_q\) # (\u1|u_arr[0][1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_u_arr[0][1]~DUPLICATE_q\,
	datac => \u1|ALT_INV_u_arr[0][3]~DUPLICATE_q\,
	datad => \u1|ALT_INV_u_arr[0][4]~DUPLICATE_q\,
	datae => \u1|ALT_INV_u_arr[0][2]~q\,
	dataf => \u1|ALT_INV_u_arr[0][0]~q\,
	combout => \u1|LessThan5~0_combout\);

-- Location: LABCELL_X62_Y6_N9
\u1|temp_max~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~19_combout\ = ( \u1|sig_arr[2][10]~q\ & ( \u1|temp_max~11_combout\ ) ) # ( !\u1|sig_arr[2][10]~q\ & ( \u1|temp_max~11_combout\ & ( (!\u1|LessThan3~8_combout\ & (!\u1|LessThan3~7_combout\ & ((!\u1|LessThan3~6_combout\) # 
-- (\u1|LessThan3~4_combout\)))) ) ) ) # ( \u1|sig_arr[2][10]~q\ & ( !\u1|temp_max~11_combout\ & ( (((!\u1|LessThan3~4_combout\ & \u1|LessThan3~6_combout\)) # (\u1|LessThan3~7_combout\)) # (\u1|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111111101111110100000001000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan3~8_combout\,
	datab => \u1|ALT_INV_LessThan3~4_combout\,
	datac => \u1|ALT_INV_LessThan3~7_combout\,
	datad => \u1|ALT_INV_LessThan3~6_combout\,
	datae => \u1|ALT_INV_sig_arr[2][10]~q\,
	dataf => \u1|ALT_INV_temp_max~11_combout\,
	combout => \u1|temp_max~19_combout\);

-- Location: FF_X62_Y5_N23
\u1|u_arr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~19_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][10]~q\);

-- Location: FF_X63_Y6_N37
\u1|sig_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l1|l_out\(7),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_arr[2][7]~q\);

-- Location: LABCELL_X63_Y6_N6
\u1|temp_max~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~22_combout\ = ( \u1|sig_arr[2][7]~q\ & ( \u1|temp_max~2_combout\ ) ) # ( !\u1|sig_arr[2][7]~q\ & ( \u1|temp_max~2_combout\ & ( (!\u1|LessThan3~7_combout\ & (!\u1|LessThan3~8_combout\ & ((!\u1|LessThan3~6_combout\) # 
-- (\u1|LessThan3~4_combout\)))) ) ) ) # ( \u1|sig_arr[2][7]~q\ & ( !\u1|temp_max~2_combout\ & ( (((\u1|LessThan3~6_combout\ & !\u1|LessThan3~4_combout\)) # (\u1|LessThan3~8_combout\)) # (\u1|LessThan3~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011111111111110110000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan3~6_combout\,
	datab => \u1|ALT_INV_LessThan3~4_combout\,
	datac => \u1|ALT_INV_LessThan3~7_combout\,
	datad => \u1|ALT_INV_LessThan3~8_combout\,
	datae => \u1|ALT_INV_sig_arr[2][7]~q\,
	dataf => \u1|ALT_INV_temp_max~2_combout\,
	combout => \u1|temp_max~22_combout\);

-- Location: FF_X62_Y5_N8
\u1|u_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~22_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][7]~q\);

-- Location: LABCELL_X62_Y6_N3
\u1|temp_max~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~25_combout\ = ( \u1|LessThan3~5_combout\ & ( ((\u1|temp_max~8_combout\ & !\u1|LessThan3~7_combout\)) # (\u1|sig_arr[2][9]~q\) ) ) # ( !\u1|LessThan3~5_combout\ & ( (!\u1|LessThan3~7_combout\ & ((\u1|temp_max~8_combout\))) # 
-- (\u1|LessThan3~7_combout\ & (\u1|sig_arr[2][9]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010101110111010101010111011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_sig_arr[2][9]~q\,
	datab => \u1|ALT_INV_temp_max~8_combout\,
	datad => \u1|ALT_INV_LessThan3~7_combout\,
	dataf => \u1|ALT_INV_LessThan3~5_combout\,
	combout => \u1|temp_max~25_combout\);

-- Location: FF_X62_Y5_N50
\u1|u_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~25_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][9]~q\);

-- Location: LABCELL_X63_Y6_N24
\u1|temp_max~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~20_combout\ = ( \u1|sig_arr[2][5]~q\ & ( \u1|temp_max~4_combout\ ) ) # ( !\u1|sig_arr[2][5]~q\ & ( \u1|temp_max~4_combout\ & ( (!\u1|LessThan3~7_combout\ & (!\u1|LessThan3~8_combout\ & ((!\u1|LessThan3~6_combout\) # 
-- (\u1|LessThan3~4_combout\)))) ) ) ) # ( \u1|sig_arr[2][5]~q\ & ( !\u1|temp_max~4_combout\ & ( (((\u1|LessThan3~6_combout\ & !\u1|LessThan3~4_combout\)) # (\u1|LessThan3~8_combout\)) # (\u1|LessThan3~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011111111111110110000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan3~6_combout\,
	datab => \u1|ALT_INV_LessThan3~4_combout\,
	datac => \u1|ALT_INV_LessThan3~7_combout\,
	datad => \u1|ALT_INV_LessThan3~8_combout\,
	datae => \u1|ALT_INV_sig_arr[2][5]~q\,
	dataf => \u1|ALT_INV_temp_max~4_combout\,
	combout => \u1|temp_max~20_combout\);

-- Location: FF_X62_Y5_N17
\u1|u_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~20_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][5]~q\);

-- Location: LABCELL_X63_Y6_N27
\u1|temp_max~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~21_combout\ = ( \u1|sig_arr[2][6]~q\ & ( \u1|temp_max~3_combout\ ) ) # ( !\u1|sig_arr[2][6]~q\ & ( \u1|temp_max~3_combout\ & ( (!\u1|LessThan3~8_combout\ & (!\u1|LessThan3~7_combout\ & ((!\u1|LessThan3~6_combout\) # 
-- (\u1|LessThan3~4_combout\)))) ) ) ) # ( \u1|sig_arr[2][6]~q\ & ( !\u1|temp_max~3_combout\ & ( (((\u1|LessThan3~6_combout\ & !\u1|LessThan3~4_combout\)) # (\u1|LessThan3~7_combout\)) # (\u1|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011111111111110110000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan3~6_combout\,
	datab => \u1|ALT_INV_LessThan3~4_combout\,
	datac => \u1|ALT_INV_LessThan3~8_combout\,
	datad => \u1|ALT_INV_LessThan3~7_combout\,
	datae => \u1|ALT_INV_sig_arr[2][6]~q\,
	dataf => \u1|ALT_INV_temp_max~3_combout\,
	combout => \u1|temp_max~21_combout\);

-- Location: FF_X62_Y5_N55
\u1|u_arr[0][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~21_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][6]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y6_N36
\u1|temp_max~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~18_combout\ = ( \u1|sig_arr[2][11]~q\ & ( \u1|temp_max~10_combout\ ) ) # ( !\u1|sig_arr[2][11]~q\ & ( \u1|temp_max~10_combout\ & ( (!\u1|LessThan3~8_combout\ & (!\u1|LessThan3~7_combout\ & ((!\u1|LessThan3~6_combout\) # 
-- (\u1|LessThan3~4_combout\)))) ) ) ) # ( \u1|sig_arr[2][11]~q\ & ( !\u1|temp_max~10_combout\ & ( (((!\u1|LessThan3~4_combout\ & \u1|LessThan3~6_combout\)) # (\u1|LessThan3~7_combout\)) # (\u1|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111011111111110100010000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan3~8_combout\,
	datab => \u1|ALT_INV_LessThan3~4_combout\,
	datac => \u1|ALT_INV_LessThan3~6_combout\,
	datad => \u1|ALT_INV_LessThan3~7_combout\,
	datae => \u1|ALT_INV_sig_arr[2][11]~q\,
	dataf => \u1|ALT_INV_temp_max~10_combout\,
	combout => \u1|temp_max~18_combout\);

-- Location: MLABCELL_X65_Y5_N48
\u1|u_arr[0][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u_arr[0][11]~feeder_combout\ = ( \u1|temp_max~18_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_temp_max~18_combout\,
	combout => \u1|u_arr[0][11]~feeder_combout\);

-- Location: FF_X65_Y5_N49
\u1|u_arr[0][11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|u_arr[0][11]~feeder_combout\,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][11]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y5_N18
\u1|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan5~1_combout\ = ( !\u1|u_arr[0][6]~DUPLICATE_q\ & ( !\u1|u_arr[0][11]~DUPLICATE_q\ & ( (!\u1|u_arr[0][10]~q\ & (!\u1|u_arr[0][7]~q\ & (!\u1|u_arr[0][9]~q\ & !\u1|u_arr[0][5]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_u_arr[0][10]~q\,
	datab => \u1|ALT_INV_u_arr[0][7]~q\,
	datac => \u1|ALT_INV_u_arr[0][9]~q\,
	datad => \u1|ALT_INV_u_arr[0][5]~q\,
	datae => \u1|ALT_INV_u_arr[0][6]~DUPLICATE_q\,
	dataf => \u1|ALT_INV_u_arr[0][11]~DUPLICATE_q\,
	combout => \u1|LessThan5~1_combout\);

-- Location: FF_X62_Y5_N13
\u1|u_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~17_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][3]~q\);

-- Location: FF_X62_Y5_N26
\u1|u_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~17_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][3]~q\);

-- Location: LABCELL_X62_Y6_N39
\u1|temp_max~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~24_combout\ = ( \u1|sig_arr[2][8]~q\ & ( \u1|temp_max~12_combout\ ) ) # ( !\u1|sig_arr[2][8]~q\ & ( \u1|temp_max~12_combout\ & ( (!\u1|LessThan3~8_combout\ & (!\u1|LessThan3~7_combout\ & ((!\u1|LessThan3~6_combout\) # 
-- (\u1|LessThan3~4_combout\)))) ) ) ) # ( \u1|sig_arr[2][8]~q\ & ( !\u1|temp_max~12_combout\ & ( (((!\u1|LessThan3~4_combout\ & \u1|LessThan3~6_combout\)) # (\u1|LessThan3~7_combout\)) # (\u1|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111111101111110100000001000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan3~8_combout\,
	datab => \u1|ALT_INV_LessThan3~4_combout\,
	datac => \u1|ALT_INV_LessThan3~7_combout\,
	datad => \u1|ALT_INV_LessThan3~6_combout\,
	datae => \u1|ALT_INV_sig_arr[2][8]~q\,
	dataf => \u1|ALT_INV_temp_max~12_combout\,
	combout => \u1|temp_max~24_combout\);

-- Location: FF_X63_Y5_N38
\u1|u_arr[0][8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~24_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][8]~DUPLICATE_q\);

-- Location: FF_X65_Y5_N50
\u1|u_arr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|u_arr[0][11]~feeder_combout\,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][11]~q\);

-- Location: LABCELL_X62_Y6_N42
\u1|temp_max~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_max~23_combout\ = ( \u1|sig_arr[2][12]~q\ & ( \u1|temp_max~9_combout\ ) ) # ( !\u1|sig_arr[2][12]~q\ & ( \u1|temp_max~9_combout\ & ( (!\u1|LessThan3~8_combout\ & (!\u1|LessThan3~7_combout\ & ((!\u1|LessThan3~6_combout\) # 
-- (\u1|LessThan3~4_combout\)))) ) ) ) # ( \u1|sig_arr[2][12]~q\ & ( !\u1|temp_max~9_combout\ & ( (((\u1|LessThan3~6_combout\ & !\u1|LessThan3~4_combout\)) # (\u1|LessThan3~7_combout\)) # (\u1|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011111111111110110000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan3~6_combout\,
	datab => \u1|ALT_INV_LessThan3~4_combout\,
	datac => \u1|ALT_INV_LessThan3~8_combout\,
	datad => \u1|ALT_INV_LessThan3~7_combout\,
	datae => \u1|ALT_INV_sig_arr[2][12]~q\,
	dataf => \u1|ALT_INV_temp_max~9_combout\,
	combout => \u1|temp_max~23_combout\);

-- Location: FF_X65_Y5_N41
\u1|u_arr[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~23_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][12]~q\);

-- Location: LABCELL_X62_Y5_N15
\u1|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan5~2_combout\ = ( \u1|u_arr[0][11]~q\ & ( \u1|u_arr[0][12]~q\ ) ) # ( !\u1|u_arr[0][11]~q\ & ( \u1|u_arr[0][12]~q\ & ( ((\u1|u_arr[0][9]~q\) # (\u1|u_arr[0][8]~DUPLICATE_q\)) # (\u1|u_arr[0][10]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_u_arr[0][10]~q\,
	datac => \u1|ALT_INV_u_arr[0][8]~DUPLICATE_q\,
	datad => \u1|ALT_INV_u_arr[0][9]~q\,
	datae => \u1|ALT_INV_u_arr[0][11]~q\,
	dataf => \u1|ALT_INV_u_arr[0][12]~q\,
	combout => \u1|LessThan5~2_combout\);

-- Location: LABCELL_X62_Y5_N24
\u1|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~0_combout\ = ( \u1|LessThan5~2_combout\ & ( !\u1|u_arr[1][3]~q\ $ ((((!\u1|LessThan5~1_combout\) # (!\u1|u_arr[0][3]~q\)) # (\u1|LessThan5~0_combout\))) ) ) # ( !\u1|LessThan5~2_combout\ & ( !\u1|u_arr[0][3]~q\ $ (!\u1|u_arr[1][3]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000010111111010000001011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~0_combout\,
	datab => \u1|ALT_INV_LessThan5~1_combout\,
	datac => \u1|ALT_INV_u_arr[0][3]~q\,
	datad => \u1|ALT_INV_u_arr[1][3]~q\,
	dataf => \u1|ALT_INV_LessThan5~2_combout\,
	combout => \u1|LessThan6~0_combout\);

-- Location: FF_X62_Y5_N10
\u1|u_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~15_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][1]~q\);

-- Location: FF_X62_Y5_N47
\u1|u_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~16_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][2]~q\);

-- Location: LABCELL_X62_Y5_N45
\u1|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~1_combout\ = ( \u1|u_arr[1][2]~q\ & ( \u1|LessThan5~2_combout\ & ( ((!\u1|u_arr[0][2]~q\) # (!\u1|LessThan5~1_combout\)) # (\u1|LessThan5~0_combout\) ) ) ) # ( !\u1|u_arr[1][2]~q\ & ( \u1|LessThan5~2_combout\ & ( (!\u1|LessThan5~0_combout\ & 
-- (\u1|u_arr[0][2]~q\ & \u1|LessThan5~1_combout\)) ) ) ) # ( \u1|u_arr[1][2]~q\ & ( !\u1|LessThan5~2_combout\ & ( !\u1|u_arr[0][2]~q\ ) ) ) # ( !\u1|u_arr[1][2]~q\ & ( !\u1|LessThan5~2_combout\ & ( \u1|u_arr[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000010101111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~0_combout\,
	datac => \u1|ALT_INV_u_arr[0][2]~q\,
	datad => \u1|ALT_INV_LessThan5~1_combout\,
	datae => \u1|ALT_INV_u_arr[1][2]~q\,
	dataf => \u1|ALT_INV_LessThan5~2_combout\,
	combout => \u1|LessThan6~1_combout\);

-- Location: FF_X63_Y5_N20
\u1|u_arr[0][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|u_arr[0][0]~feeder_combout\,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][0]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y6_N12
\u1|u_arr[1][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u_arr[1][0]~feeder_combout\ = ( \u1|temp_max~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_temp_max~13_combout\,
	combout => \u1|u_arr[1][0]~feeder_combout\);

-- Location: FF_X64_Y6_N14
\u1|u_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|u_arr[1][0]~feeder_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][0]~q\);

-- Location: LABCELL_X63_Y5_N3
\u1|LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~2_combout\ = ( \u1|LessThan5~2_combout\ & ( (!\u1|u_arr[1][0]~q\ & (((!\u1|LessThan5~1_combout\) # (\u1|LessThan5~0_combout\)) # (\u1|u_arr[0][0]~DUPLICATE_q\))) ) ) # ( !\u1|LessThan5~2_combout\ & ( (\u1|u_arr[0][0]~DUPLICATE_q\ & 
-- !\u1|u_arr[1][0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011011111000000001101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_u_arr[0][0]~DUPLICATE_q\,
	datab => \u1|ALT_INV_LessThan5~1_combout\,
	datac => \u1|ALT_INV_LessThan5~0_combout\,
	datad => \u1|ALT_INV_u_arr[1][0]~q\,
	dataf => \u1|ALT_INV_LessThan5~2_combout\,
	combout => \u1|LessThan6~2_combout\);

-- Location: LABCELL_X62_Y5_N39
\u1|LessThan5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan5~3_combout\ = ( \u1|LessThan5~1_combout\ & ( (!\u1|LessThan5~2_combout\) # (!\u1|LessThan5~0_combout\) ) ) # ( !\u1|LessThan5~1_combout\ & ( !\u1|LessThan5~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_LessThan5~2_combout\,
	datad => \u1|ALT_INV_LessThan5~0_combout\,
	dataf => \u1|ALT_INV_LessThan5~1_combout\,
	combout => \u1|LessThan5~3_combout\);

-- Location: LABCELL_X63_Y5_N57
\u1|LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~3_combout\ = ( \u1|LessThan6~2_combout\ & ( \u1|LessThan5~3_combout\ & ( (!\u1|LessThan6~0_combout\ & (!\u1|LessThan6~1_combout\ & ((!\u1|u_arr[1][1]~q\) # (\u1|u_arr[0][1]~q\)))) ) ) ) # ( !\u1|LessThan6~2_combout\ & ( 
-- \u1|LessThan5~3_combout\ & ( (!\u1|u_arr[1][1]~q\ & (!\u1|LessThan6~0_combout\ & (\u1|u_arr[0][1]~q\ & !\u1|LessThan6~1_combout\))) ) ) ) # ( \u1|LessThan6~2_combout\ & ( !\u1|LessThan5~3_combout\ & ( (!\u1|u_arr[1][1]~q\ & (!\u1|LessThan6~0_combout\ & 
-- !\u1|LessThan6~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000000000000001000000000001000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_u_arr[1][1]~q\,
	datab => \u1|ALT_INV_LessThan6~0_combout\,
	datac => \u1|ALT_INV_u_arr[0][1]~q\,
	datad => \u1|ALT_INV_LessThan6~1_combout\,
	datae => \u1|ALT_INV_LessThan6~2_combout\,
	dataf => \u1|ALT_INV_LessThan5~3_combout\,
	combout => \u1|LessThan6~3_combout\);

-- Location: FF_X63_Y5_N32
\u1|u_arr[1][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~22_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][7]~DUPLICATE_q\);

-- Location: FF_X65_Y5_N8
\u1|u_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~25_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][9]~q\);

-- Location: FF_X62_Y5_N49
\u1|u_arr[0][9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~25_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][9]~DUPLICATE_q\);

-- Location: FF_X63_Y5_N53
\u1|u_arr[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~18_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][11]~q\);

-- Location: FF_X65_Y5_N20
\u1|u_arr[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~19_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][10]~q\);

-- Location: FF_X65_Y5_N29
\u1|u_arr[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~23_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][12]~q\);

-- Location: MLABCELL_X65_Y5_N21
\u1|LessThan6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~9_combout\ = ( \u1|u_arr[1][12]~q\ & ( \u1|u_arr[0][10]~q\ & ( (!\u1|u_arr[1][11]~q\ & (\u1|u_arr[0][12]~q\ & !\u1|u_arr[1][10]~q\)) ) ) ) # ( !\u1|u_arr[1][12]~q\ & ( \u1|u_arr[0][10]~q\ & ( (!\u1|u_arr[0][12]~q\ & (\u1|u_arr[1][10]~q\ & 
-- (!\u1|u_arr[0][11]~q\ $ (\u1|u_arr[1][11]~q\)))) ) ) ) # ( \u1|u_arr[1][12]~q\ & ( !\u1|u_arr[0][10]~q\ & ( (!\u1|u_arr[1][11]~q\ & (\u1|u_arr[0][12]~q\ & !\u1|u_arr[1][10]~q\)) ) ) ) # ( !\u1|u_arr[1][12]~q\ & ( !\u1|u_arr[0][10]~q\ & ( 
-- (!\u1|u_arr[0][12]~q\ & (!\u1|u_arr[1][10]~q\ & (!\u1|u_arr[0][11]~q\ $ (\u1|u_arr[1][11]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000011000000000000000000100100000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_u_arr[0][11]~q\,
	datab => \u1|ALT_INV_u_arr[1][11]~q\,
	datac => \u1|ALT_INV_u_arr[0][12]~q\,
	datad => \u1|ALT_INV_u_arr[1][10]~q\,
	datae => \u1|ALT_INV_u_arr[1][12]~q\,
	dataf => \u1|ALT_INV_u_arr[0][10]~q\,
	combout => \u1|LessThan6~9_combout\);

-- Location: MLABCELL_X65_Y5_N24
\u1|LessThan6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~10_combout\ = ( \u1|LessThan6~9_combout\ & ( !\u1|u_arr[1][9]~q\ $ (((\u1|u_arr[0][9]~DUPLICATE_q\ & !\u1|u_arr[0][12]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000011110011001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_u_arr[1][9]~q\,
	datac => \u1|ALT_INV_u_arr[0][9]~DUPLICATE_q\,
	datad => \u1|ALT_INV_u_arr[0][12]~q\,
	dataf => \u1|ALT_INV_LessThan6~9_combout\,
	combout => \u1|LessThan6~10_combout\);

-- Location: FF_X63_Y5_N37
\u1|u_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~24_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][8]~q\);

-- Location: FF_X63_Y5_N44
\u1|u_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~24_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][8]~q\);

-- Location: LABCELL_X63_Y5_N42
\u1|LessThan6~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~11_combout\ = ( \u1|u_arr[1][8]~q\ & ( \u1|LessThan5~3_combout\ & ( (\u1|LessThan6~10_combout\ & (\u1|u_arr[0][8]~q\ & (!\u1|u_arr[0][7]~q\ $ (\u1|u_arr[1][7]~DUPLICATE_q\)))) ) ) ) # ( !\u1|u_arr[1][8]~q\ & ( \u1|LessThan5~3_combout\ & ( 
-- (\u1|LessThan6~10_combout\ & (!\u1|u_arr[0][8]~q\ & (!\u1|u_arr[0][7]~q\ $ (\u1|u_arr[1][7]~DUPLICATE_q\)))) ) ) ) # ( \u1|u_arr[1][8]~q\ & ( !\u1|LessThan5~3_combout\ & ( (!\u1|u_arr[1][7]~DUPLICATE_q\ & \u1|LessThan6~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_u_arr[0][7]~q\,
	datab => \u1|ALT_INV_u_arr[1][7]~DUPLICATE_q\,
	datac => \u1|ALT_INV_LessThan6~10_combout\,
	datad => \u1|ALT_INV_u_arr[0][8]~q\,
	datae => \u1|ALT_INV_u_arr[1][8]~q\,
	dataf => \u1|ALT_INV_LessThan5~3_combout\,
	combout => \u1|LessThan6~11_combout\);

-- Location: FF_X62_Y5_N56
\u1|u_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~21_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][6]~q\);

-- Location: FF_X64_Y5_N37
\u1|u_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~20_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][5]~q\);

-- Location: FF_X63_Y5_N47
\u1|u_arr[1][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~21_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][6]~DUPLICATE_q\);

-- Location: FF_X62_Y5_N1
\u1|u_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~14_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[0][4]~q\);

-- Location: FF_X62_Y5_N29
\u1|u_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~14_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][4]~q\);

-- Location: LABCELL_X62_Y5_N27
\u1|LessThan6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~5_combout\ = ( \u1|LessThan5~2_combout\ & ( !\u1|u_arr[1][4]~q\ $ (((!\u1|LessThan5~0_combout\ & (\u1|LessThan5~1_combout\ & !\u1|u_arr[0][4]~q\)))) ) ) # ( !\u1|LessThan5~2_combout\ & ( !\u1|u_arr[0][4]~q\ $ (!\u1|u_arr[1][4]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011011111001000001101111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~0_combout\,
	datab => \u1|ALT_INV_LessThan5~1_combout\,
	datac => \u1|ALT_INV_u_arr[0][4]~q\,
	datad => \u1|ALT_INV_u_arr[1][4]~q\,
	dataf => \u1|ALT_INV_LessThan5~2_combout\,
	combout => \u1|LessThan6~5_combout\);

-- Location: LABCELL_X62_Y5_N51
\u1|LessThan6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~6_combout\ = ( !\u1|LessThan6~5_combout\ & ( \u1|LessThan5~3_combout\ & ( (!\u1|u_arr[0][6]~q\ & (!\u1|u_arr[1][6]~DUPLICATE_q\ & (!\u1|u_arr[1][5]~q\ $ (\u1|u_arr[0][5]~q\)))) # (\u1|u_arr[0][6]~q\ & (\u1|u_arr[1][6]~DUPLICATE_q\ & 
-- (!\u1|u_arr[1][5]~q\ $ (\u1|u_arr[0][5]~q\)))) ) ) ) # ( !\u1|LessThan6~5_combout\ & ( !\u1|LessThan5~3_combout\ & ( (!\u1|u_arr[1][5]~q\ & !\u1|u_arr[1][6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000010000010010000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_u_arr[0][6]~q\,
	datab => \u1|ALT_INV_u_arr[1][5]~q\,
	datac => \u1|ALT_INV_u_arr[0][5]~q\,
	datad => \u1|ALT_INV_u_arr[1][6]~DUPLICATE_q\,
	datae => \u1|ALT_INV_LessThan6~5_combout\,
	dataf => \u1|ALT_INV_LessThan5~3_combout\,
	combout => \u1|LessThan6~6_combout\);

-- Location: LABCELL_X62_Y5_N6
\u1|LessThan6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~7_combout\ = ( \u1|LessThan5~0_combout\ & ( \u1|LessThan5~2_combout\ & ( !\u1|u_arr[1][4]~q\ ) ) ) # ( !\u1|LessThan5~0_combout\ & ( \u1|LessThan5~2_combout\ & ( (!\u1|u_arr[1][4]~q\ & ((!\u1|LessThan5~1_combout\) # (\u1|u_arr[0][4]~q\))) ) 
-- ) ) # ( \u1|LessThan5~0_combout\ & ( !\u1|LessThan5~2_combout\ & ( (!\u1|u_arr[1][4]~q\ & \u1|u_arr[0][4]~q\) ) ) ) # ( !\u1|LessThan5~0_combout\ & ( !\u1|LessThan5~2_combout\ & ( (!\u1|u_arr[1][4]~q\ & \u1|u_arr[0][4]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010100000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_u_arr[1][4]~q\,
	datac => \u1|ALT_INV_LessThan5~1_combout\,
	datad => \u1|ALT_INV_u_arr[0][4]~q\,
	datae => \u1|ALT_INV_LessThan5~0_combout\,
	dataf => \u1|ALT_INV_LessThan5~2_combout\,
	combout => \u1|LessThan6~7_combout\);

-- Location: LABCELL_X62_Y5_N57
\u1|LessThan6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~8_combout\ = ( \u1|LessThan6~7_combout\ & ( \u1|LessThan5~3_combout\ & ( (!\u1|u_arr[0][6]~q\ & (!\u1|u_arr[1][6]~DUPLICATE_q\ & ((!\u1|u_arr[1][5]~q\) # (\u1|u_arr[0][5]~q\)))) # (\u1|u_arr[0][6]~q\ & ((!\u1|u_arr[1][5]~q\) # 
-- ((!\u1|u_arr[1][6]~DUPLICATE_q\) # (\u1|u_arr[0][5]~q\)))) ) ) ) # ( !\u1|LessThan6~7_combout\ & ( \u1|LessThan5~3_combout\ & ( (!\u1|u_arr[0][6]~q\ & (!\u1|u_arr[1][5]~q\ & (\u1|u_arr[0][5]~q\ & !\u1|u_arr[1][6]~DUPLICATE_q\))) # (\u1|u_arr[0][6]~q\ & 
-- ((!\u1|u_arr[1][6]~DUPLICATE_q\) # ((!\u1|u_arr[1][5]~q\ & \u1|u_arr[0][5]~q\)))) ) ) ) # ( \u1|LessThan6~7_combout\ & ( !\u1|LessThan5~3_combout\ & ( (!\u1|u_arr[1][5]~q\ & !\u1|u_arr[1][6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000001011101000001001101111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_u_arr[0][6]~q\,
	datab => \u1|ALT_INV_u_arr[1][5]~q\,
	datac => \u1|ALT_INV_u_arr[0][5]~q\,
	datad => \u1|ALT_INV_u_arr[1][6]~DUPLICATE_q\,
	datae => \u1|ALT_INV_LessThan6~7_combout\,
	dataf => \u1|ALT_INV_LessThan5~3_combout\,
	combout => \u1|LessThan6~8_combout\);

-- Location: LABCELL_X62_Y5_N33
\u1|LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~4_combout\ = ( \u1|LessThan5~3_combout\ & ( (!\u1|u_arr[1][3]~q\ & (((\u1|u_arr[0][2]~q\ & !\u1|u_arr[1][2]~q\)) # (\u1|u_arr[0][3]~DUPLICATE_q\))) # (\u1|u_arr[1][3]~q\ & (\u1|u_arr[0][3]~DUPLICATE_q\ & (\u1|u_arr[0][2]~q\ & 
-- !\u1|u_arr[1][2]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101011001000100010101100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_u_arr[1][3]~q\,
	datab => \u1|ALT_INV_u_arr[0][3]~DUPLICATE_q\,
	datac => \u1|ALT_INV_u_arr[0][2]~q\,
	datad => \u1|ALT_INV_u_arr[1][2]~q\,
	dataf => \u1|ALT_INV_LessThan5~3_combout\,
	combout => \u1|LessThan6~4_combout\);

-- Location: LABCELL_X63_Y5_N33
\u1|LessThan6~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~12_combout\ = ( \u1|LessThan5~1_combout\ & ( \u1|LessThan5~2_combout\ & ( (!\u1|u_arr[1][7]~DUPLICATE_q\ & (!\u1|LessThan5~0_combout\ & \u1|u_arr[0][7]~q\)) ) ) ) # ( \u1|LessThan5~1_combout\ & ( !\u1|LessThan5~2_combout\ & ( 
-- (!\u1|u_arr[1][7]~DUPLICATE_q\ & \u1|u_arr[0][7]~q\) ) ) ) # ( !\u1|LessThan5~1_combout\ & ( !\u1|LessThan5~2_combout\ & ( (!\u1|u_arr[1][7]~DUPLICATE_q\ & \u1|u_arr[0][7]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_u_arr[1][7]~DUPLICATE_q\,
	datac => \u1|ALT_INV_LessThan5~0_combout\,
	datad => \u1|ALT_INV_u_arr[0][7]~q\,
	datae => \u1|ALT_INV_LessThan5~1_combout\,
	dataf => \u1|ALT_INV_LessThan5~2_combout\,
	combout => \u1|LessThan6~12_combout\);

-- Location: MLABCELL_X65_Y5_N12
\u1|LessThan6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~13_combout\ = ( !\u1|u_arr[1][12]~q\ & ( \u1|u_arr[0][10]~q\ & ( ((!\u1|u_arr[0][11]~q\ & (!\u1|u_arr[1][11]~q\ & !\u1|u_arr[1][10]~q\)) # (\u1|u_arr[0][11]~q\ & ((!\u1|u_arr[1][11]~q\) # (!\u1|u_arr[1][10]~q\)))) # (\u1|u_arr[0][12]~q\) ) ) 
-- ) # ( !\u1|u_arr[1][12]~q\ & ( !\u1|u_arr[0][10]~q\ & ( ((\u1|u_arr[0][11]~q\ & !\u1|u_arr[1][11]~q\)) # (\u1|u_arr[0][12]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111000000000000000011010100111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_u_arr[0][11]~q\,
	datab => \u1|ALT_INV_u_arr[1][11]~q\,
	datac => \u1|ALT_INV_u_arr[1][10]~q\,
	datad => \u1|ALT_INV_u_arr[0][12]~q\,
	datae => \u1|ALT_INV_u_arr[1][12]~q\,
	dataf => \u1|ALT_INV_u_arr[0][10]~q\,
	combout => \u1|LessThan6~13_combout\);

-- Location: MLABCELL_X65_Y5_N9
\u1|LessThan6~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~14_combout\ = ( \u1|LessThan6~9_combout\ & ( !\u1|LessThan6~13_combout\ & ( ((!\u1|u_arr[0][9]~DUPLICATE_q\) # (\u1|u_arr[1][9]~q\)) # (\u1|u_arr[0][12]~q\) ) ) ) # ( !\u1|LessThan6~9_combout\ & ( !\u1|LessThan6~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_u_arr[0][12]~q\,
	datac => \u1|ALT_INV_u_arr[1][9]~q\,
	datad => \u1|ALT_INV_u_arr[0][9]~DUPLICATE_q\,
	datae => \u1|ALT_INV_LessThan6~9_combout\,
	dataf => \u1|ALT_INV_LessThan6~13_combout\,
	combout => \u1|LessThan6~14_combout\);

-- Location: LABCELL_X63_Y5_N39
\u1|LessThan6~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~15_combout\ = ( \u1|LessThan6~14_combout\ & ( \u1|LessThan5~3_combout\ & ( (!\u1|LessThan6~10_combout\) # ((!\u1|u_arr[1][8]~q\ & (!\u1|u_arr[0][8]~q\ & !\u1|LessThan6~12_combout\)) # (\u1|u_arr[1][8]~q\ & ((!\u1|u_arr[0][8]~q\) # 
-- (!\u1|LessThan6~12_combout\)))) ) ) ) # ( \u1|LessThan6~14_combout\ & ( !\u1|LessThan5~3_combout\ & ( (!\u1|LessThan6~10_combout\) # ((\u1|u_arr[1][8]~q\ & !\u1|LessThan6~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110111010101000000000000000001111101110111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan6~10_combout\,
	datab => \u1|ALT_INV_u_arr[1][8]~q\,
	datac => \u1|ALT_INV_u_arr[0][8]~q\,
	datad => \u1|ALT_INV_LessThan6~12_combout\,
	datae => \u1|ALT_INV_LessThan6~14_combout\,
	dataf => \u1|ALT_INV_LessThan5~3_combout\,
	combout => \u1|LessThan6~15_combout\);

-- Location: LABCELL_X63_Y5_N48
\u1|LessThan6~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan6~16_combout\ = ( \u1|LessThan6~4_combout\ & ( \u1|LessThan6~15_combout\ & ( (\u1|LessThan6~11_combout\ & ((\u1|LessThan6~8_combout\) # (\u1|LessThan6~6_combout\))) ) ) ) # ( !\u1|LessThan6~4_combout\ & ( \u1|LessThan6~15_combout\ & ( 
-- (\u1|LessThan6~11_combout\ & (((\u1|LessThan6~3_combout\ & \u1|LessThan6~6_combout\)) # (\u1|LessThan6~8_combout\))) ) ) ) # ( \u1|LessThan6~4_combout\ & ( !\u1|LessThan6~15_combout\ ) ) # ( !\u1|LessThan6~4_combout\ & ( !\u1|LessThan6~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000001001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan6~3_combout\,
	datab => \u1|ALT_INV_LessThan6~11_combout\,
	datac => \u1|ALT_INV_LessThan6~6_combout\,
	datad => \u1|ALT_INV_LessThan6~8_combout\,
	datae => \u1|ALT_INV_LessThan6~4_combout\,
	dataf => \u1|ALT_INV_LessThan6~15_combout\,
	combout => \u1|LessThan6~16_combout\);

-- Location: MLABCELL_X65_Y5_N3
\u1|temp_min~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_min~6_combout\ = ( \u1|u_arr[1][9]~q\ & ( ((!\u1|u_arr[0][12]~q\ & \u1|u_arr[0][9]~DUPLICATE_q\)) # (\u1|LessThan6~16_combout\) ) ) # ( !\u1|u_arr[1][9]~q\ & ( (!\u1|LessThan6~16_combout\ & (!\u1|u_arr[0][12]~q\ & \u1|u_arr[0][9]~DUPLICATE_q\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan6~16_combout\,
	datab => \u1|ALT_INV_u_arr[0][12]~q\,
	datac => \u1|ALT_INV_u_arr[0][9]~DUPLICATE_q\,
	dataf => \u1|ALT_INV_u_arr[1][9]~q\,
	combout => \u1|temp_min~6_combout\);

-- Location: FF_X62_Y6_N5
\u1|u_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_max~25_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[2][9]~q\);

-- Location: FF_X62_Y6_N44
\u1|u_arr[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_max~23_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[2][12]~q\);

-- Location: MLABCELL_X65_Y5_N57
\u1|temp_min~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_min~1_combout\ = ( \u1|LessThan6~16_combout\ & ( \u1|u_arr[1][12]~q\ ) ) # ( !\u1|LessThan6~16_combout\ & ( \u1|u_arr[0][12]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_u_arr[0][12]~q\,
	datad => \u1|ALT_INV_u_arr[1][12]~q\,
	dataf => \u1|ALT_INV_LessThan6~16_combout\,
	combout => \u1|temp_min~1_combout\);

-- Location: FF_X62_Y6_N38
\u1|u_arr[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_max~18_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[2][11]~q\);

-- Location: FF_X62_Y6_N11
\u1|u_arr[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_max~19_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[2][10]~q\);

-- Location: FF_X62_Y6_N41
\u1|u_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_max~24_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[2][8]~q\);

-- Location: FF_X63_Y5_N31
\u1|u_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~22_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][7]~q\);

-- Location: FF_X63_Y6_N8
\u1|u_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_max~22_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[2][7]~q\);

-- Location: FF_X63_Y5_N46
\u1|u_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~21_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][6]~q\);

-- Location: FF_X63_Y6_N29
\u1|u_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_max~21_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[2][6]~q\);

-- Location: FF_X63_Y6_N26
\u1|u_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_max~20_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[2][5]~q\);

-- Location: FF_X63_Y6_N11
\u1|u_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_max~14_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[2][4]~q\);

-- Location: FF_X62_Y6_N47
\u1|u_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_max~17_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[2][3]~q\);

-- Location: FF_X62_Y6_N8
\u1|u_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_max~16_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[2][2]~q\);

-- Location: FF_X63_Y5_N55
\u1|u_arr[1][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~15_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][1]~DUPLICATE_q\);

-- Location: FF_X63_Y6_N2
\u1|u_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_max~15_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[2][1]~q\);

-- Location: FF_X63_Y6_N5
\u1|u_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_max~13_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[2][0]~q\);

-- Location: LABCELL_X64_Y5_N0
\u1|LessThan7~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~66_cout\ = CARRY(( !\u1|u_arr[2][0]~q\ ) + ( (!\u1|LessThan6~16_combout\ & ((!\u1|LessThan5~3_combout\) # ((\u1|u_arr[0][0]~q\)))) # (\u1|LessThan6~16_combout\ & (((\u1|u_arr[1][0]~q\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101000011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[1][0]~q\,
	datad => \u1|ALT_INV_u_arr[2][0]~q\,
	dataf => \u1|ALT_INV_u_arr[0][0]~q\,
	cin => GND,
	cout => \u1|LessThan7~66_cout\);

-- Location: LABCELL_X64_Y5_N3
\u1|LessThan7~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~62_cout\ = CARRY(( !\u1|u_arr[2][1]~q\ ) + ( (!\u1|LessThan6~16_combout\ & (\u1|LessThan5~3_combout\ & ((\u1|u_arr[0][1]~DUPLICATE_q\)))) # (\u1|LessThan6~16_combout\ & (((\u1|u_arr[1][1]~DUPLICATE_q\)))) ) + ( \u1|LessThan7~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001011100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[1][1]~DUPLICATE_q\,
	datad => \u1|ALT_INV_u_arr[2][1]~q\,
	dataf => \u1|ALT_INV_u_arr[0][1]~DUPLICATE_q\,
	cin => \u1|LessThan7~66_cout\,
	cout => \u1|LessThan7~62_cout\);

-- Location: LABCELL_X64_Y5_N6
\u1|LessThan7~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~58_cout\ = CARRY(( (!\u1|LessThan6~16_combout\ & (\u1|LessThan5~3_combout\ & ((\u1|u_arr[0][2]~q\)))) # (\u1|LessThan6~16_combout\ & (((\u1|u_arr[1][2]~q\)))) ) + ( !\u1|u_arr[2][2]~q\ ) + ( \u1|LessThan7~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[1][2]~q\,
	datad => \u1|ALT_INV_u_arr[0][2]~q\,
	dataf => \u1|ALT_INV_u_arr[2][2]~q\,
	cin => \u1|LessThan7~62_cout\,
	cout => \u1|LessThan7~58_cout\);

-- Location: LABCELL_X64_Y5_N9
\u1|LessThan7~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~54_cout\ = CARRY(( !\u1|u_arr[2][3]~q\ ) + ( (!\u1|LessThan6~16_combout\ & (\u1|LessThan5~3_combout\ & ((\u1|u_arr[0][3]~q\)))) # (\u1|LessThan6~16_combout\ & (((\u1|u_arr[1][3]~q\)))) ) + ( \u1|LessThan7~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001011100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[1][3]~q\,
	datad => \u1|ALT_INV_u_arr[2][3]~q\,
	dataf => \u1|ALT_INV_u_arr[0][3]~q\,
	cin => \u1|LessThan7~58_cout\,
	cout => \u1|LessThan7~54_cout\);

-- Location: LABCELL_X64_Y5_N12
\u1|LessThan7~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~50_cout\ = CARRY(( (!\u1|LessThan6~16_combout\ & ((!\u1|LessThan5~3_combout\) # ((\u1|u_arr[0][4]~DUPLICATE_q\)))) # (\u1|LessThan6~16_combout\ & (((\u1|u_arr[1][4]~q\)))) ) + ( !\u1|u_arr[2][4]~q\ ) + ( \u1|LessThan7~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[1][4]~q\,
	datad => \u1|ALT_INV_u_arr[0][4]~DUPLICATE_q\,
	dataf => \u1|ALT_INV_u_arr[2][4]~q\,
	cin => \u1|LessThan7~54_cout\,
	cout => \u1|LessThan7~50_cout\);

-- Location: LABCELL_X64_Y5_N15
\u1|LessThan7~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~46_cout\ = CARRY(( !\u1|u_arr[2][5]~q\ ) + ( (!\u1|LessThan6~16_combout\ & (\u1|LessThan5~3_combout\ & ((\u1|u_arr[0][5]~q\)))) # (\u1|LessThan6~16_combout\ & (((\u1|u_arr[1][5]~q\)))) ) + ( \u1|LessThan7~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001011100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[1][5]~q\,
	datad => \u1|ALT_INV_u_arr[2][5]~q\,
	dataf => \u1|ALT_INV_u_arr[0][5]~q\,
	cin => \u1|LessThan7~50_cout\,
	cout => \u1|LessThan7~46_cout\);

-- Location: LABCELL_X64_Y5_N18
\u1|LessThan7~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~42_cout\ = CARRY(( !\u1|u_arr[2][6]~q\ ) + ( (!\u1|LessThan6~16_combout\ & (\u1|LessThan5~3_combout\ & ((\u1|u_arr[0][6]~q\)))) # (\u1|LessThan6~16_combout\ & (((\u1|u_arr[1][6]~q\)))) ) + ( \u1|LessThan7~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001011100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[1][6]~q\,
	datad => \u1|ALT_INV_u_arr[2][6]~q\,
	dataf => \u1|ALT_INV_u_arr[0][6]~q\,
	cin => \u1|LessThan7~46_cout\,
	cout => \u1|LessThan7~42_cout\);

-- Location: LABCELL_X64_Y5_N21
\u1|LessThan7~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~38_cout\ = CARRY(( (!\u1|LessThan6~16_combout\ & (\u1|LessThan5~3_combout\ & ((\u1|u_arr[0][7]~q\)))) # (\u1|LessThan6~16_combout\ & (((\u1|u_arr[1][7]~q\)))) ) + ( !\u1|u_arr[2][7]~q\ ) + ( \u1|LessThan7~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[1][7]~q\,
	datad => \u1|ALT_INV_u_arr[0][7]~q\,
	dataf => \u1|ALT_INV_u_arr[2][7]~q\,
	cin => \u1|LessThan7~42_cout\,
	cout => \u1|LessThan7~38_cout\);

-- Location: LABCELL_X64_Y5_N24
\u1|LessThan7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~34_cout\ = CARRY(( !\u1|u_arr[2][8]~q\ ) + ( (!\u1|LessThan6~16_combout\ & ((!\u1|LessThan5~3_combout\) # ((\u1|u_arr[0][8]~q\)))) # (\u1|LessThan6~16_combout\ & (((\u1|u_arr[1][8]~q\)))) ) + ( \u1|LessThan7~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101000011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[1][8]~q\,
	datad => \u1|ALT_INV_u_arr[2][8]~q\,
	dataf => \u1|ALT_INV_u_arr[0][8]~q\,
	cin => \u1|LessThan7~38_cout\,
	cout => \u1|LessThan7~34_cout\);

-- Location: LABCELL_X64_Y5_N27
\u1|LessThan7~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~30_cout\ = CARRY(( (!\u1|LessThan6~16_combout\ & (\u1|LessThan5~3_combout\ & ((\u1|u_arr[0][9]~q\)))) # (\u1|LessThan6~16_combout\ & (((\u1|u_arr[1][9]~q\)))) ) + ( !\u1|u_arr[2][9]~q\ ) + ( \u1|LessThan7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[1][9]~q\,
	datad => \u1|ALT_INV_u_arr[0][9]~q\,
	dataf => \u1|ALT_INV_u_arr[2][9]~q\,
	cin => \u1|LessThan7~34_cout\,
	cout => \u1|LessThan7~30_cout\);

-- Location: LABCELL_X64_Y5_N30
\u1|LessThan7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~26_cout\ = CARRY(( !\u1|u_arr[2][10]~q\ ) + ( (!\u1|LessThan6~16_combout\ & (\u1|LessThan5~3_combout\ & ((\u1|u_arr[0][10]~q\)))) # (\u1|LessThan6~16_combout\ & (((\u1|u_arr[1][10]~q\)))) ) + ( \u1|LessThan7~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001011100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[1][10]~q\,
	datad => \u1|ALT_INV_u_arr[2][10]~q\,
	dataf => \u1|ALT_INV_u_arr[0][10]~q\,
	cin => \u1|LessThan7~30_cout\,
	cout => \u1|LessThan7~26_cout\);

-- Location: LABCELL_X64_Y5_N33
\u1|LessThan7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~22_cout\ = CARRY(( !\u1|u_arr[2][11]~q\ ) + ( (!\u1|LessThan6~16_combout\ & (\u1|LessThan5~3_combout\ & ((\u1|u_arr[0][11]~DUPLICATE_q\)))) # (\u1|LessThan6~16_combout\ & (((\u1|u_arr[1][11]~q\)))) ) + ( \u1|LessThan7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001011100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[1][11]~q\,
	datad => \u1|ALT_INV_u_arr[2][11]~q\,
	dataf => \u1|ALT_INV_u_arr[0][11]~DUPLICATE_q\,
	cin => \u1|LessThan7~26_cout\,
	cout => \u1|LessThan7~22_cout\);

-- Location: LABCELL_X64_Y5_N36
\u1|LessThan7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~18_cout\ = CARRY(( \u1|temp_min~1_combout\ ) + ( !\u1|u_arr[2][12]~q\ ) + ( \u1|LessThan7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_u_arr[2][12]~q\,
	datad => \u1|ALT_INV_temp_min~1_combout\,
	cin => \u1|LessThan7~22_cout\,
	cout => \u1|LessThan7~18_cout\);

-- Location: LABCELL_X64_Y5_N39
\u1|LessThan7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~14_cout\ = CARRY(( GND ) + ( VCC ) + ( \u1|LessThan7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u1|LessThan7~18_cout\,
	cout => \u1|LessThan7~14_cout\);

-- Location: LABCELL_X64_Y5_N42
\u1|LessThan7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~10_cout\ = CARRY(( GND ) + ( VCC ) + ( \u1|LessThan7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u1|LessThan7~14_cout\,
	cout => \u1|LessThan7~10_cout\);

-- Location: LABCELL_X64_Y5_N45
\u1|LessThan7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~6_cout\ = CARRY(( GND ) + ( VCC ) + ( \u1|LessThan7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u1|LessThan7~10_cout\,
	cout => \u1|LessThan7~6_cout\);

-- Location: LABCELL_X64_Y5_N48
\u1|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u1|LessThan7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u1|LessThan7~6_cout\,
	sumout => \u1|LessThan7~1_sumout\);

-- Location: FF_X65_Y5_N4
\u1|u_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_min~6_combout\,
	asdata => \u1|u_arr[2][9]~q\,
	sload => \u1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_out\(9));

-- Location: FF_X64_Y4_N35
\l2|sig_arr[2][9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(9),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][9]~DUPLICATE_q\);

-- Location: FF_X66_Y4_N59
\l2|sig_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(9),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][9]~q\);

-- Location: FF_X66_Y4_N32
\l2|sig_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(9),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][9]~q\);

-- Location: LABCELL_X62_Y5_N30
\u1|temp_min~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_min~2_combout\ = ( \u1|LessThan7~1_sumout\ & ( \u1|temp_min~1_combout\ ) ) # ( !\u1|LessThan7~1_sumout\ & ( \u1|u_arr[2][12]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_u_arr[2][12]~q\,
	datad => \u1|ALT_INV_temp_min~1_combout\,
	dataf => \u1|ALT_INV_LessThan7~1_sumout\,
	combout => \u1|temp_min~2_combout\);

-- Location: FF_X62_Y5_N31
\u1|u_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_min~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_out\(12));

-- Location: FF_X64_Y4_N41
\l2|sig_arr[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(12),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][12]~q\);

-- Location: FF_X65_Y5_N19
\u1|u_arr[1][10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|temp_max~19_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][10]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y5_N54
\u1|temp_min~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_min~5_combout\ = ( \u1|u_arr[1][10]~DUPLICATE_q\ & ( ((!\u1|u_arr[0][12]~q\ & \u1|u_arr[0][10]~q\)) # (\u1|LessThan6~16_combout\) ) ) # ( !\u1|u_arr[1][10]~DUPLICATE_q\ & ( (!\u1|LessThan6~16_combout\ & (!\u1|u_arr[0][12]~q\ & 
-- \u1|u_arr[0][10]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan6~16_combout\,
	datab => \u1|ALT_INV_u_arr[0][12]~q\,
	datac => \u1|ALT_INV_u_arr[0][10]~q\,
	dataf => \u1|ALT_INV_u_arr[1][10]~DUPLICATE_q\,
	combout => \u1|temp_min~5_combout\);

-- Location: FF_X65_Y5_N55
\u1|u_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_min~5_combout\,
	asdata => \u1|u_arr[2][10]~q\,
	sload => \u1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_out\(10));

-- Location: FF_X64_Y4_N2
\l2|sig_arr[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(10),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][10]~q\);

-- Location: MLABCELL_X65_Y5_N0
\u1|temp_min~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_min~4_combout\ = ( \u1|u_arr[0][11]~DUPLICATE_q\ & ( (!\u1|LessThan6~16_combout\ & (!\u1|u_arr[0][12]~q\)) # (\u1|LessThan6~16_combout\ & ((\u1|u_arr[1][11]~q\))) ) ) # ( !\u1|u_arr[0][11]~DUPLICATE_q\ & ( (\u1|LessThan6~16_combout\ & 
-- \u1|u_arr[1][11]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan6~16_combout\,
	datab => \u1|ALT_INV_u_arr[0][12]~q\,
	datac => \u1|ALT_INV_u_arr[1][11]~q\,
	dataf => \u1|ALT_INV_u_arr[0][11]~DUPLICATE_q\,
	combout => \u1|temp_min~4_combout\);

-- Location: FF_X65_Y5_N1
\u1|u_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_min~4_combout\,
	asdata => \u1|u_arr[2][11]~q\,
	sload => \u1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_out\(11));

-- Location: FF_X67_Y4_N32
\l2|sig_arr[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(11),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][11]~q\);

-- Location: FF_X66_Y4_N50
\l2|sig_arr[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(12),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][12]~q\);

-- Location: LABCELL_X63_Y5_N6
\u1|temp_min~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_min~3_combout\ = ( \u1|u_arr[1][8]~q\ & ( (!\u1|LessThan5~3_combout\) # ((\u1|u_arr[0][8]~DUPLICATE_q\) # (\u1|LessThan6~16_combout\)) ) ) # ( !\u1|u_arr[1][8]~q\ & ( (!\u1|LessThan6~16_combout\ & ((!\u1|LessThan5~3_combout\) # 
-- (\u1|u_arr[0][8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[0][8]~DUPLICATE_q\,
	dataf => \u1|ALT_INV_u_arr[1][8]~q\,
	combout => \u1|temp_min~3_combout\);

-- Location: FF_X63_Y5_N8
\u1|u_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_min~3_combout\,
	asdata => \u1|u_arr[2][8]~q\,
	sload => \u1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_out\(8));

-- Location: FF_X66_Y4_N14
\l2|sig_arr[0][8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(8),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][8]~DUPLICATE_q\);

-- Location: FF_X66_Y4_N41
\l2|sig_arr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(10),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][10]~q\);

-- Location: FF_X67_Y4_N8
\l2|sig_arr[0][11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(11),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][11]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N48
\u1|temp_min~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_min~8_combout\ = ( \u1|LessThan6~16_combout\ & ( \u1|u_arr[1][1]~q\ ) ) # ( !\u1|LessThan6~16_combout\ & ( (\u1|LessThan5~3_combout\ & \u1|u_arr[0][1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_u_arr[0][1]~DUPLICATE_q\,
	datac => \u1|ALT_INV_u_arr[1][1]~q\,
	dataf => \u1|ALT_INV_LessThan6~16_combout\,
	combout => \u1|temp_min~8_combout\);

-- Location: FF_X63_Y6_N49
\u1|u_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_min~8_combout\,
	asdata => \u1|u_arr[2][1]~q\,
	sload => \u1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_out\(1));

-- Location: FF_X65_Y4_N5
\l2|sig_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(1),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][1]~q\);

-- Location: LABCELL_X63_Y5_N24
\u1|temp_min~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_min~7_combout\ = ( \u1|LessThan6~16_combout\ & ( \u1|u_arr[1][4]~q\ ) ) # ( !\u1|LessThan6~16_combout\ & ( (!\u1|LessThan5~3_combout\) # (\u1|u_arr[0][4]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_u_arr[1][4]~q\,
	datac => \u1|ALT_INV_LessThan5~3_combout\,
	datad => \u1|ALT_INV_u_arr[0][4]~q\,
	dataf => \u1|ALT_INV_LessThan6~16_combout\,
	combout => \u1|temp_min~7_combout\);

-- Location: FF_X63_Y5_N25
\u1|u_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_min~7_combout\,
	asdata => \u1|u_arr[2][4]~q\,
	sload => \u1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_out\(4));

-- Location: FF_X65_Y4_N22
\l2|sig_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(4),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][4]~q\);

-- Location: LABCELL_X64_Y6_N48
\u1|temp_min~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_min~9_combout\ = ( \u1|LessThan6~16_combout\ & ( \u1|u_arr[1][2]~q\ ) ) # ( !\u1|LessThan6~16_combout\ & ( (\u1|LessThan5~3_combout\ & \u1|u_arr[0][2]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_LessThan5~3_combout\,
	datac => \u1|ALT_INV_u_arr[1][2]~q\,
	datad => \u1|ALT_INV_u_arr[0][2]~q\,
	dataf => \u1|ALT_INV_LessThan6~16_combout\,
	combout => \u1|temp_min~9_combout\);

-- Location: FF_X64_Y6_N49
\u1|u_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_min~9_combout\,
	asdata => \u1|u_arr[2][2]~q\,
	sload => \u1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_out\(2));

-- Location: FF_X65_Y4_N2
\l2|sig_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(2),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][2]~q\);

-- Location: LABCELL_X63_Y5_N9
\u1|temp_min~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_min~13_combout\ = ( \u1|u_arr[0][7]~q\ & ( (!\u1|LessThan6~16_combout\ & (\u1|LessThan5~3_combout\)) # (\u1|LessThan6~16_combout\ & ((\u1|u_arr[1][7]~DUPLICATE_q\))) ) ) # ( !\u1|u_arr[0][7]~q\ & ( (\u1|LessThan6~16_combout\ & 
-- \u1|u_arr[1][7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[1][7]~DUPLICATE_q\,
	dataf => \u1|ALT_INV_u_arr[0][7]~q\,
	combout => \u1|temp_min~13_combout\);

-- Location: FF_X63_Y5_N10
\u1|u_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_min~13_combout\,
	asdata => \u1|u_arr[2][7]~q\,
	sload => \u1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_out\(7));

-- Location: FF_X65_Y4_N41
\l2|sig_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(7),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][7]~q\);

-- Location: FF_X64_Y6_N13
\u1|u_arr[1][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|u_arr[1][0]~feeder_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_arr[1][0]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N15
\u1|temp_min~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_min~0_combout\ = ( \u1|u_arr[0][0]~DUPLICATE_q\ & ( (!\u1|LessThan6~16_combout\) # (\u1|u_arr[1][0]~DUPLICATE_q\) ) ) # ( !\u1|u_arr[0][0]~DUPLICATE_q\ & ( (!\u1|LessThan6~16_combout\ & (!\u1|LessThan5~3_combout\)) # (\u1|LessThan6~16_combout\ & 
-- ((\u1|u_arr[1][0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101110001011100010111000101111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[1][0]~DUPLICATE_q\,
	dataf => \u1|ALT_INV_u_arr[0][0]~DUPLICATE_q\,
	combout => \u1|temp_min~0_combout\);

-- Location: FF_X63_Y5_N16
\u1|u_out[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_min~0_combout\,
	asdata => \u1|u_arr[2][0]~q\,
	sload => \u1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_out[0]~DUPLICATE_q\);

-- Location: FF_X65_Y4_N38
\l2|sig_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][0]~q\);

-- Location: LABCELL_X64_Y6_N18
\u1|temp_min~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_min~10_combout\ = ( \u1|LessThan6~16_combout\ & ( \u1|u_arr[1][3]~q\ ) ) # ( !\u1|LessThan6~16_combout\ & ( (\u1|u_arr[0][3]~q\ & \u1|LessThan5~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_u_arr[0][3]~q\,
	datab => \u1|ALT_INV_LessThan5~3_combout\,
	datac => \u1|ALT_INV_u_arr[1][3]~q\,
	dataf => \u1|ALT_INV_LessThan6~16_combout\,
	combout => \u1|temp_min~10_combout\);

-- Location: FF_X64_Y6_N19
\u1|u_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_min~10_combout\,
	asdata => \u1|u_arr[2][3]~q\,
	sload => \u1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_out\(3));

-- Location: FF_X65_Y4_N11
\l2|sig_arr[0][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(3),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][3]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y4_N6
\l2|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan1~1_combout\ = ( \l2|sig_arr[0][0]~q\ & ( \l2|sig_arr[0][3]~DUPLICATE_q\ & ( (!\l2|sig_arr[0][4]~q\ & !\l2|sig_arr[0][7]~q\) ) ) ) # ( !\l2|sig_arr[0][0]~q\ & ( \l2|sig_arr[0][3]~DUPLICATE_q\ & ( (!\l2|sig_arr[0][4]~q\ & !\l2|sig_arr[0][7]~q\) 
-- ) ) ) # ( \l2|sig_arr[0][0]~q\ & ( !\l2|sig_arr[0][3]~DUPLICATE_q\ & ( (!\l2|sig_arr[0][4]~q\ & !\l2|sig_arr[0][7]~q\) ) ) ) # ( !\l2|sig_arr[0][0]~q\ & ( !\l2|sig_arr[0][3]~DUPLICATE_q\ & ( (!\l2|sig_arr[0][7]~q\ & ((!\l2|sig_arr[0][4]~q\) # 
-- ((!\l2|sig_arr[0][1]~q\ & !\l2|sig_arr[0][2]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[0][1]~q\,
	datab => \l2|ALT_INV_sig_arr[0][4]~q\,
	datac => \l2|ALT_INV_sig_arr[0][2]~q\,
	datad => \l2|ALT_INV_sig_arr[0][7]~q\,
	datae => \l2|ALT_INV_sig_arr[0][0]~q\,
	dataf => \l2|ALT_INV_sig_arr[0][3]~DUPLICATE_q\,
	combout => \l2|LessThan1~1_combout\);

-- Location: LABCELL_X63_Y5_N12
\u1|temp_min~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_min~12_combout\ = ( \u1|u_arr[1][6]~DUPLICATE_q\ & ( ((\u1|LessThan5~3_combout\ & \u1|u_arr[0][6]~DUPLICATE_q\)) # (\u1|LessThan6~16_combout\) ) ) # ( !\u1|u_arr[1][6]~DUPLICATE_q\ & ( (\u1|LessThan5~3_combout\ & (!\u1|LessThan6~16_combout\ & 
-- \u1|u_arr[0][6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_LessThan6~16_combout\,
	datac => \u1|ALT_INV_u_arr[0][6]~DUPLICATE_q\,
	dataf => \u1|ALT_INV_u_arr[1][6]~DUPLICATE_q\,
	combout => \u1|temp_min~12_combout\);

-- Location: FF_X63_Y5_N13
\u1|u_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_min~12_combout\,
	asdata => \u1|u_arr[2][6]~q\,
	sload => \u1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_out\(6));

-- Location: FF_X66_Y4_N2
\l2|sig_arr[0][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(6),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][6]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N54
\u1|temp_min~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp_min~11_combout\ = ( \u1|LessThan6~16_combout\ & ( \u1|u_arr[1][5]~q\ ) ) # ( !\u1|LessThan6~16_combout\ & ( (\u1|LessThan5~3_combout\ & \u1|u_arr[0][5]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan5~3_combout\,
	datab => \u1|ALT_INV_u_arr[1][5]~q\,
	datac => \u1|ALT_INV_u_arr[0][5]~q\,
	dataf => \u1|ALT_INV_LessThan6~16_combout\,
	combout => \u1|temp_min~11_combout\);

-- Location: FF_X63_Y6_N55
\u1|u_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_min~11_combout\,
	asdata => \u1|u_arr[2][5]~q\,
	sload => \u1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_out\(5));

-- Location: FF_X65_Y4_N20
\l2|sig_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(5),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][5]~q\);

-- Location: LABCELL_X66_Y4_N27
\l2|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan1~2_combout\ = ( \l2|sig_arr[0][5]~q\ & ( (!\l2|sig_arr[0][9]~q\ & !\l2|sig_arr[0][8]~DUPLICATE_q\) ) ) # ( !\l2|sig_arr[0][5]~q\ & ( (!\l2|sig_arr[0][9]~q\ & ((!\l2|sig_arr[0][8]~DUPLICATE_q\) # (!\l2|sig_arr[0][6]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l2|ALT_INV_sig_arr[0][9]~q\,
	datac => \l2|ALT_INV_sig_arr[0][8]~DUPLICATE_q\,
	datad => \l2|ALT_INV_sig_arr[0][6]~DUPLICATE_q\,
	dataf => \l2|ALT_INV_sig_arr[0][5]~q\,
	combout => \l2|LessThan1~2_combout\);

-- Location: LABCELL_X66_Y4_N15
\l2|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan1~0_combout\ = ( \l2|LessThan1~1_combout\ & ( \l2|LessThan1~2_combout\ & ( (!\l2|sig_arr[0][12]~q\) # ((!\l2|sig_arr[0][10]~q\ & !\l2|sig_arr[0][11]~DUPLICATE_q\)) ) ) ) # ( !\l2|LessThan1~1_combout\ & ( \l2|LessThan1~2_combout\ & ( 
-- (!\l2|sig_arr[0][12]~q\) # ((!\l2|sig_arr[0][8]~DUPLICATE_q\ & (!\l2|sig_arr[0][10]~q\ & !\l2|sig_arr[0][11]~DUPLICATE_q\))) ) ) ) # ( \l2|LessThan1~1_combout\ & ( !\l2|LessThan1~2_combout\ & ( !\l2|sig_arr[0][12]~q\ ) ) ) # ( !\l2|LessThan1~1_combout\ & 
-- ( !\l2|LessThan1~2_combout\ & ( !\l2|sig_arr[0][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011101010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[0][12]~q\,
	datab => \l2|ALT_INV_sig_arr[0][8]~DUPLICATE_q\,
	datac => \l2|ALT_INV_sig_arr[0][10]~q\,
	datad => \l2|ALT_INV_sig_arr[0][11]~DUPLICATE_q\,
	datae => \l2|ALT_INV_LessThan1~1_combout\,
	dataf => \l2|ALT_INV_LessThan1~2_combout\,
	combout => \l2|LessThan1~0_combout\);

-- Location: FF_X65_Y4_N23
\l2|sig_arr[0][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(4),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][4]~DUPLICATE_q\);

-- Location: FF_X67_Y4_N7
\l2|sig_arr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(11),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][11]~q\);

-- Location: FF_X64_Y4_N47
\l2|sig_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(6),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][6]~q\);

-- Location: FF_X65_Y4_N49
\l2|sig_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(5),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][5]~q\);

-- Location: LABCELL_X66_Y4_N54
\l2|LessThan2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan2~13_combout\ = ( \l2|sig_arr[0][6]~DUPLICATE_q\ & ( \l2|sig_arr[0][5]~q\ & ( (!\l2|sig_arr[1][6]~q\ & ((!\l2|sig_arr[0][10]~q\) # ((!\l2|sig_arr[0][12]~q\)))) # (\l2|sig_arr[1][6]~q\ & (!\l2|sig_arr[1][5]~q\ & ((!\l2|sig_arr[0][10]~q\) # 
-- (!\l2|sig_arr[0][12]~q\)))) ) ) ) # ( !\l2|sig_arr[0][6]~DUPLICATE_q\ & ( \l2|sig_arr[0][5]~q\ & ( (!\l2|sig_arr[1][6]~q\ & (!\l2|sig_arr[1][5]~q\ & ((!\l2|sig_arr[0][10]~q\) # (!\l2|sig_arr[0][12]~q\)))) ) ) ) # ( \l2|sig_arr[0][6]~DUPLICATE_q\ & ( 
-- !\l2|sig_arr[0][5]~q\ & ( (!\l2|sig_arr[1][6]~q\ & ((!\l2|sig_arr[0][10]~q\) # (!\l2|sig_arr[0][12]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010001010100010101000000000001111110010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[1][6]~q\,
	datab => \l2|ALT_INV_sig_arr[0][10]~q\,
	datac => \l2|ALT_INV_sig_arr[0][12]~q\,
	datad => \l2|ALT_INV_sig_arr[1][5]~q\,
	datae => \l2|ALT_INV_sig_arr[0][6]~DUPLICATE_q\,
	dataf => \l2|ALT_INV_sig_arr[0][5]~q\,
	combout => \l2|LessThan2~13_combout\);

-- Location: LABCELL_X66_Y4_N36
\l2|LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan2~5_combout\ = ( \l2|LessThan2~13_combout\ & ( \l2|LessThan1~2_combout\ & ( (!\l2|sig_arr[0][12]~q\) # ((!\l2|sig_arr[0][11]~q\ & ((!\l2|sig_arr[0][8]~DUPLICATE_q\) # (\l2|LessThan1~1_combout\)))) ) ) ) # ( \l2|LessThan2~13_combout\ & ( 
-- !\l2|LessThan1~2_combout\ & ( !\l2|sig_arr[0][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001110111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[0][12]~q\,
	datab => \l2|ALT_INV_sig_arr[0][8]~DUPLICATE_q\,
	datac => \l2|ALT_INV_LessThan1~1_combout\,
	datad => \l2|ALT_INV_sig_arr[0][11]~q\,
	datae => \l2|ALT_INV_LessThan2~13_combout\,
	dataf => \l2|ALT_INV_LessThan1~2_combout\,
	combout => \l2|LessThan2~5_combout\);

-- Location: FF_X65_Y4_N56
\l2|sig_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(2),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][2]~q\);

-- Location: FF_X65_Y4_N14
\l2|sig_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(3),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][3]~q\);

-- Location: FF_X65_Y4_N28
\l2|sig_arr[1][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][0]~DUPLICATE_q\);

-- Location: FF_X64_Y4_N44
\l2|sig_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(1),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][1]~q\);

-- Location: FF_X65_Y4_N29
\l2|sig_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][0]~q\);

-- Location: MLABCELL_X65_Y4_N18
\l2|LessThan2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan2~11_combout\ = ( \l2|sig_arr[0][0]~q\ & ( \l2|sig_arr[1][1]~q\ & ( (!\l2|sig_arr[1][3]~q\ & (((!\l2|sig_arr[1][0]~q\ & \l2|sig_arr[0][1]~q\)) # (\l2|sig_arr[0][3]~DUPLICATE_q\))) # (\l2|sig_arr[1][3]~q\ & (!\l2|sig_arr[1][0]~q\ & 
-- (\l2|sig_arr[0][1]~q\ & \l2|sig_arr[0][3]~DUPLICATE_q\))) ) ) ) # ( !\l2|sig_arr[0][0]~q\ & ( \l2|sig_arr[1][1]~q\ & ( (!\l2|sig_arr[1][3]~q\ & \l2|sig_arr[0][3]~DUPLICATE_q\) ) ) ) # ( \l2|sig_arr[0][0]~q\ & ( !\l2|sig_arr[1][1]~q\ & ( 
-- (!\l2|sig_arr[1][3]~q\ & ((!\l2|sig_arr[1][0]~q\) # ((\l2|sig_arr[0][3]~DUPLICATE_q\) # (\l2|sig_arr[0][1]~q\)))) # (\l2|sig_arr[1][3]~q\ & (\l2|sig_arr[0][3]~DUPLICATE_q\ & ((!\l2|sig_arr[1][0]~q\) # (\l2|sig_arr[0][1]~q\)))) ) ) ) # ( 
-- !\l2|sig_arr[0][0]~q\ & ( !\l2|sig_arr[1][1]~q\ & ( (!\l2|sig_arr[1][3]~q\ & ((\l2|sig_arr[0][3]~DUPLICATE_q\) # (\l2|sig_arr[0][1]~q\))) # (\l2|sig_arr[1][3]~q\ & (\l2|sig_arr[0][1]~q\ & \l2|sig_arr[0][3]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111100011001110111100000000110011000000100011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[1][0]~q\,
	datab => \l2|ALT_INV_sig_arr[1][3]~q\,
	datac => \l2|ALT_INV_sig_arr[0][1]~q\,
	datad => \l2|ALT_INV_sig_arr[0][3]~DUPLICATE_q\,
	datae => \l2|ALT_INV_sig_arr[0][0]~q\,
	dataf => \l2|ALT_INV_sig_arr[1][1]~q\,
	combout => \l2|LessThan2~11_combout\);

-- Location: MLABCELL_X65_Y4_N57
\l2|LessThan2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan2~12_combout\ = ( \l2|LessThan2~11_combout\ & ( (!\l2|sig_arr[0][2]~q\ & ((!\l2|sig_arr[1][2]~q\) # ((!\l2|sig_arr[1][3]~q\ & \l2|sig_arr[0][3]~DUPLICATE_q\)))) # (\l2|sig_arr[0][2]~q\ & ((!\l2|sig_arr[1][3]~q\) # 
-- ((\l2|sig_arr[0][3]~DUPLICATE_q\)))) ) ) # ( !\l2|LessThan2~11_combout\ & ( (!\l2|sig_arr[0][2]~q\ & (!\l2|sig_arr[1][3]~q\ & (\l2|sig_arr[0][3]~DUPLICATE_q\))) # (\l2|sig_arr[0][2]~q\ & (!\l2|sig_arr[1][2]~q\ & ((!\l2|sig_arr[1][3]~q\) # 
-- (\l2|sig_arr[0][3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100001000010011010000100011101111010011011110111101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[0][2]~q\,
	datab => \l2|ALT_INV_sig_arr[1][3]~q\,
	datac => \l2|ALT_INV_sig_arr[0][3]~DUPLICATE_q\,
	datad => \l2|ALT_INV_sig_arr[1][2]~q\,
	dataf => \l2|ALT_INV_LessThan2~11_combout\,
	combout => \l2|LessThan2~12_combout\);

-- Location: MLABCELL_X65_Y4_N15
\l2|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan2~4_combout\ = ( \l2|LessThan2~12_combout\ & ( \l2|LessThan1~0_combout\ ) ) # ( \l2|LessThan2~12_combout\ & ( !\l2|LessThan1~0_combout\ & ( (!\l2|sig_arr[1][2]~q\ & (!\l2|sig_arr[1][3]~q\ & (!\l2|sig_arr[1][0]~DUPLICATE_q\ & 
-- !\l2|sig_arr[1][1]~q\))) ) ) ) # ( !\l2|LessThan2~12_combout\ & ( !\l2|LessThan1~0_combout\ & ( (!\l2|sig_arr[1][2]~q\ & (!\l2|sig_arr[1][3]~q\ & (!\l2|sig_arr[1][0]~DUPLICATE_q\ & !\l2|sig_arr[1][1]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[1][2]~q\,
	datab => \l2|ALT_INV_sig_arr[1][3]~q\,
	datac => \l2|ALT_INV_sig_arr[1][0]~DUPLICATE_q\,
	datad => \l2|ALT_INV_sig_arr[1][1]~q\,
	datae => \l2|ALT_INV_LessThan2~12_combout\,
	dataf => \l2|ALT_INV_LessThan1~0_combout\,
	combout => \l2|LessThan2~4_combout\);

-- Location: FF_X65_Y4_N25
\l2|sig_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(4),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][4]~q\);

-- Location: FF_X64_Y4_N46
\l2|sig_arr[1][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(6),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][6]~DUPLICATE_q\);

-- Location: FF_X66_Y4_N1
\l2|sig_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(6),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][6]~q\);

-- Location: MLABCELL_X65_Y4_N51
\l2|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan2~3_combout\ = ( \l2|LessThan1~0_combout\ & ( \l2|sig_arr[0][6]~q\ & ( (\l2|sig_arr[1][6]~DUPLICATE_q\ & (!\l2|sig_arr[1][5]~q\ $ (\l2|sig_arr[0][5]~q\))) ) ) ) # ( !\l2|LessThan1~0_combout\ & ( \l2|sig_arr[0][6]~q\ & ( 
-- (!\l2|sig_arr[1][6]~DUPLICATE_q\ & !\l2|sig_arr[1][5]~q\) ) ) ) # ( \l2|LessThan1~0_combout\ & ( !\l2|sig_arr[0][6]~q\ & ( (!\l2|sig_arr[1][6]~DUPLICATE_q\ & (!\l2|sig_arr[1][5]~q\ $ (\l2|sig_arr[0][5]~q\))) ) ) ) # ( !\l2|LessThan1~0_combout\ & ( 
-- !\l2|sig_arr[0][6]~q\ & ( (!\l2|sig_arr[1][6]~DUPLICATE_q\ & !\l2|sig_arr[1][5]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000000000101010100000101000000101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[1][6]~DUPLICATE_q\,
	datac => \l2|ALT_INV_sig_arr[1][5]~q\,
	datad => \l2|ALT_INV_sig_arr[0][5]~q\,
	datae => \l2|ALT_INV_LessThan1~0_combout\,
	dataf => \l2|ALT_INV_sig_arr[0][6]~q\,
	combout => \l2|LessThan2~3_combout\);

-- Location: MLABCELL_X65_Y4_N24
\l2|LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan2~6_combout\ = ( \l2|sig_arr[1][4]~q\ & ( \l2|LessThan2~3_combout\ & ( (!\l2|LessThan2~5_combout\ & ((!\l2|LessThan2~4_combout\) # ((\l2|LessThan1~0_combout\ & !\l2|sig_arr[0][4]~DUPLICATE_q\)))) ) ) ) # ( !\l2|sig_arr[1][4]~q\ & ( 
-- \l2|LessThan2~3_combout\ & ( (\l2|LessThan1~0_combout\ & (!\l2|sig_arr[0][4]~DUPLICATE_q\ & (!\l2|LessThan2~5_combout\ & !\l2|LessThan2~4_combout\))) ) ) ) # ( \l2|sig_arr[1][4]~q\ & ( !\l2|LessThan2~3_combout\ & ( !\l2|LessThan2~5_combout\ ) ) ) # ( 
-- !\l2|sig_arr[1][4]~q\ & ( !\l2|LessThan2~3_combout\ & ( !\l2|LessThan2~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001000000000000001111000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan1~0_combout\,
	datab => \l2|ALT_INV_sig_arr[0][4]~DUPLICATE_q\,
	datac => \l2|ALT_INV_LessThan2~5_combout\,
	datad => \l2|ALT_INV_LessThan2~4_combout\,
	datae => \l2|ALT_INV_sig_arr[1][4]~q\,
	dataf => \l2|ALT_INV_LessThan2~3_combout\,
	combout => \l2|LessThan2~6_combout\);

-- Location: FF_X65_Y4_N31
\l2|sig_arr[1][8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(8),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][8]~DUPLICATE_q\);

-- Location: FF_X66_Y4_N13
\l2|sig_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(8),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][8]~q\);

-- Location: FF_X66_Y4_N40
\l2|sig_arr[0][10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(10),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][10]~DUPLICATE_q\);

-- Location: FF_X67_Y4_N14
\l2|sig_arr[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(10),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][10]~q\);

-- Location: FF_X66_Y4_N8
\l2|sig_arr[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(12),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][12]~q\);

-- Location: LABCELL_X67_Y4_N33
\l2|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan2~0_combout\ = ( \l2|sig_arr[0][12]~q\ & ( \l2|sig_arr[0][11]~DUPLICATE_q\ & ( (!\l2|sig_arr[1][10]~q\ & (!\l2|sig_arr[1][11]~q\ & \l2|sig_arr[1][12]~q\)) ) ) ) # ( !\l2|sig_arr[0][12]~q\ & ( \l2|sig_arr[0][11]~DUPLICATE_q\ & ( 
-- (\l2|sig_arr[1][11]~q\ & (!\l2|sig_arr[1][12]~q\ & (!\l2|sig_arr[0][10]~DUPLICATE_q\ $ (\l2|sig_arr[1][10]~q\)))) ) ) ) # ( \l2|sig_arr[0][12]~q\ & ( !\l2|sig_arr[0][11]~DUPLICATE_q\ & ( (!\l2|sig_arr[1][10]~q\ & (!\l2|sig_arr[1][11]~q\ & 
-- \l2|sig_arr[1][12]~q\)) ) ) ) # ( !\l2|sig_arr[0][12]~q\ & ( !\l2|sig_arr[0][11]~DUPLICATE_q\ & ( (!\l2|sig_arr[1][11]~q\ & (!\l2|sig_arr[1][12]~q\ & (!\l2|sig_arr[0][10]~DUPLICATE_q\ $ (\l2|sig_arr[1][10]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001100000000001001000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[0][10]~DUPLICATE_q\,
	datab => \l2|ALT_INV_sig_arr[1][10]~q\,
	datac => \l2|ALT_INV_sig_arr[1][11]~q\,
	datad => \l2|ALT_INV_sig_arr[1][12]~q\,
	datae => \l2|ALT_INV_sig_arr[0][12]~q\,
	dataf => \l2|ALT_INV_sig_arr[0][11]~DUPLICATE_q\,
	combout => \l2|LessThan2~0_combout\);

-- Location: LABCELL_X66_Y4_N30
\l2|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan2~1_combout\ = ( \l2|LessThan2~0_combout\ & ( !\l2|sig_arr[1][9]~q\ $ (((!\l2|sig_arr[0][12]~q\ & \l2|sig_arr[0][9]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101000010101111010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[0][12]~q\,
	datac => \l2|ALT_INV_sig_arr[0][9]~q\,
	datad => \l2|ALT_INV_sig_arr[1][9]~q\,
	dataf => \l2|ALT_INV_LessThan2~0_combout\,
	combout => \l2|LessThan2~1_combout\);

-- Location: LABCELL_X66_Y4_N21
\l2|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan2~2_combout\ = ( \l2|LessThan2~1_combout\ & ( !\l2|sig_arr[1][8]~DUPLICATE_q\ $ (((!\l2|LessThan1~0_combout\) # (\l2|sig_arr[0][8]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010101010101101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[1][8]~DUPLICATE_q\,
	datac => \l2|ALT_INV_LessThan1~0_combout\,
	datad => \l2|ALT_INV_sig_arr[0][8]~q\,
	dataf => \l2|ALT_INV_LessThan2~1_combout\,
	combout => \l2|LessThan2~2_combout\);

-- Location: FF_X65_Y4_N32
\l2|sig_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(8),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][8]~q\);

-- Location: FF_X67_Y4_N31
\l2|sig_arr[1][11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(11),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][11]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y4_N15
\l2|LessThan2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan2~7_combout\ = ( \l2|sig_arr[0][12]~q\ & ( \l2|sig_arr[1][11]~DUPLICATE_q\ & ( !\l2|sig_arr[1][12]~q\ ) ) ) # ( !\l2|sig_arr[0][12]~q\ & ( \l2|sig_arr[1][11]~DUPLICATE_q\ & ( (\l2|sig_arr[0][10]~DUPLICATE_q\ & (!\l2|sig_arr[1][10]~q\ & 
-- (\l2|sig_arr[0][11]~DUPLICATE_q\ & !\l2|sig_arr[1][12]~q\))) ) ) ) # ( \l2|sig_arr[0][12]~q\ & ( !\l2|sig_arr[1][11]~DUPLICATE_q\ & ( !\l2|sig_arr[1][12]~q\ ) ) ) # ( !\l2|sig_arr[0][12]~q\ & ( !\l2|sig_arr[1][11]~DUPLICATE_q\ & ( (!\l2|sig_arr[1][12]~q\ 
-- & (((\l2|sig_arr[0][10]~DUPLICATE_q\ & !\l2|sig_arr[1][10]~q\)) # (\l2|sig_arr[0][11]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100000000111111110000000000000100000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[0][10]~DUPLICATE_q\,
	datab => \l2|ALT_INV_sig_arr[1][10]~q\,
	datac => \l2|ALT_INV_sig_arr[0][11]~DUPLICATE_q\,
	datad => \l2|ALT_INV_sig_arr[1][12]~q\,
	datae => \l2|ALT_INV_sig_arr[0][12]~q\,
	dataf => \l2|ALT_INV_sig_arr[1][11]~DUPLICATE_q\,
	combout => \l2|LessThan2~7_combout\);

-- Location: LABCELL_X66_Y4_N9
\l2|LessThan2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan2~8_combout\ = ( \l2|LessThan2~0_combout\ & ( (!\l2|LessThan2~7_combout\ & (((!\l2|sig_arr[0][9]~q\) # (\l2|sig_arr[1][9]~q\)) # (\l2|sig_arr[0][12]~q\))) ) ) # ( !\l2|LessThan2~0_combout\ & ( !\l2|LessThan2~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110111000000001111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[0][12]~q\,
	datab => \l2|ALT_INV_sig_arr[1][9]~q\,
	datac => \l2|ALT_INV_sig_arr[0][9]~q\,
	datad => \l2|ALT_INV_LessThan2~7_combout\,
	dataf => \l2|ALT_INV_LessThan2~0_combout\,
	combout => \l2|LessThan2~8_combout\);

-- Location: MLABCELL_X65_Y4_N33
\l2|LessThan2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan2~9_combout\ = ( \l2|LessThan2~8_combout\ & ( \l2|LessThan2~1_combout\ & ( ((!\l2|sig_arr[0][8]~q\ & \l2|LessThan1~0_combout\)) # (\l2|sig_arr[1][8]~q\) ) ) ) # ( \l2|LessThan2~8_combout\ & ( !\l2|LessThan2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l2|ALT_INV_sig_arr[1][8]~q\,
	datac => \l2|ALT_INV_sig_arr[0][8]~q\,
	datad => \l2|ALT_INV_LessThan1~0_combout\,
	datae => \l2|ALT_INV_LessThan2~8_combout\,
	dataf => \l2|ALT_INV_LessThan2~1_combout\,
	combout => \l2|LessThan2~9_combout\);

-- Location: FF_X65_Y4_N43
\l2|sig_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(7),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][7]~q\);

-- Location: MLABCELL_X65_Y4_N42
\l2|LessThan2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan2~10_combout\ = ( \l2|sig_arr[1][7]~q\ & ( \l2|sig_arr[0][7]~q\ & ( (!\l2|LessThan2~9_combout\) # ((!\l2|LessThan2~6_combout\ & (\l2|LessThan2~2_combout\ & \l2|LessThan1~0_combout\))) ) ) ) # ( !\l2|sig_arr[1][7]~q\ & ( \l2|sig_arr[0][7]~q\ & 
-- ( (!\l2|LessThan2~9_combout\) # ((\l2|LessThan2~2_combout\ & ((!\l2|LessThan2~6_combout\) # (\l2|LessThan1~0_combout\)))) ) ) ) # ( \l2|sig_arr[1][7]~q\ & ( !\l2|sig_arr[0][7]~q\ & ( !\l2|LessThan2~9_combout\ ) ) ) # ( !\l2|sig_arr[1][7]~q\ & ( 
-- !\l2|sig_arr[0][7]~q\ & ( (!\l2|LessThan2~9_combout\) # ((!\l2|LessThan2~6_combout\ & \l2|LessThan2~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011110010111100001111000011110010111100111111000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan2~6_combout\,
	datab => \l2|ALT_INV_LessThan2~2_combout\,
	datac => \l2|ALT_INV_LessThan2~9_combout\,
	datad => \l2|ALT_INV_LessThan1~0_combout\,
	datae => \l2|ALT_INV_sig_arr[1][7]~q\,
	dataf => \l2|ALT_INV_sig_arr[0][7]~q\,
	combout => \l2|LessThan2~10_combout\);

-- Location: LABCELL_X67_Y4_N57
\l2|temp_min~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~10_combout\ = ( \l2|sig_arr[0][12]~q\ & ( \l2|sig_arr[0][11]~DUPLICATE_q\ & ( (\l2|sig_arr[1][11]~q\ & \l2|LessThan2~10_combout\) ) ) ) # ( !\l2|sig_arr[0][12]~q\ & ( \l2|sig_arr[0][11]~DUPLICATE_q\ & ( (!\l2|LessThan2~10_combout\) # 
-- (\l2|sig_arr[1][11]~q\) ) ) ) # ( \l2|sig_arr[0][12]~q\ & ( !\l2|sig_arr[0][11]~DUPLICATE_q\ & ( (\l2|sig_arr[1][11]~q\ & \l2|LessThan2~10_combout\) ) ) ) # ( !\l2|sig_arr[0][12]~q\ & ( !\l2|sig_arr[0][11]~DUPLICATE_q\ & ( (\l2|sig_arr[1][11]~q\ & 
-- \l2|LessThan2~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l2|ALT_INV_sig_arr[1][11]~q\,
	datad => \l2|ALT_INV_LessThan2~10_combout\,
	datae => \l2|ALT_INV_sig_arr[0][12]~q\,
	dataf => \l2|ALT_INV_sig_arr[0][11]~DUPLICATE_q\,
	combout => \l2|temp_min~10_combout\);

-- Location: FF_X67_Y4_N13
\l2|sig_arr[1][10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(10),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][10]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y4_N36
\l2|temp_min~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~11_combout\ = (!\l2|LessThan2~10_combout\ & (\l2|sig_arr[0][10]~DUPLICATE_q\ & (!\l2|sig_arr[0][12]~q\))) # (\l2|LessThan2~10_combout\ & (((\l2|sig_arr[1][10]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001111010000000100111101000000010011110100000001001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[0][10]~DUPLICATE_q\,
	datab => \l2|ALT_INV_sig_arr[0][12]~q\,
	datac => \l2|ALT_INV_LessThan2~10_combout\,
	datad => \l2|ALT_INV_sig_arr[1][10]~DUPLICATE_q\,
	combout => \l2|temp_min~11_combout\);

-- Location: LABCELL_X66_Y4_N6
\l2|temp_min~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~9_combout\ = ( \l2|LessThan2~10_combout\ & ( \l2|sig_arr[1][12]~q\ ) ) # ( !\l2|LessThan2~10_combout\ & ( \l2|sig_arr[0][12]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l2|ALT_INV_sig_arr[0][12]~q\,
	datad => \l2|ALT_INV_sig_arr[1][12]~q\,
	dataf => \l2|ALT_INV_LessThan2~10_combout\,
	combout => \l2|temp_min~9_combout\);

-- Location: FF_X67_Y4_N19
\l2|sig_arr[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(11),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][11]~q\);

-- Location: LABCELL_X67_Y4_N21
\l2|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~5_combout\ = ( \l2|temp_min~9_combout\ & ( \l2|sig_arr[2][11]~q\ & ( (!\l2|sig_arr[2][12]~q\) # ((!\l2|sig_arr[2][10]~q\ & (\l2|temp_min~10_combout\ & \l2|temp_min~11_combout\))) ) ) ) # ( !\l2|temp_min~9_combout\ & ( \l2|sig_arr[2][11]~q\ & 
-- ( (!\l2|sig_arr[2][12]~q\ & (!\l2|sig_arr[2][10]~q\ & (\l2|temp_min~10_combout\ & \l2|temp_min~11_combout\))) ) ) ) # ( \l2|temp_min~9_combout\ & ( !\l2|sig_arr[2][11]~q\ & ( (!\l2|sig_arr[2][12]~q\) # (((!\l2|sig_arr[2][10]~q\ & 
-- \l2|temp_min~11_combout\)) # (\l2|temp_min~10_combout\)) ) ) ) # ( !\l2|temp_min~9_combout\ & ( !\l2|sig_arr[2][11]~q\ & ( (!\l2|sig_arr[2][12]~q\ & (((!\l2|sig_arr[2][10]~q\ & \l2|temp_min~11_combout\)) # (\l2|temp_min~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010001010101011111110111100000000000010001010101010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[2][12]~q\,
	datab => \l2|ALT_INV_sig_arr[2][10]~q\,
	datac => \l2|ALT_INV_temp_min~10_combout\,
	datad => \l2|ALT_INV_temp_min~11_combout\,
	datae => \l2|ALT_INV_temp_min~9_combout\,
	dataf => \l2|ALT_INV_sig_arr[2][11]~q\,
	combout => \l2|LessThan3~5_combout\);

-- Location: LABCELL_X67_Y4_N39
\l2|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~8_combout\ = ( \l2|sig_arr[2][10]~q\ & ( (\l2|sig_arr[0][10]~DUPLICATE_q\ & (!\l2|sig_arr[0][12]~q\ & (!\l2|sig_arr[0][11]~DUPLICATE_q\ $ (\l2|sig_arr[2][11]~q\)))) ) ) # ( !\l2|sig_arr[2][10]~q\ & ( (!\l2|sig_arr[0][12]~q\ & 
-- (!\l2|sig_arr[0][10]~DUPLICATE_q\ & (!\l2|sig_arr[0][11]~DUPLICATE_q\ $ (\l2|sig_arr[2][11]~q\)))) # (\l2|sig_arr[0][12]~q\ & (((!\l2|sig_arr[2][11]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001100001000101100110000100001000000000001000100000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[0][10]~DUPLICATE_q\,
	datab => \l2|ALT_INV_sig_arr[0][12]~q\,
	datac => \l2|ALT_INV_sig_arr[0][11]~DUPLICATE_q\,
	datad => \l2|ALT_INV_sig_arr[2][11]~q\,
	dataf => \l2|ALT_INV_sig_arr[2][10]~q\,
	combout => \l2|LessThan3~8_combout\);

-- Location: LABCELL_X62_Y4_N30
\l2|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~7_combout\ = ( \l2|sig_arr[2][12]~q\ & ( \l2|sig_arr[1][12]~q\ & ( (!\l2|sig_arr[1][11]~DUPLICATE_q\ & (!\l2|sig_arr[2][11]~q\ & (!\l2|sig_arr[1][10]~DUPLICATE_q\ $ (\l2|sig_arr[2][10]~q\)))) # (\l2|sig_arr[1][11]~DUPLICATE_q\ & 
-- (\l2|sig_arr[2][11]~q\ & (!\l2|sig_arr[1][10]~DUPLICATE_q\ $ (\l2|sig_arr[2][10]~q\)))) ) ) ) # ( !\l2|sig_arr[2][12]~q\ & ( !\l2|sig_arr[1][12]~q\ & ( (!\l2|sig_arr[1][11]~DUPLICATE_q\ & (!\l2|sig_arr[2][11]~q\ & (!\l2|sig_arr[1][10]~DUPLICATE_q\ $ 
-- (\l2|sig_arr[2][10]~q\)))) # (\l2|sig_arr[1][11]~DUPLICATE_q\ & (\l2|sig_arr[2][11]~q\ & (!\l2|sig_arr[1][10]~DUPLICATE_q\ $ (\l2|sig_arr[2][10]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[1][11]~DUPLICATE_q\,
	datab => \l2|ALT_INV_sig_arr[1][10]~DUPLICATE_q\,
	datac => \l2|ALT_INV_sig_arr[2][11]~q\,
	datad => \l2|ALT_INV_sig_arr[2][10]~q\,
	datae => \l2|ALT_INV_sig_arr[2][12]~q\,
	dataf => \l2|ALT_INV_sig_arr[1][12]~q\,
	combout => \l2|LessThan3~7_combout\);

-- Location: LABCELL_X64_Y4_N39
\l2|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~3_combout\ = ( \l2|LessThan3~7_combout\ & ( ((\l2|LessThan3~8_combout\ & (!\l2|sig_arr[0][12]~q\ $ (\l2|sig_arr[2][12]~q\)))) # (\l2|LessThan2~10_combout\) ) ) # ( !\l2|LessThan3~7_combout\ & ( (\l2|LessThan3~8_combout\ & 
-- (!\l2|LessThan2~10_combout\ & (!\l2|sig_arr[0][12]~q\ $ (\l2|sig_arr[2][12]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000100010000000000010001110011001101110111001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan3~8_combout\,
	datab => \l2|ALT_INV_LessThan2~10_combout\,
	datac => \l2|ALT_INV_sig_arr[0][12]~q\,
	datad => \l2|ALT_INV_sig_arr[2][12]~q\,
	dataf => \l2|ALT_INV_LessThan3~7_combout\,
	combout => \l2|LessThan3~3_combout\);

-- Location: LABCELL_X64_Y4_N48
\l2|temp_min~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~25_combout\ = ( !\l2|LessThan2~10_combout\ & ( (!\l2|LessThan3~5_combout\ & (\l2|sig_arr[0][9]~q\ & (!\l2|sig_arr[0][12]~q\ & ((!\l2|LessThan3~3_combout\) # (\l2|sig_arr[2][9]~DUPLICATE_q\))))) # (\l2|LessThan3~5_combout\ & 
-- (\l2|sig_arr[2][9]~DUPLICATE_q\)) ) ) # ( \l2|LessThan2~10_combout\ & ( ((!\l2|LessThan3~5_combout\ & (\l2|sig_arr[1][9]~q\ & ((!\l2|LessThan3~3_combout\) # (\l2|sig_arr[2][9]~DUPLICATE_q\)))) # (\l2|LessThan3~5_combout\ & 
-- (\l2|sig_arr[2][9]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011000001010101000011110101010100010000010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[2][9]~DUPLICATE_q\,
	datab => \l2|ALT_INV_sig_arr[0][9]~q\,
	datac => \l2|ALT_INV_sig_arr[1][9]~q\,
	datad => \l2|ALT_INV_LessThan3~5_combout\,
	datae => \l2|ALT_INV_LessThan2~10_combout\,
	dataf => \l2|ALT_INV_LessThan3~3_combout\,
	datag => \l2|ALT_INV_sig_arr[0][12]~q\,
	combout => \l2|temp_min~25_combout\);

-- Location: FF_X67_Y4_N55
\l2|l_arr[1][9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~25_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][9]~DUPLICATE_q\);

-- Location: FF_X64_Y4_N17
\l2|l_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~25_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][9]~q\);

-- Location: LABCELL_X64_Y4_N36
\l2|temp_min~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~3_combout\ = ( \l2|sig_arr[0][6]~q\ & ( (!\l2|LessThan2~10_combout\ & (\l2|LessThan1~0_combout\)) # (\l2|LessThan2~10_combout\ & ((\l2|sig_arr[1][6]~q\))) ) ) # ( !\l2|sig_arr[0][6]~q\ & ( (\l2|LessThan2~10_combout\ & \l2|sig_arr[1][6]~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l2|ALT_INV_LessThan2~10_combout\,
	datac => \l2|ALT_INV_LessThan1~0_combout\,
	datad => \l2|ALT_INV_sig_arr[1][6]~q\,
	dataf => \l2|ALT_INV_sig_arr[0][6]~q\,
	combout => \l2|temp_min~3_combout\);

-- Location: LABCELL_X64_Y4_N21
\l2|temp_min~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~12_combout\ = ( \l2|sig_arr[1][8]~DUPLICATE_q\ & ( (\l2|LessThan1~0_combout\ & (!\l2|LessThan2~10_combout\ & !\l2|sig_arr[0][8]~DUPLICATE_q\)) ) ) # ( !\l2|sig_arr[1][8]~DUPLICATE_q\ & ( ((\l2|LessThan1~0_combout\ & 
-- !\l2|sig_arr[0][8]~DUPLICATE_q\)) # (\l2|LessThan2~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011011100110111001101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan1~0_combout\,
	datab => \l2|ALT_INV_LessThan2~10_combout\,
	datac => \l2|ALT_INV_sig_arr[0][8]~DUPLICATE_q\,
	dataf => \l2|ALT_INV_sig_arr[1][8]~DUPLICATE_q\,
	combout => \l2|temp_min~12_combout\);

-- Location: LABCELL_X64_Y4_N42
\l2|temp_min~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~8_combout\ = ( \l2|LessThan2~10_combout\ & ( \l2|sig_arr[0][9]~q\ & ( \l2|sig_arr[1][9]~q\ ) ) ) # ( !\l2|LessThan2~10_combout\ & ( \l2|sig_arr[0][9]~q\ & ( !\l2|sig_arr[0][12]~q\ ) ) ) # ( \l2|LessThan2~10_combout\ & ( !\l2|sig_arr[0][9]~q\ 
-- & ( \l2|sig_arr[1][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111001100110011000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l2|ALT_INV_sig_arr[0][12]~q\,
	datad => \l2|ALT_INV_sig_arr[1][9]~q\,
	datae => \l2|ALT_INV_LessThan2~10_combout\,
	dataf => \l2|ALT_INV_sig_arr[0][9]~q\,
	combout => \l2|temp_min~8_combout\);

-- Location: FF_X64_Y4_N59
\l2|sig_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(8),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][8]~q\);

-- Location: FF_X64_Y4_N34
\l2|sig_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(9),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][9]~q\);

-- Location: LABCELL_X64_Y4_N54
\l2|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~6_combout\ = ( \l2|LessThan3~3_combout\ & ( (!\l2|temp_min~8_combout\ & (!\l2|temp_min~12_combout\ & (!\l2|sig_arr[2][8]~q\ & !\l2|sig_arr[2][9]~q\))) # (\l2|temp_min~8_combout\ & ((!\l2|sig_arr[2][9]~q\) # ((!\l2|temp_min~12_combout\ & 
-- !\l2|sig_arr[2][8]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010110011001000001011001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_temp_min~12_combout\,
	datab => \l2|ALT_INV_temp_min~8_combout\,
	datac => \l2|ALT_INV_sig_arr[2][8]~q\,
	datad => \l2|ALT_INV_sig_arr[2][9]~q\,
	dataf => \l2|ALT_INV_LessThan3~3_combout\,
	combout => \l2|LessThan3~6_combout\);

-- Location: FF_X62_Y4_N22
\l2|sig_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(2),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][2]~q\);

-- Location: FF_X63_Y4_N19
\l2|sig_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(4),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][4]~q\);

-- Location: FF_X62_Y4_N11
\l2|sig_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(3),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][3]~q\);

-- Location: FF_X65_Y4_N10
\l2|sig_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(3),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[0][3]~q\);

-- Location: LABCELL_X62_Y4_N9
\l2|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~9_combout\ = ( \l2|LessThan1~0_combout\ & ( (!\l2|sig_arr[0][3]~q\ & (\l2|sig_arr[0][2]~q\ & (!\l2|sig_arr[2][2]~q\ & !\l2|sig_arr[2][3]~q\))) # (\l2|sig_arr[0][3]~q\ & ((!\l2|sig_arr[2][3]~q\) # ((\l2|sig_arr[0][2]~q\ & 
-- !\l2|sig_arr[2][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110011000100000111001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[0][2]~q\,
	datab => \l2|ALT_INV_sig_arr[0][3]~q\,
	datac => \l2|ALT_INV_sig_arr[2][2]~q\,
	datad => \l2|ALT_INV_sig_arr[2][3]~q\,
	dataf => \l2|ALT_INV_LessThan1~0_combout\,
	combout => \l2|LessThan3~9_combout\);

-- Location: LABCELL_X63_Y4_N36
\l2|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~1_combout\ = ( \l2|sig_arr[2][2]~q\ & ( \l2|LessThan2~10_combout\ & ( (!\l2|sig_arr[2][3]~q\ & \l2|sig_arr[1][3]~q\) ) ) ) # ( !\l2|sig_arr[2][2]~q\ & ( \l2|LessThan2~10_combout\ & ( (!\l2|sig_arr[2][3]~q\ & ((\l2|sig_arr[1][2]~q\) # 
-- (\l2|sig_arr[1][3]~q\))) # (\l2|sig_arr[2][3]~q\ & (\l2|sig_arr[1][3]~q\ & \l2|sig_arr[1][2]~q\)) ) ) ) # ( \l2|sig_arr[2][2]~q\ & ( !\l2|LessThan2~10_combout\ & ( (!\l2|sig_arr[2][3]~q\ & \l2|LessThan3~9_combout\) ) ) ) # ( !\l2|sig_arr[2][2]~q\ & ( 
-- !\l2|LessThan2~10_combout\ & ( \l2|LessThan3~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001010101000101011001010110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[2][3]~q\,
	datab => \l2|ALT_INV_sig_arr[1][3]~q\,
	datac => \l2|ALT_INV_sig_arr[1][2]~q\,
	datad => \l2|ALT_INV_LessThan3~9_combout\,
	datae => \l2|ALT_INV_sig_arr[2][2]~q\,
	dataf => \l2|ALT_INV_LessThan2~10_combout\,
	combout => \l2|LessThan3~1_combout\);

-- Location: MLABCELL_X65_Y4_N54
\l2|temp_min~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~5_combout\ = ( \l2|LessThan2~10_combout\ & ( \l2|sig_arr[1][2]~q\ ) ) # ( !\l2|LessThan2~10_combout\ & ( (\l2|sig_arr[0][2]~q\ & \l2|LessThan1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[0][2]~q\,
	datac => \l2|ALT_INV_LessThan1~0_combout\,
	datad => \l2|ALT_INV_sig_arr[1][2]~q\,
	dataf => \l2|ALT_INV_LessThan2~10_combout\,
	combout => \l2|temp_min~5_combout\);

-- Location: LABCELL_X64_Y4_N3
\l2|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~0_combout\ = ( \l2|sig_arr[2][3]~q\ & ( (!\l2|LessThan2~10_combout\ & ((!\l2|LessThan1~0_combout\) # ((!\l2|sig_arr[0][3]~DUPLICATE_q\)))) # (\l2|LessThan2~10_combout\ & (((!\l2|sig_arr[1][3]~q\)))) ) ) # ( !\l2|sig_arr[2][3]~q\ & ( 
-- (!\l2|LessThan2~10_combout\ & (\l2|LessThan1~0_combout\ & (\l2|sig_arr[0][3]~DUPLICATE_q\))) # (\l2|LessThan2~10_combout\ & (((\l2|sig_arr[1][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011111111011110010001111101111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan1~0_combout\,
	datab => \l2|ALT_INV_LessThan2~10_combout\,
	datac => \l2|ALT_INV_sig_arr[0][3]~DUPLICATE_q\,
	datad => \l2|ALT_INV_sig_arr[1][3]~q\,
	dataf => \l2|ALT_INV_sig_arr[2][3]~q\,
	combout => \l2|LessThan3~0_combout\);

-- Location: LABCELL_X64_Y4_N18
\l2|temp_min~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~1_combout\ = ( \l2|sig_arr[1][4]~q\ & ( (\l2|LessThan1~0_combout\ & (!\l2|sig_arr[0][4]~DUPLICATE_q\ & !\l2|LessThan2~10_combout\)) ) ) # ( !\l2|sig_arr[1][4]~q\ & ( ((\l2|LessThan1~0_combout\ & !\l2|sig_arr[0][4]~DUPLICATE_q\)) # 
-- (\l2|LessThan2~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan1~0_combout\,
	datac => \l2|ALT_INV_sig_arr[0][4]~DUPLICATE_q\,
	datad => \l2|ALT_INV_LessThan2~10_combout\,
	dataf => \l2|ALT_INV_sig_arr[1][4]~q\,
	combout => \l2|temp_min~1_combout\);

-- Location: LABCELL_X63_Y4_N21
\l2|LessThan3~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~12_combout\ = ( \l2|LessThan3~0_combout\ & ( \l2|temp_min~1_combout\ & ( (!\l2|LessThan3~1_combout\) # (\l2|sig_arr[2][4]~q\) ) ) ) # ( !\l2|LessThan3~0_combout\ & ( \l2|temp_min~1_combout\ & ( ((!\l2|LessThan3~1_combout\ & 
-- (!\l2|sig_arr[2][2]~q\ $ (!\l2|temp_min~5_combout\)))) # (\l2|sig_arr[2][4]~q\) ) ) ) # ( \l2|LessThan3~0_combout\ & ( !\l2|temp_min~1_combout\ & ( (\l2|sig_arr[2][4]~q\ & !\l2|LessThan3~1_combout\) ) ) ) # ( !\l2|LessThan3~0_combout\ & ( 
-- !\l2|temp_min~1_combout\ & ( (\l2|sig_arr[2][4]~q\ & (!\l2|LessThan3~1_combout\ & (!\l2|sig_arr[2][2]~q\ $ (!\l2|temp_min~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000001100000011000001110011101100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[2][2]~q\,
	datab => \l2|ALT_INV_sig_arr[2][4]~q\,
	datac => \l2|ALT_INV_LessThan3~1_combout\,
	datad => \l2|ALT_INV_temp_min~5_combout\,
	datae => \l2|ALT_INV_LessThan3~0_combout\,
	dataf => \l2|ALT_INV_temp_min~1_combout\,
	combout => \l2|LessThan3~12_combout\);

-- Location: FF_X63_Y4_N35
\l2|sig_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(6),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][6]~q\);

-- Location: FF_X63_Y4_N50
\l2|sig_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(5),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][5]~q\);

-- Location: LABCELL_X63_Y4_N24
\l2|temp_min~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~2_combout\ = ( \l2|LessThan2~9_combout\ & ( \l2|LessThan1~0_combout\ & ( (\l2|sig_arr[0][7]~q\ & ((!\l2|LessThan2~2_combout\) # (\l2|sig_arr[1][7]~q\))) ) ) ) # ( !\l2|LessThan2~9_combout\ & ( \l2|LessThan1~0_combout\ & ( \l2|sig_arr[1][7]~q\ 
-- ) ) ) # ( !\l2|LessThan2~9_combout\ & ( !\l2|LessThan1~0_combout\ & ( \l2|sig_arr[1][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[0][7]~q\,
	datab => \l2|ALT_INV_sig_arr[1][7]~q\,
	datac => \l2|ALT_INV_LessThan2~2_combout\,
	datae => \l2|ALT_INV_LessThan2~9_combout\,
	dataf => \l2|ALT_INV_LessThan1~0_combout\,
	combout => \l2|temp_min~2_combout\);

-- Location: FF_X65_Y4_N50
\l2|sig_arr[1][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(5),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[1][5]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y4_N0
\l2|temp_min~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~4_combout\ = ( \l2|LessThan1~0_combout\ & ( \l2|LessThan2~10_combout\ & ( \l2|sig_arr[1][5]~DUPLICATE_q\ ) ) ) # ( !\l2|LessThan1~0_combout\ & ( \l2|LessThan2~10_combout\ & ( \l2|sig_arr[1][5]~DUPLICATE_q\ ) ) ) # ( \l2|LessThan1~0_combout\ & 
-- ( !\l2|LessThan2~10_combout\ & ( \l2|sig_arr[0][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[1][5]~DUPLICATE_q\,
	datac => \l2|ALT_INV_sig_arr[0][5]~q\,
	datae => \l2|ALT_INV_LessThan1~0_combout\,
	dataf => \l2|ALT_INV_LessThan2~10_combout\,
	combout => \l2|temp_min~4_combout\);

-- Location: FF_X63_Y4_N41
\l2|sig_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(7),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][7]~q\);

-- Location: LABCELL_X63_Y4_N45
\l2|LessThan3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~10_combout\ = ( \l2|temp_min~3_combout\ & ( \l2|sig_arr[2][7]~q\ & ( (!\l2|temp_min~2_combout\) # ((\l2|sig_arr[2][6]~q\ & (\l2|sig_arr[2][5]~q\ & !\l2|temp_min~4_combout\))) ) ) ) # ( !\l2|temp_min~3_combout\ & ( \l2|sig_arr[2][7]~q\ & ( 
-- ((!\l2|temp_min~2_combout\) # ((\l2|sig_arr[2][5]~q\ & !\l2|temp_min~4_combout\))) # (\l2|sig_arr[2][6]~q\) ) ) ) # ( \l2|temp_min~3_combout\ & ( !\l2|sig_arr[2][7]~q\ & ( (\l2|sig_arr[2][6]~q\ & (\l2|sig_arr[2][5]~q\ & (!\l2|temp_min~2_combout\ & 
-- !\l2|temp_min~4_combout\))) ) ) ) # ( !\l2|temp_min~3_combout\ & ( !\l2|sig_arr[2][7]~q\ & ( (!\l2|temp_min~2_combout\ & (((\l2|sig_arr[2][5]~q\ & !\l2|temp_min~4_combout\)) # (\l2|sig_arr[2][6]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001010000000100000000000011110111111101011111000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[2][6]~q\,
	datab => \l2|ALT_INV_sig_arr[2][5]~q\,
	datac => \l2|ALT_INV_temp_min~2_combout\,
	datad => \l2|ALT_INV_temp_min~4_combout\,
	datae => \l2|ALT_INV_temp_min~3_combout\,
	dataf => \l2|ALT_INV_sig_arr[2][7]~q\,
	combout => \l2|LessThan3~10_combout\);

-- Location: LABCELL_X63_Y4_N9
\l2|LessThan3~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~11_combout\ = ( \l2|temp_min~3_combout\ & ( \l2|sig_arr[2][7]~q\ & ( (\l2|sig_arr[2][6]~q\ & ((!\l2|temp_min~4_combout\) # (\l2|sig_arr[2][5]~q\))) ) ) ) # ( !\l2|temp_min~3_combout\ & ( \l2|sig_arr[2][7]~q\ & ( (!\l2|temp_min~4_combout\) # 
-- (\l2|sig_arr[2][5]~q\) ) ) ) # ( \l2|temp_min~3_combout\ & ( !\l2|sig_arr[2][7]~q\ & ( (\l2|sig_arr[2][6]~q\ & (!\l2|temp_min~2_combout\ & ((!\l2|temp_min~4_combout\) # (\l2|sig_arr[2][5]~q\)))) ) ) ) # ( !\l2|temp_min~3_combout\ & ( !\l2|sig_arr[2][7]~q\ 
-- & ( (!\l2|temp_min~2_combout\ & ((!\l2|temp_min~4_combout\) # (\l2|sig_arr[2][5]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000000010100010000000011110011111100110101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[2][6]~q\,
	datab => \l2|ALT_INV_sig_arr[2][5]~q\,
	datac => \l2|ALT_INV_temp_min~4_combout\,
	datad => \l2|ALT_INV_temp_min~2_combout\,
	datae => \l2|ALT_INV_temp_min~3_combout\,
	dataf => \l2|ALT_INV_sig_arr[2][7]~q\,
	combout => \l2|LessThan3~11_combout\);

-- Location: FF_X63_Y5_N17
\u1|u_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|temp_min~0_combout\,
	asdata => \u1|u_arr[2][0]~q\,
	sload => \u1|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u_out\(0));

-- Location: FF_X63_Y4_N38
\l2|sig_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(0),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][0]~q\);

-- Location: FF_X64_Y4_N8
\l2|sig_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(1),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][1]~q\);

-- Location: MLABCELL_X65_Y4_N36
\l2|temp_min~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~6_combout\ = ( \l2|sig_arr[1][1]~q\ & ( ((\l2|LessThan1~0_combout\ & \l2|sig_arr[0][1]~q\)) # (\l2|LessThan2~10_combout\) ) ) # ( !\l2|sig_arr[1][1]~q\ & ( (\l2|LessThan1~0_combout\ & (!\l2|LessThan2~10_combout\ & \l2|sig_arr[0][1]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan1~0_combout\,
	datab => \l2|ALT_INV_LessThan2~10_combout\,
	datac => \l2|ALT_INV_sig_arr[0][1]~q\,
	dataf => \l2|ALT_INV_sig_arr[1][1]~q\,
	combout => \l2|temp_min~6_combout\);

-- Location: LABCELL_X64_Y4_N6
\l2|LessThan3~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~14_combout\ = ( !\l2|LessThan2~10_combout\ & ( (!\l2|sig_arr[2][1]~q\ & (((!\l2|sig_arr[2][0]~q\ & ((!\l2|LessThan1~0_combout\) # (\l2|sig_arr[0][0]~q\)))) # (\l2|temp_min~6_combout\))) # (\l2|sig_arr[2][1]~q\ & (!\l2|sig_arr[2][0]~q\ & 
-- (\l2|temp_min~6_combout\ & ((!\l2|LessThan1~0_combout\) # (\l2|sig_arr[0][0]~q\))))) ) ) # ( \l2|LessThan2~10_combout\ & ( (!\l2|sig_arr[2][1]~q\ & ((((!\l2|sig_arr[2][0]~q\ & \l2|sig_arr[1][0]~DUPLICATE_q\)) # (\l2|temp_min~6_combout\)))) # 
-- (\l2|sig_arr[2][1]~q\ & (!\l2|sig_arr[2][0]~q\ & (\l2|sig_arr[1][0]~DUPLICATE_q\ & ((\l2|temp_min~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1000000010001000000010000000100011101100111011101100111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[2][0]~q\,
	datab => \l2|ALT_INV_sig_arr[2][1]~q\,
	datac => \l2|ALT_INV_sig_arr[1][0]~DUPLICATE_q\,
	datad => \l2|ALT_INV_sig_arr[0][0]~q\,
	datae => \l2|ALT_INV_LessThan2~10_combout\,
	dataf => \l2|ALT_INV_temp_min~6_combout\,
	datag => \l2|ALT_INV_LessThan1~0_combout\,
	combout => \l2|LessThan3~14_combout\);

-- Location: FF_X63_Y4_N20
\l2|sig_arr[2][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(4),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][4]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y4_N51
\l2|LessThan3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~13_combout\ = (!\l2|sig_arr[2][4]~DUPLICATE_q\ & !\l2|temp_min~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_sig_arr[2][4]~DUPLICATE_q\,
	datac => \l2|ALT_INV_temp_min~1_combout\,
	combout => \l2|LessThan3~13_combout\);

-- Location: LABCELL_X63_Y4_N12
\l2|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~2_combout\ = ( \l2|LessThan3~14_combout\ & ( \l2|LessThan3~13_combout\ & ( (!\l2|LessThan3~10_combout\ & ((!\l2|LessThan3~12_combout\) # (!\l2|LessThan3~11_combout\))) ) ) ) # ( !\l2|LessThan3~14_combout\ & ( \l2|LessThan3~13_combout\ & ( 
-- (!\l2|LessThan3~10_combout\ & ((!\l2|LessThan3~12_combout\) # ((!\l2|LessThan3~1_combout\) # (!\l2|LessThan3~11_combout\)))) ) ) ) # ( \l2|LessThan3~14_combout\ & ( !\l2|LessThan3~13_combout\ & ( (!\l2|LessThan3~10_combout\ & ((!\l2|LessThan3~12_combout\) 
-- # (!\l2|LessThan3~11_combout\))) ) ) ) # ( !\l2|LessThan3~14_combout\ & ( !\l2|LessThan3~13_combout\ & ( (!\l2|LessThan3~10_combout\ & ((!\l2|LessThan3~11_combout\) # ((!\l2|LessThan3~12_combout\ & \l2|LessThan3~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000100000111100001010000011110000111000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan3~12_combout\,
	datab => \l2|ALT_INV_LessThan3~1_combout\,
	datac => \l2|ALT_INV_LessThan3~10_combout\,
	datad => \l2|ALT_INV_LessThan3~11_combout\,
	datae => \l2|ALT_INV_LessThan3~14_combout\,
	dataf => \l2|ALT_INV_LessThan3~13_combout\,
	combout => \l2|LessThan3~2_combout\);

-- Location: LABCELL_X64_Y4_N57
\l2|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan3~4_combout\ = ( \l2|sig_arr[2][9]~DUPLICATE_q\ & ( (\l2|temp_min~8_combout\ & (\l2|LessThan3~3_combout\ & (!\l2|temp_min~12_combout\ $ (!\l2|sig_arr[2][8]~q\)))) ) ) # ( !\l2|sig_arr[2][9]~DUPLICATE_q\ & ( (!\l2|temp_min~8_combout\ & 
-- (\l2|LessThan3~3_combout\ & (!\l2|temp_min~12_combout\ $ (!\l2|sig_arr[2][8]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000001000000100000000001000000100000000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_temp_min~12_combout\,
	datab => \l2|ALT_INV_temp_min~8_combout\,
	datac => \l2|ALT_INV_LessThan3~3_combout\,
	datad => \l2|ALT_INV_sig_arr[2][8]~q\,
	dataf => \l2|ALT_INV_sig_arr[2][9]~DUPLICATE_q\,
	combout => \l2|LessThan3~4_combout\);

-- Location: FF_X63_Y4_N34
\l2|sig_arr[2][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(6),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][6]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y4_N18
\l2|temp_min~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~20_combout\ = ( \l2|LessThan3~4_combout\ & ( \l2|sig_arr[2][6]~DUPLICATE_q\ & ( (((\l2|LessThan3~2_combout\) # (\l2|LessThan3~5_combout\)) # (\l2|LessThan3~6_combout\)) # (\l2|temp_min~3_combout\) ) ) ) # ( !\l2|LessThan3~4_combout\ & ( 
-- \l2|sig_arr[2][6]~DUPLICATE_q\ & ( ((\l2|LessThan3~5_combout\) # (\l2|LessThan3~6_combout\)) # (\l2|temp_min~3_combout\) ) ) ) # ( \l2|LessThan3~4_combout\ & ( !\l2|sig_arr[2][6]~DUPLICATE_q\ & ( (\l2|temp_min~3_combout\ & (!\l2|LessThan3~6_combout\ & 
-- (!\l2|LessThan3~5_combout\ & !\l2|LessThan3~2_combout\))) ) ) ) # ( !\l2|LessThan3~4_combout\ & ( !\l2|sig_arr[2][6]~DUPLICATE_q\ & ( (\l2|temp_min~3_combout\ & (!\l2|LessThan3~6_combout\ & !\l2|LessThan3~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000000000001111111011111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_temp_min~3_combout\,
	datab => \l2|ALT_INV_LessThan3~6_combout\,
	datac => \l2|ALT_INV_LessThan3~5_combout\,
	datad => \l2|ALT_INV_LessThan3~2_combout\,
	datae => \l2|ALT_INV_LessThan3~4_combout\,
	dataf => \l2|ALT_INV_sig_arr[2][6]~DUPLICATE_q\,
	combout => \l2|temp_min~20_combout\);

-- Location: FF_X62_Y4_N35
\l2|l_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~20_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][6]~q\);

-- Location: FF_X63_Y4_N47
\l2|l_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~20_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][6]~q\);

-- Location: FF_X63_Y4_N40
\l2|sig_arr[2][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|u_out\(7),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|sig_arr[2][7]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y4_N57
\l2|temp_min~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~19_combout\ = ( \l2|sig_arr[2][7]~DUPLICATE_q\ & ( \l2|temp_min~2_combout\ ) ) # ( !\l2|sig_arr[2][7]~DUPLICATE_q\ & ( \l2|temp_min~2_combout\ & ( (!\l2|LessThan3~6_combout\ & (!\l2|LessThan3~5_combout\ & ((!\l2|LessThan3~4_combout\) # 
-- (!\l2|LessThan3~2_combout\)))) ) ) ) # ( \l2|sig_arr[2][7]~DUPLICATE_q\ & ( !\l2|temp_min~2_combout\ & ( (((\l2|LessThan3~4_combout\ & \l2|LessThan3~2_combout\)) # (\l2|LessThan3~5_combout\)) # (\l2|LessThan3~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101111111111111001000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan3~4_combout\,
	datab => \l2|ALT_INV_LessThan3~6_combout\,
	datac => \l2|ALT_INV_LessThan3~2_combout\,
	datad => \l2|ALT_INV_LessThan3~5_combout\,
	datae => \l2|ALT_INV_sig_arr[2][7]~DUPLICATE_q\,
	dataf => \l2|ALT_INV_temp_min~2_combout\,
	combout => \l2|temp_min~19_combout\);

-- Location: FF_X63_Y4_N44
\l2|l_arr[1][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~19_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][7]~DUPLICATE_q\);

-- Location: FF_X63_Y4_N28
\l2|l_arr[0][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~19_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][7]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y4_N27
\l2|LessThan6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan6~7_combout\ = ( \l2|l_arr[1][7]~DUPLICATE_q\ & ( \l2|l_arr[0][7]~DUPLICATE_q\ & ( (!\l2|l_arr[0][6]~q\ & \l2|l_arr[1][6]~q\) ) ) ) # ( \l2|l_arr[1][7]~DUPLICATE_q\ & ( !\l2|l_arr[0][7]~DUPLICATE_q\ ) ) # ( !\l2|l_arr[1][7]~DUPLICATE_q\ & ( 
-- !\l2|l_arr[0][7]~DUPLICATE_q\ & ( (!\l2|l_arr[0][6]~q\ & \l2|l_arr[1][6]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[0][6]~q\,
	datad => \l2|ALT_INV_l_arr[1][6]~q\,
	datae => \l2|ALT_INV_l_arr[1][7]~DUPLICATE_q\,
	dataf => \l2|ALT_INV_l_arr[0][7]~DUPLICATE_q\,
	combout => \l2|LessThan6~7_combout\);

-- Location: LABCELL_X64_Y4_N30
\l2|temp_min~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~22_combout\ = ( \l2|LessThan3~5_combout\ & ( \l2|sig_arr[2][8]~q\ ) ) # ( !\l2|LessThan3~5_combout\ & ( \l2|sig_arr[2][8]~q\ & ( (!\l2|temp_min~12_combout\) # ((\l2|temp_min~8_combout\ & (!\l2|sig_arr[2][9]~DUPLICATE_q\ & 
-- \l2|LessThan3~3_combout\))) ) ) ) # ( !\l2|LessThan3~5_combout\ & ( !\l2|sig_arr[2][8]~q\ & ( (!\l2|temp_min~12_combout\ & ((!\l2|LessThan3~3_combout\) # ((!\l2|temp_min~8_combout\ & \l2|sig_arr[2][9]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001000000000000000000010101010101110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_temp_min~12_combout\,
	datab => \l2|ALT_INV_temp_min~8_combout\,
	datac => \l2|ALT_INV_sig_arr[2][9]~DUPLICATE_q\,
	datad => \l2|ALT_INV_LessThan3~3_combout\,
	datae => \l2|ALT_INV_LessThan3~5_combout\,
	dataf => \l2|ALT_INV_sig_arr[2][8]~q\,
	combout => \l2|temp_min~22_combout\);

-- Location: FF_X67_Y4_N29
\l2|l_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~22_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][8]~q\);

-- Location: LABCELL_X64_Y4_N27
\l2|temp_min~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~21_combout\ = ( \l2|sig_arr[2][10]~q\ & ( \l2|temp_min~11_combout\ ) ) # ( !\l2|sig_arr[2][10]~q\ & ( \l2|temp_min~11_combout\ & ( (!\l2|LessThan3~5_combout\ & (!\l2|LessThan3~6_combout\ & ((!\l2|LessThan3~2_combout\) # 
-- (!\l2|LessThan3~4_combout\)))) ) ) ) # ( \l2|sig_arr[2][10]~q\ & ( !\l2|temp_min~11_combout\ & ( (((\l2|LessThan3~2_combout\ & \l2|LessThan3~4_combout\)) # (\l2|LessThan3~6_combout\)) # (\l2|LessThan3~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101111111111111001000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan3~2_combout\,
	datab => \l2|ALT_INV_LessThan3~5_combout\,
	datac => \l2|ALT_INV_LessThan3~4_combout\,
	datad => \l2|ALT_INV_LessThan3~6_combout\,
	datae => \l2|ALT_INV_sig_arr[2][10]~q\,
	dataf => \l2|ALT_INV_temp_min~11_combout\,
	combout => \l2|temp_min~21_combout\);

-- Location: FF_X65_Y4_N47
\l2|l_arr[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~21_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][10]~q\);

-- Location: FF_X64_Y4_N13
\l2|l_arr[0][8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~22_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][8]~DUPLICATE_q\);

-- Location: FF_X67_Y4_N56
\l2|l_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~25_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][9]~q\);

-- Location: FF_X63_Y4_N7
\l2|l_arr[0][10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~21_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][10]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y4_N9
\l2|LessThan6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan6~8_combout\ = ( \l2|l_arr[0][10]~DUPLICATE_q\ & ( \l2|l_arr[0][9]~q\ & ( (\l2|l_arr[1][10]~q\ & (\l2|l_arr[1][9]~q\ & (!\l2|l_arr[1][8]~q\ $ (\l2|l_arr[0][8]~DUPLICATE_q\)))) ) ) ) # ( !\l2|l_arr[0][10]~DUPLICATE_q\ & ( \l2|l_arr[0][9]~q\ & ( 
-- (!\l2|l_arr[1][10]~q\ & (\l2|l_arr[1][9]~q\ & (!\l2|l_arr[1][8]~q\ $ (\l2|l_arr[0][8]~DUPLICATE_q\)))) ) ) ) # ( \l2|l_arr[0][10]~DUPLICATE_q\ & ( !\l2|l_arr[0][9]~q\ & ( (\l2|l_arr[1][10]~q\ & (!\l2|l_arr[1][9]~q\ & (!\l2|l_arr[1][8]~q\ $ 
-- (\l2|l_arr[0][8]~DUPLICATE_q\)))) ) ) ) # ( !\l2|l_arr[0][10]~DUPLICATE_q\ & ( !\l2|l_arr[0][9]~q\ & ( (!\l2|l_arr[1][10]~q\ & (!\l2|l_arr[1][9]~q\ & (!\l2|l_arr[1][8]~q\ $ (\l2|l_arr[0][8]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[1][8]~q\,
	datab => \l2|ALT_INV_l_arr[1][10]~q\,
	datac => \l2|ALT_INV_l_arr[0][8]~DUPLICATE_q\,
	datad => \l2|ALT_INV_l_arr[1][9]~q\,
	datae => \l2|ALT_INV_l_arr[0][10]~DUPLICATE_q\,
	dataf => \l2|ALT_INV_l_arr[0][9]~q\,
	combout => \l2|LessThan6~8_combout\);

-- Location: FF_X63_Y4_N8
\l2|l_arr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~21_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][10]~q\);

-- Location: LABCELL_X67_Y4_N24
\l2|LessThan6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan6~9_combout\ = ( \l2|l_arr[0][8]~DUPLICATE_q\ & ( \l2|l_arr[0][9]~q\ & ( (!\l2|l_arr[0][10]~q\ & \l2|l_arr[1][10]~q\) ) ) ) # ( !\l2|l_arr[0][8]~DUPLICATE_q\ & ( \l2|l_arr[0][9]~q\ & ( (!\l2|l_arr[0][10]~q\ & (((\l2|l_arr[1][8]~q\ & 
-- \l2|l_arr[1][9]~q\)) # (\l2|l_arr[1][10]~q\))) # (\l2|l_arr[0][10]~q\ & (\l2|l_arr[1][8]~q\ & (\l2|l_arr[1][9]~q\ & \l2|l_arr[1][10]~q\))) ) ) ) # ( \l2|l_arr[0][8]~DUPLICATE_q\ & ( !\l2|l_arr[0][9]~q\ & ( (!\l2|l_arr[0][10]~q\ & ((\l2|l_arr[1][10]~q\) # 
-- (\l2|l_arr[1][9]~q\))) # (\l2|l_arr[0][10]~q\ & (\l2|l_arr[1][9]~q\ & \l2|l_arr[1][10]~q\)) ) ) ) # ( !\l2|l_arr[0][8]~DUPLICATE_q\ & ( !\l2|l_arr[0][9]~q\ & ( (!\l2|l_arr[0][10]~q\ & (((\l2|l_arr[1][10]~q\) # (\l2|l_arr[1][9]~q\)) # 
-- (\l2|l_arr[1][8]~q\))) # (\l2|l_arr[0][10]~q\ & (\l2|l_arr[1][10]~q\ & ((\l2|l_arr[1][9]~q\) # (\l2|l_arr[1][8]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011011111000011001100111100000100110011010000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[1][8]~q\,
	datab => \l2|ALT_INV_l_arr[0][10]~q\,
	datac => \l2|ALT_INV_l_arr[1][9]~q\,
	datad => \l2|ALT_INV_l_arr[1][10]~q\,
	datae => \l2|ALT_INV_l_arr[0][8]~DUPLICATE_q\,
	dataf => \l2|ALT_INV_l_arr[0][9]~q\,
	combout => \l2|LessThan6~9_combout\);

-- Location: LABCELL_X67_Y4_N0
\l2|temp_min~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~24_combout\ = ( \l2|sig_arr[2][11]~q\ & ( \l2|temp_min~10_combout\ ) ) # ( !\l2|sig_arr[2][11]~q\ & ( \l2|temp_min~10_combout\ & ( (!\l2|LessThan3~6_combout\ & (!\l2|LessThan3~5_combout\ & ((!\l2|LessThan3~4_combout\) # 
-- (!\l2|LessThan3~2_combout\)))) ) ) ) # ( \l2|sig_arr[2][11]~q\ & ( !\l2|temp_min~10_combout\ & ( (((\l2|LessThan3~4_combout\ & \l2|LessThan3~2_combout\)) # (\l2|LessThan3~5_combout\)) # (\l2|LessThan3~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110111111111000000100000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan3~4_combout\,
	datab => \l2|ALT_INV_LessThan3~6_combout\,
	datac => \l2|ALT_INV_LessThan3~5_combout\,
	datad => \l2|ALT_INV_LessThan3~2_combout\,
	datae => \l2|ALT_INV_sig_arr[2][11]~q\,
	dataf => \l2|ALT_INV_temp_min~10_combout\,
	combout => \l2|temp_min~24_combout\);

-- Location: LABCELL_X68_Y4_N33
\l2|l_arr[1][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|l_arr[1][11]~feeder_combout\ = ( \l2|temp_min~24_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \l2|ALT_INV_temp_min~24_combout\,
	combout => \l2|l_arr[1][11]~feeder_combout\);

-- Location: FF_X68_Y4_N35
\l2|l_arr[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|l_arr[1][11]~feeder_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][11]~q\);

-- Location: LABCELL_X63_Y4_N0
\l2|temp_min~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~23_combout\ = ( \l2|sig_arr[2][12]~q\ & ( \l2|temp_min~9_combout\ ) ) # ( !\l2|sig_arr[2][12]~q\ & ( \l2|temp_min~9_combout\ & ( (!\l2|LessThan3~5_combout\ & (!\l2|LessThan3~6_combout\ & ((!\l2|LessThan3~2_combout\) # 
-- (!\l2|LessThan3~4_combout\)))) ) ) ) # ( \l2|sig_arr[2][12]~q\ & ( !\l2|temp_min~9_combout\ & ( (((\l2|LessThan3~2_combout\ & \l2|LessThan3~4_combout\)) # (\l2|LessThan3~6_combout\)) # (\l2|LessThan3~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101111111111110101000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan3~5_combout\,
	datab => \l2|ALT_INV_LessThan3~2_combout\,
	datac => \l2|ALT_INV_LessThan3~4_combout\,
	datad => \l2|ALT_INV_LessThan3~6_combout\,
	datae => \l2|ALT_INV_sig_arr[2][12]~q\,
	dataf => \l2|ALT_INV_temp_min~9_combout\,
	combout => \l2|temp_min~23_combout\);

-- Location: FF_X68_Y4_N38
\l2|l_arr[1][12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~23_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][12]~DUPLICATE_q\);

-- Location: FF_X63_Y4_N16
\l2|l_arr[0][12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~23_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][12]~DUPLICATE_q\);

-- Location: FF_X67_Y4_N41
\l2|l_arr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~24_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][11]~q\);

-- Location: LABCELL_X68_Y4_N48
\l2|LessThan6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan6~10_combout\ = ( \l2|l_arr[0][12]~DUPLICATE_q\ & ( \l2|l_arr[0][11]~q\ & ( (\l2|l_arr[1][11]~q\ & \l2|l_arr[1][12]~DUPLICATE_q\) ) ) ) # ( !\l2|l_arr[0][12]~DUPLICATE_q\ & ( \l2|l_arr[0][11]~q\ & ( (\l2|l_arr[1][11]~q\ & 
-- !\l2|l_arr[1][12]~DUPLICATE_q\) ) ) ) # ( \l2|l_arr[0][12]~DUPLICATE_q\ & ( !\l2|l_arr[0][11]~q\ & ( (!\l2|l_arr[1][11]~q\ & \l2|l_arr[1][12]~DUPLICATE_q\) ) ) ) # ( !\l2|l_arr[0][12]~DUPLICATE_q\ & ( !\l2|l_arr[0][11]~q\ & ( (!\l2|l_arr[1][11]~q\ & 
-- !\l2|l_arr[1][12]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[1][11]~q\,
	datac => \l2|ALT_INV_l_arr[1][12]~DUPLICATE_q\,
	datae => \l2|ALT_INV_l_arr[0][12]~DUPLICATE_q\,
	dataf => \l2|ALT_INV_l_arr[0][11]~q\,
	combout => \l2|LessThan6~10_combout\);

-- Location: LABCELL_X68_Y4_N57
\l2|LessThan6~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan6~11_combout\ = ( !\l2|l_arr[0][12]~DUPLICATE_q\ & ( \l2|l_arr[0][11]~q\ & ( \l2|l_arr[1][12]~DUPLICATE_q\ ) ) ) # ( \l2|l_arr[0][12]~DUPLICATE_q\ & ( !\l2|l_arr[0][11]~q\ & ( (\l2|l_arr[1][11]~q\ & \l2|l_arr[1][12]~DUPLICATE_q\) ) ) ) # ( 
-- !\l2|l_arr[0][12]~DUPLICATE_q\ & ( !\l2|l_arr[0][11]~q\ & ( (\l2|l_arr[1][12]~DUPLICATE_q\) # (\l2|l_arr[1][11]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000000000101010100000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[1][11]~q\,
	datad => \l2|ALT_INV_l_arr[1][12]~DUPLICATE_q\,
	datae => \l2|ALT_INV_l_arr[0][12]~DUPLICATE_q\,
	dataf => \l2|ALT_INV_l_arr[0][11]~q\,
	combout => \l2|LessThan6~11_combout\);

-- Location: FF_X62_Y4_N34
\l2|l_arr[0][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~20_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][6]~DUPLICATE_q\);

-- Location: FF_X63_Y4_N29
\l2|l_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~19_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][7]~q\);

-- Location: LABCELL_X63_Y4_N48
\l2|LessThan6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan6~5_combout\ = ( \l2|l_arr[1][7]~DUPLICATE_q\ & ( (\l2|l_arr[0][7]~q\ & (!\l2|l_arr[1][6]~q\ $ (\l2|l_arr[0][6]~DUPLICATE_q\))) ) ) # ( !\l2|l_arr[1][7]~DUPLICATE_q\ & ( (!\l2|l_arr[0][7]~q\ & (!\l2|l_arr[1][6]~q\ $ 
-- (\l2|l_arr[0][6]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l2|ALT_INV_l_arr[1][6]~q\,
	datac => \l2|ALT_INV_l_arr[0][6]~DUPLICATE_q\,
	datad => \l2|ALT_INV_l_arr[0][7]~q\,
	dataf => \l2|ALT_INV_l_arr[1][7]~DUPLICATE_q\,
	combout => \l2|LessThan6~5_combout\);

-- Location: LABCELL_X63_Y4_N54
\l2|temp_min~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~17_combout\ = ( \l2|sig_arr[2][5]~q\ & ( \l2|temp_min~4_combout\ ) ) # ( !\l2|sig_arr[2][5]~q\ & ( \l2|temp_min~4_combout\ & ( (!\l2|LessThan3~6_combout\ & (!\l2|LessThan3~5_combout\ & ((!\l2|LessThan3~4_combout\) # 
-- (!\l2|LessThan3~2_combout\)))) ) ) ) # ( \l2|sig_arr[2][5]~q\ & ( !\l2|temp_min~4_combout\ & ( (((\l2|LessThan3~4_combout\ & \l2|LessThan3~2_combout\)) # (\l2|LessThan3~5_combout\)) # (\l2|LessThan3~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110111111111000000100000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan3~4_combout\,
	datab => \l2|ALT_INV_LessThan3~6_combout\,
	datac => \l2|ALT_INV_LessThan3~5_combout\,
	datad => \l2|ALT_INV_LessThan3~2_combout\,
	datae => \l2|ALT_INV_sig_arr[2][5]~q\,
	dataf => \l2|ALT_INV_temp_min~4_combout\,
	combout => \l2|temp_min~17_combout\);

-- Location: FF_X66_Y4_N44
\l2|l_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~17_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][5]~q\);

-- Location: FF_X66_Y4_N53
\l2|l_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~17_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][5]~q\);

-- Location: LABCELL_X62_Y4_N36
\l2|temp_min~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~18_combout\ = ( \l2|LessThan3~6_combout\ & ( \l2|sig_arr[2][4]~q\ ) ) # ( !\l2|LessThan3~6_combout\ & ( \l2|sig_arr[2][4]~q\ & ( ((!\l2|temp_min~1_combout\) # ((\l2|LessThan3~2_combout\ & \l2|LessThan3~4_combout\))) # 
-- (\l2|LessThan3~5_combout\) ) ) ) # ( !\l2|LessThan3~6_combout\ & ( !\l2|sig_arr[2][4]~q\ & ( (!\l2|LessThan3~5_combout\ & (!\l2|temp_min~1_combout\ & ((!\l2|LessThan3~2_combout\) # (!\l2|LessThan3~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000000000000000000011111111010101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan3~5_combout\,
	datab => \l2|ALT_INV_LessThan3~2_combout\,
	datac => \l2|ALT_INV_LessThan3~4_combout\,
	datad => \l2|ALT_INV_temp_min~1_combout\,
	datae => \l2|ALT_INV_LessThan3~6_combout\,
	dataf => \l2|ALT_INV_sig_arr[2][4]~q\,
	combout => \l2|temp_min~18_combout\);

-- Location: FF_X66_Y4_N20
\l2|l_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~18_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][4]~q\);

-- Location: FF_X66_Y4_N5
\l2|l_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~18_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][4]~q\);

-- Location: LABCELL_X66_Y4_N18
\l2|LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan6~3_combout\ = ( \l2|l_arr[0][4]~q\ & ( (\l2|l_arr[1][4]~q\ & (!\l2|l_arr[1][5]~q\ $ (\l2|l_arr[0][5]~q\))) ) ) # ( !\l2|l_arr[0][4]~q\ & ( (!\l2|l_arr[1][4]~q\ & (!\l2|l_arr[1][5]~q\ $ (\l2|l_arr[0][5]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l2|ALT_INV_l_arr[1][5]~q\,
	datac => \l2|ALT_INV_l_arr[0][5]~q\,
	datad => \l2|ALT_INV_l_arr[1][4]~q\,
	dataf => \l2|ALT_INV_l_arr[0][4]~q\,
	combout => \l2|LessThan6~3_combout\);

-- Location: LABCELL_X63_Y4_N3
\l2|temp_min~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~16_combout\ = ( \l2|sig_arr[2][2]~q\ & ( \l2|temp_min~5_combout\ ) ) # ( !\l2|sig_arr[2][2]~q\ & ( \l2|temp_min~5_combout\ & ( (!\l2|LessThan3~5_combout\ & (!\l2|LessThan3~6_combout\ & ((!\l2|LessThan3~2_combout\) # 
-- (!\l2|LessThan3~4_combout\)))) ) ) ) # ( \l2|sig_arr[2][2]~q\ & ( !\l2|temp_min~5_combout\ & ( (((\l2|LessThan3~2_combout\ & \l2|LessThan3~4_combout\)) # (\l2|LessThan3~6_combout\)) # (\l2|LessThan3~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110111111110100000100000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan3~5_combout\,
	datab => \l2|ALT_INV_LessThan3~2_combout\,
	datac => \l2|ALT_INV_LessThan3~6_combout\,
	datad => \l2|ALT_INV_LessThan3~4_combout\,
	datae => \l2|ALT_INV_sig_arr[2][2]~q\,
	dataf => \l2|ALT_INV_temp_min~5_combout\,
	combout => \l2|temp_min~16_combout\);

-- Location: LABCELL_X66_Y4_N51
\l2|l_arr[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|l_arr[0][2]~feeder_combout\ = \l2|temp_min~16_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l2|ALT_INV_temp_min~16_combout\,
	combout => \l2|l_arr[0][2]~feeder_combout\);

-- Location: FF_X66_Y4_N52
\l2|l_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|l_arr[0][2]~feeder_combout\,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][2]~q\);

-- Location: MLABCELL_X65_Y4_N39
\l2|temp_min~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~7_combout\ = ( \l2|sig_arr[0][3]~DUPLICATE_q\ & ( (!\l2|LessThan2~10_combout\ & (\l2|LessThan1~0_combout\)) # (\l2|LessThan2~10_combout\ & ((\l2|sig_arr[1][3]~q\))) ) ) # ( !\l2|sig_arr[0][3]~DUPLICATE_q\ & ( (\l2|LessThan2~10_combout\ & 
-- \l2|sig_arr[1][3]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan1~0_combout\,
	datab => \l2|ALT_INV_LessThan2~10_combout\,
	datac => \l2|ALT_INV_sig_arr[1][3]~q\,
	dataf => \l2|ALT_INV_sig_arr[0][3]~DUPLICATE_q\,
	combout => \l2|temp_min~7_combout\);

-- Location: LABCELL_X67_Y4_N3
\l2|temp_min~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~15_combout\ = ( \l2|sig_arr[2][3]~q\ & ( \l2|temp_min~7_combout\ ) ) # ( !\l2|sig_arr[2][3]~q\ & ( \l2|temp_min~7_combout\ & ( (!\l2|LessThan3~6_combout\ & (!\l2|LessThan3~5_combout\ & ((!\l2|LessThan3~4_combout\) # 
-- (!\l2|LessThan3~2_combout\)))) ) ) ) # ( \l2|sig_arr[2][3]~q\ & ( !\l2|temp_min~7_combout\ & ( (((\l2|LessThan3~4_combout\ & \l2|LessThan3~2_combout\)) # (\l2|LessThan3~5_combout\)) # (\l2|LessThan3~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101111111111111001000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan3~4_combout\,
	datab => \l2|ALT_INV_LessThan3~6_combout\,
	datac => \l2|ALT_INV_LessThan3~2_combout\,
	datad => \l2|ALT_INV_LessThan3~5_combout\,
	datae => \l2|ALT_INV_sig_arr[2][3]~q\,
	dataf => \l2|ALT_INV_temp_min~7_combout\,
	combout => \l2|temp_min~15_combout\);

-- Location: FF_X66_Y4_N35
\l2|l_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~15_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][3]~q\);

-- Location: FF_X66_Y4_N47
\l2|l_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~16_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][2]~q\);

-- Location: FF_X67_Y4_N53
\l2|l_arr[0][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~15_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][3]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N45
\l2|LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan6~2_combout\ = ( \l2|l_arr[0][3]~DUPLICATE_q\ & ( (!\l2|l_arr[0][2]~q\ & (\l2|l_arr[1][3]~q\ & \l2|l_arr[1][2]~q\)) ) ) # ( !\l2|l_arr[0][3]~DUPLICATE_q\ & ( ((!\l2|l_arr[0][2]~q\ & \l2|l_arr[1][2]~q\)) # (\l2|l_arr[1][3]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l2|ALT_INV_l_arr[0][2]~q\,
	datac => \l2|ALT_INV_l_arr[1][3]~q\,
	datad => \l2|ALT_INV_l_arr[1][2]~q\,
	dataf => \l2|ALT_INV_l_arr[0][3]~DUPLICATE_q\,
	combout => \l2|LessThan6~2_combout\);

-- Location: LABCELL_X66_Y4_N42
\l2|LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan6~4_combout\ = ( \l2|l_arr[0][4]~q\ & ( (!\l2|l_arr[0][5]~q\ & \l2|l_arr[1][5]~q\) ) ) # ( !\l2|l_arr[0][4]~q\ & ( (!\l2|l_arr[0][5]~q\ & ((\l2|l_arr[1][5]~q\) # (\l2|l_arr[1][4]~q\))) # (\l2|l_arr[0][5]~q\ & (\l2|l_arr[1][4]~q\ & 
-- \l2|l_arr[1][5]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[0][5]~q\,
	datac => \l2|ALT_INV_l_arr[1][4]~q\,
	datad => \l2|ALT_INV_l_arr[1][5]~q\,
	dataf => \l2|ALT_INV_l_arr[0][4]~q\,
	combout => \l2|LessThan6~4_combout\);

-- Location: LABCELL_X66_Y4_N33
\l2|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan6~1_combout\ = ( \l2|l_arr[0][3]~DUPLICATE_q\ & ( (\l2|l_arr[1][3]~q\ & (!\l2|l_arr[1][2]~q\ $ (\l2|l_arr[0][2]~q\))) ) ) # ( !\l2|l_arr[0][3]~DUPLICATE_q\ & ( (!\l2|l_arr[1][3]~q\ & (!\l2|l_arr[1][2]~q\ $ (\l2|l_arr[0][2]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l2|ALT_INV_l_arr[1][2]~q\,
	datac => \l2|ALT_INV_l_arr[0][2]~q\,
	datad => \l2|ALT_INV_l_arr[1][3]~q\,
	dataf => \l2|ALT_INV_l_arr[0][3]~DUPLICATE_q\,
	combout => \l2|LessThan6~1_combout\);

-- Location: LABCELL_X64_Y4_N0
\l2|temp_min~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~0_combout\ = ( \l2|sig_arr[0][0]~q\ & ( (\l2|LessThan2~10_combout\ & !\l2|sig_arr[1][0]~DUPLICATE_q\) ) ) # ( !\l2|sig_arr[0][0]~q\ & ( (!\l2|LessThan2~10_combout\ & (\l2|LessThan1~0_combout\)) # (\l2|LessThan2~10_combout\ & 
-- ((!\l2|sig_arr[1][0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110100011101000111010000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan1~0_combout\,
	datab => \l2|ALT_INV_LessThan2~10_combout\,
	datac => \l2|ALT_INV_sig_arr[1][0]~DUPLICATE_q\,
	dataf => \l2|ALT_INV_sig_arr[0][0]~q\,
	combout => \l2|temp_min~0_combout\);

-- Location: LABCELL_X63_Y4_N30
\l2|temp_min~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~13_combout\ = ( \l2|LessThan3~4_combout\ & ( \l2|LessThan3~2_combout\ & ( \l2|sig_arr[2][0]~q\ ) ) ) # ( !\l2|LessThan3~4_combout\ & ( \l2|LessThan3~2_combout\ & ( (!\l2|LessThan3~5_combout\ & ((!\l2|LessThan3~6_combout\ & 
-- (!\l2|temp_min~0_combout\)) # (\l2|LessThan3~6_combout\ & ((\l2|sig_arr[2][0]~q\))))) # (\l2|LessThan3~5_combout\ & (((\l2|sig_arr[2][0]~q\)))) ) ) ) # ( \l2|LessThan3~4_combout\ & ( !\l2|LessThan3~2_combout\ & ( (!\l2|LessThan3~5_combout\ & 
-- ((!\l2|LessThan3~6_combout\ & (!\l2|temp_min~0_combout\)) # (\l2|LessThan3~6_combout\ & ((\l2|sig_arr[2][0]~q\))))) # (\l2|LessThan3~5_combout\ & (((\l2|sig_arr[2][0]~q\)))) ) ) ) # ( !\l2|LessThan3~4_combout\ & ( !\l2|LessThan3~2_combout\ & ( 
-- (!\l2|LessThan3~5_combout\ & ((!\l2|LessThan3~6_combout\ & (!\l2|temp_min~0_combout\)) # (\l2|LessThan3~6_combout\ & ((\l2|sig_arr[2][0]~q\))))) # (\l2|LessThan3~5_combout\ & (((\l2|sig_arr[2][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110100001111100011010000111110001101000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan3~5_combout\,
	datab => \l2|ALT_INV_temp_min~0_combout\,
	datac => \l2|ALT_INV_sig_arr[2][0]~q\,
	datad => \l2|ALT_INV_LessThan3~6_combout\,
	datae => \l2|ALT_INV_LessThan3~4_combout\,
	dataf => \l2|ALT_INV_LessThan3~2_combout\,
	combout => \l2|temp_min~13_combout\);

-- Location: FF_X66_Y4_N56
\l2|l_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~13_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][0]~q\);

-- Location: LABCELL_X64_Y4_N24
\l2|temp_min~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_min~14_combout\ = ( \l2|sig_arr[2][1]~q\ & ( \l2|temp_min~6_combout\ ) ) # ( !\l2|sig_arr[2][1]~q\ & ( \l2|temp_min~6_combout\ & ( (!\l2|LessThan3~5_combout\ & (!\l2|LessThan3~6_combout\ & ((!\l2|LessThan3~2_combout\) # 
-- (!\l2|LessThan3~4_combout\)))) ) ) ) # ( \l2|sig_arr[2][1]~q\ & ( !\l2|temp_min~6_combout\ & ( (((\l2|LessThan3~2_combout\ & \l2|LessThan3~4_combout\)) # (\l2|LessThan3~6_combout\)) # (\l2|LessThan3~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110111111111000000100000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan3~2_combout\,
	datab => \l2|ALT_INV_LessThan3~5_combout\,
	datac => \l2|ALT_INV_LessThan3~6_combout\,
	datad => \l2|ALT_INV_LessThan3~4_combout\,
	datae => \l2|ALT_INV_sig_arr[2][1]~q\,
	dataf => \l2|ALT_INV_temp_min~6_combout\,
	combout => \l2|temp_min~14_combout\);

-- Location: FF_X66_Y4_N38
\l2|l_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~14_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][1]~q\);

-- Location: FF_X66_Y4_N26
\l2|l_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~13_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][0]~q\);

-- Location: FF_X65_Y4_N17
\l2|l_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~14_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][1]~q\);

-- Location: LABCELL_X66_Y4_N24
\l2|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan6~0_combout\ = ( \l2|l_arr[1][1]~q\ & ( (!\l2|l_arr[0][1]~q\) # ((!\l2|l_arr[0][0]~q\ & \l2|l_arr[1][0]~q\)) ) ) # ( !\l2|l_arr[1][1]~q\ & ( (!\l2|l_arr[0][0]~q\ & (!\l2|l_arr[0][1]~q\ & \l2|l_arr[1][0]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000011110000111110101111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[0][0]~q\,
	datac => \l2|ALT_INV_l_arr[0][1]~q\,
	datad => \l2|ALT_INV_l_arr[1][0]~q\,
	dataf => \l2|ALT_INV_l_arr[1][1]~q\,
	combout => \l2|LessThan6~0_combout\);

-- Location: LABCELL_X67_Y4_N48
\l2|LessThan6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan6~6_combout\ = ( \l2|LessThan6~1_combout\ & ( \l2|LessThan6~0_combout\ & ( (\l2|LessThan6~5_combout\ & ((\l2|LessThan6~4_combout\) # (\l2|LessThan6~3_combout\))) ) ) ) # ( !\l2|LessThan6~1_combout\ & ( \l2|LessThan6~0_combout\ & ( 
-- (\l2|LessThan6~5_combout\ & (((\l2|LessThan6~3_combout\ & \l2|LessThan6~2_combout\)) # (\l2|LessThan6~4_combout\))) ) ) ) # ( \l2|LessThan6~1_combout\ & ( !\l2|LessThan6~0_combout\ & ( (\l2|LessThan6~5_combout\ & (((\l2|LessThan6~3_combout\ & 
-- \l2|LessThan6~2_combout\)) # (\l2|LessThan6~4_combout\))) ) ) ) # ( !\l2|LessThan6~1_combout\ & ( !\l2|LessThan6~0_combout\ & ( (\l2|LessThan6~5_combout\ & (((\l2|LessThan6~3_combout\ & \l2|LessThan6~2_combout\)) # (\l2|LessThan6~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101000000010101010100000001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan6~5_combout\,
	datab => \l2|ALT_INV_LessThan6~3_combout\,
	datac => \l2|ALT_INV_LessThan6~2_combout\,
	datad => \l2|ALT_INV_LessThan6~4_combout\,
	datae => \l2|ALT_INV_LessThan6~1_combout\,
	dataf => \l2|ALT_INV_LessThan6~0_combout\,
	combout => \l2|LessThan6~6_combout\);

-- Location: LABCELL_X67_Y4_N42
\l2|LessThan6~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan6~12_combout\ = ( \l2|LessThan6~11_combout\ & ( \l2|LessThan6~6_combout\ ) ) # ( !\l2|LessThan6~11_combout\ & ( \l2|LessThan6~6_combout\ & ( (\l2|LessThan6~10_combout\ & ((\l2|LessThan6~9_combout\) # (\l2|LessThan6~8_combout\))) ) ) ) # ( 
-- \l2|LessThan6~11_combout\ & ( !\l2|LessThan6~6_combout\ ) ) # ( !\l2|LessThan6~11_combout\ & ( !\l2|LessThan6~6_combout\ & ( (\l2|LessThan6~10_combout\ & (((\l2|LessThan6~7_combout\ & \l2|LessThan6~8_combout\)) # (\l2|LessThan6~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111111111111111111100000000001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan6~7_combout\,
	datab => \l2|ALT_INV_LessThan6~8_combout\,
	datac => \l2|ALT_INV_LessThan6~9_combout\,
	datad => \l2|ALT_INV_LessThan6~10_combout\,
	datae => \l2|ALT_INV_LessThan6~11_combout\,
	dataf => \l2|ALT_INV_LessThan6~6_combout\,
	combout => \l2|LessThan6~12_combout\);

-- Location: LABCELL_X67_Y5_N57
\l2|temp_max~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_max~5_combout\ = ( \l2|LessThan6~12_combout\ & ( \l2|l_arr[1][9]~DUPLICATE_q\ ) ) # ( !\l2|LessThan6~12_combout\ & ( \l2|l_arr[0][9]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[1][9]~DUPLICATE_q\,
	datac => \l2|ALT_INV_l_arr[0][9]~q\,
	dataf => \l2|ALT_INV_LessThan6~12_combout\,
	combout => \l2|temp_max~5_combout\);

-- Location: FF_X64_Y4_N50
\l2|l_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_min~25_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[2][9]~q\);

-- Location: FF_X68_Y4_N37
\l2|l_arr[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~23_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][12]~q\);

-- Location: FF_X63_Y4_N2
\l2|l_arr[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_min~23_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[2][12]~q\);

-- Location: FF_X63_Y4_N17
\l2|l_arr[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~23_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][12]~q\);

-- Location: LABCELL_X66_Y4_N3
\l2|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan5~0_combout\ = ( !\l2|l_arr[0][4]~q\ & ( !\l2|l_arr[0][3]~DUPLICATE_q\ & ( (!\l2|l_arr[0][0]~q\ & (!\l2|l_arr[0][2]~q\ & !\l2|l_arr[0][1]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[0][0]~q\,
	datac => \l2|ALT_INV_l_arr[0][2]~q\,
	datad => \l2|ALT_INV_l_arr[0][1]~q\,
	datae => \l2|ALT_INV_l_arr[0][4]~q\,
	dataf => \l2|ALT_INV_l_arr[0][3]~DUPLICATE_q\,
	combout => \l2|LessThan5~0_combout\);

-- Location: FF_X64_Y4_N14
\l2|l_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~22_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][8]~q\);

-- Location: LABCELL_X64_Y4_N15
\l2|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan5~1_combout\ = ( !\l2|l_arr[0][9]~q\ & ( !\l2|l_arr[0][6]~q\ & ( (!\l2|l_arr[0][10]~DUPLICATE_q\ & (!\l2|l_arr[0][8]~q\ & !\l2|l_arr[0][7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[0][10]~DUPLICATE_q\,
	datac => \l2|ALT_INV_l_arr[0][8]~q\,
	datad => \l2|ALT_INV_l_arr[0][7]~DUPLICATE_q\,
	datae => \l2|ALT_INV_l_arr[0][9]~q\,
	dataf => \l2|ALT_INV_l_arr[0][6]~q\,
	combout => \l2|LessThan5~1_combout\);

-- Location: LABCELL_X66_Y4_N48
\l2|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan5~2_combout\ = ( \l2|LessThan5~1_combout\ & ( (((!\l2|LessThan5~0_combout\) # (\l2|l_arr[0][5]~q\)) # (\l2|l_arr[0][12]~DUPLICATE_q\)) # (\l2|l_arr[0][11]~q\) ) ) # ( !\l2|LessThan5~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[0][11]~q\,
	datab => \l2|ALT_INV_l_arr[0][12]~DUPLICATE_q\,
	datac => \l2|ALT_INV_l_arr[0][5]~q\,
	datad => \l2|ALT_INV_LessThan5~0_combout\,
	dataf => \l2|ALT_INV_LessThan5~1_combout\,
	combout => \l2|LessThan5~2_combout\);

-- Location: FF_X67_Y4_N2
\l2|l_arr[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_min~24_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[2][11]~q\);

-- Location: FF_X64_Y4_N29
\l2|l_arr[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_min~21_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[2][10]~q\);

-- Location: FF_X64_Y4_N32
\l2|l_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_min~22_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[2][8]~q\);

-- Location: FF_X63_Y4_N43
\l2|l_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~19_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[1][7]~q\);

-- Location: FF_X63_Y4_N59
\l2|l_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_min~19_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[2][7]~q\);

-- Location: FF_X62_Y4_N20
\l2|l_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_min~20_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[2][6]~q\);

-- Location: FF_X63_Y4_N56
\l2|l_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_min~17_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[2][5]~q\);

-- Location: FF_X62_Y4_N38
\l2|l_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_min~18_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[2][4]~q\);

-- Location: FF_X67_Y4_N5
\l2|l_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_min~15_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[2][3]~q\);

-- Location: FF_X67_Y4_N52
\l2|l_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|temp_min~15_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[0][3]~q\);

-- Location: FF_X63_Y4_N5
\l2|l_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_min~16_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[2][2]~q\);

-- Location: FF_X64_Y4_N26
\l2|l_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_min~14_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[2][1]~q\);

-- Location: FF_X63_Y4_N32
\l2|l_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_min~13_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_arr[2][0]~q\);

-- Location: LABCELL_X66_Y5_N0
\l2|LessThan7~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~66_cout\ = CARRY(( \l2|l_arr[2][0]~q\ ) + ( (!\l2|LessThan6~12_combout\ & ((!\l2|LessThan5~2_combout\) # ((!\l2|l_arr[0][0]~q\)))) # (\l2|LessThan6~12_combout\ & (((!\l2|l_arr[1][0]~q\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan5~2_combout\,
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][0]~q\,
	datad => \l2|ALT_INV_l_arr[2][0]~q\,
	dataf => \l2|ALT_INV_l_arr[0][0]~q\,
	cin => GND,
	cout => \l2|LessThan7~66_cout\);

-- Location: LABCELL_X66_Y5_N3
\l2|LessThan7~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~62_cout\ = CARRY(( \l2|l_arr[2][1]~q\ ) + ( (!\l2|LessThan6~12_combout\ & ((!\l2|LessThan5~2_combout\) # ((!\l2|l_arr[0][1]~q\)))) # (\l2|LessThan6~12_combout\ & (((!\l2|l_arr[1][1]~q\)))) ) + ( \l2|LessThan7~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan5~2_combout\,
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][1]~q\,
	datad => \l2|ALT_INV_l_arr[2][1]~q\,
	dataf => \l2|ALT_INV_l_arr[0][1]~q\,
	cin => \l2|LessThan7~66_cout\,
	cout => \l2|LessThan7~62_cout\);

-- Location: LABCELL_X66_Y5_N6
\l2|LessThan7~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~58_cout\ = CARRY(( \l2|l_arr[2][2]~q\ ) + ( (!\l2|LessThan6~12_combout\ & ((!\l2|LessThan5~2_combout\) # ((!\l2|l_arr[0][2]~q\)))) # (\l2|LessThan6~12_combout\ & (((!\l2|l_arr[1][2]~q\)))) ) + ( \l2|LessThan7~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan5~2_combout\,
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][2]~q\,
	datad => \l2|ALT_INV_l_arr[2][2]~q\,
	dataf => \l2|ALT_INV_l_arr[0][2]~q\,
	cin => \l2|LessThan7~62_cout\,
	cout => \l2|LessThan7~58_cout\);

-- Location: LABCELL_X66_Y5_N9
\l2|LessThan7~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~54_cout\ = CARRY(( \l2|l_arr[2][3]~q\ ) + ( (!\l2|LessThan6~12_combout\ & ((!\l2|LessThan5~2_combout\) # ((!\l2|l_arr[0][3]~q\)))) # (\l2|LessThan6~12_combout\ & (((!\l2|l_arr[1][3]~q\)))) ) + ( \l2|LessThan7~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan5~2_combout\,
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][3]~q\,
	datad => \l2|ALT_INV_l_arr[2][3]~q\,
	dataf => \l2|ALT_INV_l_arr[0][3]~q\,
	cin => \l2|LessThan7~58_cout\,
	cout => \l2|LessThan7~54_cout\);

-- Location: LABCELL_X66_Y5_N12
\l2|LessThan7~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~50_cout\ = CARRY(( \l2|l_arr[2][4]~q\ ) + ( (!\l2|LessThan6~12_combout\ & ((!\l2|LessThan5~2_combout\) # ((!\l2|l_arr[0][4]~q\)))) # (\l2|LessThan6~12_combout\ & (((!\l2|l_arr[1][4]~q\)))) ) + ( \l2|LessThan7~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan5~2_combout\,
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][4]~q\,
	datad => \l2|ALT_INV_l_arr[2][4]~q\,
	dataf => \l2|ALT_INV_l_arr[0][4]~q\,
	cin => \l2|LessThan7~54_cout\,
	cout => \l2|LessThan7~50_cout\);

-- Location: LABCELL_X66_Y5_N15
\l2|LessThan7~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~46_cout\ = CARRY(( (!\l2|LessThan6~12_combout\ & ((!\l2|LessThan5~2_combout\) # ((!\l2|l_arr[0][5]~q\)))) # (\l2|LessThan6~12_combout\ & (((!\l2|l_arr[1][5]~q\)))) ) + ( \l2|l_arr[2][5]~q\ ) + ( \l2|LessThan7~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan5~2_combout\,
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][5]~q\,
	datad => \l2|ALT_INV_l_arr[0][5]~q\,
	dataf => \l2|ALT_INV_l_arr[2][5]~q\,
	cin => \l2|LessThan7~50_cout\,
	cout => \l2|LessThan7~46_cout\);

-- Location: LABCELL_X66_Y5_N18
\l2|LessThan7~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~42_cout\ = CARRY(( \l2|l_arr[2][6]~q\ ) + ( (!\l2|LessThan6~12_combout\ & ((!\l2|LessThan5~2_combout\) # ((!\l2|l_arr[0][6]~DUPLICATE_q\)))) # (\l2|LessThan6~12_combout\ & (((!\l2|l_arr[1][6]~q\)))) ) + ( \l2|LessThan7~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan5~2_combout\,
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][6]~q\,
	datad => \l2|ALT_INV_l_arr[2][6]~q\,
	dataf => \l2|ALT_INV_l_arr[0][6]~DUPLICATE_q\,
	cin => \l2|LessThan7~46_cout\,
	cout => \l2|LessThan7~42_cout\);

-- Location: LABCELL_X66_Y5_N21
\l2|LessThan7~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~38_cout\ = CARRY(( \l2|l_arr[2][7]~q\ ) + ( (!\l2|LessThan6~12_combout\ & ((!\l2|LessThan5~2_combout\) # ((!\l2|l_arr[0][7]~DUPLICATE_q\)))) # (\l2|LessThan6~12_combout\ & (((!\l2|l_arr[1][7]~q\)))) ) + ( \l2|LessThan7~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan5~2_combout\,
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][7]~q\,
	datad => \l2|ALT_INV_l_arr[2][7]~q\,
	dataf => \l2|ALT_INV_l_arr[0][7]~DUPLICATE_q\,
	cin => \l2|LessThan7~42_cout\,
	cout => \l2|LessThan7~38_cout\);

-- Location: LABCELL_X66_Y5_N24
\l2|LessThan7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~34_cout\ = CARRY(( \l2|l_arr[2][8]~q\ ) + ( (!\l2|LessThan6~12_combout\ & ((!\l2|LessThan5~2_combout\) # ((!\l2|l_arr[0][8]~DUPLICATE_q\)))) # (\l2|LessThan6~12_combout\ & (((!\l2|l_arr[1][8]~q\)))) ) + ( \l2|LessThan7~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan5~2_combout\,
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][8]~q\,
	datad => \l2|ALT_INV_l_arr[2][8]~q\,
	dataf => \l2|ALT_INV_l_arr[0][8]~DUPLICATE_q\,
	cin => \l2|LessThan7~38_cout\,
	cout => \l2|LessThan7~34_cout\);

-- Location: LABCELL_X66_Y5_N27
\l2|LessThan7~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~30_cout\ = CARRY(( \l2|l_arr[2][9]~q\ ) + ( (!\l2|LessThan6~12_combout\ & ((!\l2|LessThan5~2_combout\) # ((!\l2|l_arr[0][9]~q\)))) # (\l2|LessThan6~12_combout\ & (((!\l2|l_arr[1][9]~DUPLICATE_q\)))) ) + ( \l2|LessThan7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan5~2_combout\,
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][9]~DUPLICATE_q\,
	datad => \l2|ALT_INV_l_arr[2][9]~q\,
	dataf => \l2|ALT_INV_l_arr[0][9]~q\,
	cin => \l2|LessThan7~34_cout\,
	cout => \l2|LessThan7~30_cout\);

-- Location: LABCELL_X66_Y5_N30
\l2|LessThan7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~26_cout\ = CARRY(( (!\l2|LessThan6~12_combout\ & ((!\l2|LessThan5~2_combout\) # ((!\l2|l_arr[0][10]~DUPLICATE_q\)))) # (\l2|LessThan6~12_combout\ & (((!\l2|l_arr[1][10]~q\)))) ) + ( \l2|l_arr[2][10]~q\ ) + ( \l2|LessThan7~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan5~2_combout\,
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][10]~q\,
	datad => \l2|ALT_INV_l_arr[0][10]~DUPLICATE_q\,
	dataf => \l2|ALT_INV_l_arr[2][10]~q\,
	cin => \l2|LessThan7~30_cout\,
	cout => \l2|LessThan7~26_cout\);

-- Location: LABCELL_X66_Y5_N33
\l2|LessThan7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~22_cout\ = CARRY(( (!\l2|LessThan6~12_combout\ & ((!\l2|LessThan5~2_combout\) # ((!\l2|l_arr[0][11]~q\)))) # (\l2|LessThan6~12_combout\ & (((!\l2|l_arr[1][11]~q\)))) ) + ( \l2|l_arr[2][11]~q\ ) + ( \l2|LessThan7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_LessThan5~2_combout\,
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][11]~q\,
	datad => \l2|ALT_INV_l_arr[0][11]~q\,
	dataf => \l2|ALT_INV_l_arr[2][11]~q\,
	cin => \l2|LessThan7~26_cout\,
	cout => \l2|LessThan7~22_cout\);

-- Location: LABCELL_X66_Y5_N36
\l2|LessThan7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~18_cout\ = CARRY(( (!\l2|LessThan6~12_combout\ & ((!\l2|l_arr[0][12]~q\))) # (\l2|LessThan6~12_combout\ & (!\l2|l_arr[1][12]~q\)) ) + ( \l2|l_arr[2][12]~q\ ) + ( \l2|LessThan7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001110111000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[1][12]~q\,
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[2][12]~q\,
	datad => \l2|ALT_INV_l_arr[0][12]~q\,
	cin => \l2|LessThan7~22_cout\,
	cout => \l2|LessThan7~18_cout\);

-- Location: LABCELL_X66_Y5_N39
\l2|LessThan7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~14_cout\ = CARRY(( VCC ) + ( GND ) + ( \l2|LessThan7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \l2|LessThan7~18_cout\,
	cout => \l2|LessThan7~14_cout\);

-- Location: LABCELL_X66_Y5_N42
\l2|LessThan7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~10_cout\ = CARRY(( VCC ) + ( GND ) + ( \l2|LessThan7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \l2|LessThan7~14_cout\,
	cout => \l2|LessThan7~10_cout\);

-- Location: LABCELL_X66_Y5_N45
\l2|LessThan7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~6_cout\ = CARRY(( VCC ) + ( GND ) + ( \l2|LessThan7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \l2|LessThan7~10_cout\,
	cout => \l2|LessThan7~6_cout\);

-- Location: LABCELL_X66_Y5_N48
\l2|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|LessThan7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \l2|LessThan7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \l2|LessThan7~6_cout\,
	sumout => \l2|LessThan7~1_sumout\);

-- Location: FF_X67_Y5_N58
\l2|l_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_max~5_combout\,
	asdata => \l2|l_arr[2][9]~q\,
	sload => \l2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_out\(9));

-- Location: FF_X65_Y5_N31
\u2|sig_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(9),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][9]~q\);

-- Location: FF_X65_Y5_N17
\u2|sig_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(9),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][9]~q\);

-- Location: LABCELL_X67_Y5_N15
\l2|temp_max~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_max~9_combout\ = ( \l2|l_arr[0][5]~q\ & ( \l2|LessThan6~12_combout\ & ( \l2|l_arr[1][5]~q\ ) ) ) # ( !\l2|l_arr[0][5]~q\ & ( \l2|LessThan6~12_combout\ & ( \l2|l_arr[1][5]~q\ ) ) ) # ( \l2|l_arr[0][5]~q\ & ( !\l2|LessThan6~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \l2|ALT_INV_l_arr[1][5]~q\,
	datae => \l2|ALT_INV_l_arr[0][5]~q\,
	dataf => \l2|ALT_INV_LessThan6~12_combout\,
	combout => \l2|temp_max~9_combout\);

-- Location: FF_X67_Y5_N16
\l2|l_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_max~9_combout\,
	asdata => \l2|l_arr[2][5]~q\,
	sload => \l2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_out\(5));

-- Location: FF_X62_Y3_N50
\u2|sig_arr[1][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(5),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][5]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y5_N18
\l2|temp_max~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_max~8_combout\ = ( \l2|LessThan6~12_combout\ & ( \l2|l_arr[1][6]~q\ ) ) # ( !\l2|LessThan6~12_combout\ & ( \l2|l_arr[0][6]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l2|ALT_INV_l_arr[1][6]~q\,
	datac => \l2|ALT_INV_l_arr[0][6]~q\,
	dataf => \l2|ALT_INV_LessThan6~12_combout\,
	combout => \l2|temp_max~8_combout\);

-- Location: FF_X67_Y5_N19
\l2|l_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_max~8_combout\,
	asdata => \l2|l_arr[2][6]~q\,
	sload => \l2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_out\(6));

-- Location: FF_X61_Y3_N1
\u2|sig_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(6),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][6]~q\);

-- Location: FF_X62_Y3_N11
\u2|sig_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(6),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][6]~q\);

-- Location: FF_X62_Y3_N26
\u2|sig_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(5),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][5]~q\);

-- Location: LABCELL_X67_Y5_N39
\l2|temp_max~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_max~7_combout\ = ( \l2|LessThan6~12_combout\ & ( \l2|l_arr[1][7]~q\ ) ) # ( !\l2|LessThan6~12_combout\ & ( \l2|l_arr[0][7]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[0][7]~DUPLICATE_q\,
	datad => \l2|ALT_INV_l_arr[1][7]~q\,
	dataf => \l2|ALT_INV_LessThan6~12_combout\,
	combout => \l2|temp_max~7_combout\);

-- Location: FF_X67_Y5_N40
\l2|l_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_max~7_combout\,
	asdata => \l2|l_arr[2][7]~q\,
	sload => \l2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_out\(7));

-- Location: FF_X62_Y3_N29
\u2|sig_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(7),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][7]~q\);

-- Location: FF_X62_Y3_N8
\u2|sig_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(7),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][7]~q\);

-- Location: LABCELL_X62_Y3_N51
\u2|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan2~1_combout\ = ( \u2|sig_arr[0][7]~q\ & ( \u2|sig_arr[1][7]~q\ & ( (!\u2|sig_arr[1][5]~DUPLICATE_q\ & (!\u2|sig_arr[0][5]~q\ & (!\u2|sig_arr[0][6]~q\ $ (\u2|sig_arr[1][6]~q\)))) # (\u2|sig_arr[1][5]~DUPLICATE_q\ & (\u2|sig_arr[0][5]~q\ & 
-- (!\u2|sig_arr[0][6]~q\ $ (\u2|sig_arr[1][6]~q\)))) ) ) ) # ( !\u2|sig_arr[0][7]~q\ & ( !\u2|sig_arr[1][7]~q\ & ( (!\u2|sig_arr[1][5]~DUPLICATE_q\ & (!\u2|sig_arr[0][5]~q\ & (!\u2|sig_arr[0][6]~q\ $ (\u2|sig_arr[1][6]~q\)))) # 
-- (\u2|sig_arr[1][5]~DUPLICATE_q\ & (\u2|sig_arr[0][5]~q\ & (!\u2|sig_arr[0][6]~q\ $ (\u2|sig_arr[1][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001000000000000000000000000000000001000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[1][5]~DUPLICATE_q\,
	datab => \u2|ALT_INV_sig_arr[0][6]~q\,
	datac => \u2|ALT_INV_sig_arr[1][6]~q\,
	datad => \u2|ALT_INV_sig_arr[0][5]~q\,
	datae => \u2|ALT_INV_sig_arr[0][7]~q\,
	dataf => \u2|ALT_INV_sig_arr[1][7]~q\,
	combout => \u2|LessThan2~1_combout\);

-- Location: LABCELL_X68_Y4_N27
\l2|temp_max~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_max~2_combout\ = ( \l2|LessThan6~12_combout\ & ( \l2|l_arr[0][11]~q\ & ( \l2|l_arr[1][11]~q\ ) ) ) # ( !\l2|LessThan6~12_combout\ & ( \l2|l_arr[0][11]~q\ ) ) # ( \l2|LessThan6~12_combout\ & ( !\l2|l_arr[0][11]~q\ & ( \l2|l_arr[1][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[1][11]~q\,
	datae => \l2|ALT_INV_LessThan6~12_combout\,
	dataf => \l2|ALT_INV_l_arr[0][11]~q\,
	combout => \l2|temp_max~2_combout\);

-- Location: LABCELL_X67_Y5_N27
\l2|l_out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|l_out[11]~feeder_combout\ = \l2|temp_max~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_temp_max~2_combout\,
	combout => \l2|l_out[11]~feeder_combout\);

-- Location: FF_X67_Y5_N28
\l2|l_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|l_out[11]~feeder_combout\,
	asdata => \l2|l_arr[2][11]~q\,
	sload => \l2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_out\(11));

-- Location: FF_X62_Y3_N56
\u2|sig_arr[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(11),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][11]~q\);

-- Location: FF_X62_Y3_N17
\u2|sig_arr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(11),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][11]~q\);

-- Location: LABCELL_X67_Y5_N30
\l2|temp_max~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_max~1_combout\ = ( \l2|LessThan6~12_combout\ & ( \l2|l_arr[1][12]~q\ ) ) # ( !\l2|LessThan6~12_combout\ & ( \l2|l_arr[0][12]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[1][12]~q\,
	datac => \l2|ALT_INV_l_arr[0][12]~q\,
	dataf => \l2|ALT_INV_LessThan6~12_combout\,
	combout => \l2|temp_max~1_combout\);

-- Location: FF_X67_Y5_N31
\l2|l_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_max~1_combout\,
	asdata => \l2|l_arr[2][12]~q\,
	sload => \l2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_out\(12));

-- Location: LABCELL_X60_Y3_N39
\u2|sig_arr[1][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|sig_arr[1][12]~feeder_combout\ = ( \l2|l_out\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \l2|ALT_INV_l_out\(12),
	combout => \u2|sig_arr[1][12]~feeder_combout\);

-- Location: FF_X60_Y3_N41
\u2|sig_arr[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|sig_arr[1][12]~feeder_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][12]~q\);

-- Location: LABCELL_X67_Y5_N45
\l2|temp_max~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_max~3_combout\ = ( \l2|l_arr[0][8]~DUPLICATE_q\ & ( \l2|LessThan6~12_combout\ & ( \l2|l_arr[1][8]~q\ ) ) ) # ( !\l2|l_arr[0][8]~DUPLICATE_q\ & ( \l2|LessThan6~12_combout\ & ( \l2|l_arr[1][8]~q\ ) ) ) # ( \l2|l_arr[0][8]~DUPLICATE_q\ & ( 
-- !\l2|LessThan6~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[1][8]~q\,
	datae => \l2|ALT_INV_l_arr[0][8]~DUPLICATE_q\,
	dataf => \l2|ALT_INV_LessThan6~12_combout\,
	combout => \l2|temp_max~3_combout\);

-- Location: FF_X67_Y5_N46
\l2|l_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_max~3_combout\,
	asdata => \l2|l_arr[2][8]~q\,
	sload => \l2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_out\(8));

-- Location: FF_X62_Y3_N20
\u2|sig_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(8),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][8]~q\);

-- Location: FF_X62_Y3_N5
\u2|sig_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(8),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][8]~q\);

-- Location: FF_X62_Y3_N35
\u2|sig_arr[0][12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(12),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][12]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y3_N21
\u2|LessThan2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan2~8_combout\ = ( \u2|sig_arr[0][8]~q\ & ( \u2|sig_arr[0][12]~DUPLICATE_q\ & ( (!\u2|sig_arr[1][12]~q\) # ((!\u2|sig_arr[1][11]~q\ & ((!\u2|sig_arr[1][8]~q\) # (\u2|sig_arr[0][11]~q\))) # (\u2|sig_arr[1][11]~q\ & (\u2|sig_arr[0][11]~q\ & 
-- !\u2|sig_arr[1][8]~q\))) ) ) ) # ( !\u2|sig_arr[0][8]~q\ & ( \u2|sig_arr[0][12]~DUPLICATE_q\ & ( (!\u2|sig_arr[1][12]~q\) # ((!\u2|sig_arr[1][11]~q\ & \u2|sig_arr[0][11]~q\)) ) ) ) # ( \u2|sig_arr[0][8]~q\ & ( !\u2|sig_arr[0][12]~DUPLICATE_q\ & ( 
-- (!\u2|sig_arr[1][12]~q\ & ((!\u2|sig_arr[1][11]~q\ & ((!\u2|sig_arr[1][8]~q\) # (\u2|sig_arr[0][11]~q\))) # (\u2|sig_arr[1][11]~q\ & (\u2|sig_arr[0][11]~q\ & !\u2|sig_arr[1][8]~q\)))) ) ) ) # ( !\u2|sig_arr[0][8]~q\ & ( !\u2|sig_arr[0][12]~DUPLICATE_q\ & 
-- ( (!\u2|sig_arr[1][11]~q\ & (\u2|sig_arr[0][11]~q\ & !\u2|sig_arr[1][12]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000101100000010000011110010111100101111101111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[1][11]~q\,
	datab => \u2|ALT_INV_sig_arr[0][11]~q\,
	datac => \u2|ALT_INV_sig_arr[1][12]~q\,
	datad => \u2|ALT_INV_sig_arr[1][8]~q\,
	datae => \u2|ALT_INV_sig_arr[0][8]~q\,
	dataf => \u2|ALT_INV_sig_arr[0][12]~DUPLICATE_q\,
	combout => \u2|LessThan2~8_combout\);

-- Location: LABCELL_X62_Y3_N24
\u2|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan2~4_combout\ = ( \u2|sig_arr[0][5]~q\ & ( \u2|sig_arr[1][7]~q\ & ( (!\u2|sig_arr[0][7]~q\) # ((\u2|sig_arr[1][6]~q\ & !\u2|sig_arr[0][6]~q\)) ) ) ) # ( !\u2|sig_arr[0][5]~q\ & ( \u2|sig_arr[1][7]~q\ & ( (!\u2|sig_arr[0][7]~q\) # 
-- ((!\u2|sig_arr[1][6]~q\ & (\u2|sig_arr[1][5]~DUPLICATE_q\ & !\u2|sig_arr[0][6]~q\)) # (\u2|sig_arr[1][6]~q\ & ((!\u2|sig_arr[0][6]~q\) # (\u2|sig_arr[1][5]~DUPLICATE_q\)))) ) ) ) # ( \u2|sig_arr[0][5]~q\ & ( !\u2|sig_arr[1][7]~q\ & ( 
-- (!\u2|sig_arr[0][7]~q\ & (\u2|sig_arr[1][6]~q\ & !\u2|sig_arr[0][6]~q\)) ) ) ) # ( !\u2|sig_arr[0][5]~q\ & ( !\u2|sig_arr[1][7]~q\ & ( (!\u2|sig_arr[0][7]~q\ & ((!\u2|sig_arr[1][6]~q\ & (\u2|sig_arr[1][5]~DUPLICATE_q\ & !\u2|sig_arr[0][6]~q\)) # 
-- (\u2|sig_arr[1][6]~q\ & ((!\u2|sig_arr[0][6]~q\) # (\u2|sig_arr[1][5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000010001000100000000010111111101010111011101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[0][7]~q\,
	datab => \u2|ALT_INV_sig_arr[1][6]~q\,
	datac => \u2|ALT_INV_sig_arr[1][5]~DUPLICATE_q\,
	datad => \u2|ALT_INV_sig_arr[0][6]~q\,
	datae => \u2|ALT_INV_sig_arr[0][5]~q\,
	dataf => \u2|ALT_INV_sig_arr[1][7]~q\,
	combout => \u2|LessThan2~4_combout\);

-- Location: LABCELL_X62_Y3_N0
\u2|LessThan2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan2~10_combout\ = ( !\u2|LessThan2~4_combout\ & ( (!\u2|sig_arr[1][8]~q\) # (\u2|sig_arr[0][8]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_sig_arr[1][8]~q\,
	datad => \u2|ALT_INV_sig_arr[0][8]~q\,
	dataf => \u2|ALT_INV_LessThan2~4_combout\,
	combout => \u2|LessThan2~10_combout\);

-- Location: LABCELL_X67_Y5_N0
\l2|temp_max~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_max~4_combout\ = ( \l2|LessThan6~12_combout\ & ( \l2|l_arr[1][10]~q\ ) ) # ( !\l2|LessThan6~12_combout\ & ( \l2|l_arr[0][10]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l2|ALT_INV_l_arr[0][10]~DUPLICATE_q\,
	datac => \l2|ALT_INV_l_arr[1][10]~q\,
	dataf => \l2|ALT_INV_LessThan6~12_combout\,
	combout => \l2|temp_max~4_combout\);

-- Location: FF_X67_Y5_N1
\l2|l_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_max~4_combout\,
	asdata => \l2|l_arr[2][10]~q\,
	sload => \l2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_out\(10));

-- Location: FF_X65_Y5_N47
\u2|sig_arr[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(10),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][10]~q\);

-- Location: FF_X65_Y5_N32
\u2|sig_arr[1][9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(9),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][9]~DUPLICATE_q\);

-- Location: FF_X65_Y5_N38
\u2|sig_arr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(10),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][10]~q\);

-- Location: MLABCELL_X65_Y5_N42
\u2|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan2~0_combout\ = ( \u2|sig_arr[0][10]~q\ & ( \u2|sig_arr[0][9]~q\ & ( (\u2|sig_arr[1][10]~q\ & \u2|sig_arr[1][9]~DUPLICATE_q\) ) ) ) # ( !\u2|sig_arr[0][10]~q\ & ( \u2|sig_arr[0][9]~q\ & ( (!\u2|sig_arr[1][10]~q\ & 
-- \u2|sig_arr[1][9]~DUPLICATE_q\) ) ) ) # ( \u2|sig_arr[0][10]~q\ & ( !\u2|sig_arr[0][9]~q\ & ( (\u2|sig_arr[1][10]~q\ & !\u2|sig_arr[1][9]~DUPLICATE_q\) ) ) ) # ( !\u2|sig_arr[0][10]~q\ & ( !\u2|sig_arr[0][9]~q\ & ( (!\u2|sig_arr[1][10]~q\ & 
-- !\u2|sig_arr[1][9]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000001100110000000000000000110011000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_sig_arr[1][10]~q\,
	datad => \u2|ALT_INV_sig_arr[1][9]~DUPLICATE_q\,
	datae => \u2|ALT_INV_sig_arr[0][10]~q\,
	dataf => \u2|ALT_INV_sig_arr[0][9]~q\,
	combout => \u2|LessThan2~0_combout\);

-- Location: FF_X60_Y3_N40
\u2|sig_arr[1][12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|sig_arr[1][12]~feeder_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][12]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y5_N33
\u2|LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan2~5_combout\ = ( \u2|sig_arr[1][10]~q\ & ( \u2|sig_arr[1][9]~DUPLICATE_q\ & ( (!\u2|sig_arr[0][9]~q\) # (!\u2|sig_arr[0][10]~q\) ) ) ) # ( !\u2|sig_arr[1][10]~q\ & ( \u2|sig_arr[1][9]~DUPLICATE_q\ & ( (!\u2|sig_arr[0][9]~q\ & 
-- !\u2|sig_arr[0][10]~q\) ) ) ) # ( \u2|sig_arr[1][10]~q\ & ( !\u2|sig_arr[1][9]~DUPLICATE_q\ & ( !\u2|sig_arr[0][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000011110000000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_sig_arr[0][9]~q\,
	datad => \u2|ALT_INV_sig_arr[0][10]~q\,
	datae => \u2|ALT_INV_sig_arr[1][10]~q\,
	dataf => \u2|ALT_INV_sig_arr[1][9]~DUPLICATE_q\,
	combout => \u2|LessThan2~5_combout\);

-- Location: LABCELL_X62_Y3_N57
\u2|LessThan2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan2~9_combout\ = ( \u2|sig_arr[1][11]~q\ & ( \u2|LessThan2~5_combout\ & ( (!\u2|sig_arr[0][12]~DUPLICATE_q\) # (\u2|sig_arr[1][12]~DUPLICATE_q\) ) ) ) # ( !\u2|sig_arr[1][11]~q\ & ( \u2|LessThan2~5_combout\ & ( (!\u2|sig_arr[0][12]~DUPLICATE_q\ 
-- & ((!\u2|sig_arr[0][11]~q\) # (\u2|sig_arr[1][12]~DUPLICATE_q\))) # (\u2|sig_arr[0][12]~DUPLICATE_q\ & (!\u2|sig_arr[0][11]~q\ & \u2|sig_arr[1][12]~DUPLICATE_q\)) ) ) ) # ( \u2|sig_arr[1][11]~q\ & ( !\u2|LessThan2~5_combout\ & ( 
-- (!\u2|sig_arr[0][12]~DUPLICATE_q\ & ((!\u2|sig_arr[0][11]~q\) # (\u2|sig_arr[1][12]~DUPLICATE_q\))) # (\u2|sig_arr[0][12]~DUPLICATE_q\ & (!\u2|sig_arr[0][11]~q\ & \u2|sig_arr[1][12]~DUPLICATE_q\)) ) ) ) # ( !\u2|sig_arr[1][11]~q\ & ( 
-- !\u2|LessThan2~5_combout\ & ( (!\u2|sig_arr[0][12]~DUPLICATE_q\ & \u2|sig_arr[1][12]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010101000001111101010100000111110101010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[0][12]~DUPLICATE_q\,
	datac => \u2|ALT_INV_sig_arr[0][11]~q\,
	datad => \u2|ALT_INV_sig_arr[1][12]~DUPLICATE_q\,
	datae => \u2|ALT_INV_sig_arr[1][11]~q\,
	dataf => \u2|ALT_INV_LessThan2~5_combout\,
	combout => \u2|LessThan2~9_combout\);

-- Location: LABCELL_X67_Y5_N24
\l2|temp_max~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_max~6_combout\ = ( \l2|LessThan6~12_combout\ & ( \l2|l_arr[1][4]~q\ ) ) # ( !\l2|LessThan6~12_combout\ & ( \l2|l_arr[0][4]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l2|ALT_INV_l_arr[0][4]~q\,
	datac => \l2|ALT_INV_l_arr[1][4]~q\,
	dataf => \l2|ALT_INV_LessThan6~12_combout\,
	combout => \l2|temp_max~6_combout\);

-- Location: FF_X67_Y5_N25
\l2|l_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_max~6_combout\,
	asdata => \l2|l_arr[2][4]~q\,
	sload => \l2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_out\(4));

-- Location: LABCELL_X61_Y4_N27
\u2|sig_arr[1][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|sig_arr[1][4]~feeder_combout\ = ( \l2|l_out\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \l2|ALT_INV_l_out\(4),
	combout => \u2|sig_arr[1][4]~feeder_combout\);

-- Location: FF_X61_Y4_N28
\u2|sig_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|sig_arr[1][4]~feeder_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][4]~q\);

-- Location: FF_X62_Y4_N26
\u2|sig_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(4),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][4]~q\);

-- Location: LABCELL_X67_Y5_N9
\l2|temp_max~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_max~11_combout\ = (!\l2|LessThan6~12_combout\ & (\l2|l_arr[0][2]~q\)) # (\l2|LessThan6~12_combout\ & ((\l2|l_arr[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[0][2]~q\,
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][2]~q\,
	combout => \l2|temp_max~11_combout\);

-- Location: FF_X67_Y5_N10
\l2|l_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_max~11_combout\,
	asdata => \l2|l_arr[2][2]~q\,
	sload => \l2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_out\(2));

-- Location: FF_X62_Y4_N5
\u2|sig_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(2),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][2]~q\);

-- Location: LABCELL_X67_Y5_N6
\l2|temp_max~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_max~10_combout\ = ( \l2|l_arr[0][3]~q\ & ( (!\l2|LessThan6~12_combout\) # (\l2|l_arr[1][3]~q\) ) ) # ( !\l2|l_arr[0][3]~q\ & ( (\l2|LessThan6~12_combout\ & \l2|l_arr[1][3]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][3]~q\,
	dataf => \l2|ALT_INV_l_arr[0][3]~q\,
	combout => \l2|temp_max~10_combout\);

-- Location: FF_X67_Y5_N7
\l2|l_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_max~10_combout\,
	asdata => \l2|l_arr[2][3]~q\,
	sload => \l2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_out\(3));

-- Location: FF_X62_Y4_N59
\u2|sig_arr[1][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(3),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][3]~DUPLICATE_q\);

-- Location: FF_X62_Y4_N32
\u2|sig_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(3),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][3]~q\);

-- Location: FF_X62_Y4_N44
\u2|sig_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(2),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][2]~q\);

-- Location: LABCELL_X62_Y5_N36
\l2|temp_max~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_max~12_combout\ = ( \l2|l_arr[0][1]~q\ & ( (!\l2|LessThan6~12_combout\) # (\l2|l_arr[1][1]~q\) ) ) # ( !\l2|l_arr[0][1]~q\ & ( (\l2|LessThan6~12_combout\ & \l2|l_arr[1][1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \l2|ALT_INV_LessThan6~12_combout\,
	datac => \l2|ALT_INV_l_arr[1][1]~q\,
	dataf => \l2|ALT_INV_l_arr[0][1]~q\,
	combout => \l2|temp_max~12_combout\);

-- Location: FF_X62_Y5_N37
\l2|l_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_max~12_combout\,
	asdata => \l2|l_arr[2][1]~q\,
	sload => \l2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_out\(1));

-- Location: FF_X62_Y4_N47
\u2|sig_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(1),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][1]~q\);

-- Location: FF_X62_Y4_N2
\u2|sig_arr[0][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(1),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][1]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y5_N51
\l2|temp_max~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \l2|temp_max~0_combout\ = ( \l2|LessThan6~12_combout\ & ( \l2|l_arr[1][0]~q\ ) ) # ( !\l2|LessThan6~12_combout\ & ( \l2|l_arr[0][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l2|ALT_INV_l_arr[0][0]~q\,
	datac => \l2|ALT_INV_l_arr[1][0]~q\,
	dataf => \l2|ALT_INV_LessThan6~12_combout\,
	combout => \l2|temp_max~0_combout\);

-- Location: FF_X67_Y5_N53
\l2|l_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \l2|temp_max~0_combout\,
	asdata => \l2|l_arr[2][0]~q\,
	sload => \l2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l2|l_out\(0));

-- Location: FF_X62_Y4_N56
\u2|sig_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(0),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][0]~q\);

-- Location: FF_X62_Y3_N38
\u2|sig_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(0),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][0]~q\);

-- Location: LABCELL_X62_Y4_N12
\u2|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan2~2_combout\ = ( \u2|sig_arr[0][0]~q\ & ( (\u2|sig_arr[1][1]~q\ & !\u2|sig_arr[0][1]~DUPLICATE_q\) ) ) # ( !\u2|sig_arr[0][0]~q\ & ( (!\u2|sig_arr[1][1]~q\ & (!\u2|sig_arr[0][1]~DUPLICATE_q\ & \u2|sig_arr[1][0]~q\)) # (\u2|sig_arr[1][1]~q\ & 
-- ((!\u2|sig_arr[0][1]~DUPLICATE_q\) # (\u2|sig_arr[1][0]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001100001111001100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_sig_arr[1][1]~q\,
	datac => \u2|ALT_INV_sig_arr[0][1]~DUPLICATE_q\,
	datad => \u2|ALT_INV_sig_arr[1][0]~q\,
	dataf => \u2|ALT_INV_sig_arr[0][0]~q\,
	combout => \u2|LessThan2~2_combout\);

-- Location: LABCELL_X62_Y4_N42
\u2|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan2~3_combout\ = ( \u2|sig_arr[1][2]~q\ & ( \u2|LessThan2~2_combout\ & ( (!\u2|sig_arr[0][3]~q\) # (\u2|sig_arr[1][3]~DUPLICATE_q\) ) ) ) # ( !\u2|sig_arr[1][2]~q\ & ( \u2|LessThan2~2_combout\ & ( (!\u2|sig_arr[0][2]~q\ & 
-- ((!\u2|sig_arr[0][3]~q\) # (\u2|sig_arr[1][3]~DUPLICATE_q\))) # (\u2|sig_arr[0][2]~q\ & (\u2|sig_arr[1][3]~DUPLICATE_q\ & !\u2|sig_arr[0][3]~q\)) ) ) ) # ( \u2|sig_arr[1][2]~q\ & ( !\u2|LessThan2~2_combout\ & ( (!\u2|sig_arr[0][2]~q\ & 
-- ((!\u2|sig_arr[0][3]~q\) # (\u2|sig_arr[1][3]~DUPLICATE_q\))) # (\u2|sig_arr[0][2]~q\ & (\u2|sig_arr[1][3]~DUPLICATE_q\ & !\u2|sig_arr[0][3]~q\)) ) ) ) # ( !\u2|sig_arr[1][2]~q\ & ( !\u2|LessThan2~2_combout\ & ( (\u2|sig_arr[1][3]~DUPLICATE_q\ & 
-- !\u2|sig_arr[0][3]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000101110110010001010111011001000101111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[0][2]~q\,
	datab => \u2|ALT_INV_sig_arr[1][3]~DUPLICATE_q\,
	datad => \u2|ALT_INV_sig_arr[0][3]~q\,
	datae => \u2|ALT_INV_sig_arr[1][2]~q\,
	dataf => \u2|ALT_INV_LessThan2~2_combout\,
	combout => \u2|LessThan2~3_combout\);

-- Location: LABCELL_X62_Y4_N3
\u2|LessThan2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan2~7_combout\ = ( \u2|LessThan2~3_combout\ & ( (!\u2|sig_arr[0][4]~q\) # (\u2|sig_arr[1][4]~q\) ) ) # ( !\u2|LessThan2~3_combout\ & ( (\u2|sig_arr[1][4]~q\ & !\u2|sig_arr[0][4]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[1][4]~q\,
	datad => \u2|ALT_INV_sig_arr[0][4]~q\,
	dataf => \u2|ALT_INV_LessThan2~3_combout\,
	combout => \u2|LessThan2~7_combout\);

-- Location: LABCELL_X62_Y3_N12
\u2|LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan2~6_combout\ = ( \u2|LessThan2~9_combout\ & ( \u2|LessThan2~7_combout\ ) ) # ( !\u2|LessThan2~9_combout\ & ( \u2|LessThan2~7_combout\ & ( (!\u2|LessThan2~8_combout\ & (\u2|LessThan2~0_combout\ & ((!\u2|LessThan2~10_combout\) # 
-- (\u2|LessThan2~1_combout\)))) ) ) ) # ( \u2|LessThan2~9_combout\ & ( !\u2|LessThan2~7_combout\ ) ) # ( !\u2|LessThan2~9_combout\ & ( !\u2|LessThan2~7_combout\ & ( (!\u2|LessThan2~8_combout\ & (!\u2|LessThan2~10_combout\ & \u2|LessThan2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000111111111111111100000000110001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan2~1_combout\,
	datab => \u2|ALT_INV_LessThan2~8_combout\,
	datac => \u2|ALT_INV_LessThan2~10_combout\,
	datad => \u2|ALT_INV_LessThan2~0_combout\,
	datae => \u2|ALT_INV_LessThan2~9_combout\,
	dataf => \u2|ALT_INV_LessThan2~7_combout\,
	combout => \u2|LessThan2~6_combout\);

-- Location: LABCELL_X64_Y3_N54
\u2|temp_max~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~8_combout\ = ( \u2|LessThan2~6_combout\ & ( \u2|sig_arr[1][9]~q\ ) ) # ( !\u2|LessThan2~6_combout\ & ( \u2|sig_arr[0][9]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[1][9]~q\,
	datac => \u2|ALT_INV_sig_arr[0][9]~q\,
	dataf => \u2|ALT_INV_LessThan2~6_combout\,
	combout => \u2|temp_max~8_combout\);

-- Location: FF_X64_Y3_N5
\u2|sig_arr[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(10),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[2][10]~q\);

-- Location: FF_X62_Y3_N44
\u2|sig_arr[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(12),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[2][12]~q\);

-- Location: LABCELL_X62_Y3_N30
\u2|temp_max~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~10_combout\ = ( \u2|sig_arr[1][11]~q\ & ( \u2|LessThan2~6_combout\ ) ) # ( \u2|sig_arr[1][11]~q\ & ( !\u2|LessThan2~6_combout\ & ( \u2|sig_arr[0][11]~q\ ) ) ) # ( !\u2|sig_arr[1][11]~q\ & ( !\u2|LessThan2~6_combout\ & ( \u2|sig_arr[0][11]~q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_sig_arr[0][11]~q\,
	datae => \u2|ALT_INV_sig_arr[1][11]~q\,
	dataf => \u2|ALT_INV_LessThan2~6_combout\,
	combout => \u2|temp_max~10_combout\);

-- Location: FF_X62_Y3_N34
\u2|sig_arr[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(12),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][12]~q\);

-- Location: LABCELL_X63_Y3_N42
\u2|temp_max~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~9_combout\ = ( \u2|sig_arr[0][12]~q\ & ( \u2|LessThan2~6_combout\ & ( \u2|sig_arr[1][12]~q\ ) ) ) # ( !\u2|sig_arr[0][12]~q\ & ( \u2|LessThan2~6_combout\ & ( \u2|sig_arr[1][12]~q\ ) ) ) # ( \u2|sig_arr[0][12]~q\ & ( !\u2|LessThan2~6_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_sig_arr[1][12]~q\,
	datae => \u2|ALT_INV_sig_arr[0][12]~q\,
	dataf => \u2|ALT_INV_LessThan2~6_combout\,
	combout => \u2|temp_max~9_combout\);

-- Location: FF_X64_Y3_N38
\u2|sig_arr[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(11),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[2][11]~q\);

-- Location: MLABCELL_X65_Y3_N3
\u2|temp_max~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~11_combout\ = ( \u2|sig_arr[1][10]~q\ & ( \u2|LessThan2~6_combout\ ) ) # ( \u2|sig_arr[1][10]~q\ & ( !\u2|LessThan2~6_combout\ & ( \u2|sig_arr[0][10]~q\ ) ) ) # ( !\u2|sig_arr[1][10]~q\ & ( !\u2|LessThan2~6_combout\ & ( \u2|sig_arr[0][10]~q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_sig_arr[0][10]~q\,
	datae => \u2|ALT_INV_sig_arr[1][10]~q\,
	dataf => \u2|ALT_INV_LessThan2~6_combout\,
	combout => \u2|temp_max~11_combout\);

-- Location: LABCELL_X64_Y3_N12
\u2|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan3~5_combout\ = ( \u2|sig_arr[2][11]~q\ & ( \u2|temp_max~11_combout\ & ( (\u2|sig_arr[2][10]~q\ & (\u2|temp_max~10_combout\ & (!\u2|sig_arr[2][12]~q\ $ (\u2|temp_max~9_combout\)))) ) ) ) # ( !\u2|sig_arr[2][11]~q\ & ( \u2|temp_max~11_combout\ & 
-- ( (\u2|sig_arr[2][10]~q\ & (!\u2|temp_max~10_combout\ & (!\u2|sig_arr[2][12]~q\ $ (\u2|temp_max~9_combout\)))) ) ) ) # ( \u2|sig_arr[2][11]~q\ & ( !\u2|temp_max~11_combout\ & ( (!\u2|sig_arr[2][10]~q\ & (\u2|temp_max~10_combout\ & (!\u2|sig_arr[2][12]~q\ 
-- $ (\u2|temp_max~9_combout\)))) ) ) ) # ( !\u2|sig_arr[2][11]~q\ & ( !\u2|temp_max~11_combout\ & ( (!\u2|sig_arr[2][10]~q\ & (!\u2|temp_max~10_combout\ & (!\u2|sig_arr[2][12]~q\ $ (\u2|temp_max~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[2][10]~q\,
	datab => \u2|ALT_INV_sig_arr[2][12]~q\,
	datac => \u2|ALT_INV_temp_max~10_combout\,
	datad => \u2|ALT_INV_temp_max~9_combout\,
	datae => \u2|ALT_INV_sig_arr[2][11]~q\,
	dataf => \u2|ALT_INV_temp_max~11_combout\,
	combout => \u2|LessThan3~5_combout\);

-- Location: LABCELL_X62_Y3_N39
\u2|temp_max~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~12_combout\ = ( \u2|sig_arr[0][8]~q\ & ( \u2|LessThan2~6_combout\ & ( \u2|sig_arr[1][8]~q\ ) ) ) # ( !\u2|sig_arr[0][8]~q\ & ( \u2|LessThan2~6_combout\ & ( \u2|sig_arr[1][8]~q\ ) ) ) # ( \u2|sig_arr[0][8]~q\ & ( !\u2|LessThan2~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[1][8]~q\,
	datae => \u2|ALT_INV_sig_arr[0][8]~q\,
	dataf => \u2|ALT_INV_LessThan2~6_combout\,
	combout => \u2|temp_max~12_combout\);

-- Location: FF_X64_Y3_N10
\u2|sig_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(9),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[2][9]~q\);

-- Location: FF_X64_Y3_N35
\u2|sig_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(8),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[2][8]~q\);

-- Location: LABCELL_X64_Y3_N30
\u2|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan3~8_combout\ = ( \u2|sig_arr[2][9]~q\ & ( \u2|sig_arr[2][8]~q\ & ( (\u2|LessThan3~5_combout\ & ((!\u2|temp_max~8_combout\) # (!\u2|temp_max~12_combout\))) ) ) ) # ( !\u2|sig_arr[2][9]~q\ & ( \u2|sig_arr[2][8]~q\ & ( (!\u2|temp_max~8_combout\ & 
-- (\u2|LessThan3~5_combout\ & !\u2|temp_max~12_combout\)) ) ) ) # ( \u2|sig_arr[2][9]~q\ & ( !\u2|sig_arr[2][8]~q\ & ( (!\u2|temp_max~8_combout\ & \u2|LessThan3~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000100000001000000011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_temp_max~8_combout\,
	datab => \u2|ALT_INV_LessThan3~5_combout\,
	datac => \u2|ALT_INV_temp_max~12_combout\,
	datae => \u2|ALT_INV_sig_arr[2][9]~q\,
	dataf => \u2|ALT_INV_sig_arr[2][8]~q\,
	combout => \u2|LessThan3~8_combout\);

-- Location: FF_X64_Y3_N49
\u2|sig_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(7),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[2][7]~q\);

-- Location: FF_X63_Y3_N17
\u2|sig_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(6),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[2][6]~q\);

-- Location: LABCELL_X62_Y3_N9
\u2|temp_max~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~3_combout\ = ( \u2|sig_arr[1][6]~q\ & ( \u2|LessThan2~6_combout\ ) ) # ( \u2|sig_arr[1][6]~q\ & ( !\u2|LessThan2~6_combout\ & ( \u2|sig_arr[0][6]~q\ ) ) ) # ( !\u2|sig_arr[1][6]~q\ & ( !\u2|LessThan2~6_combout\ & ( \u2|sig_arr[0][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_sig_arr[0][6]~q\,
	datae => \u2|ALT_INV_sig_arr[1][6]~q\,
	dataf => \u2|ALT_INV_LessThan2~6_combout\,
	combout => \u2|temp_max~3_combout\);

-- Location: FF_X63_Y3_N46
\u2|sig_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(5),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[2][5]~q\);

-- Location: LABCELL_X62_Y3_N42
\u2|temp_max~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~2_combout\ = ( \u2|LessThan2~6_combout\ & ( \u2|sig_arr[1][7]~q\ ) ) # ( !\u2|LessThan2~6_combout\ & ( \u2|sig_arr[0][7]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_sig_arr[1][7]~q\,
	datac => \u2|ALT_INV_sig_arr[0][7]~q\,
	dataf => \u2|ALT_INV_LessThan2~6_combout\,
	combout => \u2|temp_max~2_combout\);

-- Location: FF_X62_Y3_N49
\u2|sig_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(5),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][5]~q\);

-- Location: LABCELL_X62_Y3_N3
\u2|temp_max~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~4_combout\ = ( \u2|LessThan2~6_combout\ & ( \u2|sig_arr[1][5]~q\ ) ) # ( !\u2|LessThan2~6_combout\ & ( \u2|sig_arr[0][5]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[0][5]~q\,
	datac => \u2|ALT_INV_sig_arr[1][5]~q\,
	dataf => \u2|ALT_INV_LessThan2~6_combout\,
	combout => \u2|temp_max~4_combout\);

-- Location: LABCELL_X63_Y3_N27
\u2|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan3~0_combout\ = ( \u2|temp_max~2_combout\ & ( \u2|temp_max~4_combout\ & ( (\u2|sig_arr[2][7]~q\ & (\u2|sig_arr[2][5]~q\ & (!\u2|sig_arr[2][6]~q\ $ (\u2|temp_max~3_combout\)))) ) ) ) # ( !\u2|temp_max~2_combout\ & ( \u2|temp_max~4_combout\ & ( 
-- (!\u2|sig_arr[2][7]~q\ & (\u2|sig_arr[2][5]~q\ & (!\u2|sig_arr[2][6]~q\ $ (\u2|temp_max~3_combout\)))) ) ) ) # ( \u2|temp_max~2_combout\ & ( !\u2|temp_max~4_combout\ & ( (\u2|sig_arr[2][7]~q\ & (!\u2|sig_arr[2][5]~q\ & (!\u2|sig_arr[2][6]~q\ $ 
-- (\u2|temp_max~3_combout\)))) ) ) ) # ( !\u2|temp_max~2_combout\ & ( !\u2|temp_max~4_combout\ & ( (!\u2|sig_arr[2][7]~q\ & (!\u2|sig_arr[2][5]~q\ & (!\u2|sig_arr[2][6]~q\ $ (\u2|temp_max~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[2][7]~q\,
	datab => \u2|ALT_INV_sig_arr[2][6]~q\,
	datac => \u2|ALT_INV_temp_max~3_combout\,
	datad => \u2|ALT_INV_sig_arr[2][5]~q\,
	datae => \u2|ALT_INV_temp_max~2_combout\,
	dataf => \u2|ALT_INV_temp_max~4_combout\,
	combout => \u2|LessThan3~0_combout\);

-- Location: FF_X63_Y3_N29
\u2|sig_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(0),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[2][0]~q\);

-- Location: LABCELL_X62_Y3_N45
\u2|temp_max~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~0_combout\ = (!\u2|LessThan2~6_combout\ & (\u2|sig_arr[0][0]~q\)) # (\u2|LessThan2~6_combout\ & ((\u2|sig_arr[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[0][0]~q\,
	datac => \u2|ALT_INV_LessThan2~6_combout\,
	datad => \u2|ALT_INV_sig_arr[1][0]~q\,
	combout => \u2|temp_max~0_combout\);

-- Location: FF_X62_Y4_N1
\u2|sig_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(1),
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[0][1]~q\);

-- Location: LABCELL_X63_Y3_N39
\u2|temp_max~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~5_combout\ = ( \u2|LessThan2~6_combout\ & ( \u2|sig_arr[1][1]~q\ ) ) # ( !\u2|LessThan2~6_combout\ & ( \u2|sig_arr[0][1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[1][1]~q\,
	datad => \u2|ALT_INV_sig_arr[0][1]~q\,
	dataf => \u2|ALT_INV_LessThan2~6_combout\,
	combout => \u2|temp_max~5_combout\);

-- Location: FF_X63_Y3_N13
\u2|sig_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(1),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[2][1]~q\);

-- Location: FF_X63_Y3_N44
\u2|sig_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(2),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[2][2]~q\);

-- Location: FF_X62_Y4_N58
\u2|sig_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(3),
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[1][3]~q\);

-- Location: FF_X62_Y4_N17
\u2|sig_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(3),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[2][3]~q\);

-- Location: LABCELL_X62_Y4_N48
\u2|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan3~9_combout\ = ( !\u2|LessThan2~6_combout\ & ( (!\u2|sig_arr[0][2]~q\ & (!\u2|sig_arr[2][2]~q\ & (!\u2|sig_arr[0][3]~q\ $ ((\u2|sig_arr[2][3]~q\))))) # (\u2|sig_arr[0][2]~q\ & (\u2|sig_arr[2][2]~q\ & (!\u2|sig_arr[0][3]~q\ $ 
-- ((\u2|sig_arr[2][3]~q\))))) ) ) # ( \u2|LessThan2~6_combout\ & ( ((!\u2|sig_arr[2][2]~q\ & (!\u2|sig_arr[1][2]~q\ & (!\u2|sig_arr[1][3]~q\ $ (\u2|sig_arr[2][3]~q\)))) # (\u2|sig_arr[2][2]~q\ & (\u2|sig_arr[1][2]~q\ & (!\u2|sig_arr[1][3]~q\ $ 
-- (\u2|sig_arr[2][3]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1001000000001001110000000000110010010000000010010011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[0][2]~q\,
	datab => \u2|ALT_INV_sig_arr[2][2]~q\,
	datac => \u2|ALT_INV_sig_arr[1][3]~q\,
	datad => \u2|ALT_INV_sig_arr[2][3]~q\,
	datae => \u2|ALT_INV_LessThan2~6_combout\,
	dataf => \u2|ALT_INV_sig_arr[1][2]~q\,
	datag => \u2|ALT_INV_sig_arr[0][3]~q\,
	combout => \u2|LessThan3~9_combout\);

-- Location: LABCELL_X63_Y3_N12
\u2|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan3~1_combout\ = ( \u2|sig_arr[2][1]~q\ & ( \u2|LessThan3~9_combout\ & ( (!\u2|temp_max~5_combout\) # ((\u2|sig_arr[2][0]~q\ & !\u2|temp_max~0_combout\)) ) ) ) # ( !\u2|sig_arr[2][1]~q\ & ( \u2|LessThan3~9_combout\ & ( (\u2|sig_arr[2][0]~q\ & 
-- (!\u2|temp_max~0_combout\ & !\u2|temp_max~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000001111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[2][0]~q\,
	datac => \u2|ALT_INV_temp_max~0_combout\,
	datad => \u2|ALT_INV_temp_max~5_combout\,
	datae => \u2|ALT_INV_sig_arr[2][1]~q\,
	dataf => \u2|ALT_INV_LessThan3~9_combout\,
	combout => \u2|LessThan3~1_combout\);

-- Location: LABCELL_X62_Y4_N15
\u2|temp_max~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~6_combout\ = ( \u2|LessThan2~6_combout\ & ( \u2|sig_arr[1][3]~q\ ) ) # ( !\u2|LessThan2~6_combout\ & ( \u2|sig_arr[0][3]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[1][3]~q\,
	datac => \u2|ALT_INV_sig_arr[0][3]~q\,
	dataf => \u2|ALT_INV_LessThan2~6_combout\,
	combout => \u2|temp_max~6_combout\);

-- Location: LABCELL_X62_Y4_N6
\u2|temp_max~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~7_combout\ = ( \u2|LessThan2~6_combout\ & ( \u2|sig_arr[1][2]~q\ ) ) # ( !\u2|LessThan2~6_combout\ & ( \u2|sig_arr[0][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_sig_arr[1][2]~q\,
	datad => \u2|ALT_INV_sig_arr[0][2]~q\,
	dataf => \u2|ALT_INV_LessThan2~6_combout\,
	combout => \u2|temp_max~7_combout\);

-- Location: LABCELL_X63_Y3_N36
\u2|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan3~2_combout\ = ( \u2|temp_max~7_combout\ & ( (\u2|sig_arr[2][3]~q\ & !\u2|temp_max~6_combout\) ) ) # ( !\u2|temp_max~7_combout\ & ( (!\u2|sig_arr[2][2]~q\ & (\u2|sig_arr[2][3]~q\ & !\u2|temp_max~6_combout\)) # (\u2|sig_arr[2][2]~q\ & 
-- ((!\u2|temp_max~6_combout\) # (\u2|sig_arr[2][3]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_sig_arr[2][2]~q\,
	datac => \u2|ALT_INV_sig_arr[2][3]~q\,
	datad => \u2|ALT_INV_temp_max~6_combout\,
	dataf => \u2|ALT_INV_temp_max~7_combout\,
	combout => \u2|LessThan3~2_combout\);

-- Location: LABCELL_X63_Y3_N6
\u2|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan3~3_combout\ = ( \u2|temp_max~2_combout\ & ( \u2|temp_max~4_combout\ & ( (!\u2|temp_max~3_combout\ & (\u2|sig_arr[2][7]~q\ & \u2|sig_arr[2][6]~q\)) ) ) ) # ( !\u2|temp_max~2_combout\ & ( \u2|temp_max~4_combout\ & ( ((!\u2|temp_max~3_combout\ & 
-- \u2|sig_arr[2][6]~q\)) # (\u2|sig_arr[2][7]~q\) ) ) ) # ( \u2|temp_max~2_combout\ & ( !\u2|temp_max~4_combout\ & ( (\u2|sig_arr[2][7]~q\ & ((!\u2|sig_arr[2][5]~q\ & (!\u2|temp_max~3_combout\ & \u2|sig_arr[2][6]~q\)) # (\u2|sig_arr[2][5]~q\ & 
-- ((!\u2|temp_max~3_combout\) # (\u2|sig_arr[2][6]~q\))))) ) ) ) # ( !\u2|temp_max~2_combout\ & ( !\u2|temp_max~4_combout\ & ( ((!\u2|sig_arr[2][5]~q\ & (!\u2|temp_max~3_combout\ & \u2|sig_arr[2][6]~q\)) # (\u2|sig_arr[2][5]~q\ & ((!\u2|temp_max~3_combout\) 
-- # (\u2|sig_arr[2][6]~q\)))) # (\u2|sig_arr[2][7]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111111011111000001000000110100001111110011110000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[2][5]~q\,
	datab => \u2|ALT_INV_temp_max~3_combout\,
	datac => \u2|ALT_INV_sig_arr[2][7]~q\,
	datad => \u2|ALT_INV_sig_arr[2][6]~q\,
	datae => \u2|ALT_INV_temp_max~2_combout\,
	dataf => \u2|ALT_INV_temp_max~4_combout\,
	combout => \u2|LessThan3~3_combout\);

-- Location: FF_X63_Y3_N32
\u2|sig_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \l2|l_out\(4),
	sload => VCC,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|sig_arr[2][4]~q\);

-- Location: LABCELL_X62_Y4_N54
\u2|temp_max~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~1_combout\ = ( \u2|LessThan2~6_combout\ & ( \u2|sig_arr[1][4]~q\ ) ) # ( !\u2|LessThan2~6_combout\ & ( \u2|sig_arr[0][4]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[1][4]~q\,
	datac => \u2|ALT_INV_sig_arr[0][4]~q\,
	dataf => \u2|ALT_INV_LessThan2~6_combout\,
	combout => \u2|temp_max~1_combout\);

-- Location: LABCELL_X63_Y3_N30
\u2|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan3~4_combout\ = ( \u2|sig_arr[2][4]~q\ & ( \u2|temp_max~1_combout\ & ( (!\u2|LessThan3~3_combout\ & ((!\u2|LessThan3~0_combout\) # ((!\u2|LessThan3~1_combout\ & !\u2|LessThan3~2_combout\)))) ) ) ) # ( !\u2|sig_arr[2][4]~q\ & ( 
-- \u2|temp_max~1_combout\ & ( !\u2|LessThan3~3_combout\ ) ) ) # ( \u2|sig_arr[2][4]~q\ & ( !\u2|temp_max~1_combout\ & ( (!\u2|LessThan3~0_combout\ & !\u2|LessThan3~3_combout\) ) ) ) # ( !\u2|sig_arr[2][4]~q\ & ( !\u2|temp_max~1_combout\ & ( 
-- (!\u2|LessThan3~3_combout\ & ((!\u2|LessThan3~0_combout\) # ((!\u2|LessThan3~1_combout\ & !\u2|LessThan3~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000000101010100000000011111111000000001110101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan3~0_combout\,
	datab => \u2|ALT_INV_LessThan3~1_combout\,
	datac => \u2|ALT_INV_LessThan3~2_combout\,
	datad => \u2|ALT_INV_LessThan3~3_combout\,
	datae => \u2|ALT_INV_sig_arr[2][4]~q\,
	dataf => \u2|ALT_INV_temp_max~1_combout\,
	combout => \u2|LessThan3~4_combout\);

-- Location: LABCELL_X64_Y3_N24
\u2|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan3~7_combout\ = ( \u2|temp_max~11_combout\ & ( \u2|temp_max~9_combout\ & ( (!\u2|temp_max~10_combout\ & (\u2|sig_arr[2][11]~q\ & \u2|sig_arr[2][12]~q\)) ) ) ) # ( !\u2|temp_max~11_combout\ & ( \u2|temp_max~9_combout\ & ( (\u2|sig_arr[2][12]~q\ 
-- & ((!\u2|sig_arr[2][10]~q\ & (!\u2|temp_max~10_combout\ & \u2|sig_arr[2][11]~q\)) # (\u2|sig_arr[2][10]~q\ & ((!\u2|temp_max~10_combout\) # (\u2|sig_arr[2][11]~q\))))) ) ) ) # ( \u2|temp_max~11_combout\ & ( !\u2|temp_max~9_combout\ & ( 
-- ((!\u2|temp_max~10_combout\ & \u2|sig_arr[2][11]~q\)) # (\u2|sig_arr[2][12]~q\) ) ) ) # ( !\u2|temp_max~11_combout\ & ( !\u2|temp_max~9_combout\ & ( ((!\u2|sig_arr[2][10]~q\ & (!\u2|temp_max~10_combout\ & \u2|sig_arr[2][11]~q\)) # (\u2|sig_arr[2][10]~q\ & 
-- ((!\u2|temp_max~10_combout\) # (\u2|sig_arr[2][11]~q\)))) # (\u2|sig_arr[2][12]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110111111111000011001111111100000000010011010000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[2][10]~q\,
	datab => \u2|ALT_INV_temp_max~10_combout\,
	datac => \u2|ALT_INV_sig_arr[2][11]~q\,
	datad => \u2|ALT_INV_sig_arr[2][12]~q\,
	datae => \u2|ALT_INV_temp_max~11_combout\,
	dataf => \u2|ALT_INV_temp_max~9_combout\,
	combout => \u2|LessThan3~7_combout\);

-- Location: LABCELL_X64_Y3_N51
\u2|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan3~6_combout\ = ( \u2|sig_arr[2][9]~q\ & ( \u2|sig_arr[2][8]~q\ & ( (\u2|temp_max~12_combout\ & (\u2|LessThan3~5_combout\ & \u2|temp_max~8_combout\)) ) ) ) # ( !\u2|sig_arr[2][9]~q\ & ( \u2|sig_arr[2][8]~q\ & ( (\u2|temp_max~12_combout\ & 
-- (\u2|LessThan3~5_combout\ & !\u2|temp_max~8_combout\)) ) ) ) # ( \u2|sig_arr[2][9]~q\ & ( !\u2|sig_arr[2][8]~q\ & ( (!\u2|temp_max~12_combout\ & (\u2|LessThan3~5_combout\ & \u2|temp_max~8_combout\)) ) ) ) # ( !\u2|sig_arr[2][9]~q\ & ( 
-- !\u2|sig_arr[2][8]~q\ & ( (!\u2|temp_max~12_combout\ & (\u2|LessThan3~5_combout\ & !\u2|temp_max~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000000000000101000000101000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_temp_max~12_combout\,
	datac => \u2|ALT_INV_LessThan3~5_combout\,
	datad => \u2|ALT_INV_temp_max~8_combout\,
	datae => \u2|ALT_INV_sig_arr[2][9]~q\,
	dataf => \u2|ALT_INV_sig_arr[2][8]~q\,
	combout => \u2|LessThan3~6_combout\);

-- Location: LABCELL_X63_Y3_N3
\u2|temp_max~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~17_combout\ = ( \u2|sig_arr[2][3]~q\ & ( \u2|temp_max~6_combout\ ) ) # ( !\u2|sig_arr[2][3]~q\ & ( \u2|temp_max~6_combout\ & ( (!\u2|LessThan3~8_combout\ & (!\u2|LessThan3~7_combout\ & ((!\u2|LessThan3~6_combout\) # 
-- (\u2|LessThan3~4_combout\)))) ) ) ) # ( \u2|sig_arr[2][3]~q\ & ( !\u2|temp_max~6_combout\ & ( (((!\u2|LessThan3~4_combout\ & \u2|LessThan3~6_combout\)) # (\u2|LessThan3~7_combout\)) # (\u2|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111111101111110100000001000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan3~8_combout\,
	datab => \u2|ALT_INV_LessThan3~4_combout\,
	datac => \u2|ALT_INV_LessThan3~7_combout\,
	datad => \u2|ALT_INV_LessThan3~6_combout\,
	datae => \u2|ALT_INV_sig_arr[2][3]~q\,
	dataf => \u2|ALT_INV_temp_max~6_combout\,
	combout => \u2|temp_max~17_combout\);

-- Location: FF_X63_Y2_N11
\u2|u_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~17_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][3]~q\);

-- Location: FF_X63_Y2_N14
\u2|u_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~17_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][3]~q\);

-- Location: LABCELL_X63_Y3_N0
\u2|temp_max~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~16_combout\ = ( \u2|sig_arr[2][2]~q\ & ( \u2|temp_max~7_combout\ ) ) # ( !\u2|sig_arr[2][2]~q\ & ( \u2|temp_max~7_combout\ & ( (!\u2|LessThan3~8_combout\ & (!\u2|LessThan3~7_combout\ & ((!\u2|LessThan3~6_combout\) # 
-- (\u2|LessThan3~4_combout\)))) ) ) ) # ( \u2|sig_arr[2][2]~q\ & ( !\u2|temp_max~7_combout\ & ( (((!\u2|LessThan3~4_combout\ & \u2|LessThan3~6_combout\)) # (\u2|LessThan3~7_combout\)) # (\u2|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111011111111110100010000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan3~8_combout\,
	datab => \u2|ALT_INV_LessThan3~4_combout\,
	datac => \u2|ALT_INV_LessThan3~6_combout\,
	datad => \u2|ALT_INV_LessThan3~7_combout\,
	datae => \u2|ALT_INV_sig_arr[2][2]~q\,
	dataf => \u2|ALT_INV_temp_max~7_combout\,
	combout => \u2|temp_max~16_combout\);

-- Location: FF_X63_Y2_N35
\u2|u_arr[0][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~16_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][2]~DUPLICATE_q\);

-- Location: FF_X63_Y2_N2
\u2|u_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~16_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][2]~q\);

-- Location: LABCELL_X64_Y3_N21
\u2|temp_max~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~24_combout\ = ( \u2|LessThan3~6_combout\ & ( \u2|LessThan3~4_combout\ & ( (!\u2|LessThan3~7_combout\ & ((!\u2|LessThan3~8_combout\ & (\u2|temp_max~12_combout\)) # (\u2|LessThan3~8_combout\ & ((\u2|sig_arr[2][8]~q\))))) # 
-- (\u2|LessThan3~7_combout\ & (((\u2|sig_arr[2][8]~q\)))) ) ) ) # ( !\u2|LessThan3~6_combout\ & ( \u2|LessThan3~4_combout\ & ( (!\u2|LessThan3~7_combout\ & ((!\u2|LessThan3~8_combout\ & (\u2|temp_max~12_combout\)) # (\u2|LessThan3~8_combout\ & 
-- ((\u2|sig_arr[2][8]~q\))))) # (\u2|LessThan3~7_combout\ & (((\u2|sig_arr[2][8]~q\)))) ) ) ) # ( \u2|LessThan3~6_combout\ & ( !\u2|LessThan3~4_combout\ & ( \u2|sig_arr[2][8]~q\ ) ) ) # ( !\u2|LessThan3~6_combout\ & ( !\u2|LessThan3~4_combout\ & ( 
-- (!\u2|LessThan3~7_combout\ & ((!\u2|LessThan3~8_combout\ & (\u2|temp_max~12_combout\)) # (\u2|LessThan3~8_combout\ & ((\u2|sig_arr[2][8]~q\))))) # (\u2|LessThan3~7_combout\ & (((\u2|sig_arr[2][8]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001111111000000001111111100001000011111110000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan3~7_combout\,
	datab => \u2|ALT_INV_LessThan3~8_combout\,
	datac => \u2|ALT_INV_temp_max~12_combout\,
	datad => \u2|ALT_INV_sig_arr[2][8]~q\,
	datae => \u2|ALT_INV_LessThan3~6_combout\,
	dataf => \u2|ALT_INV_LessThan3~4_combout\,
	combout => \u2|temp_max~24_combout\);

-- Location: FF_X64_Y2_N8
\u2|u_arr[0][8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~24_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][8]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y3_N0
\u2|temp_max~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~25_combout\ = ( \u2|sig_arr[2][9]~q\ & ( \u2|LessThan3~5_combout\ ) ) # ( !\u2|sig_arr[2][9]~q\ & ( \u2|LessThan3~5_combout\ & ( (\u2|temp_max~8_combout\ & !\u2|LessThan3~7_combout\) ) ) ) # ( \u2|sig_arr[2][9]~q\ & ( 
-- !\u2|LessThan3~5_combout\ & ( (\u2|LessThan3~7_combout\) # (\u2|temp_max~8_combout\) ) ) ) # ( !\u2|sig_arr[2][9]~q\ & ( !\u2|LessThan3~5_combout\ & ( (\u2|temp_max~8_combout\ & !\u2|LessThan3~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111101010000010100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_temp_max~8_combout\,
	datac => \u2|ALT_INV_LessThan3~7_combout\,
	datae => \u2|ALT_INV_sig_arr[2][9]~q\,
	dataf => \u2|ALT_INV_LessThan3~5_combout\,
	combout => \u2|temp_max~25_combout\);

-- Location: FF_X64_Y2_N38
\u2|u_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~25_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][9]~q\);

-- Location: LABCELL_X64_Y3_N39
\u2|temp_max~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~18_combout\ = ( \u2|LessThan3~6_combout\ & ( \u2|LessThan3~4_combout\ & ( (!\u2|LessThan3~7_combout\ & ((!\u2|LessThan3~8_combout\ & (\u2|temp_max~10_combout\)) # (\u2|LessThan3~8_combout\ & ((\u2|sig_arr[2][11]~q\))))) # 
-- (\u2|LessThan3~7_combout\ & (((\u2|sig_arr[2][11]~q\)))) ) ) ) # ( !\u2|LessThan3~6_combout\ & ( \u2|LessThan3~4_combout\ & ( (!\u2|LessThan3~7_combout\ & ((!\u2|LessThan3~8_combout\ & (\u2|temp_max~10_combout\)) # (\u2|LessThan3~8_combout\ & 
-- ((\u2|sig_arr[2][11]~q\))))) # (\u2|LessThan3~7_combout\ & (((\u2|sig_arr[2][11]~q\)))) ) ) ) # ( \u2|LessThan3~6_combout\ & ( !\u2|LessThan3~4_combout\ & ( \u2|sig_arr[2][11]~q\ ) ) ) # ( !\u2|LessThan3~6_combout\ & ( !\u2|LessThan3~4_combout\ & ( 
-- (!\u2|LessThan3~7_combout\ & ((!\u2|LessThan3~8_combout\ & (\u2|temp_max~10_combout\)) # (\u2|LessThan3~8_combout\ & ((\u2|sig_arr[2][11]~q\))))) # (\u2|LessThan3~7_combout\ & (((\u2|sig_arr[2][11]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001111111000000001111111100001000011111110000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan3~7_combout\,
	datab => \u2|ALT_INV_LessThan3~8_combout\,
	datac => \u2|ALT_INV_temp_max~10_combout\,
	datad => \u2|ALT_INV_sig_arr[2][11]~q\,
	datae => \u2|ALT_INV_LessThan3~6_combout\,
	dataf => \u2|ALT_INV_LessThan3~4_combout\,
	combout => \u2|temp_max~18_combout\);

-- Location: FF_X64_Y2_N14
\u2|u_arr[0][11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~18_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][11]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y3_N42
\u2|temp_max~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~19_combout\ = ( \u2|LessThan3~6_combout\ & ( \u2|LessThan3~4_combout\ & ( (!\u2|LessThan3~8_combout\ & ((!\u2|LessThan3~7_combout\ & (\u2|temp_max~11_combout\)) # (\u2|LessThan3~7_combout\ & ((\u2|sig_arr[2][10]~q\))))) # 
-- (\u2|LessThan3~8_combout\ & (((\u2|sig_arr[2][10]~q\)))) ) ) ) # ( !\u2|LessThan3~6_combout\ & ( \u2|LessThan3~4_combout\ & ( (!\u2|LessThan3~8_combout\ & ((!\u2|LessThan3~7_combout\ & (\u2|temp_max~11_combout\)) # (\u2|LessThan3~7_combout\ & 
-- ((\u2|sig_arr[2][10]~q\))))) # (\u2|LessThan3~8_combout\ & (((\u2|sig_arr[2][10]~q\)))) ) ) ) # ( \u2|LessThan3~6_combout\ & ( !\u2|LessThan3~4_combout\ & ( \u2|sig_arr[2][10]~q\ ) ) ) # ( !\u2|LessThan3~6_combout\ & ( !\u2|LessThan3~4_combout\ & ( 
-- (!\u2|LessThan3~8_combout\ & ((!\u2|LessThan3~7_combout\ & (\u2|temp_max~11_combout\)) # (\u2|LessThan3~7_combout\ & ((\u2|sig_arr[2][10]~q\))))) # (\u2|LessThan3~8_combout\ & (((\u2|sig_arr[2][10]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100001111000011110000111101000111000011110100011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_temp_max~11_combout\,
	datab => \u2|ALT_INV_LessThan3~8_combout\,
	datac => \u2|ALT_INV_sig_arr[2][10]~q\,
	datad => \u2|ALT_INV_LessThan3~7_combout\,
	datae => \u2|ALT_INV_LessThan3~6_combout\,
	dataf => \u2|ALT_INV_LessThan3~4_combout\,
	combout => \u2|temp_max~19_combout\);

-- Location: LABCELL_X64_Y2_N45
\u2|u_arr[0][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u_arr[0][10]~feeder_combout\ = ( \u2|temp_max~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2|ALT_INV_temp_max~19_combout\,
	combout => \u2|u_arr[0][10]~feeder_combout\);

-- Location: FF_X64_Y2_N47
\u2|u_arr[0][10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|u_arr[0][10]~feeder_combout\,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][10]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y3_N6
\u2|temp_max~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~23_combout\ = ( \u2|temp_max~9_combout\ & ( \u2|LessThan3~4_combout\ & ( ((!\u2|LessThan3~8_combout\ & !\u2|LessThan3~7_combout\)) # (\u2|sig_arr[2][12]~q\) ) ) ) # ( !\u2|temp_max~9_combout\ & ( \u2|LessThan3~4_combout\ & ( 
-- (\u2|sig_arr[2][12]~q\ & ((\u2|LessThan3~7_combout\) # (\u2|LessThan3~8_combout\))) ) ) ) # ( \u2|temp_max~9_combout\ & ( !\u2|LessThan3~4_combout\ & ( ((!\u2|LessThan3~8_combout\ & (!\u2|LessThan3~6_combout\ & !\u2|LessThan3~7_combout\))) # 
-- (\u2|sig_arr[2][12]~q\) ) ) ) # ( !\u2|temp_max~9_combout\ & ( !\u2|LessThan3~4_combout\ & ( (\u2|sig_arr[2][12]~q\ & (((\u2|LessThan3~7_combout\) # (\u2|LessThan3~6_combout\)) # (\u2|LessThan3~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101110101010101010100010001010101011101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_sig_arr[2][12]~q\,
	datab => \u2|ALT_INV_LessThan3~8_combout\,
	datac => \u2|ALT_INV_LessThan3~6_combout\,
	datad => \u2|ALT_INV_LessThan3~7_combout\,
	datae => \u2|ALT_INV_temp_max~9_combout\,
	dataf => \u2|ALT_INV_LessThan3~4_combout\,
	combout => \u2|temp_max~23_combout\);

-- Location: LABCELL_X64_Y2_N42
\u2|u_arr[0][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u_arr[0][12]~feeder_combout\ = ( \u2|temp_max~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2|ALT_INV_temp_max~23_combout\,
	combout => \u2|u_arr[0][12]~feeder_combout\);

-- Location: FF_X64_Y2_N44
\u2|u_arr[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|u_arr[0][12]~feeder_combout\,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][12]~q\);

-- Location: LABCELL_X64_Y2_N24
\u2|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan5~2_combout\ = ( \u2|u_arr[0][10]~DUPLICATE_q\ & ( \u2|u_arr[0][12]~q\ ) ) # ( !\u2|u_arr[0][10]~DUPLICATE_q\ & ( \u2|u_arr[0][12]~q\ & ( ((\u2|u_arr[0][11]~DUPLICATE_q\) # (\u2|u_arr[0][9]~q\)) # (\u2|u_arr[0][8]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_u_arr[0][8]~DUPLICATE_q\,
	datac => \u2|ALT_INV_u_arr[0][9]~q\,
	datad => \u2|ALT_INV_u_arr[0][11]~DUPLICATE_q\,
	datae => \u2|ALT_INV_u_arr[0][10]~DUPLICATE_q\,
	dataf => \u2|ALT_INV_u_arr[0][12]~q\,
	combout => \u2|LessThan5~2_combout\);

-- Location: LABCELL_X63_Y3_N18
\u2|temp_max~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~22_combout\ = ( \u2|sig_arr[2][7]~q\ & ( \u2|temp_max~2_combout\ ) ) # ( !\u2|sig_arr[2][7]~q\ & ( \u2|temp_max~2_combout\ & ( (!\u2|LessThan3~8_combout\ & (!\u2|LessThan3~7_combout\ & ((!\u2|LessThan3~6_combout\) # 
-- (\u2|LessThan3~4_combout\)))) ) ) ) # ( \u2|sig_arr[2][7]~q\ & ( !\u2|temp_max~2_combout\ & ( (((!\u2|LessThan3~4_combout\ & \u2|LessThan3~6_combout\)) # (\u2|LessThan3~7_combout\)) # (\u2|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111011111111110100010000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan3~8_combout\,
	datab => \u2|ALT_INV_LessThan3~4_combout\,
	datac => \u2|ALT_INV_LessThan3~6_combout\,
	datad => \u2|ALT_INV_LessThan3~7_combout\,
	datae => \u2|ALT_INV_sig_arr[2][7]~q\,
	dataf => \u2|ALT_INV_temp_max~2_combout\,
	combout => \u2|temp_max~22_combout\);

-- Location: FF_X63_Y2_N23
\u2|u_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~22_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][7]~q\);

-- Location: LABCELL_X63_Y3_N21
\u2|temp_max~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~21_combout\ = ( \u2|sig_arr[2][6]~q\ & ( \u2|temp_max~3_combout\ ) ) # ( !\u2|sig_arr[2][6]~q\ & ( \u2|temp_max~3_combout\ & ( (!\u2|LessThan3~8_combout\ & (!\u2|LessThan3~7_combout\ & ((!\u2|LessThan3~6_combout\) # 
-- (\u2|LessThan3~4_combout\)))) ) ) ) # ( \u2|sig_arr[2][6]~q\ & ( !\u2|temp_max~3_combout\ & ( (((!\u2|LessThan3~4_combout\ & \u2|LessThan3~6_combout\)) # (\u2|LessThan3~7_combout\)) # (\u2|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111111101111110100000001000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan3~8_combout\,
	datab => \u2|ALT_INV_LessThan3~4_combout\,
	datac => \u2|ALT_INV_LessThan3~7_combout\,
	datad => \u2|ALT_INV_LessThan3~6_combout\,
	datae => \u2|ALT_INV_sig_arr[2][6]~q\,
	dataf => \u2|ALT_INV_temp_max~3_combout\,
	combout => \u2|temp_max~21_combout\);

-- Location: FF_X63_Y2_N50
\u2|u_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~21_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][6]~q\);

-- Location: LABCELL_X63_Y3_N51
\u2|temp_max~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~20_combout\ = ( \u2|sig_arr[2][5]~q\ & ( \u2|temp_max~4_combout\ ) ) # ( !\u2|sig_arr[2][5]~q\ & ( \u2|temp_max~4_combout\ & ( (!\u2|LessThan3~8_combout\ & (!\u2|LessThan3~7_combout\ & ((!\u2|LessThan3~6_combout\) # 
-- (\u2|LessThan3~4_combout\)))) ) ) ) # ( \u2|sig_arr[2][5]~q\ & ( !\u2|temp_max~4_combout\ & ( (((!\u2|LessThan3~4_combout\ & \u2|LessThan3~6_combout\)) # (\u2|LessThan3~7_combout\)) # (\u2|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101111111011110001000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan3~8_combout\,
	datab => \u2|ALT_INV_LessThan3~7_combout\,
	datac => \u2|ALT_INV_LessThan3~4_combout\,
	datad => \u2|ALT_INV_LessThan3~6_combout\,
	datae => \u2|ALT_INV_sig_arr[2][5]~q\,
	dataf => \u2|ALT_INV_temp_max~4_combout\,
	combout => \u2|temp_max~20_combout\);

-- Location: FF_X63_Y2_N59
\u2|u_arr[0][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~20_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][5]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y2_N54
\u2|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan5~1_combout\ = ( !\u2|u_arr[0][9]~q\ & ( !\u2|u_arr[0][10]~DUPLICATE_q\ & ( (!\u2|u_arr[0][7]~q\ & (!\u2|u_arr[0][11]~DUPLICATE_q\ & (!\u2|u_arr[0][6]~q\ & !\u2|u_arr[0][5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_u_arr[0][7]~q\,
	datab => \u2|ALT_INV_u_arr[0][11]~DUPLICATE_q\,
	datac => \u2|ALT_INV_u_arr[0][6]~q\,
	datad => \u2|ALT_INV_u_arr[0][5]~DUPLICATE_q\,
	datae => \u2|ALT_INV_u_arr[0][9]~q\,
	dataf => \u2|ALT_INV_u_arr[0][10]~DUPLICATE_q\,
	combout => \u2|LessThan5~1_combout\);

-- Location: LABCELL_X63_Y3_N57
\u2|temp_max~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~15_combout\ = ( \u2|sig_arr[2][1]~q\ & ( \u2|temp_max~5_combout\ ) ) # ( !\u2|sig_arr[2][1]~q\ & ( \u2|temp_max~5_combout\ & ( (!\u2|LessThan3~8_combout\ & (!\u2|LessThan3~7_combout\ & ((!\u2|LessThan3~6_combout\) # 
-- (\u2|LessThan3~4_combout\)))) ) ) ) # ( \u2|sig_arr[2][1]~q\ & ( !\u2|temp_max~5_combout\ & ( (((!\u2|LessThan3~4_combout\ & \u2|LessThan3~6_combout\)) # (\u2|LessThan3~7_combout\)) # (\u2|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111111101111110100000001000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan3~8_combout\,
	datab => \u2|ALT_INV_LessThan3~4_combout\,
	datac => \u2|ALT_INV_LessThan3~7_combout\,
	datad => \u2|ALT_INV_LessThan3~6_combout\,
	datae => \u2|ALT_INV_sig_arr[2][1]~q\,
	dataf => \u2|ALT_INV_temp_max~5_combout\,
	combout => \u2|temp_max~15_combout\);

-- Location: FF_X63_Y2_N20
\u2|u_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~15_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][1]~q\);

-- Location: LABCELL_X63_Y3_N48
\u2|temp_max~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~13_combout\ = ( \u2|sig_arr[2][0]~q\ & ( \u2|temp_max~0_combout\ ) ) # ( !\u2|sig_arr[2][0]~q\ & ( \u2|temp_max~0_combout\ & ( (!\u2|LessThan3~8_combout\ & (!\u2|LessThan3~7_combout\ & ((!\u2|LessThan3~6_combout\) # 
-- (\u2|LessThan3~4_combout\)))) ) ) ) # ( \u2|sig_arr[2][0]~q\ & ( !\u2|temp_max~0_combout\ & ( (((\u2|LessThan3~6_combout\ & !\u2|LessThan3~4_combout\)) # (\u2|LessThan3~7_combout\)) # (\u2|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111110111011110000000100010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan3~8_combout\,
	datab => \u2|ALT_INV_LessThan3~7_combout\,
	datac => \u2|ALT_INV_LessThan3~6_combout\,
	datad => \u2|ALT_INV_LessThan3~4_combout\,
	datae => \u2|ALT_INV_sig_arr[2][0]~q\,
	dataf => \u2|ALT_INV_temp_max~0_combout\,
	combout => \u2|temp_max~13_combout\);

-- Location: FF_X63_Y2_N32
\u2|u_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~13_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][0]~q\);

-- Location: LABCELL_X63_Y3_N54
\u2|temp_max~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_max~14_combout\ = ( \u2|sig_arr[2][4]~q\ & ( \u2|temp_max~1_combout\ ) ) # ( !\u2|sig_arr[2][4]~q\ & ( \u2|temp_max~1_combout\ & ( (!\u2|LessThan3~8_combout\ & (!\u2|LessThan3~7_combout\ & ((!\u2|LessThan3~6_combout\) # 
-- (\u2|LessThan3~4_combout\)))) ) ) ) # ( \u2|sig_arr[2][4]~q\ & ( !\u2|temp_max~1_combout\ & ( (((!\u2|LessThan3~4_combout\ & \u2|LessThan3~6_combout\)) # (\u2|LessThan3~7_combout\)) # (\u2|LessThan3~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111011111111110100010000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan3~8_combout\,
	datab => \u2|ALT_INV_LessThan3~4_combout\,
	datac => \u2|ALT_INV_LessThan3~6_combout\,
	datad => \u2|ALT_INV_LessThan3~7_combout\,
	datae => \u2|ALT_INV_sig_arr[2][4]~q\,
	dataf => \u2|ALT_INV_temp_max~1_combout\,
	combout => \u2|temp_max~14_combout\);

-- Location: FF_X63_Y2_N53
\u2|u_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~14_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][4]~q\);

-- Location: LABCELL_X63_Y2_N30
\u2|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan5~0_combout\ = ( \u2|u_arr[0][0]~q\ & ( \u2|u_arr[0][4]~q\ ) ) # ( !\u2|u_arr[0][0]~q\ & ( \u2|u_arr[0][4]~q\ & ( ((\u2|u_arr[0][3]~q\) # (\u2|u_arr[0][1]~q\)) # (\u2|u_arr[0][2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_u_arr[0][2]~DUPLICATE_q\,
	datac => \u2|ALT_INV_u_arr[0][1]~q\,
	datad => \u2|ALT_INV_u_arr[0][3]~q\,
	datae => \u2|ALT_INV_u_arr[0][0]~q\,
	dataf => \u2|ALT_INV_u_arr[0][4]~q\,
	combout => \u2|LessThan5~0_combout\);

-- Location: LABCELL_X63_Y2_N39
\u2|LessThan5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan5~3_combout\ = ( \u2|LessThan5~0_combout\ & ( !\u2|LessThan5~2_combout\ ) ) # ( !\u2|LessThan5~0_combout\ & ( (!\u2|LessThan5~2_combout\) # (\u2|LessThan5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_LessThan5~2_combout\,
	datad => \u2|ALT_INV_LessThan5~1_combout\,
	dataf => \u2|ALT_INV_LessThan5~0_combout\,
	combout => \u2|LessThan5~3_combout\);

-- Location: LABCELL_X63_Y2_N36
\u2|LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~4_combout\ = ( \u2|LessThan5~3_combout\ & ( (!\u2|u_arr[1][3]~q\ & (((\u2|u_arr[0][2]~DUPLICATE_q\ & !\u2|u_arr[1][2]~q\)) # (\u2|u_arr[0][3]~q\))) # (\u2|u_arr[1][3]~q\ & (\u2|u_arr[0][3]~q\ & (\u2|u_arr[0][2]~DUPLICATE_q\ & 
-- !\u2|u_arr[1][2]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101011001000100010101100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_u_arr[1][3]~q\,
	datab => \u2|ALT_INV_u_arr[0][3]~q\,
	datac => \u2|ALT_INV_u_arr[0][2]~DUPLICATE_q\,
	datad => \u2|ALT_INV_u_arr[1][2]~q\,
	dataf => \u2|ALT_INV_LessThan5~3_combout\,
	combout => \u2|LessThan6~4_combout\);

-- Location: FF_X63_Y2_N28
\u2|u_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~13_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][0]~q\);

-- Location: LABCELL_X63_Y2_N48
\u2|LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~2_combout\ = ( \u2|LessThan5~0_combout\ & ( (!\u2|u_arr[1][0]~q\ & ((\u2|LessThan5~2_combout\) # (\u2|u_arr[0][0]~q\))) ) ) # ( !\u2|LessThan5~0_combout\ & ( (!\u2|u_arr[1][0]~q\ & (((!\u2|LessThan5~1_combout\ & \u2|LessThan5~2_combout\)) # 
-- (\u2|u_arr[0][0]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010001100000011001000110000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~1_combout\,
	datab => \u2|ALT_INV_u_arr[1][0]~q\,
	datac => \u2|ALT_INV_u_arr[0][0]~q\,
	datad => \u2|ALT_INV_LessThan5~2_combout\,
	dataf => \u2|ALT_INV_LessThan5~0_combout\,
	combout => \u2|LessThan6~2_combout\);

-- Location: LABCELL_X63_Y2_N9
\u2|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~0_combout\ = ( \u2|u_arr[0][3]~q\ & ( !\u2|u_arr[1][3]~q\ $ (((\u2|LessThan5~2_combout\ & ((!\u2|LessThan5~1_combout\) # (\u2|LessThan5~0_combout\))))) ) ) # ( !\u2|u_arr[0][3]~q\ & ( \u2|u_arr[1][3]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111011100001000111101110000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~1_combout\,
	datab => \u2|ALT_INV_LessThan5~2_combout\,
	datac => \u2|ALT_INV_LessThan5~0_combout\,
	datad => \u2|ALT_INV_u_arr[1][3]~q\,
	dataf => \u2|ALT_INV_u_arr[0][3]~q\,
	combout => \u2|LessThan6~0_combout\);

-- Location: FF_X63_Y2_N44
\u2|u_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~15_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][1]~q\);

-- Location: LABCELL_X63_Y2_N0
\u2|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~1_combout\ = ( \u2|LessThan5~0_combout\ & ( !\u2|u_arr[1][2]~q\ $ (((!\u2|u_arr[0][2]~DUPLICATE_q\) # (\u2|LessThan5~2_combout\))) ) ) # ( !\u2|LessThan5~0_combout\ & ( !\u2|u_arr[1][2]~q\ $ (((!\u2|u_arr[0][2]~DUPLICATE_q\) # 
-- ((!\u2|LessThan5~1_combout\ & \u2|LessThan5~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110111110010000011011111001000001100111100110000110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~1_combout\,
	datab => \u2|ALT_INV_LessThan5~2_combout\,
	datac => \u2|ALT_INV_u_arr[0][2]~DUPLICATE_q\,
	datad => \u2|ALT_INV_u_arr[1][2]~q\,
	dataf => \u2|ALT_INV_LessThan5~0_combout\,
	combout => \u2|LessThan6~1_combout\);

-- Location: LABCELL_X63_Y2_N42
\u2|LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~3_combout\ = ( \u2|u_arr[1][1]~q\ & ( !\u2|LessThan6~1_combout\ & ( (\u2|u_arr[0][1]~q\ & (\u2|LessThan5~3_combout\ & (\u2|LessThan6~2_combout\ & !\u2|LessThan6~0_combout\))) ) ) ) # ( !\u2|u_arr[1][1]~q\ & ( !\u2|LessThan6~1_combout\ & ( 
-- (!\u2|LessThan6~0_combout\ & (((\u2|u_arr[0][1]~q\ & \u2|LessThan5~3_combout\)) # (\u2|LessThan6~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_u_arr[0][1]~q\,
	datab => \u2|ALT_INV_LessThan5~3_combout\,
	datac => \u2|ALT_INV_LessThan6~2_combout\,
	datad => \u2|ALT_INV_LessThan6~0_combout\,
	datae => \u2|ALT_INV_u_arr[1][1]~q\,
	dataf => \u2|ALT_INV_LessThan6~1_combout\,
	combout => \u2|LessThan6~3_combout\);

-- Location: FF_X63_Y2_N47
\u2|u_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~20_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][5]~q\);

-- Location: FF_X63_Y2_N26
\u2|u_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~21_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][6]~q\);

-- Location: FF_X63_Y2_N8
\u2|u_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~14_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][4]~q\);

-- Location: LABCELL_X63_Y2_N3
\u2|LessThan6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~7_combout\ = ( \u2|u_arr[0][4]~q\ & ( !\u2|u_arr[1][4]~q\ ) ) # ( !\u2|u_arr[0][4]~q\ & ( (\u2|LessThan5~2_combout\ & (!\u2|u_arr[1][4]~q\ & ((!\u2|LessThan5~1_combout\) # (\u2|LessThan5~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100000000001000110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~1_combout\,
	datab => \u2|ALT_INV_LessThan5~2_combout\,
	datac => \u2|ALT_INV_LessThan5~0_combout\,
	datad => \u2|ALT_INV_u_arr[1][4]~q\,
	dataf => \u2|ALT_INV_u_arr[0][4]~q\,
	combout => \u2|LessThan6~7_combout\);

-- Location: LABCELL_X63_Y2_N21
\u2|LessThan6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~8_combout\ = ( \u2|LessThan6~7_combout\ & ( \u2|LessThan5~3_combout\ & ( (!\u2|u_arr[0][6]~q\ & (!\u2|u_arr[1][6]~q\ & ((!\u2|u_arr[1][5]~q\) # (\u2|u_arr[0][5]~DUPLICATE_q\)))) # (\u2|u_arr[0][6]~q\ & ((!\u2|u_arr[1][5]~q\) # 
-- ((!\u2|u_arr[1][6]~q\) # (\u2|u_arr[0][5]~DUPLICATE_q\)))) ) ) ) # ( !\u2|LessThan6~7_combout\ & ( \u2|LessThan5~3_combout\ & ( (!\u2|u_arr[0][6]~q\ & (!\u2|u_arr[1][5]~q\ & (\u2|u_arr[0][5]~DUPLICATE_q\ & !\u2|u_arr[1][6]~q\))) # (\u2|u_arr[0][6]~q\ & 
-- ((!\u2|u_arr[1][6]~q\) # ((!\u2|u_arr[1][5]~q\ & \u2|u_arr[0][5]~DUPLICATE_q\)))) ) ) ) # ( \u2|LessThan6~7_combout\ & ( !\u2|LessThan5~3_combout\ & ( (!\u2|u_arr[1][5]~q\ & !\u2|u_arr[1][6]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000001011101000001001101111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_u_arr[0][6]~q\,
	datab => \u2|ALT_INV_u_arr[1][5]~q\,
	datac => \u2|ALT_INV_u_arr[0][5]~DUPLICATE_q\,
	datad => \u2|ALT_INV_u_arr[1][6]~q\,
	datae => \u2|ALT_INV_LessThan6~7_combout\,
	dataf => \u2|ALT_INV_LessThan5~3_combout\,
	combout => \u2|LessThan6~8_combout\);

-- Location: FF_X63_Y2_N58
\u2|u_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~20_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][5]~q\);

-- Location: LABCELL_X63_Y2_N6
\u2|LessThan6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~5_combout\ = ( \u2|LessThan5~0_combout\ & ( !\u2|u_arr[1][4]~q\ $ (((!\u2|LessThan5~2_combout\ & !\u2|u_arr[0][4]~q\))) ) ) # ( !\u2|LessThan5~0_combout\ & ( !\u2|u_arr[1][4]~q\ $ (((!\u2|u_arr[0][4]~q\ & ((!\u2|LessThan5~2_combout\) # 
-- (\u2|LessThan5~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111111010000001011111101000000111111110000000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~1_combout\,
	datab => \u2|ALT_INV_LessThan5~2_combout\,
	datac => \u2|ALT_INV_u_arr[0][4]~q\,
	datad => \u2|ALT_INV_u_arr[1][4]~q\,
	dataf => \u2|ALT_INV_LessThan5~0_combout\,
	combout => \u2|LessThan6~5_combout\);

-- Location: LABCELL_X63_Y2_N24
\u2|LessThan6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~6_combout\ = ( \u2|u_arr[1][6]~q\ & ( \u2|LessThan5~3_combout\ & ( (\u2|u_arr[0][6]~q\ & (!\u2|LessThan6~5_combout\ & (!\u2|u_arr[1][5]~q\ $ (\u2|u_arr[0][5]~q\)))) ) ) ) # ( !\u2|u_arr[1][6]~q\ & ( \u2|LessThan5~3_combout\ & ( 
-- (!\u2|u_arr[0][6]~q\ & (!\u2|LessThan6~5_combout\ & (!\u2|u_arr[1][5]~q\ $ (\u2|u_arr[0][5]~q\)))) ) ) ) # ( !\u2|u_arr[1][6]~q\ & ( !\u2|LessThan5~3_combout\ & ( (!\u2|u_arr[1][5]~q\ & !\u2|LessThan6~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000010000010000000000100000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_u_arr[0][6]~q\,
	datab => \u2|ALT_INV_u_arr[1][5]~q\,
	datac => \u2|ALT_INV_u_arr[0][5]~q\,
	datad => \u2|ALT_INV_LessThan6~5_combout\,
	datae => \u2|ALT_INV_u_arr[1][6]~q\,
	dataf => \u2|ALT_INV_LessThan5~3_combout\,
	combout => \u2|LessThan6~6_combout\);

-- Location: MLABCELL_X65_Y2_N36
\u2|u_arr[1][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u_arr[1][8]~feeder_combout\ = ( \u2|temp_max~24_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2|ALT_INV_temp_max~24_combout\,
	combout => \u2|u_arr[1][8]~feeder_combout\);

-- Location: FF_X65_Y2_N37
\u2|u_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|u_arr[1][8]~feeder_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][8]~q\);

-- Location: FF_X64_Y2_N29
\u2|u_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~25_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][9]~q\);

-- Location: FF_X64_Y2_N2
\u2|u_arr[1][10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~19_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][10]~DUPLICATE_q\);

-- Location: FF_X64_Y2_N23
\u2|u_arr[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~23_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][12]~q\);

-- Location: FF_X64_Y3_N28
\u2|u_arr[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~18_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][11]~q\);

-- Location: LABCELL_X64_Y2_N9
\u2|LessThan6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~9_combout\ = ( \u2|u_arr[0][10]~DUPLICATE_q\ & ( \u2|u_arr[1][11]~q\ & ( (\u2|u_arr[1][10]~DUPLICATE_q\ & (\u2|u_arr[0][11]~DUPLICATE_q\ & (!\u2|u_arr[0][12]~q\ & !\u2|u_arr[1][12]~q\))) ) ) ) # ( !\u2|u_arr[0][10]~DUPLICATE_q\ & ( 
-- \u2|u_arr[1][11]~q\ & ( (!\u2|u_arr[1][10]~DUPLICATE_q\ & (\u2|u_arr[0][11]~DUPLICATE_q\ & (!\u2|u_arr[0][12]~q\ & !\u2|u_arr[1][12]~q\))) ) ) ) # ( \u2|u_arr[0][10]~DUPLICATE_q\ & ( !\u2|u_arr[1][11]~q\ & ( (!\u2|u_arr[1][10]~DUPLICATE_q\ & 
-- (((\u2|u_arr[0][12]~q\ & \u2|u_arr[1][12]~q\)))) # (\u2|u_arr[1][10]~DUPLICATE_q\ & (!\u2|u_arr[0][11]~DUPLICATE_q\ & (!\u2|u_arr[0][12]~q\ & !\u2|u_arr[1][12]~q\))) ) ) ) # ( !\u2|u_arr[0][10]~DUPLICATE_q\ & ( !\u2|u_arr[1][11]~q\ & ( 
-- (!\u2|u_arr[1][10]~DUPLICATE_q\ & ((!\u2|u_arr[0][12]~q\ & (!\u2|u_arr[0][11]~DUPLICATE_q\ & !\u2|u_arr[1][12]~q\)) # (\u2|u_arr[0][12]~q\ & ((\u2|u_arr[1][12]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001010010000000000101000100000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_u_arr[1][10]~DUPLICATE_q\,
	datab => \u2|ALT_INV_u_arr[0][11]~DUPLICATE_q\,
	datac => \u2|ALT_INV_u_arr[0][12]~q\,
	datad => \u2|ALT_INV_u_arr[1][12]~q\,
	datae => \u2|ALT_INV_u_arr[0][10]~DUPLICATE_q\,
	dataf => \u2|ALT_INV_u_arr[1][11]~q\,
	combout => \u2|LessThan6~9_combout\);

-- Location: LABCELL_X64_Y2_N15
\u2|LessThan6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~10_combout\ = ( \u2|u_arr[1][9]~q\ & ( \u2|LessThan6~9_combout\ & ( (!\u2|u_arr[0][12]~q\ & \u2|u_arr[0][9]~q\) ) ) ) # ( !\u2|u_arr[1][9]~q\ & ( \u2|LessThan6~9_combout\ & ( (!\u2|u_arr[0][9]~q\) # (\u2|u_arr[0][12]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000011110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_u_arr[0][12]~q\,
	datad => \u2|ALT_INV_u_arr[0][9]~q\,
	datae => \u2|ALT_INV_u_arr[1][9]~q\,
	dataf => \u2|ALT_INV_LessThan6~9_combout\,
	combout => \u2|LessThan6~10_combout\);

-- Location: LABCELL_X64_Y2_N39
\u2|LessThan6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~13_combout\ = ( \u2|u_arr[0][10]~DUPLICATE_q\ & ( \u2|u_arr[1][11]~q\ & ( (!\u2|u_arr[1][12]~q\ & (((\u2|u_arr[0][11]~DUPLICATE_q\ & !\u2|u_arr[1][10]~DUPLICATE_q\)) # (\u2|u_arr[0][12]~q\))) ) ) ) # ( !\u2|u_arr[0][10]~DUPLICATE_q\ & ( 
-- \u2|u_arr[1][11]~q\ & ( (!\u2|u_arr[1][12]~q\ & \u2|u_arr[0][12]~q\) ) ) ) # ( \u2|u_arr[0][10]~DUPLICATE_q\ & ( !\u2|u_arr[1][11]~q\ & ( (!\u2|u_arr[1][12]~q\ & (((!\u2|u_arr[1][10]~DUPLICATE_q\) # (\u2|u_arr[0][12]~q\)) # 
-- (\u2|u_arr[0][11]~DUPLICATE_q\))) ) ) ) # ( !\u2|u_arr[0][10]~DUPLICATE_q\ & ( !\u2|u_arr[1][11]~q\ & ( (!\u2|u_arr[1][12]~q\ & ((\u2|u_arr[0][12]~q\) # (\u2|u_arr[0][11]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010101010100010101000001010000010100010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_u_arr[1][12]~q\,
	datab => \u2|ALT_INV_u_arr[0][11]~DUPLICATE_q\,
	datac => \u2|ALT_INV_u_arr[0][12]~q\,
	datad => \u2|ALT_INV_u_arr[1][10]~DUPLICATE_q\,
	datae => \u2|ALT_INV_u_arr[0][10]~DUPLICATE_q\,
	dataf => \u2|ALT_INV_u_arr[1][11]~q\,
	combout => \u2|LessThan6~13_combout\);

-- Location: LABCELL_X64_Y2_N18
\u2|LessThan6~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~14_combout\ = ( \u2|LessThan6~9_combout\ & ( !\u2|LessThan6~13_combout\ & ( ((!\u2|u_arr[0][9]~q\) # (\u2|u_arr[0][12]~q\)) # (\u2|u_arr[1][9]~q\) ) ) ) # ( !\u2|LessThan6~9_combout\ & ( !\u2|LessThan6~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_u_arr[1][9]~q\,
	datac => \u2|ALT_INV_u_arr[0][9]~q\,
	datad => \u2|ALT_INV_u_arr[0][12]~q\,
	datae => \u2|ALT_INV_LessThan6~9_combout\,
	dataf => \u2|ALT_INV_LessThan6~13_combout\,
	combout => \u2|LessThan6~14_combout\);

-- Location: FF_X64_Y2_N59
\u2|u_arr[1][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~22_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][7]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N54
\u2|LessThan6~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~12_combout\ = ( \u2|u_arr[0][7]~q\ & ( \u2|LessThan5~0_combout\ & ( (!\u2|LessThan5~2_combout\ & !\u2|u_arr[1][7]~DUPLICATE_q\) ) ) ) # ( \u2|u_arr[0][7]~q\ & ( !\u2|LessThan5~0_combout\ & ( (!\u2|u_arr[1][7]~DUPLICATE_q\ & 
-- ((!\u2|LessThan5~2_combout\) # (\u2|LessThan5~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100011001000110000000000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~2_combout\,
	datab => \u2|ALT_INV_u_arr[1][7]~DUPLICATE_q\,
	datac => \u2|ALT_INV_LessThan5~1_combout\,
	datae => \u2|ALT_INV_u_arr[0][7]~q\,
	dataf => \u2|ALT_INV_LessThan5~0_combout\,
	combout => \u2|LessThan6~12_combout\);

-- Location: LABCELL_X64_Y2_N3
\u2|LessThan6~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~15_combout\ = ( \u2|LessThan6~12_combout\ & ( \u2|LessThan5~3_combout\ & ( (\u2|LessThan6~14_combout\ & ((!\u2|LessThan6~10_combout\) # ((\u2|u_arr[1][8]~q\ & !\u2|u_arr[0][8]~DUPLICATE_q\)))) ) ) ) # ( !\u2|LessThan6~12_combout\ & ( 
-- \u2|LessThan5~3_combout\ & ( (\u2|LessThan6~14_combout\ & (((!\u2|u_arr[0][8]~DUPLICATE_q\) # (!\u2|LessThan6~10_combout\)) # (\u2|u_arr[1][8]~q\))) ) ) ) # ( \u2|LessThan6~12_combout\ & ( !\u2|LessThan5~3_combout\ & ( (!\u2|LessThan6~10_combout\ & 
-- \u2|LessThan6~14_combout\) ) ) ) # ( !\u2|LessThan6~12_combout\ & ( !\u2|LessThan5~3_combout\ & ( (\u2|LessThan6~14_combout\ & ((!\u2|LessThan6~10_combout\) # (\u2|u_arr[1][8]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111000000000000111111010000000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_u_arr[1][8]~q\,
	datab => \u2|ALT_INV_u_arr[0][8]~DUPLICATE_q\,
	datac => \u2|ALT_INV_LessThan6~10_combout\,
	datad => \u2|ALT_INV_LessThan6~14_combout\,
	datae => \u2|ALT_INV_LessThan6~12_combout\,
	dataf => \u2|ALT_INV_LessThan5~3_combout\,
	combout => \u2|LessThan6~15_combout\);

-- Location: FF_X65_Y2_N38
\u2|u_arr[1][8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|u_arr[1][8]~feeder_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][8]~DUPLICATE_q\);

-- Location: FF_X64_Y2_N7
\u2|u_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~24_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][8]~q\);

-- Location: FF_X64_Y2_N58
\u2|u_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~22_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][7]~q\);

-- Location: MLABCELL_X65_Y2_N54
\u2|LessThan6~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~11_combout\ = ( \u2|LessThan5~3_combout\ & ( \u2|LessThan6~10_combout\ & ( (!\u2|u_arr[1][8]~DUPLICATE_q\ & (!\u2|u_arr[0][8]~q\ & (!\u2|u_arr[0][7]~q\ $ (\u2|u_arr[1][7]~q\)))) # (\u2|u_arr[1][8]~DUPLICATE_q\ & (\u2|u_arr[0][8]~q\ & 
-- (!\u2|u_arr[0][7]~q\ $ (\u2|u_arr[1][7]~q\)))) ) ) ) # ( !\u2|LessThan5~3_combout\ & ( \u2|LessThan6~10_combout\ & ( (\u2|u_arr[1][8]~DUPLICATE_q\ & !\u2|u_arr[1][7]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_u_arr[1][8]~DUPLICATE_q\,
	datab => \u2|ALT_INV_u_arr[0][7]~q\,
	datac => \u2|ALT_INV_u_arr[0][8]~q\,
	datad => \u2|ALT_INV_u_arr[1][7]~q\,
	datae => \u2|ALT_INV_LessThan5~3_combout\,
	dataf => \u2|ALT_INV_LessThan6~10_combout\,
	combout => \u2|LessThan6~11_combout\);

-- Location: LABCELL_X63_Y2_N15
\u2|LessThan6~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan6~16_combout\ = ( \u2|LessThan6~15_combout\ & ( \u2|LessThan6~11_combout\ & ( ((\u2|LessThan6~6_combout\ & ((\u2|LessThan6~3_combout\) # (\u2|LessThan6~4_combout\)))) # (\u2|LessThan6~8_combout\) ) ) ) # ( !\u2|LessThan6~15_combout\ & ( 
-- \u2|LessThan6~11_combout\ ) ) # ( !\u2|LessThan6~15_combout\ & ( !\u2|LessThan6~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan6~4_combout\,
	datab => \u2|ALT_INV_LessThan6~3_combout\,
	datac => \u2|ALT_INV_LessThan6~8_combout\,
	datad => \u2|ALT_INV_LessThan6~6_combout\,
	datae => \u2|ALT_INV_LessThan6~15_combout\,
	dataf => \u2|ALT_INV_LessThan6~11_combout\,
	combout => \u2|LessThan6~16_combout\);

-- Location: FF_X63_Y2_N29
\u2|u_arr[1][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~13_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][0]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y2_N12
\u2|temp_min~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_min~0_combout\ = ( \u2|u_arr[1][0]~DUPLICATE_q\ & ( \u2|LessThan5~3_combout\ & ( (\u2|u_arr[0][0]~q\) # (\u2|LessThan6~16_combout\) ) ) ) # ( !\u2|u_arr[1][0]~DUPLICATE_q\ & ( \u2|LessThan5~3_combout\ & ( (!\u2|LessThan6~16_combout\ & 
-- \u2|u_arr[0][0]~q\) ) ) ) # ( \u2|u_arr[1][0]~DUPLICATE_q\ & ( !\u2|LessThan5~3_combout\ ) ) # ( !\u2|u_arr[1][0]~DUPLICATE_q\ & ( !\u2|LessThan5~3_combout\ & ( !\u2|LessThan6~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan6~16_combout\,
	datac => \u2|ALT_INV_u_arr[0][0]~q\,
	datae => \u2|ALT_INV_u_arr[1][0]~DUPLICATE_q\,
	dataf => \u2|ALT_INV_LessThan5~3_combout\,
	combout => \u2|temp_min~0_combout\);

-- Location: FF_X63_Y3_N50
\u2|u_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_max~13_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[2][0]~q\);

-- Location: FF_X64_Y3_N8
\u2|u_arr[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_max~23_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[2][12]~q\);

-- Location: LABCELL_X64_Y2_N51
\u2|temp_min~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_min~12_combout\ = ( \u2|LessThan6~16_combout\ & ( \u2|u_arr[1][12]~q\ ) ) # ( !\u2|LessThan6~16_combout\ & ( \u2|u_arr[0][12]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_u_arr[0][12]~q\,
	datad => \u2|ALT_INV_u_arr[1][12]~q\,
	dataf => \u2|ALT_INV_LessThan6~16_combout\,
	combout => \u2|temp_min~12_combout\);

-- Location: FF_X64_Y3_N41
\u2|u_arr[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_max~18_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[2][11]~q\);

-- Location: FF_X64_Y2_N1
\u2|u_arr[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~19_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][10]~q\);

-- Location: FF_X64_Y3_N44
\u2|u_arr[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_max~19_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[2][10]~q\);

-- Location: FF_X64_Y2_N28
\u2|u_arr[1][9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~25_combout\,
	sload => VCC,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[1][9]~DUPLICATE_q\);

-- Location: FF_X64_Y3_N2
\u2|u_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_max~25_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[2][9]~q\);

-- Location: FF_X64_Y3_N23
\u2|u_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_max~24_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[2][8]~q\);

-- Location: FF_X63_Y3_N20
\u2|u_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_max~22_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[2][7]~q\);

-- Location: FF_X63_Y3_N23
\u2|u_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_max~21_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[2][6]~q\);

-- Location: FF_X63_Y3_N53
\u2|u_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_max~20_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[2][5]~q\);

-- Location: FF_X63_Y3_N56
\u2|u_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_max~14_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[2][4]~q\);

-- Location: FF_X63_Y3_N5
\u2|u_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_max~17_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[2][3]~q\);

-- Location: FF_X63_Y3_N2
\u2|u_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_max~16_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[2][2]~q\);

-- Location: FF_X63_Y3_N59
\u2|u_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_max~15_combout\,
	ena => \u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[2][1]~q\);

-- Location: LABCELL_X62_Y2_N0
\u2|LessThan7~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~66_cout\ = CARRY(( !\u2|u_arr[2][0]~q\ ) + ( (!\u2|LessThan6~16_combout\ & ((!\u2|LessThan5~3_combout\) # ((\u2|u_arr[0][0]~q\)))) # (\u2|LessThan6~16_combout\ & (((\u2|u_arr[1][0]~DUPLICATE_q\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101000011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~3_combout\,
	datab => \u2|ALT_INV_LessThan6~16_combout\,
	datac => \u2|ALT_INV_u_arr[1][0]~DUPLICATE_q\,
	datad => \u2|ALT_INV_u_arr[2][0]~q\,
	dataf => \u2|ALT_INV_u_arr[0][0]~q\,
	cin => GND,
	cout => \u2|LessThan7~66_cout\);

-- Location: LABCELL_X62_Y2_N3
\u2|LessThan7~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~62_cout\ = CARRY(( !\u2|u_arr[2][1]~q\ ) + ( (!\u2|LessThan6~16_combout\ & (\u2|LessThan5~3_combout\ & ((\u2|u_arr[0][1]~q\)))) # (\u2|LessThan6~16_combout\ & (((\u2|u_arr[1][1]~q\)))) ) + ( \u2|LessThan7~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001011100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~3_combout\,
	datab => \u2|ALT_INV_LessThan6~16_combout\,
	datac => \u2|ALT_INV_u_arr[1][1]~q\,
	datad => \u2|ALT_INV_u_arr[2][1]~q\,
	dataf => \u2|ALT_INV_u_arr[0][1]~q\,
	cin => \u2|LessThan7~66_cout\,
	cout => \u2|LessThan7~62_cout\);

-- Location: LABCELL_X62_Y2_N6
\u2|LessThan7~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~58_cout\ = CARRY(( !\u2|u_arr[2][2]~q\ ) + ( (!\u2|LessThan6~16_combout\ & (\u2|LessThan5~3_combout\ & ((\u2|u_arr[0][2]~DUPLICATE_q\)))) # (\u2|LessThan6~16_combout\ & (((\u2|u_arr[1][2]~q\)))) ) + ( \u2|LessThan7~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001011100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~3_combout\,
	datab => \u2|ALT_INV_LessThan6~16_combout\,
	datac => \u2|ALT_INV_u_arr[1][2]~q\,
	datad => \u2|ALT_INV_u_arr[2][2]~q\,
	dataf => \u2|ALT_INV_u_arr[0][2]~DUPLICATE_q\,
	cin => \u2|LessThan7~62_cout\,
	cout => \u2|LessThan7~58_cout\);

-- Location: LABCELL_X62_Y2_N9
\u2|LessThan7~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~54_cout\ = CARRY(( !\u2|u_arr[2][3]~q\ ) + ( (!\u2|LessThan6~16_combout\ & (\u2|LessThan5~3_combout\ & ((\u2|u_arr[0][3]~q\)))) # (\u2|LessThan6~16_combout\ & (((\u2|u_arr[1][3]~q\)))) ) + ( \u2|LessThan7~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001011100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~3_combout\,
	datab => \u2|ALT_INV_LessThan6~16_combout\,
	datac => \u2|ALT_INV_u_arr[1][3]~q\,
	datad => \u2|ALT_INV_u_arr[2][3]~q\,
	dataf => \u2|ALT_INV_u_arr[0][3]~q\,
	cin => \u2|LessThan7~58_cout\,
	cout => \u2|LessThan7~54_cout\);

-- Location: LABCELL_X62_Y2_N12
\u2|LessThan7~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~50_cout\ = CARRY(( !\u2|u_arr[2][4]~q\ ) + ( (!\u2|LessThan6~16_combout\ & ((!\u2|LessThan5~3_combout\) # ((\u2|u_arr[0][4]~q\)))) # (\u2|LessThan6~16_combout\ & (((\u2|u_arr[1][4]~q\)))) ) + ( \u2|LessThan7~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101000011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~3_combout\,
	datab => \u2|ALT_INV_LessThan6~16_combout\,
	datac => \u2|ALT_INV_u_arr[1][4]~q\,
	datad => \u2|ALT_INV_u_arr[2][4]~q\,
	dataf => \u2|ALT_INV_u_arr[0][4]~q\,
	cin => \u2|LessThan7~54_cout\,
	cout => \u2|LessThan7~50_cout\);

-- Location: LABCELL_X62_Y2_N15
\u2|LessThan7~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~46_cout\ = CARRY(( !\u2|u_arr[2][5]~q\ ) + ( (!\u2|LessThan6~16_combout\ & (\u2|LessThan5~3_combout\ & ((\u2|u_arr[0][5]~DUPLICATE_q\)))) # (\u2|LessThan6~16_combout\ & (((\u2|u_arr[1][5]~q\)))) ) + ( \u2|LessThan7~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001011100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~3_combout\,
	datab => \u2|ALT_INV_LessThan6~16_combout\,
	datac => \u2|ALT_INV_u_arr[1][5]~q\,
	datad => \u2|ALT_INV_u_arr[2][5]~q\,
	dataf => \u2|ALT_INV_u_arr[0][5]~DUPLICATE_q\,
	cin => \u2|LessThan7~50_cout\,
	cout => \u2|LessThan7~46_cout\);

-- Location: LABCELL_X62_Y2_N18
\u2|LessThan7~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~42_cout\ = CARRY(( (!\u2|LessThan6~16_combout\ & (\u2|LessThan5~3_combout\ & ((\u2|u_arr[0][6]~q\)))) # (\u2|LessThan6~16_combout\ & (((\u2|u_arr[1][6]~q\)))) ) + ( !\u2|u_arr[2][6]~q\ ) + ( \u2|LessThan7~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~3_combout\,
	datab => \u2|ALT_INV_LessThan6~16_combout\,
	datac => \u2|ALT_INV_u_arr[1][6]~q\,
	datad => \u2|ALT_INV_u_arr[0][6]~q\,
	dataf => \u2|ALT_INV_u_arr[2][6]~q\,
	cin => \u2|LessThan7~46_cout\,
	cout => \u2|LessThan7~42_cout\);

-- Location: LABCELL_X62_Y2_N21
\u2|LessThan7~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~38_cout\ = CARRY(( !\u2|u_arr[2][7]~q\ ) + ( (!\u2|LessThan6~16_combout\ & (\u2|LessThan5~3_combout\ & ((\u2|u_arr[0][7]~q\)))) # (\u2|LessThan6~16_combout\ & (((\u2|u_arr[1][7]~DUPLICATE_q\)))) ) + ( \u2|LessThan7~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001011100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~3_combout\,
	datab => \u2|ALT_INV_LessThan6~16_combout\,
	datac => \u2|ALT_INV_u_arr[1][7]~DUPLICATE_q\,
	datad => \u2|ALT_INV_u_arr[2][7]~q\,
	dataf => \u2|ALT_INV_u_arr[0][7]~q\,
	cin => \u2|LessThan7~42_cout\,
	cout => \u2|LessThan7~38_cout\);

-- Location: LABCELL_X62_Y2_N24
\u2|LessThan7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~34_cout\ = CARRY(( !\u2|u_arr[2][8]~q\ ) + ( (!\u2|LessThan6~16_combout\ & ((!\u2|LessThan5~3_combout\) # ((\u2|u_arr[0][8]~q\)))) # (\u2|LessThan6~16_combout\ & (((\u2|u_arr[1][8]~q\)))) ) + ( \u2|LessThan7~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101000011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~3_combout\,
	datab => \u2|ALT_INV_LessThan6~16_combout\,
	datac => \u2|ALT_INV_u_arr[1][8]~q\,
	datad => \u2|ALT_INV_u_arr[2][8]~q\,
	dataf => \u2|ALT_INV_u_arr[0][8]~q\,
	cin => \u2|LessThan7~38_cout\,
	cout => \u2|LessThan7~34_cout\);

-- Location: LABCELL_X62_Y2_N27
\u2|LessThan7~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~30_cout\ = CARRY(( !\u2|u_arr[2][9]~q\ ) + ( (!\u2|LessThan6~16_combout\ & (\u2|LessThan5~3_combout\ & ((\u2|u_arr[0][9]~q\)))) # (\u2|LessThan6~16_combout\ & (((\u2|u_arr[1][9]~DUPLICATE_q\)))) ) + ( \u2|LessThan7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001011100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~3_combout\,
	datab => \u2|ALT_INV_LessThan6~16_combout\,
	datac => \u2|ALT_INV_u_arr[1][9]~DUPLICATE_q\,
	datad => \u2|ALT_INV_u_arr[2][9]~q\,
	dataf => \u2|ALT_INV_u_arr[0][9]~q\,
	cin => \u2|LessThan7~34_cout\,
	cout => \u2|LessThan7~30_cout\);

-- Location: LABCELL_X62_Y2_N30
\u2|LessThan7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~26_cout\ = CARRY(( !\u2|u_arr[2][10]~q\ ) + ( (!\u2|LessThan6~16_combout\ & (\u2|LessThan5~3_combout\ & ((\u2|u_arr[0][10]~DUPLICATE_q\)))) # (\u2|LessThan6~16_combout\ & (((\u2|u_arr[1][10]~q\)))) ) + ( \u2|LessThan7~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001011100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~3_combout\,
	datab => \u2|ALT_INV_LessThan6~16_combout\,
	datac => \u2|ALT_INV_u_arr[1][10]~q\,
	datad => \u2|ALT_INV_u_arr[2][10]~q\,
	dataf => \u2|ALT_INV_u_arr[0][10]~DUPLICATE_q\,
	cin => \u2|LessThan7~30_cout\,
	cout => \u2|LessThan7~26_cout\);

-- Location: LABCELL_X62_Y2_N33
\u2|LessThan7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~22_cout\ = CARRY(( !\u2|u_arr[2][11]~q\ ) + ( (!\u2|LessThan6~16_combout\ & (\u2|LessThan5~3_combout\ & ((\u2|u_arr[0][11]~DUPLICATE_q\)))) # (\u2|LessThan6~16_combout\ & (((\u2|u_arr[1][11]~q\)))) ) + ( \u2|LessThan7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001011100000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~3_combout\,
	datab => \u2|ALT_INV_LessThan6~16_combout\,
	datac => \u2|ALT_INV_u_arr[1][11]~q\,
	datad => \u2|ALT_INV_u_arr[2][11]~q\,
	dataf => \u2|ALT_INV_u_arr[0][11]~DUPLICATE_q\,
	cin => \u2|LessThan7~26_cout\,
	cout => \u2|LessThan7~22_cout\);

-- Location: LABCELL_X62_Y2_N36
\u2|LessThan7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~18_cout\ = CARRY(( \u2|temp_min~12_combout\ ) + ( !\u2|u_arr[2][12]~q\ ) + ( \u2|LessThan7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_u_arr[2][12]~q\,
	datad => \u2|ALT_INV_temp_min~12_combout\,
	cin => \u2|LessThan7~22_cout\,
	cout => \u2|LessThan7~18_cout\);

-- Location: LABCELL_X62_Y2_N39
\u2|LessThan7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~14_cout\ = CARRY(( GND ) + ( VCC ) + ( \u2|LessThan7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|LessThan7~18_cout\,
	cout => \u2|LessThan7~14_cout\);

-- Location: LABCELL_X62_Y2_N42
\u2|LessThan7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~10_cout\ = CARRY(( GND ) + ( VCC ) + ( \u2|LessThan7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|LessThan7~14_cout\,
	cout => \u2|LessThan7~10_cout\);

-- Location: LABCELL_X62_Y2_N45
\u2|LessThan7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~6_cout\ = CARRY(( GND ) + ( VCC ) + ( \u2|LessThan7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|LessThan7~10_cout\,
	cout => \u2|LessThan7~6_cout\);

-- Location: LABCELL_X62_Y2_N48
\u2|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u2|LessThan7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|LessThan7~6_cout\,
	sumout => \u2|LessThan7~1_sumout\);

-- Location: FF_X61_Y2_N13
\u2|u_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_min~0_combout\,
	asdata => \u2|u_arr[2][0]~q\,
	sload => \u2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_out\(0));

-- Location: LABCELL_X61_Y2_N9
\u2|temp_min~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_min~1_combout\ = ( \u2|LessThan6~16_combout\ & ( \u2|u_arr[0][1]~q\ & ( \u2|u_arr[1][1]~q\ ) ) ) # ( !\u2|LessThan6~16_combout\ & ( \u2|u_arr[0][1]~q\ & ( \u2|LessThan5~3_combout\ ) ) ) # ( \u2|LessThan6~16_combout\ & ( !\u2|u_arr[0][1]~q\ & ( 
-- \u2|u_arr[1][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan5~3_combout\,
	datac => \u2|ALT_INV_u_arr[1][1]~q\,
	datae => \u2|ALT_INV_LessThan6~16_combout\,
	dataf => \u2|ALT_INV_u_arr[0][1]~q\,
	combout => \u2|temp_min~1_combout\);

-- Location: FF_X61_Y2_N10
\u2|u_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_min~1_combout\,
	asdata => \u2|u_arr[2][1]~q\,
	sload => \u2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_out\(1));

-- Location: FF_X63_Y2_N34
\u2|u_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~16_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][2]~q\);

-- Location: LABCELL_X61_Y2_N36
\u2|temp_min~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_min~2_combout\ = ( \u2|LessThan5~3_combout\ & ( (!\u2|LessThan6~16_combout\ & ((\u2|u_arr[0][2]~q\))) # (\u2|LessThan6~16_combout\ & (\u2|u_arr[1][2]~q\)) ) ) # ( !\u2|LessThan5~3_combout\ & ( (\u2|LessThan6~16_combout\ & \u2|u_arr[1][2]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan6~16_combout\,
	datab => \u2|ALT_INV_u_arr[1][2]~q\,
	datad => \u2|ALT_INV_u_arr[0][2]~q\,
	dataf => \u2|ALT_INV_LessThan5~3_combout\,
	combout => \u2|temp_min~2_combout\);

-- Location: FF_X61_Y2_N37
\u2|u_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_min~2_combout\,
	asdata => \u2|u_arr[2][2]~q\,
	sload => \u2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_out\(2));

-- Location: LABCELL_X61_Y2_N33
\u2|temp_min~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_min~3_combout\ = ( \u2|LessThan5~3_combout\ & ( (!\u2|LessThan6~16_combout\ & ((\u2|u_arr[0][3]~q\))) # (\u2|LessThan6~16_combout\ & (\u2|u_arr[1][3]~q\)) ) ) # ( !\u2|LessThan5~3_combout\ & ( (\u2|LessThan6~16_combout\ & \u2|u_arr[1][3]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan6~16_combout\,
	datac => \u2|ALT_INV_u_arr[1][3]~q\,
	datad => \u2|ALT_INV_u_arr[0][3]~q\,
	dataf => \u2|ALT_INV_LessThan5~3_combout\,
	combout => \u2|temp_min~3_combout\);

-- Location: FF_X61_Y2_N35
\u2|u_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_min~3_combout\,
	asdata => \u2|u_arr[2][3]~q\,
	sload => \u2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_out\(3));

-- Location: LABCELL_X61_Y2_N24
\u2|temp_min~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_min~4_combout\ = ( \u2|u_arr[1][4]~q\ & ( \u2|LessThan5~3_combout\ & ( (\u2|LessThan6~16_combout\) # (\u2|u_arr[0][4]~q\) ) ) ) # ( !\u2|u_arr[1][4]~q\ & ( \u2|LessThan5~3_combout\ & ( (\u2|u_arr[0][4]~q\ & !\u2|LessThan6~16_combout\) ) ) ) # ( 
-- \u2|u_arr[1][4]~q\ & ( !\u2|LessThan5~3_combout\ ) ) # ( !\u2|u_arr[1][4]~q\ & ( !\u2|LessThan5~3_combout\ & ( !\u2|LessThan6~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_u_arr[0][4]~q\,
	datac => \u2|ALT_INV_LessThan6~16_combout\,
	datae => \u2|ALT_INV_u_arr[1][4]~q\,
	dataf => \u2|ALT_INV_LessThan5~3_combout\,
	combout => \u2|temp_min~4_combout\);

-- Location: FF_X61_Y2_N25
\u2|u_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_min~4_combout\,
	asdata => \u2|u_arr[2][4]~q\,
	sload => \u2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_out\(4));

-- Location: LABCELL_X61_Y2_N45
\u2|temp_min~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_min~5_combout\ = ( \u2|LessThan6~16_combout\ & ( \u2|LessThan5~3_combout\ & ( \u2|u_arr[1][5]~q\ ) ) ) # ( !\u2|LessThan6~16_combout\ & ( \u2|LessThan5~3_combout\ & ( \u2|u_arr[0][5]~DUPLICATE_q\ ) ) ) # ( \u2|LessThan6~16_combout\ & ( 
-- !\u2|LessThan5~3_combout\ & ( \u2|u_arr[1][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_u_arr[0][5]~DUPLICATE_q\,
	datac => \u2|ALT_INV_u_arr[1][5]~q\,
	datae => \u2|ALT_INV_LessThan6~16_combout\,
	dataf => \u2|ALT_INV_LessThan5~3_combout\,
	combout => \u2|temp_min~5_combout\);

-- Location: FF_X61_Y2_N46
\u2|u_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_min~5_combout\,
	asdata => \u2|u_arr[2][5]~q\,
	sload => \u2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_out\(5));

-- Location: LABCELL_X61_Y2_N0
\u2|temp_min~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_min~6_combout\ = ( \u2|LessThan6~16_combout\ & ( \u2|u_arr[1][6]~q\ ) ) # ( !\u2|LessThan6~16_combout\ & ( \u2|u_arr[1][6]~q\ & ( (\u2|u_arr[0][6]~q\ & \u2|LessThan5~3_combout\) ) ) ) # ( !\u2|LessThan6~16_combout\ & ( !\u2|u_arr[1][6]~q\ & ( 
-- (\u2|u_arr[0][6]~q\ & \u2|LessThan5~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_u_arr[0][6]~q\,
	datac => \u2|ALT_INV_LessThan5~3_combout\,
	datae => \u2|ALT_INV_LessThan6~16_combout\,
	dataf => \u2|ALT_INV_u_arr[1][6]~q\,
	combout => \u2|temp_min~6_combout\);

-- Location: FF_X61_Y2_N1
\u2|u_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_min~6_combout\,
	asdata => \u2|u_arr[2][6]~q\,
	sload => \u2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_out\(6));

-- Location: LABCELL_X61_Y2_N57
\u2|temp_min~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_min~7_combout\ = ( \u2|LessThan6~16_combout\ & ( \u2|LessThan5~3_combout\ & ( \u2|u_arr[1][7]~q\ ) ) ) # ( !\u2|LessThan6~16_combout\ & ( \u2|LessThan5~3_combout\ & ( \u2|u_arr[0][7]~q\ ) ) ) # ( \u2|LessThan6~16_combout\ & ( 
-- !\u2|LessThan5~3_combout\ & ( \u2|u_arr[1][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_u_arr[0][7]~q\,
	datac => \u2|ALT_INV_u_arr[1][7]~q\,
	datae => \u2|ALT_INV_LessThan6~16_combout\,
	dataf => \u2|ALT_INV_LessThan5~3_combout\,
	combout => \u2|temp_min~7_combout\);

-- Location: FF_X61_Y2_N59
\u2|u_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_min~7_combout\,
	asdata => \u2|u_arr[2][7]~q\,
	sload => \u2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_out\(7));

-- Location: LABCELL_X61_Y2_N48
\u2|temp_min~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_min~8_combout\ = ( \u2|LessThan6~16_combout\ & ( \u2|u_arr[1][8]~DUPLICATE_q\ ) ) # ( !\u2|LessThan6~16_combout\ & ( \u2|u_arr[1][8]~DUPLICATE_q\ & ( (!\u2|LessThan5~3_combout\) # (\u2|u_arr[0][8]~q\) ) ) ) # ( !\u2|LessThan6~16_combout\ & ( 
-- !\u2|u_arr[1][8]~DUPLICATE_q\ & ( (!\u2|LessThan5~3_combout\) # (\u2|u_arr[0][8]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011000000000000000011110011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_u_arr[0][8]~q\,
	datac => \u2|ALT_INV_LessThan5~3_combout\,
	datae => \u2|ALT_INV_LessThan6~16_combout\,
	dataf => \u2|ALT_INV_u_arr[1][8]~DUPLICATE_q\,
	combout => \u2|temp_min~8_combout\);

-- Location: FF_X61_Y2_N49
\u2|u_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_min~8_combout\,
	asdata => \u2|u_arr[2][8]~q\,
	sload => \u2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_out\(8));

-- Location: LABCELL_X64_Y2_N48
\u2|temp_min~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_min~9_combout\ = ( \u2|u_arr[1][9]~DUPLICATE_q\ & ( ((!\u2|u_arr[0][12]~q\ & \u2|u_arr[0][9]~q\)) # (\u2|LessThan6~16_combout\) ) ) # ( !\u2|u_arr[1][9]~DUPLICATE_q\ & ( (!\u2|LessThan6~16_combout\ & (!\u2|u_arr[0][12]~q\ & \u2|u_arr[0][9]~q\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan6~16_combout\,
	datab => \u2|ALT_INV_u_arr[0][12]~q\,
	datac => \u2|ALT_INV_u_arr[0][9]~q\,
	dataf => \u2|ALT_INV_u_arr[1][9]~DUPLICATE_q\,
	combout => \u2|temp_min~9_combout\);

-- Location: FF_X64_Y2_N50
\u2|u_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_min~9_combout\,
	asdata => \u2|u_arr[2][9]~q\,
	sload => \u2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_out\(9));

-- Location: FF_X64_Y2_N46
\u2|u_arr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|u_arr[0][10]~feeder_combout\,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][10]~q\);

-- Location: LABCELL_X64_Y2_N30
\u2|temp_min~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_min~10_combout\ = ( \u2|u_arr[0][10]~q\ & ( (!\u2|LessThan6~16_combout\ & (!\u2|u_arr[0][12]~q\)) # (\u2|LessThan6~16_combout\ & ((\u2|u_arr[1][10]~DUPLICATE_q\))) ) ) # ( !\u2|u_arr[0][10]~q\ & ( (\u2|LessThan6~16_combout\ & 
-- \u2|u_arr[1][10]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan6~16_combout\,
	datab => \u2|ALT_INV_u_arr[0][12]~q\,
	datac => \u2|ALT_INV_u_arr[1][10]~DUPLICATE_q\,
	dataf => \u2|ALT_INV_u_arr[0][10]~q\,
	combout => \u2|temp_min~10_combout\);

-- Location: FF_X64_Y2_N31
\u2|u_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_min~10_combout\,
	asdata => \u2|u_arr[2][10]~q\,
	sload => \u2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_out\(10));

-- Location: FF_X64_Y2_N13
\u2|u_arr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|temp_max~18_combout\,
	sload => VCC,
	ena => \u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_arr[0][11]~q\);

-- Location: LABCELL_X64_Y2_N33
\u2|temp_min~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_min~11_combout\ = ( \u2|u_arr[0][11]~q\ & ( (!\u2|LessThan6~16_combout\ & (!\u2|u_arr[0][12]~q\)) # (\u2|LessThan6~16_combout\ & ((\u2|u_arr[1][11]~q\))) ) ) # ( !\u2|u_arr[0][11]~q\ & ( (\u2|LessThan6~16_combout\ & \u2|u_arr[1][11]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan6~16_combout\,
	datab => \u2|ALT_INV_u_arr[0][12]~q\,
	datac => \u2|ALT_INV_u_arr[1][11]~q\,
	dataf => \u2|ALT_INV_u_arr[0][11]~q\,
	combout => \u2|temp_min~11_combout\);

-- Location: FF_X64_Y2_N34
\u2|u_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_min~11_combout\,
	asdata => \u2|u_arr[2][11]~q\,
	sload => \u2|ALT_INV_LessThan7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_out\(11));

-- Location: LABCELL_X61_Y2_N18
\u2|temp_min~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp_min~13_combout\ = ( \u2|LessThan7~1_sumout\ & ( \u2|temp_min~12_combout\ ) ) # ( !\u2|LessThan7~1_sumout\ & ( \u2|temp_min~12_combout\ & ( \u2|u_arr[2][12]~q\ ) ) ) # ( !\u2|LessThan7~1_sumout\ & ( !\u2|temp_min~12_combout\ & ( 
-- \u2|u_arr[2][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_u_arr[2][12]~q\,
	datae => \u2|ALT_INV_LessThan7~1_sumout\,
	dataf => \u2|ALT_INV_temp_min~12_combout\,
	combout => \u2|temp_min~13_combout\);

-- Location: FF_X61_Y2_N19
\u2|u_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|temp_min~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u_out\(12));

-- Location: LABCELL_X50_Y8_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


