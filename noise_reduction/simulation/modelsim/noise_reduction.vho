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

-- DATE "05/19/2021 22:03:11"

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

ENTITY 	noise_reduction_filter IS
    PORT (
	clk : IN std_logic;
	data_in : IN std_logic_vector(15 DOWNTO 0);
	data_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END noise_reduction_filter;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[8]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[9]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[10]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[11]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[12]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[13]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[14]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[15]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF noise_reduction_filter IS
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
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \avg_fil|count[0]~0_combout\ : std_logic;
SIGNAL \avg_fil|count[1]~1_combout\ : std_logic;
SIGNAL \avg_fil|LessThan0~0_combout\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \avg_fil|point[0]~1_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[2]~0_combout\ : std_logic;
SIGNAL \avg_fil|point~0_combout\ : std_logic;
SIGNAL \avg_fil|backlog~29_combout\ : std_logic;
SIGNAL \avg_fil|backlog~28_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog~23_combout\ : std_logic;
SIGNAL \avg_fil|LessThan0~0_wirecell_combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \avg_fil|point[0]~_wirecell_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \avg_fil|backlog~24_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[35]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \avg_fil|backlog~25_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \avg_fil|backlog~26_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \avg_fil|backlog~27_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \avg_fil|backlog~30_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog~31_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \avg_fil|backlog~32_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \avg_fil|Add3~66_cout\ : std_logic;
SIGNAL \avg_fil|Add3~61_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~61_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~62\ : std_logic;
SIGNAL \avg_fil|Add3~57_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~62\ : std_logic;
SIGNAL \avg_fil|Add1~57_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~58\ : std_logic;
SIGNAL \avg_fil|Add3~53_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~58\ : std_logic;
SIGNAL \avg_fil|Add1~53_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~54\ : std_logic;
SIGNAL \avg_fil|Add3~49_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~54\ : std_logic;
SIGNAL \avg_fil|Add1~49_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~50\ : std_logic;
SIGNAL \avg_fil|Add3~45_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~50\ : std_logic;
SIGNAL \avg_fil|Add1~45_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~46\ : std_logic;
SIGNAL \avg_fil|Add3~41_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~46\ : std_logic;
SIGNAL \avg_fil|Add1~41_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~42\ : std_logic;
SIGNAL \avg_fil|Add3~1_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~42\ : std_logic;
SIGNAL \avg_fil|Add1~1_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~2\ : std_logic;
SIGNAL \avg_fil|Add3~37_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~2\ : std_logic;
SIGNAL \avg_fil|Add1~37_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~38\ : std_logic;
SIGNAL \avg_fil|Add3~33_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~38\ : std_logic;
SIGNAL \avg_fil|Add1~33_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~34\ : std_logic;
SIGNAL \avg_fil|Add3~29_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~34\ : std_logic;
SIGNAL \avg_fil|Add1~29_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~30\ : std_logic;
SIGNAL \avg_fil|Add3~13_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~30\ : std_logic;
SIGNAL \avg_fil|Add1~13_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~14\ : std_logic;
SIGNAL \avg_fil|Add3~25_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~14\ : std_logic;
SIGNAL \avg_fil|Add1~25_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~26\ : std_logic;
SIGNAL \avg_fil|Add3~21_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~26\ : std_logic;
SIGNAL \avg_fil|Add1~21_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~22\ : std_logic;
SIGNAL \avg_fil|Add3~17_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~22\ : std_logic;
SIGNAL \avg_fil|Add1~17_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~18\ : std_logic;
SIGNAL \avg_fil|Add3~9_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~18\ : std_logic;
SIGNAL \avg_fil|Add1~9_sumout\ : std_logic;
SIGNAL \avg_fil|Add3~10\ : std_logic;
SIGNAL \avg_fil|Add3~5_sumout\ : std_logic;
SIGNAL \avg_fil|Add1~10\ : std_logic;
SIGNAL \avg_fil|Add1~5_sumout\ : std_logic;
SIGNAL \lulu|u2|Decoder1~1_combout\ : std_logic;
SIGNAL \lulu|l1|iter[0]~feeder_combout\ : std_logic;
SIGNAL \lulu|u2|Decoder1~2_combout\ : std_logic;
SIGNAL \lulu|u2|Decoder1~0_combout\ : std_logic;
SIGNAL \lulu|l1|sig_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[0][5]~feeder_combout\ : std_logic;
SIGNAL \lulu|l1|sig_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|l1|LessThan2~3_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan2~0_combout\ : std_logic;
SIGNAL \lulu|l1|sig_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|l1|LessThan2~1_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan2~2_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan2~4_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan2~5_combout\ : std_logic;
SIGNAL \lulu|l1|temp_min~8_combout\ : std_logic;
SIGNAL \lulu|l1|temp_min~11_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|l1|LessThan6~0_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][9]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l1|temp_min~9_combout\ : std_logic;
SIGNAL \lulu|l1|sig_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|l1|temp_min~12_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|l1|temp_min~0_combout\ : std_logic;
SIGNAL \lulu|l1|sig_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|l1|temp_min~5_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan3~3_combout\ : std_logic;
SIGNAL \lulu|l1|sig_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|l1|temp_min~7_combout\ : std_logic;
SIGNAL \lulu|l1|sig_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|l1|temp_min~6_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan3~4_combout\ : std_logic;
SIGNAL \lulu|l1|sig_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|l1|sig_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|l1|temp_min~1_combout\ : std_logic;
SIGNAL \lulu|l1|temp_min~2_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan3~0_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan3~5_combout\ : std_logic;
SIGNAL \lulu|l1|sig_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|l1|temp_min~4_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan3~2_combout\ : std_logic;
SIGNAL \lulu|l1|sig_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|l1|temp_min~3_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan3~1_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan3~6_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan3~10_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan3~7_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan3~8_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan3~9_combout\ : std_logic;
SIGNAL \lulu|l1|temp_min~18_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][6]~feeder_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|l1|temp_min~17_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|l1|temp_min~19_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][7]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l1|l_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|l1|LessThan6~4_combout\ : std_logic;
SIGNAL \lulu|l1|temp_min~16_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[0][4]~feeder_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|l1|LessThan6~3_combout\ : std_logic;
SIGNAL \lulu|l1|temp_min~15_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|l1|temp_min~14_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|l1|temp_min~13_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][1]~feeder_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|l1|temp_min~10_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[0][0]~feeder_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][0]~feeder_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[0][1]~feeder_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|l1|LessThan6~1_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan6~2_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan6~5_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|l1|LessThan6~6_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan6~7_combout\ : std_logic;
SIGNAL \lulu|l1|temp_max~1_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[2][8]~feeder_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l1|l_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|l1|LessThan5~0_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan5~1_combout\ : std_logic;
SIGNAL \lulu|l1|LessThan5~2_combout\ : std_logic;
SIGNAL \lulu|l1|l_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|l1|l_arr[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l1|l_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|l1|LessThan7~42_cout\ : std_logic;
SIGNAL \lulu|l1|LessThan7~38_cout\ : std_logic;
SIGNAL \lulu|l1|LessThan7~34_cout\ : std_logic;
SIGNAL \lulu|l1|LessThan7~30_cout\ : std_logic;
SIGNAL \lulu|l1|LessThan7~26_cout\ : std_logic;
SIGNAL \lulu|l1|LessThan7~22_cout\ : std_logic;
SIGNAL \lulu|l1|LessThan7~18_cout\ : std_logic;
SIGNAL \lulu|l1|LessThan7~14_cout\ : std_logic;
SIGNAL \lulu|l1|LessThan7~10_cout\ : std_logic;
SIGNAL \lulu|l1|LessThan7~6_cout\ : std_logic;
SIGNAL \lulu|l1|LessThan7~1_sumout\ : std_logic;
SIGNAL \lulu|l1|temp_max~10_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[2][9]~feeder_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|l1|temp_max~2_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][8]~feeder_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][8]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][9]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][8]~feeder_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|l1|temp_max~3_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|l1|temp_max~8_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|l1|temp_max~7_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|l1|temp_max~0_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|l1|temp_max~9_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|u1|LessThan2~1_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u1|LessThan2~2_combout\ : std_logic;
SIGNAL \lulu|l1|temp_max~6_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][5]~feeder_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|l1|temp_max~5_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][6]~feeder_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][5]~feeder_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][6]~feeder_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|l1|temp_max~4_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][7]~feeder_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][7]~feeder_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|u1|LessThan2~3_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan2~0_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan2~4_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan2~5_combout\ : std_logic;
SIGNAL \lulu|u1|temp_max~8_combout\ : std_logic;
SIGNAL \lulu|u1|temp_max~11_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[2][9]~feeder_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|u1|temp_max~9_combout\ : std_logic;
SIGNAL \lulu|u1|temp_max~12_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|u1|LessThan3~10_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan3~9_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|u1|temp_max~2_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|u1|temp_max~1_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan3~0_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[2][1]~feeder_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|u1|temp_max~5_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|u1|temp_max~0_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan3~3_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[2][5]~feeder_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|u1|temp_max~3_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan3~1_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|u1|temp_max~6_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][2]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u1|temp_max~7_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan3~4_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan3~5_combout\ : std_logic;
SIGNAL \lulu|u1|sig_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|u1|sig_arr[1][4]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u1|temp_max~4_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan3~2_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan3~6_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan3~7_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan3~8_combout\ : std_logic;
SIGNAL \lulu|u1|temp_max~18_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|u1|temp_max~19_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|u1|temp_max~17_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|u1|LessThan6~3_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan6~4_combout\ : std_logic;
SIGNAL \lulu|u1|temp_max~16_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|u1|temp_max~15_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|u1|temp_max~14_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[1][2]~feeder_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[0][2]~feeder_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|u1|temp_max~13_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[1][1]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u1|temp_max~10_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|u1|LessThan6~1_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan6~2_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|u1|LessThan6~5_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|u1|LessThan6~6_combout\ : std_logic;
SIGNAL \lulu|u1|LessThan6~0_combout\ : std_logic;
SIGNAL \lulu|u1|temp_min~1_combout\ : std_logic;
SIGNAL \lulu|u1|u_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u1|u_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|u1|u_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|u1|LessThan7~42_cout\ : std_logic;
SIGNAL \lulu|u1|LessThan7~38_cout\ : std_logic;
SIGNAL \lulu|u1|LessThan7~34_cout\ : std_logic;
SIGNAL \lulu|u1|LessThan7~30_cout\ : std_logic;
SIGNAL \lulu|u1|LessThan7~26_cout\ : std_logic;
SIGNAL \lulu|u1|LessThan7~22_cout\ : std_logic;
SIGNAL \lulu|u1|LessThan7~18_cout\ : std_logic;
SIGNAL \lulu|u1|LessThan7~14_cout\ : std_logic;
SIGNAL \lulu|u1|LessThan7~10_cout\ : std_logic;
SIGNAL \lulu|u1|LessThan7~6_cout\ : std_logic;
SIGNAL \lulu|u1|LessThan7~1_sumout\ : std_logic;
SIGNAL \lulu|u1|temp_min~10_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][9]~feeder_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|l2|sig_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|u1|temp_min~2_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][8]~feeder_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|l2|sig_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|u1|temp_min~3_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|u1|temp_min~6_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|u1|temp_min~5_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|u1|temp_min~4_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|l2|sig_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|l2|LessThan2~0_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|l2|LessThan2~3_combout\ : std_logic;
SIGNAL \lulu|u1|temp_min~8_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|u1|temp_min~7_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|u1|temp_min~0_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|u1|temp_min~9_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|l2|sig_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|l2|sig_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|l2|LessThan2~1_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][2]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|LessThan2~2_combout\ : std_logic;
SIGNAL \lulu|l2|LessThan2~4_combout\ : std_logic;
SIGNAL \lulu|l2|LessThan2~5_combout\ : std_logic;
SIGNAL \lulu|l2|temp_min~8_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|l2|temp_min~11_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|l2|sig_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|l2|temp_min~9_combout\ : std_logic;
SIGNAL \lulu|l2|temp_min~12_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|l2|LessThan3~10_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|l2|sig_arr[2][3]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|l2|temp_min~7_combout\ : std_logic;
SIGNAL \lulu|l2|temp_min~6_combout\ : std_logic;
SIGNAL \lulu|l2|LessThan3~4_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|l2|sig_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|l2|temp_min~1_combout\ : std_logic;
SIGNAL \lulu|l2|temp_min~2_combout\ : std_logic;
SIGNAL \lulu|l2|LessThan3~0_combout\ : std_logic;
SIGNAL \lulu|l2|temp_min~4_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[2][4]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|LessThan3~2_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|l2|LessThan3~5_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][5]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|temp_min~3_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|l2|LessThan3~1_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|l2|sig_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|l2|sig_arr[1][1]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|temp_min~5_combout\ : std_logic;
SIGNAL \lulu|l2|temp_min~0_combout\ : std_logic;
SIGNAL \lulu|l2|LessThan3~3_combout\ : std_logic;
SIGNAL \lulu|l2|LessThan3~6_combout\ : std_logic;
SIGNAL \lulu|l2|LessThan3~9_combout\ : std_logic;
SIGNAL \lulu|l2|sig_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|l2|LessThan3~7_combout\ : std_logic;
SIGNAL \lulu|l2|LessThan3~8_combout\ : std_logic;
SIGNAL \lulu|l2|temp_min~16_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[0][4]~feeder_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|l2|temp_min~14_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|l2|temp_min~15_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|l2|temp_min~13_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|l2|temp_min~10_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|l2|LessThan6~1_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|l2|LessThan6~2_combout\ : std_logic;
SIGNAL \lulu|l2|temp_min~17_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|l2|temp_min~19_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|l2|temp_min~18_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|l2|LessThan6~4_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|LessThan6~3_combout\ : std_logic;
SIGNAL \lulu|l2|LessThan6~5_combout\ : std_logic;
SIGNAL \lulu|l2|LessThan6~6_combout\ : std_logic;
SIGNAL \lulu|l2|LessThan6~0_combout\ : std_logic;
SIGNAL \lulu|l2|LessThan6~7_combout\ : std_logic;
SIGNAL \lulu|l2|temp_max~1_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|l2|LessThan5~0_combout\ : std_logic;
SIGNAL \lulu|l2|LessThan5~1_combout\ : std_logic;
SIGNAL \lulu|l2|LessThan5~2_combout\ : std_logic;
SIGNAL \lulu|l2|l_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|l_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|l2|LessThan7~42_cout\ : std_logic;
SIGNAL \lulu|l2|LessThan7~38_cout\ : std_logic;
SIGNAL \lulu|l2|LessThan7~34_cout\ : std_logic;
SIGNAL \lulu|l2|LessThan7~30_cout\ : std_logic;
SIGNAL \lulu|l2|LessThan7~26_cout\ : std_logic;
SIGNAL \lulu|l2|LessThan7~22_cout\ : std_logic;
SIGNAL \lulu|l2|LessThan7~18_cout\ : std_logic;
SIGNAL \lulu|l2|LessThan7~14_cout\ : std_logic;
SIGNAL \lulu|l2|LessThan7~10_cout\ : std_logic;
SIGNAL \lulu|l2|LessThan7~6_cout\ : std_logic;
SIGNAL \lulu|l2|LessThan7~1_sumout\ : std_logic;
SIGNAL \lulu|l2|temp_max~2_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|l2|temp_max~10_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|l2|temp_max~3_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][4]~feeder_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|l2|temp_max~5_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|l2|temp_max~4_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|l2|temp_max~6_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][7]~feeder_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|u2|LessThan2~0_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan2~3_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|l2|temp_max~7_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|l2|l_arr[2][2]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|temp_max~8_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|l2|temp_max~9_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|l2|temp_max~0_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|u2|LessThan2~1_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan2~2_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan2~4_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan2~5_combout\ : std_logic;
SIGNAL \lulu|u2|temp_max~9_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][8]~feeder_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|u2|temp_max~8_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan3~10_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][4]~feeder_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][4]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|temp_max~4_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan3~2_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|u2|temp_max~3_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan3~1_combout\ : std_logic;
SIGNAL \lulu|u2|temp_max~7_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|u2|temp_max~6_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan3~5_combout\ : std_logic;
SIGNAL \lulu|u2|temp_max~0_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|temp_max~5_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan3~3_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][6]~feeder_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|u2|temp_max~1_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|temp_max~2_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan3~0_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan3~4_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan3~6_combout\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|u2|sig_arr[2][6]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|LessThan3~7_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan3~8_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan3~9_combout\ : std_logic;
SIGNAL \lulu|u2|temp_max~10_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|u2|temp_max~11_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|u2|LessThan6~0_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|u2|temp_max~12_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|u2|temp_max~17_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|u2|temp_max~19_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|u2|temp_max~18_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|u2|LessThan6~3_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan6~4_combout\ : std_logic;
SIGNAL \lulu|u2|temp_max~16_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|u2|temp_max~14_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|u2|temp_max~15_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[1][2]~feeder_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[0][0]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|temp_max~13_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|u_arr[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|LessThan6~1_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan6~2_combout\ : std_logic;
SIGNAL \lulu|u2|LessThan6~5_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|u2|LessThan6~6_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[2][8]~feeder_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|u2|temp_min~8_combout\ : std_logic;
SIGNAL \lulu|u2|u_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[0][5]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|u_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|u2|u_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|u2|LessThan7~42_cout\ : std_logic;
SIGNAL \lulu|u2|LessThan7~38_cout\ : std_logic;
SIGNAL \lulu|u2|LessThan7~34_cout\ : std_logic;
SIGNAL \lulu|u2|LessThan7~30_cout\ : std_logic;
SIGNAL \lulu|u2|LessThan7~26_cout\ : std_logic;
SIGNAL \lulu|u2|LessThan7~22_cout\ : std_logic;
SIGNAL \lulu|u2|LessThan7~18_cout\ : std_logic;
SIGNAL \lulu|u2|LessThan7~14_cout\ : std_logic;
SIGNAL \lulu|u2|LessThan7~10_cout\ : std_logic;
SIGNAL \lulu|u2|LessThan7~6_cout\ : std_logic;
SIGNAL \lulu|u2|LessThan7~1_sumout\ : std_logic;
SIGNAL \lulu|u2|temp_min~0_combout\ : std_logic;
SIGNAL \lulu|u2|temp_min~1_combout\ : std_logic;
SIGNAL \lulu|u2|temp_min~2_combout\ : std_logic;
SIGNAL \lulu|u2|temp_min~3_combout\ : std_logic;
SIGNAL \lulu|u2|temp_min~4_combout\ : std_logic;
SIGNAL \lulu|u2|temp_min~5_combout\ : std_logic;
SIGNAL \lulu|u2|temp_min~6_combout\ : std_logic;
SIGNAL \lulu|u2|temp_min~7_combout\ : std_logic;
SIGNAL \lulu|u2|temp_min~9_combout\ : std_logic;
SIGNAL \lulu|u2|temp_min~10_combout\ : std_logic;
SIGNAL \avg_fil|point\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \lulu|u2|u_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \avg_fil|backlog_rtl_0_bypass\ : std_logic_vector(0 TO 44);
SIGNAL \lulu|l1|iter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \avg_fil|count\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \lulu|l2|l_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \lulu|u1|u_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \avg_fil|data_sum\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \lulu|l1|l_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \lulu|l1|ALT_INV_l_arr[1][7]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[1][9]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[1][2]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[1][4]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[1][8]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[1][9]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[1][1]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[2][3]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[2][4]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[1][1]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[1][2]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[1][5]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[2][2]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[2][4]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[2][6]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[0][5]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[0][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_data_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[6]~input_o\ : std_logic;
SIGNAL \avg_fil|ALT_INV_LessThan0~0_wirecell_combout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_backlog_rtl_0_bypass\ : std_logic_vector(44 DOWNTO 0);
SIGNAL \avg_fil|ALT_INV_data_sum\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \avg_fil|ALT_INV_backlog~32_combout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_backlog~31_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_backlog~30_combout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_point\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \avg_fil|ALT_INV_backlog~27_combout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_backlog~26_combout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_backlog~25_combout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_backlog~24_combout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_backlog~23_combout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \lulu|l1|ALT_INV_temp_min~18_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_min~16_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_min~13_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_min~12_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_min~10_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan3~10_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_min~9_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_min~8_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_min~7_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_min~6_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_min~5_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_min~4_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_min~3_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_min~2_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_min~1_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_min~0_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_sig_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_temp_max~1_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan6~7_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan6~6_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan6~5_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_l_out\ : std_logic_vector(9 DOWNTO 1);
SIGNAL \lulu|u1|ALT_INV_temp_max~14_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_temp_max~11_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan3~10_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_temp_max~9_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_temp_max~8_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_temp_max~7_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_temp_max~6_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_temp_max~5_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_temp_max~4_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_temp_max~3_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_temp_max~2_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_temp_max~1_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_temp_max~0_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_sig_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_temp_min~1_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan6~6_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan6~5_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_u_out\ : std_logic_vector(9 DOWNTO 8);
SIGNAL \lulu|l2|ALT_INV_temp_min~16_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan3~10_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_temp_min~9_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_temp_min~8_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_temp_min~7_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_temp_min~6_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_temp_min~5_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_temp_min~4_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_temp_min~3_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_temp_min~2_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_temp_min~1_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_temp_min~0_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_sig_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_temp_max~1_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan6~7_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan6~6_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan6~5_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_l_out\ : std_logic_vector(8 DOWNTO 4);
SIGNAL \lulu|u2|ALT_INV_temp_max~14_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_temp_max~12_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_Decoder1~1_combout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_iter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \lulu|u2|ALT_INV_LessThan3~10_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_temp_max~9_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_temp_max~8_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_temp_max~7_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_temp_max~6_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_temp_max~5_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_temp_max~4_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_temp_max~3_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_temp_max~2_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_temp_max~1_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_temp_max~0_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_sig_arr[2][0]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[2][9]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[2][8]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_temp_min~8_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[2][7]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[2][6]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[2][5]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[2][4]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[2][3]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[2][2]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[2][1]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan6~6_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan6~5_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[1][7]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[0][7]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[1][6]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[0][6]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[1][5]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[0][5]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[1][4]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[0][4]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[1][3]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[0][3]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[1][2]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[0][2]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[1][1]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[0][1]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[0][8]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[1][8]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[1][0]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[0][0]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[1][9]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[0][9]~q\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_u_arr[2][0]~q\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~61_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~57_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \avg_fil|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \lulu|l1|ALT_INV_LessThan7~1_sumout\ : std_logic;
SIGNAL \lulu|u1|ALT_INV_LessThan7~1_sumout\ : std_logic;
SIGNAL \lulu|l2|ALT_INV_LessThan7~1_sumout\ : std_logic;
SIGNAL \lulu|u2|ALT_INV_LessThan7~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data_in[15]~input_o\ & 
\data_in[14]~input_o\ & \data_in[13]~input_o\ & \data_in[12]~input_o\ & \data_in[11]~input_o\ & \data_in[10]~input_o\ & \data_in[9]~input_o\ & \data_in[8]~input_o\ & \data_in[7]~input_o\ & \data_in[6]~input_o\ & \data_in[5]~input_o\ & \data_in[4]~input_o\
& \data_in[3]~input_o\ & \data_in[2]~input_o\ & \data_in[1]~input_o\ & \data_in[0]~input_o\);

\avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\avg_fil|backlog~28_combout\ & \avg_fil|backlog~29_combout\);

\avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\avg_fil|point~0_combout\ & \avg_fil|point[0]~_wirecell_combout\);

\avg_fil|backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a1\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a2\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a3\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a4\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a5\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a6\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a7\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a8\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a9\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a10\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a11\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a12\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a13\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a14\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a15\ <= \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\lulu|l1|ALT_INV_l_arr[1][7]~DUPLICATE_q\ <= NOT \lulu|l1|l_arr[1][7]~DUPLICATE_q\;
\lulu|l1|ALT_INV_l_arr[1][6]~DUPLICATE_q\ <= NOT \lulu|l1|l_arr[1][6]~DUPLICATE_q\;
\lulu|l1|ALT_INV_l_arr[0][2]~DUPLICATE_q\ <= NOT \lulu|l1|l_arr[0][2]~DUPLICATE_q\;
\lulu|l1|ALT_INV_l_arr[1][9]~DUPLICATE_q\ <= NOT \lulu|l1|l_arr[1][9]~DUPLICATE_q\;
\lulu|l1|ALT_INV_l_arr[1][0]~DUPLICATE_q\ <= NOT \lulu|l1|l_arr[1][0]~DUPLICATE_q\;
\lulu|u1|ALT_INV_sig_arr[1][2]~DUPLICATE_q\ <= NOT \lulu|u1|sig_arr[1][2]~DUPLICATE_q\;
\lulu|u1|ALT_INV_sig_arr[0][3]~DUPLICATE_q\ <= NOT \lulu|u1|sig_arr[0][3]~DUPLICATE_q\;
\lulu|u1|ALT_INV_sig_arr[1][4]~DUPLICATE_q\ <= NOT \lulu|u1|sig_arr[1][4]~DUPLICATE_q\;
\lulu|u1|ALT_INV_sig_arr[1][8]~DUPLICATE_q\ <= NOT \lulu|u1|sig_arr[1][8]~DUPLICATE_q\;
\lulu|u1|ALT_INV_sig_arr[1][9]~DUPLICATE_q\ <= NOT \lulu|u1|sig_arr[1][9]~DUPLICATE_q\;
\lulu|u1|ALT_INV_u_arr[0][3]~DUPLICATE_q\ <= NOT \lulu|u1|u_arr[0][3]~DUPLICATE_q\;
\lulu|u1|ALT_INV_u_arr[1][1]~DUPLICATE_q\ <= NOT \lulu|u1|u_arr[1][1]~DUPLICATE_q\;
\lulu|l2|ALT_INV_sig_arr[2][3]~DUPLICATE_q\ <= NOT \lulu|l2|sig_arr[2][3]~DUPLICATE_q\;
\lulu|l2|ALT_INV_sig_arr[2][4]~DUPLICATE_q\ <= NOT \lulu|l2|sig_arr[2][4]~DUPLICATE_q\;
\lulu|l2|ALT_INV_sig_arr[1][1]~DUPLICATE_q\ <= NOT \lulu|l2|sig_arr[1][1]~DUPLICATE_q\;
\lulu|l2|ALT_INV_sig_arr[1][2]~DUPLICATE_q\ <= NOT \lulu|l2|sig_arr[1][2]~DUPLICATE_q\;
\lulu|l2|ALT_INV_sig_arr[1][5]~DUPLICATE_q\ <= NOT \lulu|l2|sig_arr[1][5]~DUPLICATE_q\;
\lulu|l2|ALT_INV_l_arr[2][2]~DUPLICATE_q\ <= NOT \lulu|l2|l_arr[2][2]~DUPLICATE_q\;
\lulu|l2|ALT_INV_l_arr[1][6]~DUPLICATE_q\ <= NOT \lulu|l2|l_arr[1][6]~DUPLICATE_q\;
\lulu|l2|ALT_INV_l_arr[0][3]~DUPLICATE_q\ <= NOT \lulu|l2|l_arr[0][3]~DUPLICATE_q\;
\lulu|u2|ALT_INV_sig_arr[2][4]~DUPLICATE_q\ <= NOT \lulu|u2|sig_arr[2][4]~DUPLICATE_q\;
\lulu|u2|ALT_INV_sig_arr[2][6]~DUPLICATE_q\ <= NOT \lulu|u2|sig_arr[2][6]~DUPLICATE_q\;
\lulu|u2|ALT_INV_sig_arr[0][1]~DUPLICATE_q\ <= NOT \lulu|u2|sig_arr[0][1]~DUPLICATE_q\;
\lulu|u2|ALT_INV_sig_arr[0][3]~DUPLICATE_q\ <= NOT \lulu|u2|sig_arr[0][3]~DUPLICATE_q\;
\lulu|u2|ALT_INV_sig_arr[0][6]~DUPLICATE_q\ <= NOT \lulu|u2|sig_arr[0][6]~DUPLICATE_q\;
\lulu|u2|ALT_INV_u_arr[0][5]~DUPLICATE_q\ <= NOT \lulu|u2|u_arr[0][5]~DUPLICATE_q\;
\lulu|u2|ALT_INV_u_arr[0][1]~DUPLICATE_q\ <= NOT \lulu|u2|u_arr[0][1]~DUPLICATE_q\;
\lulu|u2|ALT_INV_u_arr[1][0]~DUPLICATE_q\ <= NOT \lulu|u2|u_arr[1][0]~DUPLICATE_q\;
\lulu|u2|ALT_INV_u_arr[0][0]~DUPLICATE_q\ <= NOT \lulu|u2|u_arr[0][0]~DUPLICATE_q\;
\ALT_INV_data_in[0]~input_o\ <= NOT \data_in[0]~input_o\;
\ALT_INV_data_in[1]~input_o\ <= NOT \data_in[1]~input_o\;
\ALT_INV_data_in[2]~input_o\ <= NOT \data_in[2]~input_o\;
\ALT_INV_data_in[3]~input_o\ <= NOT \data_in[3]~input_o\;
\ALT_INV_data_in[4]~input_o\ <= NOT \data_in[4]~input_o\;
\ALT_INV_data_in[5]~input_o\ <= NOT \data_in[5]~input_o\;
\ALT_INV_data_in[7]~input_o\ <= NOT \data_in[7]~input_o\;
\ALT_INV_data_in[8]~input_o\ <= NOT \data_in[8]~input_o\;
\ALT_INV_data_in[9]~input_o\ <= NOT \data_in[9]~input_o\;
\ALT_INV_data_in[11]~input_o\ <= NOT \data_in[11]~input_o\;
\ALT_INV_data_in[12]~input_o\ <= NOT \data_in[12]~input_o\;
\ALT_INV_data_in[13]~input_o\ <= NOT \data_in[13]~input_o\;
\ALT_INV_data_in[10]~input_o\ <= NOT \data_in[10]~input_o\;
\ALT_INV_data_in[14]~input_o\ <= NOT \data_in[14]~input_o\;
\ALT_INV_data_in[15]~input_o\ <= NOT \data_in[15]~input_o\;
\ALT_INV_data_in[6]~input_o\ <= NOT \data_in[6]~input_o\;
\avg_fil|ALT_INV_LessThan0~0_wirecell_combout\ <= NOT \avg_fil|LessThan0~0_wirecell_combout\;
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(14) <= NOT \avg_fil|backlog_rtl_0_bypass\(14);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(13) <= NOT \avg_fil|backlog_rtl_0_bypass\(13);
\avg_fil|ALT_INV_data_sum\(0) <= NOT \avg_fil|data_sum\(0);
\avg_fil|ALT_INV_backlog~32_combout\ <= NOT \avg_fil|backlog~32_combout\;
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(15) <= NOT \avg_fil|backlog_rtl_0_bypass\(15);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(16) <= NOT \avg_fil|backlog_rtl_0_bypass\(16);
\avg_fil|ALT_INV_data_sum\(1) <= NOT \avg_fil|data_sum\(1);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(18) <= NOT \avg_fil|backlog_rtl_0_bypass\(18);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(17) <= NOT \avg_fil|backlog_rtl_0_bypass\(17);
\avg_fil|ALT_INV_data_sum\(2) <= NOT \avg_fil|data_sum\(2);
\avg_fil|ALT_INV_backlog~31_combout\ <= NOT \avg_fil|backlog~31_combout\;
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(19) <= NOT \avg_fil|backlog_rtl_0_bypass\(19);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(20) <= NOT \avg_fil|backlog_rtl_0_bypass\(20);
\avg_fil|ALT_INV_data_sum\(3) <= NOT \avg_fil|data_sum\(3);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(22) <= NOT \avg_fil|backlog_rtl_0_bypass\(22);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(21) <= NOT \avg_fil|backlog_rtl_0_bypass\(21);
\lulu|l1|ALT_INV_LessThan5~2_combout\ <= NOT \lulu|l1|LessThan5~2_combout\;
\lulu|l1|ALT_INV_LessThan5~1_combout\ <= NOT \lulu|l1|LessThan5~1_combout\;
\lulu|l1|ALT_INV_LessThan5~0_combout\ <= NOT \lulu|l1|LessThan5~0_combout\;
\avg_fil|ALT_INV_data_sum\(4) <= NOT \avg_fil|data_sum\(4);
\avg_fil|ALT_INV_backlog~30_combout\ <= NOT \avg_fil|backlog~30_combout\;
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(23) <= NOT \avg_fil|backlog_rtl_0_bypass\(23);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(24) <= NOT \avg_fil|backlog_rtl_0_bypass\(24);
\avg_fil|ALT_INV_point\(0) <= NOT \avg_fil|point\(0);
\avg_fil|ALT_INV_point\(1) <= NOT \avg_fil|point\(1);
\avg_fil|ALT_INV_backlog~27_combout\ <= NOT \avg_fil|backlog~27_combout\;
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(27) <= NOT \avg_fil|backlog_rtl_0_bypass\(27);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(28) <= NOT \avg_fil|backlog_rtl_0_bypass\(28);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(30) <= NOT \avg_fil|backlog_rtl_0_bypass\(30);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(29) <= NOT \avg_fil|backlog_rtl_0_bypass\(29);
\avg_fil|ALT_INV_backlog~26_combout\ <= NOT \avg_fil|backlog~26_combout\;
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(31) <= NOT \avg_fil|backlog_rtl_0_bypass\(31);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(32) <= NOT \avg_fil|backlog_rtl_0_bypass\(32);
\avg_fil|ALT_INV_backlog~25_combout\ <= NOT \avg_fil|backlog~25_combout\;
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(35) <= NOT \avg_fil|backlog_rtl_0_bypass\(35);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(36) <= NOT \avg_fil|backlog_rtl_0_bypass\(36);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(38) <= NOT \avg_fil|backlog_rtl_0_bypass\(38);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(37) <= NOT \avg_fil|backlog_rtl_0_bypass\(37);
\avg_fil|ALT_INV_backlog~24_combout\ <= NOT \avg_fil|backlog~24_combout\;
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(39) <= NOT \avg_fil|backlog_rtl_0_bypass\(39);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(40) <= NOT \avg_fil|backlog_rtl_0_bypass\(40);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(34) <= NOT \avg_fil|backlog_rtl_0_bypass\(34);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(33) <= NOT \avg_fil|backlog_rtl_0_bypass\(33);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(42) <= NOT \avg_fil|backlog_rtl_0_bypass\(42);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(41) <= NOT \avg_fil|backlog_rtl_0_bypass\(41);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(44) <= NOT \avg_fil|backlog_rtl_0_bypass\(44);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(43) <= NOT \avg_fil|backlog_rtl_0_bypass\(43);
\avg_fil|ALT_INV_data_sum\(5) <= NOT \avg_fil|data_sum\(5);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(26) <= NOT \avg_fil|backlog_rtl_0_bypass\(26);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(25) <= NOT \avg_fil|backlog_rtl_0_bypass\(25);
\avg_fil|ALT_INV_backlog~23_combout\ <= NOT \avg_fil|backlog~23_combout\;
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(2) <= NOT \avg_fil|backlog_rtl_0_bypass\(2);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(1) <= NOT \avg_fil|backlog_rtl_0_bypass\(1);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(0) <= NOT \avg_fil|backlog_rtl_0_bypass\(0);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(4) <= NOT \avg_fil|backlog_rtl_0_bypass\(4);
\avg_fil|ALT_INV_backlog_rtl_0_bypass\(3) <= NOT \avg_fil|backlog_rtl_0_bypass\(3);
\avg_fil|ALT_INV_LessThan0~0_combout\ <= NOT \avg_fil|LessThan0~0_combout\;
\avg_fil|ALT_INV_count\(1) <= NOT \avg_fil|count\(1);
\avg_fil|ALT_INV_count\(0) <= NOT \avg_fil|count\(0);
\avg_fil|ALT_INV_data_sum\(7) <= NOT \avg_fil|data_sum\(7);
\avg_fil|ALT_INV_data_sum\(8) <= NOT \avg_fil|data_sum\(8);
\avg_fil|ALT_INV_data_sum\(9) <= NOT \avg_fil|data_sum\(9);
\avg_fil|ALT_INV_data_sum\(11) <= NOT \avg_fil|data_sum\(11);
\avg_fil|ALT_INV_data_sum\(12) <= NOT \avg_fil|data_sum\(12);
\avg_fil|ALT_INV_data_sum\(13) <= NOT \avg_fil|data_sum\(13);
\avg_fil|ALT_INV_data_sum\(10) <= NOT \avg_fil|data_sum\(10);
\avg_fil|ALT_INV_data_sum\(14) <= NOT \avg_fil|data_sum\(14);
\avg_fil|ALT_INV_data_sum\(15) <= NOT \avg_fil|data_sum\(15);
\avg_fil|ALT_INV_data_sum\(6) <= NOT \avg_fil|data_sum\(6);
\lulu|l1|ALT_INV_temp_min~18_combout\ <= NOT \lulu|l1|temp_min~18_combout\;
\lulu|l1|ALT_INV_temp_min~16_combout\ <= NOT \lulu|l1|temp_min~16_combout\;
\lulu|l1|ALT_INV_temp_min~13_combout\ <= NOT \lulu|l1|temp_min~13_combout\;
\lulu|l1|ALT_INV_temp_min~12_combout\ <= NOT \lulu|l1|temp_min~12_combout\;
\lulu|l1|ALT_INV_temp_min~10_combout\ <= NOT \lulu|l1|temp_min~10_combout\;
\lulu|l1|ALT_INV_LessThan3~10_combout\ <= NOT \lulu|l1|LessThan3~10_combout\;
\lulu|l1|ALT_INV_LessThan3~9_combout\ <= NOT \lulu|l1|LessThan3~9_combout\;
\lulu|l1|ALT_INV_temp_min~9_combout\ <= NOT \lulu|l1|temp_min~9_combout\;
\lulu|l1|ALT_INV_sig_arr[2][8]~q\ <= NOT \lulu|l1|sig_arr[2][8]~q\;
\lulu|l1|ALT_INV_temp_min~8_combout\ <= NOT \lulu|l1|temp_min~8_combout\;
\lulu|l1|ALT_INV_sig_arr[2][9]~q\ <= NOT \lulu|l1|sig_arr[2][9]~q\;
\lulu|l1|ALT_INV_LessThan3~8_combout\ <= NOT \lulu|l1|LessThan3~8_combout\;
\lulu|l1|ALT_INV_LessThan3~7_combout\ <= NOT \lulu|l1|LessThan3~7_combout\;
\lulu|l1|ALT_INV_LessThan3~6_combout\ <= NOT \lulu|l1|LessThan3~6_combout\;
\lulu|l1|ALT_INV_LessThan3~5_combout\ <= NOT \lulu|l1|LessThan3~5_combout\;
\lulu|l1|ALT_INV_LessThan3~4_combout\ <= NOT \lulu|l1|LessThan3~4_combout\;
\lulu|l1|ALT_INV_temp_min~7_combout\ <= NOT \lulu|l1|temp_min~7_combout\;
\lulu|l1|ALT_INV_sig_arr[2][2]~q\ <= NOT \lulu|l1|sig_arr[2][2]~q\;
\lulu|l1|ALT_INV_temp_min~6_combout\ <= NOT \lulu|l1|temp_min~6_combout\;
\lulu|l1|ALT_INV_sig_arr[2][3]~q\ <= NOT \lulu|l1|sig_arr[2][3]~q\;
\lulu|l1|ALT_INV_LessThan3~3_combout\ <= NOT \lulu|l1|LessThan3~3_combout\;
\lulu|l1|ALT_INV_temp_min~5_combout\ <= NOT \lulu|l1|temp_min~5_combout\;
\lulu|l1|ALT_INV_sig_arr[2][1]~q\ <= NOT \lulu|l1|sig_arr[2][1]~q\;
\lulu|l1|ALT_INV_LessThan3~2_combout\ <= NOT \lulu|l1|LessThan3~2_combout\;
\lulu|l1|ALT_INV_temp_min~4_combout\ <= NOT \lulu|l1|temp_min~4_combout\;
\lulu|l1|ALT_INV_sig_arr[2][4]~q\ <= NOT \lulu|l1|sig_arr[2][4]~q\;
\lulu|l1|ALT_INV_LessThan3~1_combout\ <= NOT \lulu|l1|LessThan3~1_combout\;
\lulu|l1|ALT_INV_temp_min~3_combout\ <= NOT \lulu|l1|temp_min~3_combout\;
\lulu|l1|ALT_INV_sig_arr[2][5]~q\ <= NOT \lulu|l1|sig_arr[2][5]~q\;
\lulu|l1|ALT_INV_LessThan3~0_combout\ <= NOT \lulu|l1|LessThan3~0_combout\;
\lulu|l1|ALT_INV_temp_min~2_combout\ <= NOT \lulu|l1|temp_min~2_combout\;
\lulu|l1|ALT_INV_sig_arr[2][6]~q\ <= NOT \lulu|l1|sig_arr[2][6]~q\;
\lulu|l1|ALT_INV_temp_min~1_combout\ <= NOT \lulu|l1|temp_min~1_combout\;
\lulu|l1|ALT_INV_sig_arr[2][7]~q\ <= NOT \lulu|l1|sig_arr[2][7]~q\;
\lulu|l1|ALT_INV_temp_min~0_combout\ <= NOT \lulu|l1|temp_min~0_combout\;
\lulu|l1|ALT_INV_LessThan2~5_combout\ <= NOT \lulu|l1|LessThan2~5_combout\;
\lulu|l1|ALT_INV_LessThan2~4_combout\ <= NOT \lulu|l1|LessThan2~4_combout\;
\lulu|l1|ALT_INV_LessThan2~3_combout\ <= NOT \lulu|l1|LessThan2~3_combout\;
\lulu|l1|ALT_INV_LessThan2~2_combout\ <= NOT \lulu|l1|LessThan2~2_combout\;
\lulu|l1|ALT_INV_LessThan2~1_combout\ <= NOT \lulu|l1|LessThan2~1_combout\;
\lulu|l1|ALT_INV_sig_arr[1][1]~q\ <= NOT \lulu|l1|sig_arr[1][1]~q\;
\lulu|l1|ALT_INV_sig_arr[0][1]~q\ <= NOT \lulu|l1|sig_arr[0][1]~q\;
\lulu|l1|ALT_INV_sig_arr[1][2]~q\ <= NOT \lulu|l1|sig_arr[1][2]~q\;
\lulu|l1|ALT_INV_sig_arr[0][2]~q\ <= NOT \lulu|l1|sig_arr[0][2]~q\;
\lulu|l1|ALT_INV_sig_arr[1][3]~q\ <= NOT \lulu|l1|sig_arr[1][3]~q\;
\lulu|l1|ALT_INV_sig_arr[0][3]~q\ <= NOT \lulu|l1|sig_arr[0][3]~q\;
\lulu|l1|ALT_INV_LessThan2~0_combout\ <= NOT \lulu|l1|LessThan2~0_combout\;
\lulu|l1|ALT_INV_sig_arr[1][5]~q\ <= NOT \lulu|l1|sig_arr[1][5]~q\;
\lulu|l1|ALT_INV_sig_arr[0][5]~q\ <= NOT \lulu|l1|sig_arr[0][5]~q\;
\lulu|l1|ALT_INV_sig_arr[1][6]~q\ <= NOT \lulu|l1|sig_arr[1][6]~q\;
\lulu|l1|ALT_INV_sig_arr[0][6]~q\ <= NOT \lulu|l1|sig_arr[0][6]~q\;
\lulu|l1|ALT_INV_sig_arr[1][7]~q\ <= NOT \lulu|l1|sig_arr[1][7]~q\;
\lulu|l1|ALT_INV_sig_arr[0][7]~q\ <= NOT \lulu|l1|sig_arr[0][7]~q\;
\lulu|l1|ALT_INV_sig_arr[1][4]~q\ <= NOT \lulu|l1|sig_arr[1][4]~q\;
\lulu|l1|ALT_INV_sig_arr[0][4]~q\ <= NOT \lulu|l1|sig_arr[0][4]~q\;
\lulu|l1|ALT_INV_sig_arr[1][8]~q\ <= NOT \lulu|l1|sig_arr[1][8]~q\;
\lulu|l1|ALT_INV_sig_arr[0][8]~q\ <= NOT \lulu|l1|sig_arr[0][8]~q\;
\lulu|l1|ALT_INV_sig_arr[0][9]~q\ <= NOT \lulu|l1|sig_arr[0][9]~q\;
\lulu|l1|ALT_INV_sig_arr[1][9]~q\ <= NOT \lulu|l1|sig_arr[1][9]~q\;
\lulu|l1|ALT_INV_sig_arr[1][0]~q\ <= NOT \lulu|l1|sig_arr[1][0]~q\;
\lulu|l1|ALT_INV_sig_arr[0][0]~q\ <= NOT \lulu|l1|sig_arr[0][0]~q\;
\lulu|l1|ALT_INV_sig_arr[2][0]~q\ <= NOT \lulu|l1|sig_arr[2][0]~q\;
\lulu|l2|ALT_INV_LessThan5~2_combout\ <= NOT \lulu|l2|LessThan5~2_combout\;
\lulu|l2|ALT_INV_LessThan5~1_combout\ <= NOT \lulu|l2|LessThan5~1_combout\;
\lulu|l2|ALT_INV_LessThan5~0_combout\ <= NOT \lulu|l2|LessThan5~0_combout\;
\lulu|l1|ALT_INV_l_arr[2][1]~q\ <= NOT \lulu|l1|l_arr[2][1]~q\;
\lulu|l1|ALT_INV_l_arr[2][2]~q\ <= NOT \lulu|l1|l_arr[2][2]~q\;
\lulu|l1|ALT_INV_l_arr[2][3]~q\ <= NOT \lulu|l1|l_arr[2][3]~q\;
\lulu|l1|ALT_INV_l_arr[2][5]~q\ <= NOT \lulu|l1|l_arr[2][5]~q\;
\lulu|l1|ALT_INV_l_arr[2][6]~q\ <= NOT \lulu|l1|l_arr[2][6]~q\;
\lulu|l1|ALT_INV_l_arr[2][7]~q\ <= NOT \lulu|l1|l_arr[2][7]~q\;
\lulu|l1|ALT_INV_l_arr[2][4]~q\ <= NOT \lulu|l1|l_arr[2][4]~q\;
\lulu|l1|ALT_INV_l_arr[2][8]~q\ <= NOT \lulu|l1|l_arr[2][8]~q\;
\lulu|l1|ALT_INV_temp_max~1_combout\ <= NOT \lulu|l1|temp_max~1_combout\;
\lulu|l1|ALT_INV_l_arr[2][9]~q\ <= NOT \lulu|l1|l_arr[2][9]~q\;
\lulu|l1|ALT_INV_LessThan6~7_combout\ <= NOT \lulu|l1|LessThan6~7_combout\;
\lulu|l1|ALT_INV_LessThan6~6_combout\ <= NOT \lulu|l1|LessThan6~6_combout\;
\lulu|l1|ALT_INV_LessThan6~5_combout\ <= NOT \lulu|l1|LessThan6~5_combout\;
\lulu|l1|ALT_INV_LessThan6~4_combout\ <= NOT \lulu|l1|LessThan6~4_combout\;
\lulu|l1|ALT_INV_LessThan6~3_combout\ <= NOT \lulu|l1|LessThan6~3_combout\;
\lulu|l1|ALT_INV_l_arr[1][7]~q\ <= NOT \lulu|l1|l_arr[1][7]~q\;
\lulu|l1|ALT_INV_l_arr[0][7]~q\ <= NOT \lulu|l1|l_arr[0][7]~q\;
\lulu|l1|ALT_INV_l_arr[1][6]~q\ <= NOT \lulu|l1|l_arr[1][6]~q\;
\lulu|l1|ALT_INV_l_arr[0][6]~q\ <= NOT \lulu|l1|l_arr[0][6]~q\;
\lulu|l1|ALT_INV_l_arr[1][5]~q\ <= NOT \lulu|l1|l_arr[1][5]~q\;
\lulu|l1|ALT_INV_l_arr[0][5]~q\ <= NOT \lulu|l1|l_arr[0][5]~q\;
\lulu|l1|ALT_INV_l_arr[1][4]~q\ <= NOT \lulu|l1|l_arr[1][4]~q\;
\lulu|l1|ALT_INV_l_arr[0][4]~q\ <= NOT \lulu|l1|l_arr[0][4]~q\;
\lulu|l1|ALT_INV_LessThan6~2_combout\ <= NOT \lulu|l1|LessThan6~2_combout\;
\lulu|l1|ALT_INV_l_arr[1][3]~q\ <= NOT \lulu|l1|l_arr[1][3]~q\;
\lulu|l1|ALT_INV_l_arr[0][3]~q\ <= NOT \lulu|l1|l_arr[0][3]~q\;
\lulu|l1|ALT_INV_l_arr[1][2]~q\ <= NOT \lulu|l1|l_arr[1][2]~q\;
\lulu|l1|ALT_INV_l_arr[0][2]~q\ <= NOT \lulu|l1|l_arr[0][2]~q\;
\lulu|l1|ALT_INV_LessThan6~1_combout\ <= NOT \lulu|l1|LessThan6~1_combout\;
\lulu|l1|ALT_INV_l_arr[1][1]~q\ <= NOT \lulu|l1|l_arr[1][1]~q\;
\lulu|l1|ALT_INV_l_arr[0][1]~q\ <= NOT \lulu|l1|l_arr[0][1]~q\;
\lulu|l1|ALT_INV_l_arr[0][8]~q\ <= NOT \lulu|l1|l_arr[0][8]~q\;
\lulu|l1|ALT_INV_l_arr[1][8]~q\ <= NOT \lulu|l1|l_arr[1][8]~q\;
\lulu|l1|ALT_INV_LessThan6~0_combout\ <= NOT \lulu|l1|LessThan6~0_combout\;
\lulu|l1|ALT_INV_l_arr[1][9]~q\ <= NOT \lulu|l1|l_arr[1][9]~q\;
\lulu|l1|ALT_INV_l_arr[0][9]~q\ <= NOT \lulu|l1|l_arr[0][9]~q\;
\lulu|l1|ALT_INV_l_arr[1][0]~q\ <= NOT \lulu|l1|l_arr[1][0]~q\;
\lulu|l1|ALT_INV_l_arr[0][0]~q\ <= NOT \lulu|l1|l_arr[0][0]~q\;
\lulu|l1|ALT_INV_l_arr[2][0]~q\ <= NOT \lulu|l1|l_arr[2][0]~q\;
\lulu|l1|ALT_INV_l_out\(1) <= NOT \lulu|l1|l_out\(1);
\lulu|l1|ALT_INV_l_out\(5) <= NOT \lulu|l1|l_out\(5);
\lulu|l1|ALT_INV_l_out\(6) <= NOT \lulu|l1|l_out\(6);
\lulu|l1|ALT_INV_l_out\(7) <= NOT \lulu|l1|l_out\(7);
\lulu|l1|ALT_INV_l_out\(8) <= NOT \lulu|l1|l_out\(8);
\lulu|l1|ALT_INV_l_out\(9) <= NOT \lulu|l1|l_out\(9);
\lulu|u1|ALT_INV_temp_max~14_combout\ <= NOT \lulu|u1|temp_max~14_combout\;
\lulu|u1|ALT_INV_temp_max~11_combout\ <= NOT \lulu|u1|temp_max~11_combout\;
\lulu|u1|ALT_INV_LessThan3~10_combout\ <= NOT \lulu|u1|LessThan3~10_combout\;
\lulu|u1|ALT_INV_LessThan3~9_combout\ <= NOT \lulu|u1|LessThan3~9_combout\;
\lulu|u1|ALT_INV_temp_max~9_combout\ <= NOT \lulu|u1|temp_max~9_combout\;
\lulu|u1|ALT_INV_sig_arr[2][8]~q\ <= NOT \lulu|u1|sig_arr[2][8]~q\;
\lulu|u1|ALT_INV_temp_max~8_combout\ <= NOT \lulu|u1|temp_max~8_combout\;
\lulu|u1|ALT_INV_sig_arr[2][9]~q\ <= NOT \lulu|u1|sig_arr[2][9]~q\;
\lulu|u1|ALT_INV_LessThan3~8_combout\ <= NOT \lulu|u1|LessThan3~8_combout\;
\lulu|u1|ALT_INV_LessThan3~7_combout\ <= NOT \lulu|u1|LessThan3~7_combout\;
\lulu|u1|ALT_INV_LessThan3~6_combout\ <= NOT \lulu|u1|LessThan3~6_combout\;
\lulu|u1|ALT_INV_LessThan3~5_combout\ <= NOT \lulu|u1|LessThan3~5_combout\;
\lulu|u1|ALT_INV_LessThan3~4_combout\ <= NOT \lulu|u1|LessThan3~4_combout\;
\lulu|u1|ALT_INV_temp_max~7_combout\ <= NOT \lulu|u1|temp_max~7_combout\;
\lulu|u1|ALT_INV_sig_arr[2][2]~q\ <= NOT \lulu|u1|sig_arr[2][2]~q\;
\lulu|u1|ALT_INV_temp_max~6_combout\ <= NOT \lulu|u1|temp_max~6_combout\;
\lulu|u1|ALT_INV_sig_arr[2][3]~q\ <= NOT \lulu|u1|sig_arr[2][3]~q\;
\lulu|u1|ALT_INV_LessThan3~3_combout\ <= NOT \lulu|u1|LessThan3~3_combout\;
\lulu|u1|ALT_INV_temp_max~5_combout\ <= NOT \lulu|u1|temp_max~5_combout\;
\lulu|u1|ALT_INV_sig_arr[2][1]~q\ <= NOT \lulu|u1|sig_arr[2][1]~q\;
\lulu|u1|ALT_INV_LessThan3~2_combout\ <= NOT \lulu|u1|LessThan3~2_combout\;
\lulu|u1|ALT_INV_temp_max~4_combout\ <= NOT \lulu|u1|temp_max~4_combout\;
\lulu|u1|ALT_INV_sig_arr[2][4]~q\ <= NOT \lulu|u1|sig_arr[2][4]~q\;
\lulu|u1|ALT_INV_LessThan3~1_combout\ <= NOT \lulu|u1|LessThan3~1_combout\;
\lulu|u1|ALT_INV_temp_max~3_combout\ <= NOT \lulu|u1|temp_max~3_combout\;
\lulu|u1|ALT_INV_sig_arr[2][5]~q\ <= NOT \lulu|u1|sig_arr[2][5]~q\;
\lulu|u1|ALT_INV_LessThan3~0_combout\ <= NOT \lulu|u1|LessThan3~0_combout\;
\lulu|u1|ALT_INV_temp_max~2_combout\ <= NOT \lulu|u1|temp_max~2_combout\;
\lulu|u1|ALT_INV_sig_arr[2][6]~q\ <= NOT \lulu|u1|sig_arr[2][6]~q\;
\lulu|u1|ALT_INV_temp_max~1_combout\ <= NOT \lulu|u1|temp_max~1_combout\;
\lulu|u1|ALT_INV_sig_arr[2][7]~q\ <= NOT \lulu|u1|sig_arr[2][7]~q\;
\lulu|u1|ALT_INV_temp_max~0_combout\ <= NOT \lulu|u1|temp_max~0_combout\;
\lulu|u1|ALT_INV_LessThan2~5_combout\ <= NOT \lulu|u1|LessThan2~5_combout\;
\lulu|u1|ALT_INV_LessThan2~4_combout\ <= NOT \lulu|u1|LessThan2~4_combout\;
\lulu|u1|ALT_INV_LessThan2~3_combout\ <= NOT \lulu|u1|LessThan2~3_combout\;
\lulu|u1|ALT_INV_LessThan2~2_combout\ <= NOT \lulu|u1|LessThan2~2_combout\;
\lulu|u1|ALT_INV_LessThan2~1_combout\ <= NOT \lulu|u1|LessThan2~1_combout\;
\lulu|u1|ALT_INV_sig_arr[1][1]~q\ <= NOT \lulu|u1|sig_arr[1][1]~q\;
\lulu|u1|ALT_INV_sig_arr[0][1]~q\ <= NOT \lulu|u1|sig_arr[0][1]~q\;
\lulu|u1|ALT_INV_sig_arr[1][2]~q\ <= NOT \lulu|u1|sig_arr[1][2]~q\;
\lulu|u1|ALT_INV_sig_arr[0][2]~q\ <= NOT \lulu|u1|sig_arr[0][2]~q\;
\lulu|u1|ALT_INV_sig_arr[1][3]~q\ <= NOT \lulu|u1|sig_arr[1][3]~q\;
\lulu|u1|ALT_INV_sig_arr[0][3]~q\ <= NOT \lulu|u1|sig_arr[0][3]~q\;
\lulu|u1|ALT_INV_LessThan2~0_combout\ <= NOT \lulu|u1|LessThan2~0_combout\;
\lulu|u1|ALT_INV_sig_arr[1][5]~q\ <= NOT \lulu|u1|sig_arr[1][5]~q\;
\lulu|u1|ALT_INV_sig_arr[0][5]~q\ <= NOT \lulu|u1|sig_arr[0][5]~q\;
\lulu|u1|ALT_INV_sig_arr[1][6]~q\ <= NOT \lulu|u1|sig_arr[1][6]~q\;
\lulu|u1|ALT_INV_sig_arr[0][6]~q\ <= NOT \lulu|u1|sig_arr[0][6]~q\;
\lulu|u1|ALT_INV_sig_arr[1][7]~q\ <= NOT \lulu|u1|sig_arr[1][7]~q\;
\lulu|u1|ALT_INV_sig_arr[0][7]~q\ <= NOT \lulu|u1|sig_arr[0][7]~q\;
\lulu|u1|ALT_INV_sig_arr[1][4]~q\ <= NOT \lulu|u1|sig_arr[1][4]~q\;
\lulu|u1|ALT_INV_sig_arr[0][4]~q\ <= NOT \lulu|u1|sig_arr[0][4]~q\;
\lulu|u1|ALT_INV_sig_arr[1][8]~q\ <= NOT \lulu|u1|sig_arr[1][8]~q\;
\lulu|u1|ALT_INV_sig_arr[0][8]~q\ <= NOT \lulu|u1|sig_arr[0][8]~q\;
\lulu|u1|ALT_INV_sig_arr[0][9]~q\ <= NOT \lulu|u1|sig_arr[0][9]~q\;
\lulu|u1|ALT_INV_sig_arr[1][9]~q\ <= NOT \lulu|u1|sig_arr[1][9]~q\;
\lulu|u1|ALT_INV_sig_arr[1][0]~q\ <= NOT \lulu|u1|sig_arr[1][0]~q\;
\lulu|u1|ALT_INV_sig_arr[0][0]~q\ <= NOT \lulu|u1|sig_arr[0][0]~q\;
\lulu|u1|ALT_INV_sig_arr[2][0]~q\ <= NOT \lulu|u1|sig_arr[2][0]~q\;
\lulu|u1|ALT_INV_u_arr[2][1]~q\ <= NOT \lulu|u1|u_arr[2][1]~q\;
\lulu|u1|ALT_INV_u_arr[2][2]~q\ <= NOT \lulu|u1|u_arr[2][2]~q\;
\lulu|u1|ALT_INV_u_arr[2][3]~q\ <= NOT \lulu|u1|u_arr[2][3]~q\;
\lulu|u1|ALT_INV_u_arr[2][5]~q\ <= NOT \lulu|u1|u_arr[2][5]~q\;
\lulu|u1|ALT_INV_u_arr[2][6]~q\ <= NOT \lulu|u1|u_arr[2][6]~q\;
\lulu|u1|ALT_INV_u_arr[2][7]~q\ <= NOT \lulu|u1|u_arr[2][7]~q\;
\lulu|u1|ALT_INV_u_arr[2][4]~q\ <= NOT \lulu|u1|u_arr[2][4]~q\;
\lulu|u1|ALT_INV_u_arr[2][8]~q\ <= NOT \lulu|u1|u_arr[2][8]~q\;
\lulu|u1|ALT_INV_temp_min~1_combout\ <= NOT \lulu|u1|temp_min~1_combout\;
\lulu|u1|ALT_INV_u_arr[2][9]~q\ <= NOT \lulu|u1|u_arr[2][9]~q\;
\lulu|u1|ALT_INV_LessThan6~6_combout\ <= NOT \lulu|u1|LessThan6~6_combout\;
\lulu|u1|ALT_INV_LessThan6~5_combout\ <= NOT \lulu|u1|LessThan6~5_combout\;
\lulu|u1|ALT_INV_LessThan6~4_combout\ <= NOT \lulu|u1|LessThan6~4_combout\;
\lulu|u1|ALT_INV_LessThan6~3_combout\ <= NOT \lulu|u1|LessThan6~3_combout\;
\lulu|u1|ALT_INV_u_arr[1][7]~q\ <= NOT \lulu|u1|u_arr[1][7]~q\;
\lulu|u1|ALT_INV_u_arr[0][7]~q\ <= NOT \lulu|u1|u_arr[0][7]~q\;
\lulu|u1|ALT_INV_u_arr[1][6]~q\ <= NOT \lulu|u1|u_arr[1][6]~q\;
\lulu|u1|ALT_INV_u_arr[0][6]~q\ <= NOT \lulu|u1|u_arr[0][6]~q\;
\lulu|u1|ALT_INV_u_arr[1][5]~q\ <= NOT \lulu|u1|u_arr[1][5]~q\;
\lulu|u1|ALT_INV_u_arr[0][5]~q\ <= NOT \lulu|u1|u_arr[0][5]~q\;
\lulu|u1|ALT_INV_u_arr[1][4]~q\ <= NOT \lulu|u1|u_arr[1][4]~q\;
\lulu|u1|ALT_INV_u_arr[0][4]~q\ <= NOT \lulu|u1|u_arr[0][4]~q\;
\lulu|u1|ALT_INV_LessThan6~2_combout\ <= NOT \lulu|u1|LessThan6~2_combout\;
\lulu|u1|ALT_INV_u_arr[1][3]~q\ <= NOT \lulu|u1|u_arr[1][3]~q\;
\lulu|u1|ALT_INV_u_arr[0][3]~q\ <= NOT \lulu|u1|u_arr[0][3]~q\;
\lulu|u1|ALT_INV_u_arr[1][2]~q\ <= NOT \lulu|u1|u_arr[1][2]~q\;
\lulu|u1|ALT_INV_u_arr[0][2]~q\ <= NOT \lulu|u1|u_arr[0][2]~q\;
\lulu|u1|ALT_INV_LessThan6~1_combout\ <= NOT \lulu|u1|LessThan6~1_combout\;
\lulu|u1|ALT_INV_u_arr[1][1]~q\ <= NOT \lulu|u1|u_arr[1][1]~q\;
\lulu|u1|ALT_INV_u_arr[0][1]~q\ <= NOT \lulu|u1|u_arr[0][1]~q\;
\lulu|u1|ALT_INV_u_arr[0][8]~q\ <= NOT \lulu|u1|u_arr[0][8]~q\;
\lulu|u1|ALT_INV_u_arr[1][8]~q\ <= NOT \lulu|u1|u_arr[1][8]~q\;
\lulu|u1|ALT_INV_u_arr[1][0]~q\ <= NOT \lulu|u1|u_arr[1][0]~q\;
\lulu|u1|ALT_INV_u_arr[0][0]~q\ <= NOT \lulu|u1|u_arr[0][0]~q\;
\lulu|u1|ALT_INV_LessThan6~0_combout\ <= NOT \lulu|u1|LessThan6~0_combout\;
\lulu|u1|ALT_INV_u_arr[1][9]~q\ <= NOT \lulu|u1|u_arr[1][9]~q\;
\lulu|u1|ALT_INV_u_arr[0][9]~q\ <= NOT \lulu|u1|u_arr[0][9]~q\;
\lulu|u1|ALT_INV_u_arr[2][0]~q\ <= NOT \lulu|u1|u_arr[2][0]~q\;
\lulu|u1|ALT_INV_u_out\(8) <= NOT \lulu|u1|u_out\(8);
\lulu|u1|ALT_INV_u_out\(9) <= NOT \lulu|u1|u_out\(9);
\lulu|l2|ALT_INV_temp_min~16_combout\ <= NOT \lulu|l2|temp_min~16_combout\;
\lulu|l2|ALT_INV_LessThan3~10_combout\ <= NOT \lulu|l2|LessThan3~10_combout\;
\lulu|l2|ALT_INV_LessThan3~9_combout\ <= NOT \lulu|l2|LessThan3~9_combout\;
\lulu|l2|ALT_INV_temp_min~9_combout\ <= NOT \lulu|l2|temp_min~9_combout\;
\lulu|l2|ALT_INV_sig_arr[2][8]~q\ <= NOT \lulu|l2|sig_arr[2][8]~q\;
\lulu|l2|ALT_INV_temp_min~8_combout\ <= NOT \lulu|l2|temp_min~8_combout\;
\lulu|l2|ALT_INV_sig_arr[2][9]~q\ <= NOT \lulu|l2|sig_arr[2][9]~q\;
\lulu|l2|ALT_INV_LessThan3~8_combout\ <= NOT \lulu|l2|LessThan3~8_combout\;
\lulu|l2|ALT_INV_LessThan3~7_combout\ <= NOT \lulu|l2|LessThan3~7_combout\;
\lulu|l2|ALT_INV_LessThan3~6_combout\ <= NOT \lulu|l2|LessThan3~6_combout\;
\lulu|l2|ALT_INV_LessThan3~5_combout\ <= NOT \lulu|l2|LessThan3~5_combout\;
\lulu|l2|ALT_INV_LessThan3~4_combout\ <= NOT \lulu|l2|LessThan3~4_combout\;
\lulu|l2|ALT_INV_temp_min~7_combout\ <= NOT \lulu|l2|temp_min~7_combout\;
\lulu|l2|ALT_INV_sig_arr[2][2]~q\ <= NOT \lulu|l2|sig_arr[2][2]~q\;
\lulu|l2|ALT_INV_temp_min~6_combout\ <= NOT \lulu|l2|temp_min~6_combout\;
\lulu|l2|ALT_INV_sig_arr[2][3]~q\ <= NOT \lulu|l2|sig_arr[2][3]~q\;
\lulu|l2|ALT_INV_LessThan3~3_combout\ <= NOT \lulu|l2|LessThan3~3_combout\;
\lulu|l2|ALT_INV_temp_min~5_combout\ <= NOT \lulu|l2|temp_min~5_combout\;
\lulu|l2|ALT_INV_sig_arr[2][1]~q\ <= NOT \lulu|l2|sig_arr[2][1]~q\;
\lulu|l2|ALT_INV_LessThan3~2_combout\ <= NOT \lulu|l2|LessThan3~2_combout\;
\lulu|l2|ALT_INV_temp_min~4_combout\ <= NOT \lulu|l2|temp_min~4_combout\;
\lulu|l2|ALT_INV_sig_arr[2][4]~q\ <= NOT \lulu|l2|sig_arr[2][4]~q\;
\lulu|l2|ALT_INV_LessThan3~1_combout\ <= NOT \lulu|l2|LessThan3~1_combout\;
\lulu|l2|ALT_INV_temp_min~3_combout\ <= NOT \lulu|l2|temp_min~3_combout\;
\lulu|l2|ALT_INV_sig_arr[2][5]~q\ <= NOT \lulu|l2|sig_arr[2][5]~q\;
\lulu|l2|ALT_INV_LessThan3~0_combout\ <= NOT \lulu|l2|LessThan3~0_combout\;
\lulu|l2|ALT_INV_temp_min~2_combout\ <= NOT \lulu|l2|temp_min~2_combout\;
\lulu|l2|ALT_INV_sig_arr[2][6]~q\ <= NOT \lulu|l2|sig_arr[2][6]~q\;
\lulu|l2|ALT_INV_temp_min~1_combout\ <= NOT \lulu|l2|temp_min~1_combout\;
\lulu|l2|ALT_INV_sig_arr[2][7]~q\ <= NOT \lulu|l2|sig_arr[2][7]~q\;
\lulu|l2|ALT_INV_temp_min~0_combout\ <= NOT \lulu|l2|temp_min~0_combout\;
\lulu|l2|ALT_INV_LessThan2~5_combout\ <= NOT \lulu|l2|LessThan2~5_combout\;
\lulu|l2|ALT_INV_LessThan2~4_combout\ <= NOT \lulu|l2|LessThan2~4_combout\;
\lulu|l2|ALT_INV_LessThan2~3_combout\ <= NOT \lulu|l2|LessThan2~3_combout\;
\lulu|l2|ALT_INV_LessThan2~2_combout\ <= NOT \lulu|l2|LessThan2~2_combout\;
\lulu|l2|ALT_INV_LessThan2~1_combout\ <= NOT \lulu|l2|LessThan2~1_combout\;
\lulu|l2|ALT_INV_sig_arr[1][1]~q\ <= NOT \lulu|l2|sig_arr[1][1]~q\;
\lulu|l2|ALT_INV_sig_arr[0][1]~q\ <= NOT \lulu|l2|sig_arr[0][1]~q\;
\lulu|l2|ALT_INV_sig_arr[1][2]~q\ <= NOT \lulu|l2|sig_arr[1][2]~q\;
\lulu|l2|ALT_INV_sig_arr[0][2]~q\ <= NOT \lulu|l2|sig_arr[0][2]~q\;
\lulu|l2|ALT_INV_sig_arr[1][3]~q\ <= NOT \lulu|l2|sig_arr[1][3]~q\;
\lulu|l2|ALT_INV_sig_arr[0][3]~q\ <= NOT \lulu|l2|sig_arr[0][3]~q\;
\lulu|l2|ALT_INV_LessThan2~0_combout\ <= NOT \lulu|l2|LessThan2~0_combout\;
\lulu|l2|ALT_INV_sig_arr[1][5]~q\ <= NOT \lulu|l2|sig_arr[1][5]~q\;
\lulu|l2|ALT_INV_sig_arr[0][5]~q\ <= NOT \lulu|l2|sig_arr[0][5]~q\;
\lulu|l2|ALT_INV_sig_arr[1][6]~q\ <= NOT \lulu|l2|sig_arr[1][6]~q\;
\lulu|l2|ALT_INV_sig_arr[0][6]~q\ <= NOT \lulu|l2|sig_arr[0][6]~q\;
\lulu|l2|ALT_INV_sig_arr[1][7]~q\ <= NOT \lulu|l2|sig_arr[1][7]~q\;
\lulu|l2|ALT_INV_sig_arr[0][7]~q\ <= NOT \lulu|l2|sig_arr[0][7]~q\;
\lulu|l2|ALT_INV_sig_arr[1][4]~q\ <= NOT \lulu|l2|sig_arr[1][4]~q\;
\lulu|l2|ALT_INV_sig_arr[0][4]~q\ <= NOT \lulu|l2|sig_arr[0][4]~q\;
\lulu|l2|ALT_INV_sig_arr[1][8]~q\ <= NOT \lulu|l2|sig_arr[1][8]~q\;
\lulu|l2|ALT_INV_sig_arr[0][8]~q\ <= NOT \lulu|l2|sig_arr[0][8]~q\;
\lulu|l2|ALT_INV_sig_arr[0][9]~q\ <= NOT \lulu|l2|sig_arr[0][9]~q\;
\lulu|l2|ALT_INV_sig_arr[1][9]~q\ <= NOT \lulu|l2|sig_arr[1][9]~q\;
\lulu|l2|ALT_INV_sig_arr[1][0]~q\ <= NOT \lulu|l2|sig_arr[1][0]~q\;
\lulu|l2|ALT_INV_sig_arr[0][0]~q\ <= NOT \lulu|l2|sig_arr[0][0]~q\;
\lulu|l2|ALT_INV_sig_arr[2][0]~q\ <= NOT \lulu|l2|sig_arr[2][0]~q\;
\lulu|l2|ALT_INV_l_arr[2][1]~q\ <= NOT \lulu|l2|l_arr[2][1]~q\;
\lulu|l2|ALT_INV_l_arr[2][2]~q\ <= NOT \lulu|l2|l_arr[2][2]~q\;
\lulu|l2|ALT_INV_l_arr[2][3]~q\ <= NOT \lulu|l2|l_arr[2][3]~q\;
\lulu|l2|ALT_INV_l_arr[2][5]~q\ <= NOT \lulu|l2|l_arr[2][5]~q\;
\lulu|l2|ALT_INV_l_arr[2][6]~q\ <= NOT \lulu|l2|l_arr[2][6]~q\;
\lulu|l2|ALT_INV_l_arr[2][7]~q\ <= NOT \lulu|l2|l_arr[2][7]~q\;
\lulu|l2|ALT_INV_l_arr[2][4]~q\ <= NOT \lulu|l2|l_arr[2][4]~q\;
\lulu|l2|ALT_INV_l_arr[2][8]~q\ <= NOT \lulu|l2|l_arr[2][8]~q\;
\lulu|l2|ALT_INV_temp_max~1_combout\ <= NOT \lulu|l2|temp_max~1_combout\;
\lulu|l2|ALT_INV_l_arr[2][9]~q\ <= NOT \lulu|l2|l_arr[2][9]~q\;
\lulu|l2|ALT_INV_LessThan6~7_combout\ <= NOT \lulu|l2|LessThan6~7_combout\;
\lulu|l2|ALT_INV_LessThan6~6_combout\ <= NOT \lulu|l2|LessThan6~6_combout\;
\lulu|l2|ALT_INV_LessThan6~5_combout\ <= NOT \lulu|l2|LessThan6~5_combout\;
\lulu|l2|ALT_INV_LessThan6~4_combout\ <= NOT \lulu|l2|LessThan6~4_combout\;
\lulu|l2|ALT_INV_LessThan6~3_combout\ <= NOT \lulu|l2|LessThan6~3_combout\;
\lulu|l2|ALT_INV_l_arr[1][7]~q\ <= NOT \lulu|l2|l_arr[1][7]~q\;
\lulu|l2|ALT_INV_l_arr[0][7]~q\ <= NOT \lulu|l2|l_arr[0][7]~q\;
\lulu|l2|ALT_INV_l_arr[1][6]~q\ <= NOT \lulu|l2|l_arr[1][6]~q\;
\lulu|l2|ALT_INV_l_arr[0][6]~q\ <= NOT \lulu|l2|l_arr[0][6]~q\;
\lulu|l2|ALT_INV_l_arr[1][5]~q\ <= NOT \lulu|l2|l_arr[1][5]~q\;
\lulu|l2|ALT_INV_l_arr[0][5]~q\ <= NOT \lulu|l2|l_arr[0][5]~q\;
\lulu|l2|ALT_INV_l_arr[1][4]~q\ <= NOT \lulu|l2|l_arr[1][4]~q\;
\lulu|l2|ALT_INV_l_arr[0][4]~q\ <= NOT \lulu|l2|l_arr[0][4]~q\;
\lulu|l2|ALT_INV_LessThan6~2_combout\ <= NOT \lulu|l2|LessThan6~2_combout\;
\lulu|l2|ALT_INV_l_arr[1][3]~q\ <= NOT \lulu|l2|l_arr[1][3]~q\;
\lulu|l2|ALT_INV_l_arr[0][3]~q\ <= NOT \lulu|l2|l_arr[0][3]~q\;
\lulu|l2|ALT_INV_l_arr[1][2]~q\ <= NOT \lulu|l2|l_arr[1][2]~q\;
\lulu|l2|ALT_INV_l_arr[0][2]~q\ <= NOT \lulu|l2|l_arr[0][2]~q\;
\lulu|l2|ALT_INV_LessThan6~1_combout\ <= NOT \lulu|l2|LessThan6~1_combout\;
\lulu|l2|ALT_INV_l_arr[1][1]~q\ <= NOT \lulu|l2|l_arr[1][1]~q\;
\lulu|l2|ALT_INV_l_arr[0][1]~q\ <= NOT \lulu|l2|l_arr[0][1]~q\;
\lulu|l2|ALT_INV_l_arr[0][8]~q\ <= NOT \lulu|l2|l_arr[0][8]~q\;
\lulu|l2|ALT_INV_l_arr[1][8]~q\ <= NOT \lulu|l2|l_arr[1][8]~q\;
\lulu|l2|ALT_INV_LessThan6~0_combout\ <= NOT \lulu|l2|LessThan6~0_combout\;
\lulu|l2|ALT_INV_l_arr[1][9]~q\ <= NOT \lulu|l2|l_arr[1][9]~q\;
\lulu|l2|ALT_INV_l_arr[0][9]~q\ <= NOT \lulu|l2|l_arr[0][9]~q\;
\lulu|l2|ALT_INV_l_arr[1][0]~q\ <= NOT \lulu|l2|l_arr[1][0]~q\;
\lulu|l2|ALT_INV_l_arr[0][0]~q\ <= NOT \lulu|l2|l_arr[0][0]~q\;
\lulu|l2|ALT_INV_l_arr[2][0]~q\ <= NOT \lulu|l2|l_arr[2][0]~q\;
\lulu|l2|ALT_INV_l_out\(6) <= NOT \lulu|l2|l_out\(6);
\lulu|l2|ALT_INV_l_out\(7) <= NOT \lulu|l2|l_out\(7);
\lulu|l2|ALT_INV_l_out\(4) <= NOT \lulu|l2|l_out\(4);
\lulu|l2|ALT_INV_l_out\(8) <= NOT \lulu|l2|l_out\(8);
\lulu|u2|ALT_INV_temp_max~14_combout\ <= NOT \lulu|u2|temp_max~14_combout\;
\lulu|u2|ALT_INV_temp_max~12_combout\ <= NOT \lulu|u2|temp_max~12_combout\;
\lulu|u2|ALT_INV_Decoder1~1_combout\ <= NOT \lulu|u2|Decoder1~1_combout\;
\lulu|l1|ALT_INV_iter\(1) <= NOT \lulu|l1|iter\(1);
\lulu|l1|ALT_INV_iter\(0) <= NOT \lulu|l1|iter\(0);
\lulu|u2|ALT_INV_LessThan3~10_combout\ <= NOT \lulu|u2|LessThan3~10_combout\;
\lulu|u2|ALT_INV_LessThan3~9_combout\ <= NOT \lulu|u2|LessThan3~9_combout\;
\lulu|u2|ALT_INV_temp_max~9_combout\ <= NOT \lulu|u2|temp_max~9_combout\;
\lulu|u2|ALT_INV_sig_arr[2][8]~q\ <= NOT \lulu|u2|sig_arr[2][8]~q\;
\lulu|u2|ALT_INV_temp_max~8_combout\ <= NOT \lulu|u2|temp_max~8_combout\;
\lulu|u2|ALT_INV_sig_arr[2][9]~q\ <= NOT \lulu|u2|sig_arr[2][9]~q\;
\lulu|u2|ALT_INV_LessThan3~8_combout\ <= NOT \lulu|u2|LessThan3~8_combout\;
\lulu|u2|ALT_INV_LessThan3~7_combout\ <= NOT \lulu|u2|LessThan3~7_combout\;
\lulu|u2|ALT_INV_LessThan3~6_combout\ <= NOT \lulu|u2|LessThan3~6_combout\;
\lulu|u2|ALT_INV_LessThan3~5_combout\ <= NOT \lulu|u2|LessThan3~5_combout\;
\lulu|u2|ALT_INV_LessThan3~4_combout\ <= NOT \lulu|u2|LessThan3~4_combout\;
\lulu|u2|ALT_INV_temp_max~7_combout\ <= NOT \lulu|u2|temp_max~7_combout\;
\lulu|u2|ALT_INV_sig_arr[2][2]~q\ <= NOT \lulu|u2|sig_arr[2][2]~q\;
\lulu|u2|ALT_INV_temp_max~6_combout\ <= NOT \lulu|u2|temp_max~6_combout\;
\lulu|u2|ALT_INV_sig_arr[2][3]~q\ <= NOT \lulu|u2|sig_arr[2][3]~q\;
\lulu|u2|ALT_INV_LessThan3~3_combout\ <= NOT \lulu|u2|LessThan3~3_combout\;
\lulu|u2|ALT_INV_temp_max~5_combout\ <= NOT \lulu|u2|temp_max~5_combout\;
\lulu|u2|ALT_INV_sig_arr[2][1]~q\ <= NOT \lulu|u2|sig_arr[2][1]~q\;
\lulu|u2|ALT_INV_LessThan3~2_combout\ <= NOT \lulu|u2|LessThan3~2_combout\;
\lulu|u2|ALT_INV_temp_max~4_combout\ <= NOT \lulu|u2|temp_max~4_combout\;
\lulu|u2|ALT_INV_sig_arr[2][4]~q\ <= NOT \lulu|u2|sig_arr[2][4]~q\;
\lulu|u2|ALT_INV_LessThan3~1_combout\ <= NOT \lulu|u2|LessThan3~1_combout\;
\lulu|u2|ALT_INV_temp_max~3_combout\ <= NOT \lulu|u2|temp_max~3_combout\;
\lulu|u2|ALT_INV_sig_arr[2][5]~q\ <= NOT \lulu|u2|sig_arr[2][5]~q\;
\lulu|u2|ALT_INV_LessThan3~0_combout\ <= NOT \lulu|u2|LessThan3~0_combout\;
\lulu|u2|ALT_INV_temp_max~2_combout\ <= NOT \lulu|u2|temp_max~2_combout\;
\lulu|u2|ALT_INV_sig_arr[2][6]~q\ <= NOT \lulu|u2|sig_arr[2][6]~q\;
\lulu|u2|ALT_INV_temp_max~1_combout\ <= NOT \lulu|u2|temp_max~1_combout\;
\lulu|u2|ALT_INV_sig_arr[2][7]~q\ <= NOT \lulu|u2|sig_arr[2][7]~q\;
\lulu|u2|ALT_INV_temp_max~0_combout\ <= NOT \lulu|u2|temp_max~0_combout\;
\lulu|u2|ALT_INV_LessThan2~5_combout\ <= NOT \lulu|u2|LessThan2~5_combout\;
\lulu|u2|ALT_INV_LessThan2~4_combout\ <= NOT \lulu|u2|LessThan2~4_combout\;
\lulu|u2|ALT_INV_LessThan2~3_combout\ <= NOT \lulu|u2|LessThan2~3_combout\;
\lulu|u2|ALT_INV_LessThan2~2_combout\ <= NOT \lulu|u2|LessThan2~2_combout\;
\lulu|u2|ALT_INV_LessThan2~1_combout\ <= NOT \lulu|u2|LessThan2~1_combout\;
\lulu|u2|ALT_INV_sig_arr[1][1]~q\ <= NOT \lulu|u2|sig_arr[1][1]~q\;
\lulu|u2|ALT_INV_sig_arr[0][1]~q\ <= NOT \lulu|u2|sig_arr[0][1]~q\;
\lulu|u2|ALT_INV_sig_arr[1][2]~q\ <= NOT \lulu|u2|sig_arr[1][2]~q\;
\lulu|u2|ALT_INV_sig_arr[0][2]~q\ <= NOT \lulu|u2|sig_arr[0][2]~q\;
\lulu|u2|ALT_INV_sig_arr[1][3]~q\ <= NOT \lulu|u2|sig_arr[1][3]~q\;
\lulu|u2|ALT_INV_sig_arr[0][3]~q\ <= NOT \lulu|u2|sig_arr[0][3]~q\;
\lulu|u2|ALT_INV_LessThan2~0_combout\ <= NOT \lulu|u2|LessThan2~0_combout\;
\lulu|u2|ALT_INV_sig_arr[1][5]~q\ <= NOT \lulu|u2|sig_arr[1][5]~q\;
\lulu|u2|ALT_INV_sig_arr[0][5]~q\ <= NOT \lulu|u2|sig_arr[0][5]~q\;
\lulu|u2|ALT_INV_sig_arr[1][6]~q\ <= NOT \lulu|u2|sig_arr[1][6]~q\;
\lulu|u2|ALT_INV_sig_arr[0][6]~q\ <= NOT \lulu|u2|sig_arr[0][6]~q\;
\lulu|u2|ALT_INV_sig_arr[1][7]~q\ <= NOT \lulu|u2|sig_arr[1][7]~q\;
\lulu|u2|ALT_INV_sig_arr[0][7]~q\ <= NOT \lulu|u2|sig_arr[0][7]~q\;
\lulu|u2|ALT_INV_sig_arr[1][4]~q\ <= NOT \lulu|u2|sig_arr[1][4]~q\;
\lulu|u2|ALT_INV_sig_arr[0][4]~q\ <= NOT \lulu|u2|sig_arr[0][4]~q\;
\lulu|u2|ALT_INV_sig_arr[1][8]~q\ <= NOT \lulu|u2|sig_arr[1][8]~q\;
\lulu|u2|ALT_INV_sig_arr[0][8]~q\ <= NOT \lulu|u2|sig_arr[0][8]~q\;
\lulu|u2|ALT_INV_sig_arr[0][9]~q\ <= NOT \lulu|u2|sig_arr[0][9]~q\;
\lulu|u2|ALT_INV_sig_arr[1][9]~q\ <= NOT \lulu|u2|sig_arr[1][9]~q\;
\lulu|u2|ALT_INV_sig_arr[1][0]~q\ <= NOT \lulu|u2|sig_arr[1][0]~q\;
\lulu|u2|ALT_INV_sig_arr[0][0]~q\ <= NOT \lulu|u2|sig_arr[0][0]~q\;
\lulu|u2|ALT_INV_sig_arr[2][0]~q\ <= NOT \lulu|u2|sig_arr[2][0]~q\;
\lulu|u2|ALT_INV_u_arr[2][9]~q\ <= NOT \lulu|u2|u_arr[2][9]~q\;
\lulu|u2|ALT_INV_u_arr[2][8]~q\ <= NOT \lulu|u2|u_arr[2][8]~q\;
\lulu|u2|ALT_INV_temp_min~8_combout\ <= NOT \lulu|u2|temp_min~8_combout\;
\lulu|u2|ALT_INV_u_arr[2][7]~q\ <= NOT \lulu|u2|u_arr[2][7]~q\;
\lulu|u2|ALT_INV_u_arr[2][6]~q\ <= NOT \lulu|u2|u_arr[2][6]~q\;
\lulu|u2|ALT_INV_u_arr[2][5]~q\ <= NOT \lulu|u2|u_arr[2][5]~q\;
\lulu|u2|ALT_INV_u_arr[2][4]~q\ <= NOT \lulu|u2|u_arr[2][4]~q\;
\lulu|u2|ALT_INV_u_arr[2][3]~q\ <= NOT \lulu|u2|u_arr[2][3]~q\;
\lulu|u2|ALT_INV_u_arr[2][2]~q\ <= NOT \lulu|u2|u_arr[2][2]~q\;
\lulu|u2|ALT_INV_u_arr[2][1]~q\ <= NOT \lulu|u2|u_arr[2][1]~q\;
\lulu|u2|ALT_INV_LessThan6~6_combout\ <= NOT \lulu|u2|LessThan6~6_combout\;
\lulu|u2|ALT_INV_LessThan6~5_combout\ <= NOT \lulu|u2|LessThan6~5_combout\;
\lulu|u2|ALT_INV_LessThan6~4_combout\ <= NOT \lulu|u2|LessThan6~4_combout\;
\lulu|u2|ALT_INV_LessThan6~3_combout\ <= NOT \lulu|u2|LessThan6~3_combout\;
\lulu|u2|ALT_INV_u_arr[1][7]~q\ <= NOT \lulu|u2|u_arr[1][7]~q\;
\lulu|u2|ALT_INV_u_arr[0][7]~q\ <= NOT \lulu|u2|u_arr[0][7]~q\;
\lulu|u2|ALT_INV_u_arr[1][6]~q\ <= NOT \lulu|u2|u_arr[1][6]~q\;
\lulu|u2|ALT_INV_u_arr[0][6]~q\ <= NOT \lulu|u2|u_arr[0][6]~q\;
\lulu|u2|ALT_INV_u_arr[1][5]~q\ <= NOT \lulu|u2|u_arr[1][5]~q\;
\lulu|u2|ALT_INV_u_arr[0][5]~q\ <= NOT \lulu|u2|u_arr[0][5]~q\;
\lulu|u2|ALT_INV_u_arr[1][4]~q\ <= NOT \lulu|u2|u_arr[1][4]~q\;
\lulu|u2|ALT_INV_u_arr[0][4]~q\ <= NOT \lulu|u2|u_arr[0][4]~q\;
\lulu|u2|ALT_INV_LessThan6~2_combout\ <= NOT \lulu|u2|LessThan6~2_combout\;
\lulu|u2|ALT_INV_u_arr[1][3]~q\ <= NOT \lulu|u2|u_arr[1][3]~q\;
\lulu|u2|ALT_INV_u_arr[0][3]~q\ <= NOT \lulu|u2|u_arr[0][3]~q\;
\lulu|u2|ALT_INV_u_arr[1][2]~q\ <= NOT \lulu|u2|u_arr[1][2]~q\;
\lulu|u2|ALT_INV_u_arr[0][2]~q\ <= NOT \lulu|u2|u_arr[0][2]~q\;
\lulu|u2|ALT_INV_LessThan6~1_combout\ <= NOT \lulu|u2|LessThan6~1_combout\;
\lulu|u2|ALT_INV_u_arr[1][1]~q\ <= NOT \lulu|u2|u_arr[1][1]~q\;
\lulu|u2|ALT_INV_u_arr[0][1]~q\ <= NOT \lulu|u2|u_arr[0][1]~q\;
\lulu|u2|ALT_INV_u_arr[0][8]~q\ <= NOT \lulu|u2|u_arr[0][8]~q\;
\lulu|u2|ALT_INV_u_arr[1][8]~q\ <= NOT \lulu|u2|u_arr[1][8]~q\;
\lulu|u2|ALT_INV_u_arr[1][0]~q\ <= NOT \lulu|u2|u_arr[1][0]~q\;
\lulu|u2|ALT_INV_u_arr[0][0]~q\ <= NOT \lulu|u2|u_arr[0][0]~q\;
\lulu|u2|ALT_INV_LessThan6~0_combout\ <= NOT \lulu|u2|LessThan6~0_combout\;
\lulu|u2|ALT_INV_u_arr[1][9]~q\ <= NOT \lulu|u2|u_arr[1][9]~q\;
\lulu|u2|ALT_INV_u_arr[0][9]~q\ <= NOT \lulu|u2|u_arr[0][9]~q\;
\lulu|u2|ALT_INV_u_arr[2][0]~q\ <= NOT \lulu|u2|u_arr[2][0]~q\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a1\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a2\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a3\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a4\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a5\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a6\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a7\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a8\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a9\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a10\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a11\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a12\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a12\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a13\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a14\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a14\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a15\;
\avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\avg_fil|ALT_INV_Add3~61_sumout\ <= NOT \avg_fil|Add3~61_sumout\;
\avg_fil|ALT_INV_Add3~57_sumout\ <= NOT \avg_fil|Add3~57_sumout\;
\avg_fil|ALT_INV_Add3~53_sumout\ <= NOT \avg_fil|Add3~53_sumout\;
\avg_fil|ALT_INV_Add3~49_sumout\ <= NOT \avg_fil|Add3~49_sumout\;
\avg_fil|ALT_INV_Add3~45_sumout\ <= NOT \avg_fil|Add3~45_sumout\;
\avg_fil|ALT_INV_Add3~41_sumout\ <= NOT \avg_fil|Add3~41_sumout\;
\avg_fil|ALT_INV_Add3~37_sumout\ <= NOT \avg_fil|Add3~37_sumout\;
\avg_fil|ALT_INV_Add3~33_sumout\ <= NOT \avg_fil|Add3~33_sumout\;
\avg_fil|ALT_INV_Add3~29_sumout\ <= NOT \avg_fil|Add3~29_sumout\;
\avg_fil|ALT_INV_Add3~25_sumout\ <= NOT \avg_fil|Add3~25_sumout\;
\avg_fil|ALT_INV_Add3~21_sumout\ <= NOT \avg_fil|Add3~21_sumout\;
\avg_fil|ALT_INV_Add3~17_sumout\ <= NOT \avg_fil|Add3~17_sumout\;
\avg_fil|ALT_INV_Add3~13_sumout\ <= NOT \avg_fil|Add3~13_sumout\;
\avg_fil|ALT_INV_Add3~9_sumout\ <= NOT \avg_fil|Add3~9_sumout\;
\avg_fil|ALT_INV_Add3~5_sumout\ <= NOT \avg_fil|Add3~5_sumout\;
\avg_fil|ALT_INV_Add3~1_sumout\ <= NOT \avg_fil|Add3~1_sumout\;
\lulu|l1|ALT_INV_LessThan7~1_sumout\ <= NOT \lulu|l1|LessThan7~1_sumout\;
\lulu|u1|ALT_INV_LessThan7~1_sumout\ <= NOT \lulu|u1|LessThan7~1_sumout\;
\lulu|l2|ALT_INV_LessThan7~1_sumout\ <= NOT \lulu|l2|LessThan7~1_sumout\;
\lulu|u2|ALT_INV_LessThan7~1_sumout\ <= NOT \lulu|u2|LessThan7~1_sumout\;

-- Location: IOOBUF_X89_Y11_N96
\data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lulu|u2|u_out\(0),
	devoe => ww_devoe,
	o => ww_data_out(0));

-- Location: IOOBUF_X89_Y9_N56
\data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lulu|u2|u_out\(1),
	devoe => ww_devoe,
	o => ww_data_out(1));

-- Location: IOOBUF_X89_Y11_N45
\data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lulu|u2|u_out\(2),
	devoe => ww_devoe,
	o => ww_data_out(2));

-- Location: IOOBUF_X89_Y13_N22
\data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lulu|u2|u_out\(3),
	devoe => ww_devoe,
	o => ww_data_out(3));

-- Location: IOOBUF_X89_Y9_N39
\data_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lulu|u2|u_out\(4),
	devoe => ww_devoe,
	o => ww_data_out(4));

-- Location: IOOBUF_X82_Y0_N93
\data_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lulu|u2|u_out\(5),
	devoe => ww_devoe,
	o => ww_data_out(5));

-- Location: IOOBUF_X89_Y9_N5
\data_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lulu|u2|u_out\(6),
	devoe => ww_devoe,
	o => ww_data_out(6));

-- Location: IOOBUF_X89_Y8_N5
\data_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lulu|u2|u_out\(7),
	devoe => ww_devoe,
	o => ww_data_out(7));

-- Location: IOOBUF_X89_Y11_N62
\data_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lulu|u2|u_out\(8),
	devoe => ww_devoe,
	o => ww_data_out(8));

-- Location: IOOBUF_X89_Y9_N22
\data_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lulu|u2|u_out\(9),
	devoe => ww_devoe,
	o => ww_data_out(9));

-- Location: IOOBUF_X10_Y0_N93
\data_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(10));

-- Location: IOOBUF_X14_Y81_N2
\data_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(11));

-- Location: IOOBUF_X10_Y81_N93
\data_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(12));

-- Location: IOOBUF_X72_Y0_N36
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

-- Location: IOOBUF_X20_Y0_N53
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: MLABCELL_X78_Y3_N18
\avg_fil|count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|count[0]~0_combout\ = ( \avg_fil|count\(1) ) # ( !\avg_fil|count\(1) & ( !\avg_fil|count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \avg_fil|ALT_INV_count\(0),
	dataf => \avg_fil|ALT_INV_count\(1),
	combout => \avg_fil|count[0]~0_combout\);

-- Location: FF_X78_Y3_N19
\avg_fil|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|count\(0));

-- Location: MLABCELL_X78_Y3_N42
\avg_fil|count[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|count[1]~1_combout\ = ( \avg_fil|count\(1) ) # ( !\avg_fil|count\(1) & ( \avg_fil|count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \avg_fil|ALT_INV_count\(0),
	dataf => \avg_fil|ALT_INV_count\(1),
	combout => \avg_fil|count[1]~1_combout\);

-- Location: FF_X78_Y3_N41
\avg_fil|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|count[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|count\(1));

-- Location: MLABCELL_X78_Y3_N36
\avg_fil|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|LessThan0~0_combout\ = (!\avg_fil|count\(1)) # (!\avg_fil|count\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \avg_fil|ALT_INV_count\(1),
	datad => \avg_fil|ALT_INV_count\(0),
	combout => \avg_fil|LessThan0~0_combout\);

-- Location: IOIBUF_X74_Y0_N58
\data_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: FF_X77_Y3_N38
\avg_fil|backlog_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(43));

-- Location: MLABCELL_X78_Y3_N45
\avg_fil|point[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|point[0]~1_combout\ = !\avg_fil|point\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \avg_fil|ALT_INV_point\(0),
	combout => \avg_fil|point[0]~1_combout\);

-- Location: FF_X78_Y3_N47
\avg_fil|point[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|point[0]~1_combout\,
	ena => \avg_fil|ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|point\(0));

-- Location: MLABCELL_X78_Y3_N51
\avg_fil|backlog_rtl_0_bypass[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[2]~0_combout\ = ( !\avg_fil|point\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \avg_fil|ALT_INV_point\(0),
	combout => \avg_fil|backlog_rtl_0_bypass[2]~0_combout\);

-- Location: FF_X78_Y3_N53
\avg_fil|backlog_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[2]~0_combout\,
	ena => \avg_fil|ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(2));

-- Location: FF_X78_Y3_N49
\avg_fil|point[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|point~0_combout\,
	ena => \avg_fil|ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|point\(1));

-- Location: MLABCELL_X78_Y3_N48
\avg_fil|point~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|point~0_combout\ = ( \avg_fil|point\(0) & ( !\avg_fil|point\(1) ) ) # ( !\avg_fil|point\(0) & ( \avg_fil|point\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \avg_fil|ALT_INV_point\(1),
	dataf => \avg_fil|ALT_INV_point\(0),
	combout => \avg_fil|point~0_combout\);

-- Location: FF_X78_Y3_N43
\avg_fil|backlog_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|point~0_combout\,
	sload => VCC,
	ena => \avg_fil|ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(4));

-- Location: MLABCELL_X78_Y3_N57
\avg_fil|backlog~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog~29_combout\ = ( \avg_fil|point\(0) & ( \avg_fil|count\(0) ) ) # ( !\avg_fil|point\(0) & ( \avg_fil|count\(0) & ( !\avg_fil|count\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \avg_fil|ALT_INV_count\(1),
	datae => \avg_fil|ALT_INV_point\(0),
	dataf => \avg_fil|ALT_INV_count\(0),
	combout => \avg_fil|backlog~29_combout\);

-- Location: FF_X78_Y3_N59
\avg_fil|backlog_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(1));

-- Location: MLABCELL_X78_Y3_N21
\avg_fil|backlog~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog~28_combout\ = ( \avg_fil|count\(0) & ( (\avg_fil|count\(1) & \avg_fil|point\(1)) ) ) # ( !\avg_fil|count\(0) & ( \avg_fil|count\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \avg_fil|ALT_INV_count\(1),
	datad => \avg_fil|ALT_INV_point\(1),
	dataf => \avg_fil|ALT_INV_count\(0),
	combout => \avg_fil|backlog~28_combout\);

-- Location: FF_X78_Y3_N23
\avg_fil|backlog_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(3));

-- Location: MLABCELL_X78_Y3_N24
\avg_fil|backlog_rtl_0_bypass[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X78_Y3_N26
\avg_fil|backlog_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(0));

-- Location: MLABCELL_X78_Y3_N39
\avg_fil|backlog~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog~23_combout\ = ( \avg_fil|backlog_rtl_0_bypass\(0) & ( (!\avg_fil|backlog_rtl_0_bypass\(2) & (!\avg_fil|backlog_rtl_0_bypass\(1) & (!\avg_fil|backlog_rtl_0_bypass\(4) $ (\avg_fil|backlog_rtl_0_bypass\(3))))) # 
-- (\avg_fil|backlog_rtl_0_bypass\(2) & (\avg_fil|backlog_rtl_0_bypass\(1) & (!\avg_fil|backlog_rtl_0_bypass\(4) $ (\avg_fil|backlog_rtl_0_bypass\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(2),
	datab => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(4),
	datac => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(1),
	datad => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(3),
	dataf => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(0),
	combout => \avg_fil|backlog~23_combout\);

-- Location: LABCELL_X75_Y4_N15
\avg_fil|LessThan0~0_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|LessThan0~0_wirecell_combout\ = ( !\avg_fil|LessThan0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \avg_fil|ALT_INV_LessThan0~0_combout\,
	combout => \avg_fil|LessThan0~0_wirecell_combout\);

-- Location: IOIBUF_X82_Y0_N75
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: MLABCELL_X78_Y3_N33
\avg_fil|point[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|point[0]~_wirecell_combout\ = ( !\avg_fil|point\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \avg_fil|ALT_INV_point\(0),
	combout => \avg_fil|point[0]~_wirecell_combout\);

-- Location: LABCELL_X57_Y4_N12
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOIBUF_X78_Y0_N1
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X76_Y0_N52
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X74_Y0_N75
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X78_Y0_N35
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X80_Y0_N1
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: IOIBUF_X80_Y0_N52
\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: IOIBUF_X76_Y0_N35
\data_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: IOIBUF_X78_Y0_N52
\data_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\data_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: IOIBUF_X76_Y0_N18
\data_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: IOIBUF_X76_Y0_N1
\data_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: IOIBUF_X74_Y0_N41
\data_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: M10K_X76_Y4_N0
\avg_fil|backlog_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/noise_reduction.ram0_averaging_filter_bec5dfe.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "averaging_filter:avg_fil|altsyncram:backlog_rtl_0|altsyncram_3iq1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	portbaddrstall => \avg_fil|ALT_INV_LessThan0~0_wirecell_combout\,
	clk0 => \clk~inputCLKENA0_outclk\,
	clk1 => \clk~inputCLKENA0_outclk\,
	ena0 => VCC,
	portadatain => \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \avg_fil|backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X77_Y3_N27
\avg_fil|backlog_rtl_0_bypass[44]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X77_Y3_N28
\avg_fil|backlog_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(44));

-- Location: FF_X77_Y3_N35
\avg_fil|backlog_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(41));

-- Location: LABCELL_X77_Y3_N54
\avg_fil|backlog_rtl_0_bypass[42]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X77_Y3_N56
\avg_fil|backlog_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(42));

-- Location: LABCELL_X77_Y3_N3
\avg_fil|backlog_rtl_0_bypass[40]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X77_Y3_N5
\avg_fil|backlog_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(40));

-- Location: FF_X77_Y3_N2
\avg_fil|backlog_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(39));

-- Location: LABCELL_X77_Y3_N0
\avg_fil|backlog~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog~24_combout\ = ( \avg_fil|backlog_rtl_0|auto_generated|ram_block1a13\ & ( ((\avg_fil|backlog_rtl_0_bypass\(40) & !\avg_fil|backlog~23_combout\)) # (\avg_fil|backlog_rtl_0_bypass\(39)) ) ) # ( 
-- !\avg_fil|backlog_rtl_0|auto_generated|ram_block1a13\ & ( (\avg_fil|backlog_rtl_0_bypass\(39) & ((!\avg_fil|backlog_rtl_0_bypass\(40)) # (\avg_fil|backlog~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(40),
	datac => \avg_fil|ALT_INV_backlog~23_combout\,
	datad => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(39),
	dataf => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \avg_fil|backlog~24_combout\);

-- Location: FF_X77_Y4_N23
\avg_fil|backlog_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(37));

-- Location: LABCELL_X74_Y4_N27
\avg_fil|backlog_rtl_0_bypass[38]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X74_Y4_N28
\avg_fil|backlog_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(38));

-- Location: LABCELL_X79_Y4_N15
\avg_fil|backlog_rtl_0_bypass[36]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X79_Y4_N17
\avg_fil|backlog_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(36));

-- Location: LABCELL_X74_Y4_N9
\avg_fil|backlog_rtl_0_bypass[35]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[35]~feeder_combout\ = ( \data_in[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[11]~input_o\,
	combout => \avg_fil|backlog_rtl_0_bypass[35]~feeder_combout\);

-- Location: FF_X74_Y4_N10
\avg_fil|backlog_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(35));

-- Location: MLABCELL_X78_Y4_N54
\avg_fil|backlog~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog~25_combout\ = ( \avg_fil|backlog~23_combout\ & ( \avg_fil|backlog_rtl_0|auto_generated|ram_block1a11\ & ( \avg_fil|backlog_rtl_0_bypass\(35) ) ) ) # ( !\avg_fil|backlog~23_combout\ & ( \avg_fil|backlog_rtl_0|auto_generated|ram_block1a11\ 
-- & ( (\avg_fil|backlog_rtl_0_bypass\(35)) # (\avg_fil|backlog_rtl_0_bypass\(36)) ) ) ) # ( \avg_fil|backlog~23_combout\ & ( !\avg_fil|backlog_rtl_0|auto_generated|ram_block1a11\ & ( \avg_fil|backlog_rtl_0_bypass\(35) ) ) ) # ( !\avg_fil|backlog~23_combout\ 
-- & ( !\avg_fil|backlog_rtl_0|auto_generated|ram_block1a11\ & ( (!\avg_fil|backlog_rtl_0_bypass\(36) & \avg_fil|backlog_rtl_0_bypass\(35)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001100110011001101110111011101110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(36),
	datab => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(35),
	datae => \avg_fil|ALT_INV_backlog~23_combout\,
	dataf => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \avg_fil|backlog~25_combout\);

-- Location: FF_X77_Y4_N50
\avg_fil|backlog_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(33));

-- Location: LABCELL_X77_Y4_N12
\avg_fil|backlog_rtl_0_bypass[34]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X77_Y4_N14
\avg_fil|backlog_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(34));

-- Location: LABCELL_X74_Y4_N36
\avg_fil|backlog_rtl_0_bypass[32]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X74_Y4_N37
\avg_fil|backlog_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(32));

-- Location: FF_X75_Y4_N59
\avg_fil|backlog_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(31));

-- Location: LABCELL_X75_Y4_N57
\avg_fil|backlog~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog~26_combout\ = ( \avg_fil|backlog_rtl_0_bypass\(31) & ( \avg_fil|backlog_rtl_0|auto_generated|ram_block1a9\ ) ) # ( !\avg_fil|backlog_rtl_0_bypass\(31) & ( \avg_fil|backlog_rtl_0|auto_generated|ram_block1a9\ & ( 
-- (\avg_fil|backlog_rtl_0_bypass\(32) & !\avg_fil|backlog~23_combout\) ) ) ) # ( \avg_fil|backlog_rtl_0_bypass\(31) & ( !\avg_fil|backlog_rtl_0|auto_generated|ram_block1a9\ & ( (!\avg_fil|backlog_rtl_0_bypass\(32)) # (\avg_fil|backlog~23_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111010111101010000010100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(32),
	datac => \avg_fil|ALT_INV_backlog~23_combout\,
	datae => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(31),
	dataf => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	combout => \avg_fil|backlog~26_combout\);

-- Location: FF_X78_Y4_N37
\avg_fil|backlog_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(29));

-- Location: LABCELL_X77_Y4_N15
\avg_fil|backlog_rtl_0_bypass[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X77_Y4_N17
\avg_fil|backlog_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(30));

-- Location: MLABCELL_X78_Y4_N45
\avg_fil|backlog_rtl_0_bypass[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X78_Y4_N47
\avg_fil|backlog_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(28));

-- Location: FF_X78_Y4_N44
\avg_fil|backlog_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(27));

-- Location: MLABCELL_X78_Y4_N42
\avg_fil|backlog~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog~27_combout\ = ( \avg_fil|backlog_rtl_0|auto_generated|ram_block1a7\ & ( ((\avg_fil|backlog_rtl_0_bypass\(28) & !\avg_fil|backlog~23_combout\)) # (\avg_fil|backlog_rtl_0_bypass\(27)) ) ) # ( 
-- !\avg_fil|backlog_rtl_0|auto_generated|ram_block1a7\ & ( (\avg_fil|backlog_rtl_0_bypass\(27) & ((!\avg_fil|backlog_rtl_0_bypass\(28)) # (\avg_fil|backlog~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001100111100110000111111110011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(28),
	datac => \avg_fil|ALT_INV_backlog~23_combout\,
	datad => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(27),
	dataf => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \avg_fil|backlog~27_combout\);

-- Location: FF_X78_Y4_N52
\avg_fil|backlog_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(25));

-- Location: LABCELL_X77_Y4_N3
\avg_fil|backlog_rtl_0_bypass[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X77_Y4_N5
\avg_fil|backlog_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(26));

-- Location: LABCELL_X75_Y4_N36
\avg_fil|backlog_rtl_0_bypass[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X75_Y4_N38
\avg_fil|backlog_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(24));

-- Location: LABCELL_X75_Y4_N39
\avg_fil|backlog_rtl_0_bypass[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[23]~feeder_combout\ = ( \data_in[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[5]~input_o\,
	combout => \avg_fil|backlog_rtl_0_bypass[23]~feeder_combout\);

-- Location: FF_X75_Y4_N41
\avg_fil|backlog_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(23));

-- Location: LABCELL_X75_Y4_N42
\avg_fil|backlog~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog~30_combout\ = ( \avg_fil|backlog_rtl_0|auto_generated|ram_block1a5\ & ( ((\avg_fil|backlog_rtl_0_bypass\(24) & !\avg_fil|backlog~23_combout\)) # (\avg_fil|backlog_rtl_0_bypass\(23)) ) ) # ( 
-- !\avg_fil|backlog_rtl_0|auto_generated|ram_block1a5\ & ( (\avg_fil|backlog_rtl_0_bypass\(23) & ((!\avg_fil|backlog_rtl_0_bypass\(24)) # (\avg_fil|backlog~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110011001000100011001101110111001100110111011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(24),
	datab => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(23),
	datad => \avg_fil|ALT_INV_backlog~23_combout\,
	dataf => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \avg_fil|backlog~30_combout\);

-- Location: FF_X78_Y4_N31
\avg_fil|backlog_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(21));

-- Location: LABCELL_X77_Y4_N6
\avg_fil|backlog_rtl_0_bypass[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X77_Y4_N8
\avg_fil|backlog_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(22));

-- Location: LABCELL_X75_Y4_N33
\avg_fil|backlog_rtl_0_bypass[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[19]~feeder_combout\ = ( \data_in[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[3]~input_o\,
	combout => \avg_fil|backlog_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X75_Y4_N35
\avg_fil|backlog_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(19));

-- Location: LABCELL_X75_Y4_N30
\avg_fil|backlog_rtl_0_bypass[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X75_Y4_N32
\avg_fil|backlog_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(20));

-- Location: LABCELL_X75_Y4_N24
\avg_fil|backlog~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog~31_combout\ = ( \avg_fil|backlog_rtl_0|auto_generated|ram_block1a3\ & ( \avg_fil|backlog_rtl_0_bypass\(20) & ( (!\avg_fil|backlog~23_combout\) # (\avg_fil|backlog_rtl_0_bypass\(19)) ) ) ) # ( 
-- !\avg_fil|backlog_rtl_0|auto_generated|ram_block1a3\ & ( \avg_fil|backlog_rtl_0_bypass\(20) & ( (\avg_fil|backlog_rtl_0_bypass\(19) & \avg_fil|backlog~23_combout\) ) ) ) # ( \avg_fil|backlog_rtl_0|auto_generated|ram_block1a3\ & ( 
-- !\avg_fil|backlog_rtl_0_bypass\(20) & ( \avg_fil|backlog_rtl_0_bypass\(19) ) ) ) # ( !\avg_fil|backlog_rtl_0|auto_generated|ram_block1a3\ & ( !\avg_fil|backlog_rtl_0_bypass\(20) & ( \avg_fil|backlog_rtl_0_bypass\(19) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(19),
	datad => \avg_fil|ALT_INV_backlog~23_combout\,
	datae => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(20),
	combout => \avg_fil|backlog~31_combout\);

-- Location: FF_X78_Y4_N55
\avg_fil|backlog_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(17));

-- Location: LABCELL_X77_Y4_N9
\avg_fil|backlog_rtl_0_bypass[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X77_Y4_N11
\avg_fil|backlog_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(18));

-- Location: LABCELL_X75_Y4_N51
\avg_fil|backlog_rtl_0_bypass[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X75_Y4_N53
\avg_fil|backlog_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(16));

-- Location: FF_X77_Y4_N2
\avg_fil|backlog_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(15));

-- Location: LABCELL_X77_Y4_N0
\avg_fil|backlog~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog~32_combout\ = ( \avg_fil|backlog_rtl_0|auto_generated|ram_block1a1\ & ( ((!\avg_fil|backlog~23_combout\ & \avg_fil|backlog_rtl_0_bypass\(16))) # (\avg_fil|backlog_rtl_0_bypass\(15)) ) ) # ( 
-- !\avg_fil|backlog_rtl_0|auto_generated|ram_block1a1\ & ( (\avg_fil|backlog_rtl_0_bypass\(15) & ((!\avg_fil|backlog_rtl_0_bypass\(16)) # (\avg_fil|backlog~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \avg_fil|ALT_INV_backlog~23_combout\,
	datac => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(16),
	datad => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(15),
	dataf => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \avg_fil|backlog~32_combout\);

-- Location: MLABCELL_X78_Y4_N33
\avg_fil|backlog_rtl_0_bypass[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[13]~feeder_combout\ = ( \data_in[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[0]~input_o\,
	combout => \avg_fil|backlog_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X78_Y4_N34
\avg_fil|backlog_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(13));

-- Location: LABCELL_X74_Y4_N21
\avg_fil|backlog_rtl_0_bypass[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|backlog_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \avg_fil|backlog_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X74_Y4_N22
\avg_fil|backlog_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|backlog_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|backlog_rtl_0_bypass\(14));

-- Location: LABCELL_X77_Y4_N18
\avg_fil|Add3~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~66_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \avg_fil|Add3~66_cout\);

-- Location: LABCELL_X77_Y4_N21
\avg_fil|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~61_sumout\ = SUM(( \avg_fil|data_sum\(0) ) + ( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(14) & (!\avg_fil|backlog_rtl_0_bypass\(13))) # (\avg_fil|backlog_rtl_0_bypass\(14) & 
-- ((!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\))))) # (\avg_fil|backlog~23_combout\ & (!\avg_fil|backlog_rtl_0_bypass\(13))) ) + ( \avg_fil|Add3~66_cout\ ))
-- \avg_fil|Add3~62\ = CARRY(( \avg_fil|data_sum\(0) ) + ( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(14) & (!\avg_fil|backlog_rtl_0_bypass\(13))) # (\avg_fil|backlog_rtl_0_bypass\(14) & 
-- ((!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\))))) # (\avg_fil|backlog~23_combout\ & (!\avg_fil|backlog_rtl_0_bypass\(13))) ) + ( \avg_fil|Add3~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010001110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(13),
	datab => \avg_fil|ALT_INV_backlog~23_combout\,
	datac => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datad => \avg_fil|ALT_INV_data_sum\(0),
	dataf => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(14),
	cin => \avg_fil|Add3~66_cout\,
	sumout => \avg_fil|Add3~61_sumout\,
	cout => \avg_fil|Add3~62\);

-- Location: MLABCELL_X78_Y4_N0
\avg_fil|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~61_sumout\ = SUM(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~61_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(0))) ) + ( \data_in[0]~input_o\ ) + ( !VCC ))
-- \avg_fil|Add1~62\ = CARRY(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~61_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(0))) ) + ( \data_in[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_data_sum\(0),
	datad => \avg_fil|ALT_INV_Add3~61_sumout\,
	dataf => \ALT_INV_data_in[0]~input_o\,
	cin => GND,
	sumout => \avg_fil|Add1~61_sumout\,
	cout => \avg_fil|Add1~62\);

-- Location: FF_X78_Y4_N2
\avg_fil|data_sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(0));

-- Location: LABCELL_X77_Y4_N24
\avg_fil|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~57_sumout\ = SUM(( !\avg_fil|backlog~32_combout\ ) + ( \avg_fil|data_sum\(1) ) + ( \avg_fil|Add3~62\ ))
-- \avg_fil|Add3~58\ = CARRY(( !\avg_fil|backlog~32_combout\ ) + ( \avg_fil|data_sum\(1) ) + ( \avg_fil|Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \avg_fil|ALT_INV_data_sum\(1),
	datad => \avg_fil|ALT_INV_backlog~32_combout\,
	cin => \avg_fil|Add3~62\,
	sumout => \avg_fil|Add3~57_sumout\,
	cout => \avg_fil|Add3~58\);

-- Location: MLABCELL_X78_Y4_N3
\avg_fil|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~57_sumout\ = SUM(( \data_in[1]~input_o\ ) + ( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~57_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(1))) ) + ( \avg_fil|Add1~62\ ))
-- \avg_fil|Add1~58\ = CARRY(( \data_in[1]~input_o\ ) + ( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~57_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(1))) ) + ( \avg_fil|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101110001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_data_sum\(1),
	datab => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_Add3~57_sumout\,
	datad => \ALT_INV_data_in[1]~input_o\,
	cin => \avg_fil|Add1~62\,
	sumout => \avg_fil|Add1~57_sumout\,
	cout => \avg_fil|Add1~58\);

-- Location: FF_X78_Y4_N5
\avg_fil|data_sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(1));

-- Location: LABCELL_X77_Y4_N27
\avg_fil|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~53_sumout\ = SUM(( \avg_fil|data_sum\(2) ) + ( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(18) & (!\avg_fil|backlog_rtl_0_bypass\(17))) # (\avg_fil|backlog_rtl_0_bypass\(18) & 
-- ((!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a2\))))) # (\avg_fil|backlog~23_combout\ & (!\avg_fil|backlog_rtl_0_bypass\(17))) ) + ( \avg_fil|Add3~58\ ))
-- \avg_fil|Add3~54\ = CARRY(( \avg_fil|data_sum\(2) ) + ( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(18) & (!\avg_fil|backlog_rtl_0_bypass\(17))) # (\avg_fil|backlog_rtl_0_bypass\(18) & 
-- ((!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a2\))))) # (\avg_fil|backlog~23_combout\ & (!\avg_fil|backlog_rtl_0_bypass\(17))) ) + ( \avg_fil|Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010001110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(17),
	datab => \avg_fil|ALT_INV_backlog~23_combout\,
	datac => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datad => \avg_fil|ALT_INV_data_sum\(2),
	dataf => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(18),
	cin => \avg_fil|Add3~58\,
	sumout => \avg_fil|Add3~53_sumout\,
	cout => \avg_fil|Add3~54\);

-- Location: MLABCELL_X78_Y4_N6
\avg_fil|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~53_sumout\ = SUM(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~53_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(2))) ) + ( \data_in[2]~input_o\ ) + ( \avg_fil|Add1~58\ ))
-- \avg_fil|Add1~54\ = CARRY(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~53_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(2))) ) + ( \data_in[2]~input_o\ ) + ( \avg_fil|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_data_sum\(2),
	datad => \avg_fil|ALT_INV_Add3~53_sumout\,
	dataf => \ALT_INV_data_in[2]~input_o\,
	cin => \avg_fil|Add1~58\,
	sumout => \avg_fil|Add1~53_sumout\,
	cout => \avg_fil|Add1~54\);

-- Location: FF_X78_Y4_N8
\avg_fil|data_sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(2));

-- Location: LABCELL_X77_Y4_N30
\avg_fil|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~49_sumout\ = SUM(( !\avg_fil|backlog~31_combout\ ) + ( \avg_fil|data_sum\(3) ) + ( \avg_fil|Add3~54\ ))
-- \avg_fil|Add3~50\ = CARRY(( !\avg_fil|backlog~31_combout\ ) + ( \avg_fil|data_sum\(3) ) + ( \avg_fil|Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \avg_fil|ALT_INV_data_sum\(3),
	datad => \avg_fil|ALT_INV_backlog~31_combout\,
	cin => \avg_fil|Add3~54\,
	sumout => \avg_fil|Add3~49_sumout\,
	cout => \avg_fil|Add3~50\);

-- Location: MLABCELL_X78_Y4_N9
\avg_fil|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~49_sumout\ = SUM(( (!\avg_fil|LessThan0~0_combout\ & (\avg_fil|Add3~49_sumout\)) # (\avg_fil|LessThan0~0_combout\ & ((\avg_fil|data_sum\(3)))) ) + ( \data_in[3]~input_o\ ) + ( \avg_fil|Add1~54\ ))
-- \avg_fil|Add1~50\ = CARRY(( (!\avg_fil|LessThan0~0_combout\ & (\avg_fil|Add3~49_sumout\)) # (\avg_fil|LessThan0~0_combout\ & ((\avg_fil|data_sum\(3)))) ) + ( \data_in[3]~input_o\ ) + ( \avg_fil|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_Add3~49_sumout\,
	datab => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_data_sum\(3),
	dataf => \ALT_INV_data_in[3]~input_o\,
	cin => \avg_fil|Add1~54\,
	sumout => \avg_fil|Add1~49_sumout\,
	cout => \avg_fil|Add1~50\);

-- Location: FF_X78_Y4_N11
\avg_fil|data_sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(3));

-- Location: LABCELL_X77_Y4_N33
\avg_fil|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~45_sumout\ = SUM(( \avg_fil|data_sum\(4) ) + ( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(22) & (!\avg_fil|backlog_rtl_0_bypass\(21))) # (\avg_fil|backlog_rtl_0_bypass\(22) & 
-- ((!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a4\))))) # (\avg_fil|backlog~23_combout\ & (!\avg_fil|backlog_rtl_0_bypass\(21))) ) + ( \avg_fil|Add3~50\ ))
-- \avg_fil|Add3~46\ = CARRY(( \avg_fil|data_sum\(4) ) + ( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(22) & (!\avg_fil|backlog_rtl_0_bypass\(21))) # (\avg_fil|backlog_rtl_0_bypass\(22) & 
-- ((!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a4\))))) # (\avg_fil|backlog~23_combout\ & (!\avg_fil|backlog_rtl_0_bypass\(21))) ) + ( \avg_fil|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010001110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(21),
	datab => \avg_fil|ALT_INV_backlog~23_combout\,
	datac => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datad => \avg_fil|ALT_INV_data_sum\(4),
	dataf => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(22),
	cin => \avg_fil|Add3~50\,
	sumout => \avg_fil|Add3~45_sumout\,
	cout => \avg_fil|Add3~46\);

-- Location: MLABCELL_X78_Y4_N12
\avg_fil|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~45_sumout\ = SUM(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~45_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(4))) ) + ( \data_in[4]~input_o\ ) + ( \avg_fil|Add1~50\ ))
-- \avg_fil|Add1~46\ = CARRY(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~45_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(4))) ) + ( \data_in[4]~input_o\ ) + ( \avg_fil|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_data_sum\(4),
	datad => \avg_fil|ALT_INV_Add3~45_sumout\,
	dataf => \ALT_INV_data_in[4]~input_o\,
	cin => \avg_fil|Add1~50\,
	sumout => \avg_fil|Add1~45_sumout\,
	cout => \avg_fil|Add1~46\);

-- Location: FF_X78_Y4_N14
\avg_fil|data_sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(4));

-- Location: LABCELL_X77_Y4_N36
\avg_fil|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~41_sumout\ = SUM(( !\avg_fil|backlog~30_combout\ ) + ( \avg_fil|data_sum\(5) ) + ( \avg_fil|Add3~46\ ))
-- \avg_fil|Add3~42\ = CARRY(( !\avg_fil|backlog~30_combout\ ) + ( \avg_fil|data_sum\(5) ) + ( \avg_fil|Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \avg_fil|ALT_INV_data_sum\(5),
	datad => \avg_fil|ALT_INV_backlog~30_combout\,
	cin => \avg_fil|Add3~46\,
	sumout => \avg_fil|Add3~41_sumout\,
	cout => \avg_fil|Add3~42\);

-- Location: MLABCELL_X78_Y4_N15
\avg_fil|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~41_sumout\ = SUM(( \data_in[5]~input_o\ ) + ( (!\avg_fil|LessThan0~0_combout\ & (\avg_fil|Add3~41_sumout\)) # (\avg_fil|LessThan0~0_combout\ & ((\avg_fil|data_sum\(5)))) ) + ( \avg_fil|Add1~46\ ))
-- \avg_fil|Add1~42\ = CARRY(( \data_in[5]~input_o\ ) + ( (!\avg_fil|LessThan0~0_combout\ & (\avg_fil|Add3~41_sumout\)) # (\avg_fil|LessThan0~0_combout\ & ((\avg_fil|data_sum\(5)))) ) + ( \avg_fil|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001011100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_Add3~41_sumout\,
	datab => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_data_sum\(5),
	datad => \ALT_INV_data_in[5]~input_o\,
	cin => \avg_fil|Add1~46\,
	sumout => \avg_fil|Add1~41_sumout\,
	cout => \avg_fil|Add1~42\);

-- Location: FF_X78_Y4_N17
\avg_fil|data_sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(5));

-- Location: LABCELL_X77_Y4_N39
\avg_fil|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~1_sumout\ = SUM(( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(26) & (!\avg_fil|backlog_rtl_0_bypass\(25))) # (\avg_fil|backlog_rtl_0_bypass\(26) & ((!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a6\))))) # 
-- (\avg_fil|backlog~23_combout\ & (!\avg_fil|backlog_rtl_0_bypass\(25))) ) + ( \avg_fil|data_sum\(6) ) + ( \avg_fil|Add3~42\ ))
-- \avg_fil|Add3~2\ = CARRY(( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(26) & (!\avg_fil|backlog_rtl_0_bypass\(25))) # (\avg_fil|backlog_rtl_0_bypass\(26) & ((!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a6\))))) # 
-- (\avg_fil|backlog~23_combout\ & (!\avg_fil|backlog_rtl_0_bypass\(25))) ) + ( \avg_fil|data_sum\(6) ) + ( \avg_fil|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(25),
	datab => \avg_fil|ALT_INV_backlog~23_combout\,
	datac => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	datad => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(26),
	dataf => \avg_fil|ALT_INV_data_sum\(6),
	cin => \avg_fil|Add3~42\,
	sumout => \avg_fil|Add3~1_sumout\,
	cout => \avg_fil|Add3~2\);

-- Location: MLABCELL_X78_Y4_N18
\avg_fil|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~1_sumout\ = SUM(( \data_in[6]~input_o\ ) + ( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~1_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(6))) ) + ( \avg_fil|Add1~42\ ))
-- \avg_fil|Add1~2\ = CARRY(( \data_in[6]~input_o\ ) + ( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~1_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(6))) ) + ( \avg_fil|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101110001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_data_sum\(6),
	datab => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_Add3~1_sumout\,
	datad => \ALT_INV_data_in[6]~input_o\,
	cin => \avg_fil|Add1~42\,
	sumout => \avg_fil|Add1~1_sumout\,
	cout => \avg_fil|Add1~2\);

-- Location: FF_X78_Y4_N20
\avg_fil|data_sum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(6));

-- Location: LABCELL_X77_Y4_N42
\avg_fil|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~37_sumout\ = SUM(( !\avg_fil|backlog~27_combout\ ) + ( \avg_fil|data_sum\(7) ) + ( \avg_fil|Add3~2\ ))
-- \avg_fil|Add3~38\ = CARRY(( !\avg_fil|backlog~27_combout\ ) + ( \avg_fil|data_sum\(7) ) + ( \avg_fil|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \avg_fil|ALT_INV_data_sum\(7),
	datad => \avg_fil|ALT_INV_backlog~27_combout\,
	cin => \avg_fil|Add3~2\,
	sumout => \avg_fil|Add3~37_sumout\,
	cout => \avg_fil|Add3~38\);

-- Location: MLABCELL_X78_Y4_N21
\avg_fil|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~37_sumout\ = SUM(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~37_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(7))) ) + ( \data_in[7]~input_o\ ) + ( \avg_fil|Add1~2\ ))
-- \avg_fil|Add1~38\ = CARRY(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~37_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(7))) ) + ( \data_in[7]~input_o\ ) + ( \avg_fil|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_data_sum\(7),
	datad => \avg_fil|ALT_INV_Add3~37_sumout\,
	dataf => \ALT_INV_data_in[7]~input_o\,
	cin => \avg_fil|Add1~2\,
	sumout => \avg_fil|Add1~37_sumout\,
	cout => \avg_fil|Add1~38\);

-- Location: FF_X78_Y4_N23
\avg_fil|data_sum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(7));

-- Location: LABCELL_X77_Y4_N45
\avg_fil|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~33_sumout\ = SUM(( \avg_fil|data_sum\(8) ) + ( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(30) & ((!\avg_fil|backlog_rtl_0_bypass\(29)))) # (\avg_fil|backlog_rtl_0_bypass\(30) & 
-- (!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a8\)))) # (\avg_fil|backlog~23_combout\ & (((!\avg_fil|backlog_rtl_0_bypass\(29))))) ) + ( \avg_fil|Add3~38\ ))
-- \avg_fil|Add3~34\ = CARRY(( \avg_fil|data_sum\(8) ) + ( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(30) & ((!\avg_fil|backlog_rtl_0_bypass\(29)))) # (\avg_fil|backlog_rtl_0_bypass\(30) & 
-- (!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a8\)))) # (\avg_fil|backlog~23_combout\ & (((!\avg_fil|backlog_rtl_0_bypass\(29))))) ) + ( \avg_fil|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	datab => \avg_fil|ALT_INV_backlog~23_combout\,
	datac => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(29),
	datad => \avg_fil|ALT_INV_data_sum\(8),
	dataf => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(30),
	cin => \avg_fil|Add3~38\,
	sumout => \avg_fil|Add3~33_sumout\,
	cout => \avg_fil|Add3~34\);

-- Location: MLABCELL_X78_Y4_N24
\avg_fil|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~33_sumout\ = SUM(( \data_in[8]~input_o\ ) + ( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~33_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(8))) ) + ( \avg_fil|Add1~38\ ))
-- \avg_fil|Add1~34\ = CARRY(( \data_in[8]~input_o\ ) + ( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~33_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(8))) ) + ( \avg_fil|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101110001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_data_sum\(8),
	datab => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_Add3~33_sumout\,
	datad => \ALT_INV_data_in[8]~input_o\,
	cin => \avg_fil|Add1~38\,
	sumout => \avg_fil|Add1~33_sumout\,
	cout => \avg_fil|Add1~34\);

-- Location: FF_X78_Y4_N26
\avg_fil|data_sum[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(8));

-- Location: LABCELL_X77_Y4_N48
\avg_fil|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~29_sumout\ = SUM(( !\avg_fil|backlog~26_combout\ ) + ( \avg_fil|data_sum\(9) ) + ( \avg_fil|Add3~34\ ))
-- \avg_fil|Add3~30\ = CARRY(( !\avg_fil|backlog~26_combout\ ) + ( \avg_fil|data_sum\(9) ) + ( \avg_fil|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \avg_fil|ALT_INV_backlog~26_combout\,
	dataf => \avg_fil|ALT_INV_data_sum\(9),
	cin => \avg_fil|Add3~34\,
	sumout => \avg_fil|Add3~29_sumout\,
	cout => \avg_fil|Add3~30\);

-- Location: MLABCELL_X78_Y4_N27
\avg_fil|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~29_sumout\ = SUM(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~29_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(9))) ) + ( \data_in[9]~input_o\ ) + ( \avg_fil|Add1~34\ ))
-- \avg_fil|Add1~30\ = CARRY(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~29_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(9))) ) + ( \data_in[9]~input_o\ ) + ( \avg_fil|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_data_sum\(9),
	datad => \avg_fil|ALT_INV_Add3~29_sumout\,
	dataf => \ALT_INV_data_in[9]~input_o\,
	cin => \avg_fil|Add1~34\,
	sumout => \avg_fil|Add1~29_sumout\,
	cout => \avg_fil|Add1~30\);

-- Location: FF_X78_Y4_N29
\avg_fil|data_sum[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(9));

-- Location: LABCELL_X77_Y4_N51
\avg_fil|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~13_sumout\ = SUM(( \avg_fil|data_sum\(10) ) + ( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(34) & (!\avg_fil|backlog_rtl_0_bypass\(33))) # (\avg_fil|backlog_rtl_0_bypass\(34) & 
-- ((!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a10\))))) # (\avg_fil|backlog~23_combout\ & (!\avg_fil|backlog_rtl_0_bypass\(33))) ) + ( \avg_fil|Add3~30\ ))
-- \avg_fil|Add3~14\ = CARRY(( \avg_fil|data_sum\(10) ) + ( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(34) & (!\avg_fil|backlog_rtl_0_bypass\(33))) # (\avg_fil|backlog_rtl_0_bypass\(34) & 
-- ((!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a10\))))) # (\avg_fil|backlog~23_combout\ & (!\avg_fil|backlog_rtl_0_bypass\(33))) ) + ( \avg_fil|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010001110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(33),
	datab => \avg_fil|ALT_INV_backlog~23_combout\,
	datac => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	datad => \avg_fil|ALT_INV_data_sum\(10),
	dataf => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(34),
	cin => \avg_fil|Add3~30\,
	sumout => \avg_fil|Add3~13_sumout\,
	cout => \avg_fil|Add3~14\);

-- Location: MLABCELL_X78_Y3_N0
\avg_fil|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~13_sumout\ = SUM(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~13_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(10))) ) + ( \data_in[10]~input_o\ ) + ( \avg_fil|Add1~30\ ))
-- \avg_fil|Add1~14\ = CARRY(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~13_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(10))) ) + ( \data_in[10]~input_o\ ) + ( \avg_fil|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_data_sum\(10),
	datab => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_Add3~13_sumout\,
	dataf => \ALT_INV_data_in[10]~input_o\,
	cin => \avg_fil|Add1~30\,
	sumout => \avg_fil|Add1~13_sumout\,
	cout => \avg_fil|Add1~14\);

-- Location: FF_X78_Y3_N2
\avg_fil|data_sum[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(10));

-- Location: LABCELL_X77_Y4_N54
\avg_fil|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~25_sumout\ = SUM(( !\avg_fil|backlog~25_combout\ ) + ( \avg_fil|data_sum\(11) ) + ( \avg_fil|Add3~14\ ))
-- \avg_fil|Add3~26\ = CARRY(( !\avg_fil|backlog~25_combout\ ) + ( \avg_fil|data_sum\(11) ) + ( \avg_fil|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \avg_fil|ALT_INV_data_sum\(11),
	datad => \avg_fil|ALT_INV_backlog~25_combout\,
	cin => \avg_fil|Add3~14\,
	sumout => \avg_fil|Add3~25_sumout\,
	cout => \avg_fil|Add3~26\);

-- Location: MLABCELL_X78_Y3_N3
\avg_fil|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~25_sumout\ = SUM(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~25_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(11))) ) + ( \data_in[11]~input_o\ ) + ( \avg_fil|Add1~14\ ))
-- \avg_fil|Add1~26\ = CARRY(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~25_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(11))) ) + ( \data_in[11]~input_o\ ) + ( \avg_fil|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_data_sum\(11),
	datad => \avg_fil|ALT_INV_Add3~25_sumout\,
	dataf => \ALT_INV_data_in[11]~input_o\,
	cin => \avg_fil|Add1~14\,
	sumout => \avg_fil|Add1~25_sumout\,
	cout => \avg_fil|Add1~26\);

-- Location: FF_X78_Y3_N5
\avg_fil|data_sum[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(11));

-- Location: LABCELL_X77_Y4_N57
\avg_fil|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~21_sumout\ = SUM(( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(38) & ((!\avg_fil|backlog_rtl_0_bypass\(37)))) # (\avg_fil|backlog_rtl_0_bypass\(38) & (!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a12\)))) # 
-- (\avg_fil|backlog~23_combout\ & (((!\avg_fil|backlog_rtl_0_bypass\(37))))) ) + ( \avg_fil|data_sum\(12) ) + ( \avg_fil|Add3~26\ ))
-- \avg_fil|Add3~22\ = CARRY(( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(38) & ((!\avg_fil|backlog_rtl_0_bypass\(37)))) # (\avg_fil|backlog_rtl_0_bypass\(38) & (!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a12\)))) # 
-- (\avg_fil|backlog~23_combout\ & (((!\avg_fil|backlog_rtl_0_bypass\(37))))) ) + ( \avg_fil|data_sum\(12) ) + ( \avg_fil|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	datab => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(37),
	datac => \avg_fil|ALT_INV_backlog~23_combout\,
	datad => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(38),
	dataf => \avg_fil|ALT_INV_data_sum\(12),
	cin => \avg_fil|Add3~26\,
	sumout => \avg_fil|Add3~21_sumout\,
	cout => \avg_fil|Add3~22\);

-- Location: MLABCELL_X78_Y3_N6
\avg_fil|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~21_sumout\ = SUM(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~21_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(12))) ) + ( \data_in[12]~input_o\ ) + ( \avg_fil|Add1~26\ ))
-- \avg_fil|Add1~22\ = CARRY(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~21_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(12))) ) + ( \data_in[12]~input_o\ ) + ( \avg_fil|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_data_sum\(12),
	datad => \avg_fil|ALT_INV_Add3~21_sumout\,
	dataf => \ALT_INV_data_in[12]~input_o\,
	cin => \avg_fil|Add1~26\,
	sumout => \avg_fil|Add1~21_sumout\,
	cout => \avg_fil|Add1~22\);

-- Location: FF_X78_Y3_N8
\avg_fil|data_sum[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(12));

-- Location: LABCELL_X77_Y3_N30
\avg_fil|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~17_sumout\ = SUM(( \avg_fil|data_sum\(13) ) + ( !\avg_fil|backlog~24_combout\ ) + ( \avg_fil|Add3~22\ ))
-- \avg_fil|Add3~18\ = CARRY(( \avg_fil|data_sum\(13) ) + ( !\avg_fil|backlog~24_combout\ ) + ( \avg_fil|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \avg_fil|ALT_INV_backlog~24_combout\,
	datad => \avg_fil|ALT_INV_data_sum\(13),
	cin => \avg_fil|Add3~22\,
	sumout => \avg_fil|Add3~17_sumout\,
	cout => \avg_fil|Add3~18\);

-- Location: MLABCELL_X78_Y3_N9
\avg_fil|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~17_sumout\ = SUM(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~17_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(13))) ) + ( \data_in[13]~input_o\ ) + ( \avg_fil|Add1~22\ ))
-- \avg_fil|Add1~18\ = CARRY(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~17_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(13))) ) + ( \data_in[13]~input_o\ ) + ( \avg_fil|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_data_sum\(13),
	datad => \avg_fil|ALT_INV_Add3~17_sumout\,
	dataf => \ALT_INV_data_in[13]~input_o\,
	cin => \avg_fil|Add1~22\,
	sumout => \avg_fil|Add1~17_sumout\,
	cout => \avg_fil|Add1~18\);

-- Location: FF_X78_Y3_N11
\avg_fil|data_sum[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(13));

-- Location: LABCELL_X77_Y3_N33
\avg_fil|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~9_sumout\ = SUM(( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(42) & (!\avg_fil|backlog_rtl_0_bypass\(41))) # (\avg_fil|backlog_rtl_0_bypass\(42) & ((!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a14\))))) # 
-- (\avg_fil|backlog~23_combout\ & (!\avg_fil|backlog_rtl_0_bypass\(41))) ) + ( \avg_fil|data_sum\(14) ) + ( \avg_fil|Add3~18\ ))
-- \avg_fil|Add3~10\ = CARRY(( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(42) & (!\avg_fil|backlog_rtl_0_bypass\(41))) # (\avg_fil|backlog_rtl_0_bypass\(42) & ((!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a14\))))) # 
-- (\avg_fil|backlog~23_combout\ & (!\avg_fil|backlog_rtl_0_bypass\(41))) ) + ( \avg_fil|data_sum\(14) ) + ( \avg_fil|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(41),
	datab => \avg_fil|ALT_INV_backlog~23_combout\,
	datac => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	datad => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(42),
	dataf => \avg_fil|ALT_INV_data_sum\(14),
	cin => \avg_fil|Add3~18\,
	sumout => \avg_fil|Add3~9_sumout\,
	cout => \avg_fil|Add3~10\);

-- Location: MLABCELL_X78_Y3_N12
\avg_fil|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~9_sumout\ = SUM(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~9_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(14))) ) + ( \data_in[14]~input_o\ ) + ( \avg_fil|Add1~18\ ))
-- \avg_fil|Add1~10\ = CARRY(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~9_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(14))) ) + ( \data_in[14]~input_o\ ) + ( \avg_fil|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datab => \avg_fil|ALT_INV_data_sum\(14),
	datad => \avg_fil|ALT_INV_Add3~9_sumout\,
	dataf => \ALT_INV_data_in[14]~input_o\,
	cin => \avg_fil|Add1~18\,
	sumout => \avg_fil|Add1~9_sumout\,
	cout => \avg_fil|Add1~10\);

-- Location: FF_X78_Y3_N14
\avg_fil|data_sum[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(14));

-- Location: LABCELL_X77_Y3_N36
\avg_fil|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add3~5_sumout\ = SUM(( \avg_fil|data_sum\(15) ) + ( (!\avg_fil|backlog~23_combout\ & ((!\avg_fil|backlog_rtl_0_bypass\(44) & (!\avg_fil|backlog_rtl_0_bypass\(43))) # (\avg_fil|backlog_rtl_0_bypass\(44) & 
-- ((!\avg_fil|backlog_rtl_0|auto_generated|ram_block1a15\))))) # (\avg_fil|backlog~23_combout\ & (!\avg_fil|backlog_rtl_0_bypass\(43))) ) + ( \avg_fil|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010001110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(43),
	datab => \avg_fil|ALT_INV_backlog~23_combout\,
	datac => \avg_fil|backlog_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	datad => \avg_fil|ALT_INV_data_sum\(15),
	dataf => \avg_fil|ALT_INV_backlog_rtl_0_bypass\(44),
	cin => \avg_fil|Add3~10\,
	sumout => \avg_fil|Add3~5_sumout\);

-- Location: MLABCELL_X78_Y3_N15
\avg_fil|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \avg_fil|Add1~5_sumout\ = SUM(( (!\avg_fil|LessThan0~0_combout\ & ((\avg_fil|Add3~5_sumout\))) # (\avg_fil|LessThan0~0_combout\ & (\avg_fil|data_sum\(15))) ) + ( \data_in[15]~input_o\ ) + ( \avg_fil|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \avg_fil|ALT_INV_LessThan0~0_combout\,
	datac => \avg_fil|ALT_INV_data_sum\(15),
	datad => \avg_fil|ALT_INV_Add3~5_sumout\,
	dataf => \ALT_INV_data_in[15]~input_o\,
	cin => \avg_fil|Add1~10\,
	sumout => \avg_fil|Add1~5_sumout\);

-- Location: FF_X78_Y3_N17
\avg_fil|data_sum[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avg_fil|Add1~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg_fil|data_sum\(15));

-- Location: MLABCELL_X84_Y6_N42
\lulu|u2|Decoder1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|Decoder1~1_combout\ = ( !\lulu|l1|iter\(0) & ( !\lulu|l1|iter\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l1|ALT_INV_iter\(1),
	dataf => \lulu|l1|ALT_INV_iter\(0),
	combout => \lulu|u2|Decoder1~1_combout\);

-- Location: MLABCELL_X84_Y6_N24
\lulu|l1|iter[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|iter[0]~feeder_combout\ = ( \lulu|u2|Decoder1~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|u2|ALT_INV_Decoder1~1_combout\,
	combout => \lulu|l1|iter[0]~feeder_combout\);

-- Location: FF_X84_Y6_N26
\lulu|l1|iter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|iter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|iter\(0));

-- Location: MLABCELL_X84_Y6_N36
\lulu|u2|Decoder1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|Decoder1~2_combout\ = ( \lulu|l1|iter\(0) & ( !\lulu|l1|iter\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l1|ALT_INV_iter\(1),
	dataf => \lulu|l1|ALT_INV_iter\(0),
	combout => \lulu|u2|Decoder1~2_combout\);

-- Location: FF_X84_Y6_N8
\lulu|l1|iter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|Decoder1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|iter\(1));

-- Location: MLABCELL_X84_Y6_N15
\lulu|u2|Decoder1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|Decoder1~0_combout\ = ( !\lulu|l1|iter\(0) & ( \lulu|l1|iter\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l1|ALT_INV_iter\(1),
	dataf => \lulu|l1|ALT_INV_iter\(0),
	combout => \lulu|u2|Decoder1~0_combout\);

-- Location: FF_X81_Y6_N23
\lulu|l1|sig_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(15),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[2][9]~q\);

-- Location: FF_X81_Y6_N29
\lulu|l1|sig_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(15),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[0][9]~q\);

-- Location: FF_X80_Y6_N5
\lulu|l1|sig_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(15),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[1][9]~q\);

-- Location: FF_X81_Y6_N38
\lulu|l1|sig_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(14),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[1][8]~q\);

-- Location: FF_X80_Y6_N49
\lulu|l1|sig_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(14),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[0][8]~q\);

-- Location: FF_X80_Y6_N38
\lulu|l1|sig_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(13),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[0][7]~q\);

-- Location: FF_X80_Y6_N44
\lulu|l1|sig_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(13),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[1][7]~q\);

-- Location: FF_X80_Y6_N17
\lulu|l1|sig_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(12),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[0][6]~q\);

-- Location: FF_X80_Y6_N2
\lulu|l1|sig_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(11),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[1][5]~q\);

-- Location: FF_X80_Y6_N47
\lulu|l1|sig_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(12),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[1][6]~q\);

-- Location: LABCELL_X80_Y6_N51
\lulu|l1|sig_arr[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|sig_arr[0][5]~feeder_combout\ = \avg_fil|data_sum\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \avg_fil|ALT_INV_data_sum\(11),
	combout => \lulu|l1|sig_arr[0][5]~feeder_combout\);

-- Location: FF_X80_Y6_N53
\lulu|l1|sig_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|sig_arr[0][5]~feeder_combout\,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[0][5]~q\);

-- Location: LABCELL_X80_Y6_N3
\lulu|l1|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan2~3_combout\ = ( \lulu|l1|sig_arr[1][6]~q\ & ( \lulu|l1|sig_arr[0][5]~q\ & ( (!\lulu|l1|sig_arr[0][7]~q\ & (!\lulu|l1|sig_arr[1][7]~q\ & (\lulu|l1|sig_arr[0][6]~q\ & !\lulu|l1|sig_arr[1][5]~q\))) # (\lulu|l1|sig_arr[0][7]~q\ & 
-- ((!\lulu|l1|sig_arr[1][7]~q\) # ((\lulu|l1|sig_arr[0][6]~q\ & !\lulu|l1|sig_arr[1][5]~q\)))) ) ) ) # ( !\lulu|l1|sig_arr[1][6]~q\ & ( \lulu|l1|sig_arr[0][5]~q\ & ( (!\lulu|l1|sig_arr[0][7]~q\ & (!\lulu|l1|sig_arr[1][7]~q\ & ((!\lulu|l1|sig_arr[1][5]~q\) # 
-- (\lulu|l1|sig_arr[0][6]~q\)))) # (\lulu|l1|sig_arr[0][7]~q\ & ((!\lulu|l1|sig_arr[1][7]~q\) # ((!\lulu|l1|sig_arr[1][5]~q\) # (\lulu|l1|sig_arr[0][6]~q\)))) ) ) ) # ( \lulu|l1|sig_arr[1][6]~q\ & ( !\lulu|l1|sig_arr[0][5]~q\ & ( (\lulu|l1|sig_arr[0][7]~q\ 
-- & !\lulu|l1|sig_arr[1][7]~q\) ) ) ) # ( !\lulu|l1|sig_arr[1][6]~q\ & ( !\lulu|l1|sig_arr[0][5]~q\ & ( (!\lulu|l1|sig_arr[0][7]~q\ & (!\lulu|l1|sig_arr[1][7]~q\ & \lulu|l1|sig_arr[0][6]~q\)) # (\lulu|l1|sig_arr[0][7]~q\ & ((!\lulu|l1|sig_arr[1][7]~q\) # 
-- (\lulu|l1|sig_arr[0][6]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010001000100010011011101010011010100110101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_sig_arr[0][7]~q\,
	datab => \lulu|l1|ALT_INV_sig_arr[1][7]~q\,
	datac => \lulu|l1|ALT_INV_sig_arr[0][6]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[1][5]~q\,
	datae => \lulu|l1|ALT_INV_sig_arr[1][6]~q\,
	dataf => \lulu|l1|ALT_INV_sig_arr[0][5]~q\,
	combout => \lulu|l1|LessThan2~3_combout\);

-- Location: LABCELL_X80_Y6_N39
\lulu|l1|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan2~0_combout\ = ( \lulu|l1|sig_arr[1][6]~q\ & ( \lulu|l1|sig_arr[0][5]~q\ & ( (\lulu|l1|sig_arr[1][5]~q\ & (\lulu|l1|sig_arr[0][6]~q\ & (!\lulu|l1|sig_arr[1][7]~q\ $ (\lulu|l1|sig_arr[0][7]~q\)))) ) ) ) # ( !\lulu|l1|sig_arr[1][6]~q\ & ( 
-- \lulu|l1|sig_arr[0][5]~q\ & ( (\lulu|l1|sig_arr[1][5]~q\ & (!\lulu|l1|sig_arr[0][6]~q\ & (!\lulu|l1|sig_arr[1][7]~q\ $ (\lulu|l1|sig_arr[0][7]~q\)))) ) ) ) # ( \lulu|l1|sig_arr[1][6]~q\ & ( !\lulu|l1|sig_arr[0][5]~q\ & ( (!\lulu|l1|sig_arr[1][5]~q\ & 
-- (\lulu|l1|sig_arr[0][6]~q\ & (!\lulu|l1|sig_arr[1][7]~q\ $ (\lulu|l1|sig_arr[0][7]~q\)))) ) ) ) # ( !\lulu|l1|sig_arr[1][6]~q\ & ( !\lulu|l1|sig_arr[0][5]~q\ & ( (!\lulu|l1|sig_arr[1][5]~q\ & (!\lulu|l1|sig_arr[0][6]~q\ & (!\lulu|l1|sig_arr[1][7]~q\ $ 
-- (\lulu|l1|sig_arr[0][7]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_sig_arr[1][5]~q\,
	datab => \lulu|l1|ALT_INV_sig_arr[0][6]~q\,
	datac => \lulu|l1|ALT_INV_sig_arr[1][7]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[0][7]~q\,
	datae => \lulu|l1|ALT_INV_sig_arr[1][6]~q\,
	dataf => \lulu|l1|ALT_INV_sig_arr[0][5]~q\,
	combout => \lulu|l1|LessThan2~0_combout\);

-- Location: FF_X80_Y6_N11
\lulu|l1|sig_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(10),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[0][4]~q\);

-- Location: FF_X80_Y6_N19
\lulu|l1|sig_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(10),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[1][4]~q\);

-- Location: FF_X80_Y6_N29
\lulu|l1|sig_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(8),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[1][2]~q\);

-- Location: FF_X80_Y6_N8
\lulu|l1|sig_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(8),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[0][2]~q\);

-- Location: FF_X80_Y6_N26
\lulu|l1|sig_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(9),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[1][3]~q\);

-- Location: FF_X80_Y6_N31
\lulu|l1|sig_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(9),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[0][3]~q\);

-- Location: FF_X80_Y6_N41
\lulu|l1|sig_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(7),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[0][1]~q\);

-- Location: FF_X80_Y6_N23
\lulu|l1|sig_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(6),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[1][0]~q\);

-- Location: FF_X80_Y6_N52
\lulu|l1|sig_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(6),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[0][0]~q\);

-- Location: FF_X82_Y6_N34
\lulu|l1|sig_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(7),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[1][1]~q\);

-- Location: LABCELL_X80_Y6_N6
\lulu|l1|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan2~1_combout\ = ( \lulu|l1|sig_arr[1][1]~q\ & ( (\lulu|l1|sig_arr[0][1]~q\ & (!\lulu|l1|sig_arr[1][0]~q\ & \lulu|l1|sig_arr[0][0]~q\)) ) ) # ( !\lulu|l1|sig_arr[1][1]~q\ & ( ((!\lulu|l1|sig_arr[1][0]~q\ & \lulu|l1|sig_arr[0][0]~q\)) # 
-- (\lulu|l1|sig_arr[0][1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l1|ALT_INV_sig_arr[0][1]~q\,
	datac => \lulu|l1|ALT_INV_sig_arr[1][0]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[0][0]~q\,
	dataf => \lulu|l1|ALT_INV_sig_arr[1][1]~q\,
	combout => \lulu|l1|LessThan2~1_combout\);

-- Location: LABCELL_X80_Y6_N30
\lulu|l1|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan2~2_combout\ = ( \lulu|l1|LessThan2~1_combout\ & ( (!\lulu|l1|sig_arr[1][3]~q\ & ((!\lulu|l1|sig_arr[1][2]~q\) # ((\lulu|l1|sig_arr[0][3]~q\) # (\lulu|l1|sig_arr[0][2]~q\)))) # (\lulu|l1|sig_arr[1][3]~q\ & (\lulu|l1|sig_arr[0][3]~q\ & 
-- ((!\lulu|l1|sig_arr[1][2]~q\) # (\lulu|l1|sig_arr[0][2]~q\)))) ) ) # ( !\lulu|l1|LessThan2~1_combout\ & ( (!\lulu|l1|sig_arr[1][3]~q\ & (((!\lulu|l1|sig_arr[1][2]~q\ & \lulu|l1|sig_arr[0][2]~q\)) # (\lulu|l1|sig_arr[0][3]~q\))) # 
-- (\lulu|l1|sig_arr[1][3]~q\ & (!\lulu|l1|sig_arr[1][2]~q\ & (\lulu|l1|sig_arr[0][2]~q\ & \lulu|l1|sig_arr[0][3]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011110010001000001111001010110000111110111011000011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_sig_arr[1][2]~q\,
	datab => \lulu|l1|ALT_INV_sig_arr[0][2]~q\,
	datac => \lulu|l1|ALT_INV_sig_arr[1][3]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[0][3]~q\,
	dataf => \lulu|l1|ALT_INV_LessThan2~1_combout\,
	combout => \lulu|l1|LessThan2~2_combout\);

-- Location: LABCELL_X80_Y6_N18
\lulu|l1|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan2~4_combout\ = ( \lulu|l1|LessThan2~2_combout\ & ( (!\lulu|l1|LessThan2~3_combout\ & ((!\lulu|l1|LessThan2~0_combout\) # ((!\lulu|l1|sig_arr[0][4]~q\ & \lulu|l1|sig_arr[1][4]~q\)))) ) ) # ( !\lulu|l1|LessThan2~2_combout\ & ( 
-- (!\lulu|l1|LessThan2~3_combout\ & ((!\lulu|l1|LessThan2~0_combout\) # ((!\lulu|l1|sig_arr[0][4]~q\) # (\lulu|l1|sig_arr[1][4]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101010101010001010101010001000101010001000100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan2~3_combout\,
	datab => \lulu|l1|ALT_INV_LessThan2~0_combout\,
	datac => \lulu|l1|ALT_INV_sig_arr[0][4]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[1][4]~q\,
	dataf => \lulu|l1|ALT_INV_LessThan2~2_combout\,
	combout => \lulu|l1|LessThan2~4_combout\);

-- Location: LABCELL_X80_Y6_N48
\lulu|l1|LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan2~5_combout\ = ( \lulu|l1|LessThan2~4_combout\ & ( (!\lulu|l1|sig_arr[0][9]~q\ & (!\lulu|l1|sig_arr[1][8]~q\ & (!\lulu|l1|sig_arr[1][9]~q\ & \lulu|l1|sig_arr[0][8]~q\))) # (\lulu|l1|sig_arr[0][9]~q\ & ((!\lulu|l1|sig_arr[1][9]~q\) # 
-- ((!\lulu|l1|sig_arr[1][8]~q\ & \lulu|l1|sig_arr[0][8]~q\)))) ) ) # ( !\lulu|l1|LessThan2~4_combout\ & ( (!\lulu|l1|sig_arr[0][9]~q\ & (!\lulu|l1|sig_arr[1][9]~q\ & ((!\lulu|l1|sig_arr[1][8]~q\) # (\lulu|l1|sig_arr[0][8]~q\)))) # (\lulu|l1|sig_arr[0][9]~q\ 
-- & ((!\lulu|l1|sig_arr[1][8]~q\) # ((!\lulu|l1|sig_arr[1][9]~q\) # (\lulu|l1|sig_arr[0][8]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001011110011101100101111001100110000101100100011000010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_sig_arr[1][8]~q\,
	datab => \lulu|l1|ALT_INV_sig_arr[0][9]~q\,
	datac => \lulu|l1|ALT_INV_sig_arr[1][9]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[0][8]~q\,
	dataf => \lulu|l1|ALT_INV_LessThan2~4_combout\,
	combout => \lulu|l1|LessThan2~5_combout\);

-- Location: LABCELL_X81_Y6_N9
\lulu|l1|temp_min~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~8_combout\ = ( \lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[1][9]~q\ ) ) # ( !\lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[0][9]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l1|ALT_INV_sig_arr[0][9]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[1][9]~q\,
	dataf => \lulu|l1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l1|temp_min~8_combout\);

-- Location: MLABCELL_X82_Y6_N39
\lulu|l1|temp_min~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~11_combout\ = (\lulu|l1|sig_arr[2][9]~q\ & \lulu|l1|temp_min~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_sig_arr[2][9]~q\,
	datac => \lulu|l1|ALT_INV_temp_min~8_combout\,
	combout => \lulu|l1|temp_min~11_combout\);

-- Location: FF_X84_Y6_N32
\lulu|l1|l_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~11_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[0][9]~q\);

-- Location: FF_X83_Y6_N55
\lulu|l1|l_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~11_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[1][9]~q\);

-- Location: FF_X84_Y6_N4
\lulu|l1|l_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~11_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[2][9]~q\);

-- Location: MLABCELL_X84_Y6_N0
\lulu|l1|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan6~0_combout\ = ( !\lulu|l1|l_arr[0][9]~q\ & ( \lulu|l1|l_arr[1][9]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l1|ALT_INV_l_arr[1][9]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[0][9]~q\,
	combout => \lulu|l1|LessThan6~0_combout\);

-- Location: FF_X83_Y6_N56
\lulu|l1|l_arr[1][9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~11_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[1][9]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y6_N39
\lulu|l1|temp_min~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~9_combout\ = ( \lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[1][8]~q\ ) ) # ( !\lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[0][8]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l1|ALT_INV_sig_arr[0][8]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[1][8]~q\,
	dataf => \lulu|l1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l1|temp_min~9_combout\);

-- Location: FF_X81_Y6_N53
\lulu|l1|sig_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(14),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[2][8]~q\);

-- Location: LABCELL_X81_Y6_N36
\lulu|l1|temp_min~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~12_combout\ = ( \lulu|l1|temp_min~8_combout\ & ( (\lulu|l1|sig_arr[2][8]~q\ & ((!\lulu|l1|sig_arr[2][9]~q\) # (\lulu|l1|temp_min~9_combout\))) ) ) # ( !\lulu|l1|temp_min~8_combout\ & ( (\lulu|l1|temp_min~9_combout\ & 
-- ((\lulu|l1|sig_arr[2][8]~q\) # (\lulu|l1|sig_arr[2][9]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_sig_arr[2][9]~q\,
	datab => \lulu|l1|ALT_INV_temp_min~9_combout\,
	datac => \lulu|l1|ALT_INV_sig_arr[2][8]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~8_combout\,
	combout => \lulu|l1|temp_min~12_combout\);

-- Location: FF_X82_Y6_N20
\lulu|l1|l_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~12_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[0][8]~q\);

-- Location: LABCELL_X80_Y6_N21
\lulu|l1|temp_min~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~0_combout\ = ( \lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[1][0]~q\ ) ) # ( !\lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[0][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l1|ALT_INV_sig_arr[0][0]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[1][0]~q\,
	dataf => \lulu|l1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l1|temp_min~0_combout\);

-- Location: FF_X81_Y6_N8
\lulu|l1|sig_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(6),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[2][0]~q\);

-- Location: FF_X81_Y6_N4
\lulu|l1|sig_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(7),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[2][1]~q\);

-- Location: MLABCELL_X82_Y6_N33
\lulu|l1|temp_min~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~5_combout\ = ( \lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[1][1]~q\ ) ) # ( !\lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[0][1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l1|ALT_INV_sig_arr[0][1]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[1][1]~q\,
	dataf => \lulu|l1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l1|temp_min~5_combout\);

-- Location: LABCELL_X81_Y6_N3
\lulu|l1|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan3~3_combout\ = ( \lulu|l1|temp_min~5_combout\ & ( (!\lulu|l1|sig_arr[2][1]~q\) # ((\lulu|l1|temp_min~0_combout\ & !\lulu|l1|sig_arr[2][0]~q\)) ) ) # ( !\lulu|l1|temp_min~5_combout\ & ( (\lulu|l1|temp_min~0_combout\ & 
-- (!\lulu|l1|sig_arr[2][0]~q\ & !\lulu|l1|sig_arr[2][1]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011111111010100001111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_temp_min~0_combout\,
	datac => \lulu|l1|ALT_INV_sig_arr[2][0]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[2][1]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~5_combout\,
	combout => \lulu|l1|LessThan3~3_combout\);

-- Location: FF_X81_Y6_N20
\lulu|l1|sig_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(9),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[2][3]~q\);

-- Location: LABCELL_X80_Y6_N27
\lulu|l1|temp_min~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~7_combout\ = ( \lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[1][2]~q\ ) ) # ( !\lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[0][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l1|ALT_INV_sig_arr[0][2]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[1][2]~q\,
	dataf => \lulu|l1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l1|temp_min~7_combout\);

-- Location: FF_X81_Y6_N56
\lulu|l1|sig_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(8),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[2][2]~q\);

-- Location: LABCELL_X80_Y6_N54
\lulu|l1|temp_min~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~6_combout\ = ( \lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[1][3]~q\ ) ) # ( !\lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[0][3]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l1|ALT_INV_sig_arr[0][3]~q\,
	datac => \lulu|l1|ALT_INV_sig_arr[1][3]~q\,
	dataf => \lulu|l1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l1|temp_min~6_combout\);

-- Location: LABCELL_X81_Y6_N54
\lulu|l1|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan3~4_combout\ = ( \lulu|l1|temp_min~6_combout\ & ( (\lulu|l1|sig_arr[2][3]~q\ & (!\lulu|l1|temp_min~7_combout\ $ (\lulu|l1|sig_arr[2][2]~q\))) ) ) # ( !\lulu|l1|temp_min~6_combout\ & ( (!\lulu|l1|sig_arr[2][3]~q\ & 
-- (!\lulu|l1|temp_min~7_combout\ $ (\lulu|l1|sig_arr[2][2]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l1|ALT_INV_sig_arr[2][3]~q\,
	datac => \lulu|l1|ALT_INV_temp_min~7_combout\,
	datad => \lulu|l1|ALT_INV_sig_arr[2][2]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~6_combout\,
	combout => \lulu|l1|LessThan3~4_combout\);

-- Location: FF_X80_Y6_N59
\lulu|l1|sig_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(13),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[2][7]~q\);

-- Location: FF_X80_Y6_N56
\lulu|l1|sig_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(12),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[2][6]~q\);

-- Location: LABCELL_X80_Y6_N33
\lulu|l1|temp_min~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~1_combout\ = ( \lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[1][7]~q\ ) ) # ( !\lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[0][7]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l1|ALT_INV_sig_arr[1][7]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[0][7]~q\,
	dataf => \lulu|l1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l1|temp_min~1_combout\);

-- Location: LABCELL_X80_Y6_N45
\lulu|l1|temp_min~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~2_combout\ = ( \lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[1][6]~q\ ) ) # ( !\lulu|l1|LessThan2~5_combout\ & ( \lulu|l1|sig_arr[0][6]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l1|ALT_INV_sig_arr[0][6]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[1][6]~q\,
	dataf => \lulu|l1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l1|temp_min~2_combout\);

-- Location: LABCELL_X80_Y6_N24
\lulu|l1|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan3~0_combout\ = ( \lulu|l1|temp_min~2_combout\ & ( (\lulu|l1|sig_arr[2][6]~q\ & (!\lulu|l1|sig_arr[2][7]~q\ $ (\lulu|l1|temp_min~1_combout\))) ) ) # ( !\lulu|l1|temp_min~2_combout\ & ( (!\lulu|l1|sig_arr[2][6]~q\ & 
-- (!\lulu|l1|sig_arr[2][7]~q\ $ (\lulu|l1|temp_min~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_sig_arr[2][7]~q\,
	datab => \lulu|l1|ALT_INV_sig_arr[2][6]~q\,
	datac => \lulu|l1|ALT_INV_temp_min~1_combout\,
	dataf => \lulu|l1|ALT_INV_temp_min~2_combout\,
	combout => \lulu|l1|LessThan3~0_combout\);

-- Location: LABCELL_X81_Y6_N18
\lulu|l1|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan3~5_combout\ = ( \lulu|l1|temp_min~6_combout\ & ( (!\lulu|l1|sig_arr[2][3]~q\) # ((\lulu|l1|temp_min~7_combout\ & !\lulu|l1|sig_arr[2][2]~q\)) ) ) # ( !\lulu|l1|temp_min~6_combout\ & ( (\lulu|l1|temp_min~7_combout\ & 
-- (!\lulu|l1|sig_arr[2][2]~q\ & !\lulu|l1|sig_arr[2][3]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011111111001100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l1|ALT_INV_temp_min~7_combout\,
	datac => \lulu|l1|ALT_INV_sig_arr[2][2]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[2][3]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~6_combout\,
	combout => \lulu|l1|LessThan3~5_combout\);

-- Location: FF_X81_Y6_N2
\lulu|l1|sig_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(10),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[2][4]~q\);

-- Location: LABCELL_X80_Y6_N9
\lulu|l1|temp_min~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~4_combout\ = (!\lulu|l1|LessThan2~5_combout\ & ((\lulu|l1|sig_arr[0][4]~q\))) # (\lulu|l1|LessThan2~5_combout\ & (\lulu|l1|sig_arr[1][4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan2~5_combout\,
	datac => \lulu|l1|ALT_INV_sig_arr[1][4]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[0][4]~q\,
	combout => \lulu|l1|temp_min~4_combout\);

-- Location: LABCELL_X81_Y6_N0
\lulu|l1|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan3~2_combout\ = ( \lulu|l1|temp_min~4_combout\ & ( !\lulu|l1|sig_arr[2][4]~q\ ) ) # ( !\lulu|l1|temp_min~4_combout\ & ( \lulu|l1|sig_arr[2][4]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lulu|l1|ALT_INV_sig_arr[2][4]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~4_combout\,
	combout => \lulu|l1|LessThan3~2_combout\);

-- Location: FF_X81_Y6_N59
\lulu|l1|sig_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \avg_fil|data_sum\(11),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|sig_arr[2][5]~q\);

-- Location: LABCELL_X80_Y6_N42
\lulu|l1|temp_min~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~3_combout\ = ( \lulu|l1|sig_arr[0][5]~q\ & ( (!\lulu|l1|LessThan2~5_combout\) # (\lulu|l1|sig_arr[1][5]~q\) ) ) # ( !\lulu|l1|sig_arr[0][5]~q\ & ( (\lulu|l1|LessThan2~5_combout\ & \lulu|l1|sig_arr[1][5]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan2~5_combout\,
	datac => \lulu|l1|ALT_INV_sig_arr[1][5]~q\,
	dataf => \lulu|l1|ALT_INV_sig_arr[0][5]~q\,
	combout => \lulu|l1|temp_min~3_combout\);

-- Location: LABCELL_X81_Y6_N57
\lulu|l1|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan3~1_combout\ = ( \lulu|l1|temp_min~3_combout\ & ( !\lulu|l1|sig_arr[2][5]~q\ ) ) # ( !\lulu|l1|temp_min~3_combout\ & ( \lulu|l1|sig_arr[2][5]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lulu|l1|ALT_INV_sig_arr[2][5]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~3_combout\,
	combout => \lulu|l1|LessThan3~1_combout\);

-- Location: LABCELL_X81_Y6_N27
\lulu|l1|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan3~6_combout\ = ( !\lulu|l1|LessThan3~2_combout\ & ( !\lulu|l1|LessThan3~1_combout\ & ( (\lulu|l1|LessThan3~0_combout\ & (((\lulu|l1|LessThan3~3_combout\ & \lulu|l1|LessThan3~4_combout\)) # (\lulu|l1|LessThan3~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan3~3_combout\,
	datab => \lulu|l1|ALT_INV_LessThan3~4_combout\,
	datac => \lulu|l1|ALT_INV_LessThan3~0_combout\,
	datad => \lulu|l1|ALT_INV_LessThan3~5_combout\,
	datae => \lulu|l1|ALT_INV_LessThan3~2_combout\,
	dataf => \lulu|l1|ALT_INV_LessThan3~1_combout\,
	combout => \lulu|l1|LessThan3~6_combout\);

-- Location: LABCELL_X81_Y6_N21
\lulu|l1|LessThan3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan3~10_combout\ = ( \lulu|l1|temp_min~9_combout\ & ( (!\lulu|l1|sig_arr[2][8]~q\ & ((!\lulu|l1|sig_arr[2][9]~q\) # (\lulu|l1|temp_min~8_combout\))) # (\lulu|l1|sig_arr[2][8]~q\ & (\lulu|l1|temp_min~8_combout\ & !\lulu|l1|sig_arr[2][9]~q\)) 
-- ) ) # ( !\lulu|l1|temp_min~9_combout\ & ( (\lulu|l1|temp_min~8_combout\ & !\lulu|l1|sig_arr[2][9]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000010101111000010101010111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_sig_arr[2][8]~q\,
	datac => \lulu|l1|ALT_INV_temp_min~8_combout\,
	datad => \lulu|l1|ALT_INV_sig_arr[2][9]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~9_combout\,
	combout => \lulu|l1|LessThan3~10_combout\);

-- Location: LABCELL_X80_Y6_N57
\lulu|l1|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan3~7_combout\ = ( \lulu|l1|temp_min~1_combout\ & ( (!\lulu|l1|sig_arr[2][7]~q\) # ((!\lulu|l1|sig_arr[2][6]~q\ & \lulu|l1|temp_min~2_combout\)) ) ) # ( !\lulu|l1|temp_min~1_combout\ & ( (!\lulu|l1|sig_arr[2][6]~q\ & 
-- (\lulu|l1|temp_min~2_combout\ & !\lulu|l1|sig_arr[2][7]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_sig_arr[2][6]~q\,
	datac => \lulu|l1|ALT_INV_temp_min~2_combout\,
	datad => \lulu|l1|ALT_INV_sig_arr[2][7]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~1_combout\,
	combout => \lulu|l1|LessThan3~7_combout\);

-- Location: LABCELL_X80_Y6_N12
\lulu|l1|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan3~8_combout\ = ( !\lulu|l1|LessThan3~7_combout\ & ( \lulu|l1|temp_min~4_combout\ & ( (!\lulu|l1|LessThan3~0_combout\) # ((!\lulu|l1|temp_min~3_combout\ & ((\lulu|l1|sig_arr[2][5]~q\) # (\lulu|l1|sig_arr[2][4]~q\))) # 
-- (\lulu|l1|temp_min~3_combout\ & (\lulu|l1|sig_arr[2][4]~q\ & \lulu|l1|sig_arr[2][5]~q\))) ) ) ) # ( !\lulu|l1|LessThan3~7_combout\ & ( !\lulu|l1|temp_min~4_combout\ & ( (!\lulu|l1|temp_min~3_combout\) # ((!\lulu|l1|LessThan3~0_combout\) # 
-- (\lulu|l1|sig_arr[2][5]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011111111000000000000000011001110111011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_temp_min~3_combout\,
	datab => \lulu|l1|ALT_INV_LessThan3~0_combout\,
	datac => \lulu|l1|ALT_INV_sig_arr[2][4]~q\,
	datad => \lulu|l1|ALT_INV_sig_arr[2][5]~q\,
	datae => \lulu|l1|ALT_INV_LessThan3~7_combout\,
	dataf => \lulu|l1|ALT_INV_temp_min~4_combout\,
	combout => \lulu|l1|LessThan3~8_combout\);

-- Location: LABCELL_X81_Y6_N6
\lulu|l1|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan3~9_combout\ = ( \lulu|l1|temp_min~9_combout\ & ( (\lulu|l1|sig_arr[2][8]~q\ & (!\lulu|l1|temp_min~8_combout\ $ (\lulu|l1|sig_arr[2][9]~q\))) ) ) # ( !\lulu|l1|temp_min~9_combout\ & ( (!\lulu|l1|sig_arr[2][8]~q\ & 
-- (!\lulu|l1|temp_min~8_combout\ $ (\lulu|l1|sig_arr[2][9]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_sig_arr[2][8]~q\,
	datab => \lulu|l1|ALT_INV_temp_min~8_combout\,
	datac => \lulu|l1|ALT_INV_sig_arr[2][9]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~9_combout\,
	combout => \lulu|l1|LessThan3~9_combout\);

-- Location: LABCELL_X81_Y6_N33
\lulu|l1|temp_min~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~18_combout\ = ( \lulu|l1|sig_arr[2][6]~q\ & ( \lulu|l1|temp_min~2_combout\ ) ) # ( !\lulu|l1|sig_arr[2][6]~q\ & ( \lulu|l1|temp_min~2_combout\ & ( (!\lulu|l1|LessThan3~10_combout\ & ((!\lulu|l1|LessThan3~9_combout\) # 
-- ((!\lulu|l1|LessThan3~6_combout\ & \lulu|l1|LessThan3~8_combout\)))) ) ) ) # ( \lulu|l1|sig_arr[2][6]~q\ & ( !\lulu|l1|temp_min~2_combout\ & ( ((\lulu|l1|LessThan3~9_combout\ & ((!\lulu|l1|LessThan3~8_combout\) # (\lulu|l1|LessThan3~6_combout\)))) # 
-- (\lulu|l1|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111111011111001100000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan3~6_combout\,
	datab => \lulu|l1|ALT_INV_LessThan3~10_combout\,
	datac => \lulu|l1|ALT_INV_LessThan3~8_combout\,
	datad => \lulu|l1|ALT_INV_LessThan3~9_combout\,
	datae => \lulu|l1|ALT_INV_sig_arr[2][6]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~2_combout\,
	combout => \lulu|l1|temp_min~18_combout\);

-- Location: MLABCELL_X82_Y6_N27
\lulu|l1|l_arr[1][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|l_arr[1][6]~feeder_combout\ = ( \lulu|l1|temp_min~18_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_temp_min~18_combout\,
	combout => \lulu|l1|l_arr[1][6]~feeder_combout\);

-- Location: FF_X82_Y6_N29
\lulu|l1|l_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|l_arr[1][6]~feeder_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[1][6]~q\);

-- Location: LABCELL_X81_Y6_N48
\lulu|l1|temp_min~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~17_combout\ = ( \lulu|l1|LessThan3~6_combout\ & ( \lulu|l1|temp_min~3_combout\ & ( ((!\lulu|l1|LessThan3~9_combout\ & !\lulu|l1|LessThan3~10_combout\)) # (\lulu|l1|sig_arr[2][5]~q\) ) ) ) # ( !\lulu|l1|LessThan3~6_combout\ & ( 
-- \lulu|l1|temp_min~3_combout\ & ( ((!\lulu|l1|LessThan3~10_combout\ & ((!\lulu|l1|LessThan3~9_combout\) # (\lulu|l1|LessThan3~8_combout\)))) # (\lulu|l1|sig_arr[2][5]~q\) ) ) ) # ( \lulu|l1|LessThan3~6_combout\ & ( !\lulu|l1|temp_min~3_combout\ & ( 
-- (\lulu|l1|sig_arr[2][5]~q\ & ((\lulu|l1|LessThan3~10_combout\) # (\lulu|l1|LessThan3~9_combout\))) ) ) ) # ( !\lulu|l1|LessThan3~6_combout\ & ( !\lulu|l1|temp_min~3_combout\ & ( (\lulu|l1|sig_arr[2][5]~q\ & (((\lulu|l1|LessThan3~9_combout\ & 
-- !\lulu|l1|LessThan3~8_combout\)) # (\lulu|l1|LessThan3~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110011000000000111011110001100111111111000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan3~9_combout\,
	datab => \lulu|l1|ALT_INV_LessThan3~10_combout\,
	datac => \lulu|l1|ALT_INV_LessThan3~8_combout\,
	datad => \lulu|l1|ALT_INV_sig_arr[2][5]~q\,
	datae => \lulu|l1|ALT_INV_LessThan3~6_combout\,
	dataf => \lulu|l1|ALT_INV_temp_min~3_combout\,
	combout => \lulu|l1|temp_min~17_combout\);

-- Location: FF_X82_Y6_N8
\lulu|l1|l_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~17_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[0][5]~q\);

-- Location: LABCELL_X81_Y6_N12
\lulu|l1|temp_min~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~19_combout\ = ( \lulu|l1|sig_arr[2][7]~q\ & ( \lulu|l1|temp_min~1_combout\ ) ) # ( !\lulu|l1|sig_arr[2][7]~q\ & ( \lulu|l1|temp_min~1_combout\ & ( (!\lulu|l1|LessThan3~10_combout\ & ((!\lulu|l1|LessThan3~9_combout\) # 
-- ((\lulu|l1|LessThan3~8_combout\ & !\lulu|l1|LessThan3~6_combout\)))) ) ) ) # ( \lulu|l1|sig_arr[2][7]~q\ & ( !\lulu|l1|temp_min~1_combout\ & ( ((\lulu|l1|LessThan3~9_combout\ & ((!\lulu|l1|LessThan3~8_combout\) # (\lulu|l1|LessThan3~6_combout\)))) # 
-- (\lulu|l1|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001011111111110111010000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan3~9_combout\,
	datab => \lulu|l1|ALT_INV_LessThan3~8_combout\,
	datac => \lulu|l1|ALT_INV_LessThan3~6_combout\,
	datad => \lulu|l1|ALT_INV_LessThan3~10_combout\,
	datae => \lulu|l1|ALT_INV_sig_arr[2][7]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~1_combout\,
	combout => \lulu|l1|temp_min~19_combout\);

-- Location: FF_X82_Y6_N56
\lulu|l1|l_arr[1][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~19_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[1][7]~DUPLICATE_q\);

-- Location: FF_X82_Y6_N16
\lulu|l1|l_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~19_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[0][7]~q\);

-- Location: FF_X82_Y6_N11
\lulu|l1|l_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~18_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[0][6]~q\);

-- Location: FF_X82_Y6_N25
\lulu|l1|l_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~17_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[1][5]~q\);

-- Location: MLABCELL_X82_Y6_N18
\lulu|l1|LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan6~4_combout\ = ( \lulu|l1|l_arr[0][6]~q\ & ( \lulu|l1|l_arr[1][5]~q\ & ( (!\lulu|l1|l_arr[1][7]~DUPLICATE_q\ & (\lulu|l1|l_arr[1][6]~q\ & (!\lulu|l1|l_arr[0][5]~q\ & !\lulu|l1|l_arr[0][7]~q\))) # (\lulu|l1|l_arr[1][7]~DUPLICATE_q\ & 
-- ((!\lulu|l1|l_arr[0][7]~q\) # ((\lulu|l1|l_arr[1][6]~q\ & !\lulu|l1|l_arr[0][5]~q\)))) ) ) ) # ( !\lulu|l1|l_arr[0][6]~q\ & ( \lulu|l1|l_arr[1][5]~q\ & ( (!\lulu|l1|l_arr[1][7]~DUPLICATE_q\ & (!\lulu|l1|l_arr[0][7]~q\ & ((!\lulu|l1|l_arr[0][5]~q\) # 
-- (\lulu|l1|l_arr[1][6]~q\)))) # (\lulu|l1|l_arr[1][7]~DUPLICATE_q\ & (((!\lulu|l1|l_arr[0][5]~q\) # (!\lulu|l1|l_arr[0][7]~q\)) # (\lulu|l1|l_arr[1][6]~q\))) ) ) ) # ( \lulu|l1|l_arr[0][6]~q\ & ( !\lulu|l1|l_arr[1][5]~q\ & ( 
-- (\lulu|l1|l_arr[1][7]~DUPLICATE_q\ & !\lulu|l1|l_arr[0][7]~q\) ) ) ) # ( !\lulu|l1|l_arr[0][6]~q\ & ( !\lulu|l1|l_arr[1][5]~q\ & ( (!\lulu|l1|l_arr[1][6]~q\ & (\lulu|l1|l_arr[1][7]~DUPLICATE_q\ & !\lulu|l1|l_arr[0][7]~q\)) # (\lulu|l1|l_arr[1][6]~q\ & 
-- ((!\lulu|l1|l_arr[0][7]~q\) # (\lulu|l1|l_arr[1][7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101000011110000000011011111000011010100111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_l_arr[1][6]~q\,
	datab => \lulu|l1|ALT_INV_l_arr[0][5]~q\,
	datac => \lulu|l1|ALT_INV_l_arr[1][7]~DUPLICATE_q\,
	datad => \lulu|l1|ALT_INV_l_arr[0][7]~q\,
	datae => \lulu|l1|ALT_INV_l_arr[0][6]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[1][5]~q\,
	combout => \lulu|l1|LessThan6~4_combout\);

-- Location: LABCELL_X81_Y6_N45
\lulu|l1|temp_min~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~16_combout\ = ( \lulu|l1|sig_arr[2][4]~q\ & ( \lulu|l1|temp_min~4_combout\ ) ) # ( !\lulu|l1|sig_arr[2][4]~q\ & ( \lulu|l1|temp_min~4_combout\ & ( (!\lulu|l1|LessThan3~10_combout\ & ((!\lulu|l1|LessThan3~9_combout\) # 
-- ((!\lulu|l1|LessThan3~6_combout\ & \lulu|l1|LessThan3~8_combout\)))) ) ) ) # ( \lulu|l1|sig_arr[2][4]~q\ & ( !\lulu|l1|temp_min~4_combout\ & ( ((\lulu|l1|LessThan3~9_combout\ & ((!\lulu|l1|LessThan3~8_combout\) # (\lulu|l1|LessThan3~6_combout\)))) # 
-- (\lulu|l1|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111111011111001100000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan3~6_combout\,
	datab => \lulu|l1|ALT_INV_LessThan3~10_combout\,
	datac => \lulu|l1|ALT_INV_LessThan3~8_combout\,
	datad => \lulu|l1|ALT_INV_LessThan3~9_combout\,
	datae => \lulu|l1|ALT_INV_sig_arr[2][4]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~4_combout\,
	combout => \lulu|l1|temp_min~16_combout\);

-- Location: MLABCELL_X82_Y6_N15
\lulu|l1|l_arr[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|l_arr[0][4]~feeder_combout\ = ( \lulu|l1|temp_min~16_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_temp_min~16_combout\,
	combout => \lulu|l1|l_arr[0][4]~feeder_combout\);

-- Location: FF_X82_Y6_N17
\lulu|l1|l_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|l_arr[0][4]~feeder_combout\,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[0][4]~q\);

-- Location: FF_X82_Y6_N38
\lulu|l1|l_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~16_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[1][4]~q\);

-- Location: MLABCELL_X82_Y6_N57
\lulu|l1|LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan6~3_combout\ = ( \lulu|l1|l_arr[0][6]~q\ & ( \lulu|l1|l_arr[0][7]~q\ & ( (\lulu|l1|l_arr[1][7]~DUPLICATE_q\ & (\lulu|l1|l_arr[1][6]~q\ & (!\lulu|l1|l_arr[1][5]~q\ $ (\lulu|l1|l_arr[0][5]~q\)))) ) ) ) # ( !\lulu|l1|l_arr[0][6]~q\ & ( 
-- \lulu|l1|l_arr[0][7]~q\ & ( (\lulu|l1|l_arr[1][7]~DUPLICATE_q\ & (!\lulu|l1|l_arr[1][6]~q\ & (!\lulu|l1|l_arr[1][5]~q\ $ (\lulu|l1|l_arr[0][5]~q\)))) ) ) ) # ( \lulu|l1|l_arr[0][6]~q\ & ( !\lulu|l1|l_arr[0][7]~q\ & ( (!\lulu|l1|l_arr[1][7]~DUPLICATE_q\ & 
-- (\lulu|l1|l_arr[1][6]~q\ & (!\lulu|l1|l_arr[1][5]~q\ $ (\lulu|l1|l_arr[0][5]~q\)))) ) ) ) # ( !\lulu|l1|l_arr[0][6]~q\ & ( !\lulu|l1|l_arr[0][7]~q\ & ( (!\lulu|l1|l_arr[1][7]~DUPLICATE_q\ & (!\lulu|l1|l_arr[1][6]~q\ & (!\lulu|l1|l_arr[1][5]~q\ $ 
-- (\lulu|l1|l_arr[0][5]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_l_arr[1][7]~DUPLICATE_q\,
	datab => \lulu|l1|ALT_INV_l_arr[1][5]~q\,
	datac => \lulu|l1|ALT_INV_l_arr[0][5]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[1][6]~q\,
	datae => \lulu|l1|ALT_INV_l_arr[0][6]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[0][7]~q\,
	combout => \lulu|l1|LessThan6~3_combout\);

-- Location: LABCELL_X81_Y6_N15
\lulu|l1|temp_min~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~15_combout\ = ( \lulu|l1|sig_arr[2][3]~q\ & ( \lulu|l1|temp_min~6_combout\ ) ) # ( !\lulu|l1|sig_arr[2][3]~q\ & ( \lulu|l1|temp_min~6_combout\ & ( (!\lulu|l1|LessThan3~10_combout\ & ((!\lulu|l1|LessThan3~9_combout\) # 
-- ((\lulu|l1|LessThan3~8_combout\ & !\lulu|l1|LessThan3~6_combout\)))) ) ) ) # ( \lulu|l1|sig_arr[2][3]~q\ & ( !\lulu|l1|temp_min~6_combout\ & ( ((\lulu|l1|LessThan3~9_combout\ & ((!\lulu|l1|LessThan3~8_combout\) # (\lulu|l1|LessThan3~6_combout\)))) # 
-- (\lulu|l1|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011110101111110110000101000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan3~9_combout\,
	datab => \lulu|l1|ALT_INV_LessThan3~8_combout\,
	datac => \lulu|l1|ALT_INV_LessThan3~10_combout\,
	datad => \lulu|l1|ALT_INV_LessThan3~6_combout\,
	datae => \lulu|l1|ALT_INV_sig_arr[2][3]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~6_combout\,
	combout => \lulu|l1|temp_min~15_combout\);

-- Location: FF_X81_Y6_N25
\lulu|l1|l_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~15_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[0][3]~q\);

-- Location: LABCELL_X81_Y6_N42
\lulu|l1|temp_min~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~14_combout\ = ( \lulu|l1|sig_arr[2][2]~q\ & ( \lulu|l1|temp_min~7_combout\ ) ) # ( !\lulu|l1|sig_arr[2][2]~q\ & ( \lulu|l1|temp_min~7_combout\ & ( (!\lulu|l1|LessThan3~10_combout\ & ((!\lulu|l1|LessThan3~9_combout\) # 
-- ((!\lulu|l1|LessThan3~6_combout\ & \lulu|l1|LessThan3~8_combout\)))) ) ) ) # ( \lulu|l1|sig_arr[2][2]~q\ & ( !\lulu|l1|temp_min~7_combout\ & ( ((\lulu|l1|LessThan3~9_combout\ & ((!\lulu|l1|LessThan3~8_combout\) # (\lulu|l1|LessThan3~6_combout\)))) # 
-- (\lulu|l1|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011011111000000110010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan3~6_combout\,
	datab => \lulu|l1|ALT_INV_LessThan3~10_combout\,
	datac => \lulu|l1|ALT_INV_LessThan3~9_combout\,
	datad => \lulu|l1|ALT_INV_LessThan3~8_combout\,
	datae => \lulu|l1|ALT_INV_sig_arr[2][2]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~7_combout\,
	combout => \lulu|l1|temp_min~14_combout\);

-- Location: FF_X82_Y6_N41
\lulu|l1|l_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~14_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[1][2]~q\);

-- Location: FF_X82_Y6_N23
\lulu|l1|l_arr[0][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~14_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[0][2]~DUPLICATE_q\);

-- Location: FF_X82_Y6_N59
\lulu|l1|l_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~15_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[1][3]~q\);

-- Location: LABCELL_X81_Y6_N30
\lulu|l1|temp_min~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~13_combout\ = ( \lulu|l1|sig_arr[2][1]~q\ & ( \lulu|l1|temp_min~5_combout\ ) ) # ( !\lulu|l1|sig_arr[2][1]~q\ & ( \lulu|l1|temp_min~5_combout\ & ( (!\lulu|l1|LessThan3~10_combout\ & ((!\lulu|l1|LessThan3~9_combout\) # 
-- ((!\lulu|l1|LessThan3~6_combout\ & \lulu|l1|LessThan3~8_combout\)))) ) ) ) # ( \lulu|l1|sig_arr[2][1]~q\ & ( !\lulu|l1|temp_min~5_combout\ & ( ((\lulu|l1|LessThan3~9_combout\ & ((!\lulu|l1|LessThan3~8_combout\) # (\lulu|l1|LessThan3~6_combout\)))) # 
-- (\lulu|l1|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011011111000000110010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan3~6_combout\,
	datab => \lulu|l1|ALT_INV_LessThan3~10_combout\,
	datac => \lulu|l1|ALT_INV_LessThan3~9_combout\,
	datad => \lulu|l1|ALT_INV_LessThan3~8_combout\,
	datae => \lulu|l1|ALT_INV_sig_arr[2][1]~q\,
	dataf => \lulu|l1|ALT_INV_temp_min~5_combout\,
	combout => \lulu|l1|temp_min~13_combout\);

-- Location: LABCELL_X85_Y6_N51
\lulu|l1|l_arr[1][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|l_arr[1][1]~feeder_combout\ = ( \lulu|l1|temp_min~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_temp_min~13_combout\,
	combout => \lulu|l1|l_arr[1][1]~feeder_combout\);

-- Location: FF_X85_Y6_N53
\lulu|l1|l_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|l_arr[1][1]~feeder_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[1][1]~q\);

-- Location: LABCELL_X85_Y6_N18
\lulu|l1|temp_min~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_min~10_combout\ = ( \lulu|l1|LessThan3~10_combout\ & ( \lulu|l1|LessThan3~6_combout\ & ( \lulu|l1|sig_arr[2][0]~q\ ) ) ) # ( !\lulu|l1|LessThan3~10_combout\ & ( \lulu|l1|LessThan3~6_combout\ & ( (!\lulu|l1|LessThan3~9_combout\ & 
-- (\lulu|l1|temp_min~0_combout\)) # (\lulu|l1|LessThan3~9_combout\ & ((\lulu|l1|sig_arr[2][0]~q\))) ) ) ) # ( \lulu|l1|LessThan3~10_combout\ & ( !\lulu|l1|LessThan3~6_combout\ & ( \lulu|l1|sig_arr[2][0]~q\ ) ) ) # ( !\lulu|l1|LessThan3~10_combout\ & ( 
-- !\lulu|l1|LessThan3~6_combout\ & ( (!\lulu|l1|LessThan3~9_combout\ & (\lulu|l1|temp_min~0_combout\)) # (\lulu|l1|LessThan3~9_combout\ & ((!\lulu|l1|LessThan3~8_combout\ & ((\lulu|l1|sig_arr[2][0]~q\))) # (\lulu|l1|LessThan3~8_combout\ & 
-- (\lulu|l1|temp_min~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101010101000011110000111101000111010001110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_temp_min~0_combout\,
	datab => \lulu|l1|ALT_INV_LessThan3~9_combout\,
	datac => \lulu|l1|ALT_INV_sig_arr[2][0]~q\,
	datad => \lulu|l1|ALT_INV_LessThan3~8_combout\,
	datae => \lulu|l1|ALT_INV_LessThan3~10_combout\,
	dataf => \lulu|l1|ALT_INV_LessThan3~6_combout\,
	combout => \lulu|l1|temp_min~10_combout\);

-- Location: LABCELL_X85_Y6_N42
\lulu|l1|l_arr[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|l_arr[0][0]~feeder_combout\ = ( \lulu|l1|temp_min~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_temp_min~10_combout\,
	combout => \lulu|l1|l_arr[0][0]~feeder_combout\);

-- Location: FF_X85_Y6_N44
\lulu|l1|l_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|l_arr[0][0]~feeder_combout\,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[0][0]~q\);

-- Location: LABCELL_X85_Y6_N3
\lulu|l1|l_arr[1][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|l_arr[1][0]~feeder_combout\ = ( \lulu|l1|temp_min~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_temp_min~10_combout\,
	combout => \lulu|l1|l_arr[1][0]~feeder_combout\);

-- Location: FF_X85_Y6_N5
\lulu|l1|l_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|l_arr[1][0]~feeder_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[1][0]~q\);

-- Location: LABCELL_X85_Y6_N57
\lulu|l1|l_arr[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|l_arr[0][1]~feeder_combout\ = ( \lulu|l1|temp_min~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_temp_min~13_combout\,
	combout => \lulu|l1|l_arr[0][1]~feeder_combout\);

-- Location: FF_X85_Y6_N58
\lulu|l1|l_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|l_arr[0][1]~feeder_combout\,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[0][1]~q\);

-- Location: LABCELL_X85_Y6_N24
\lulu|l1|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan6~1_combout\ = ( \lulu|l1|l_arr[1][0]~q\ & ( \lulu|l1|l_arr[0][1]~q\ & ( (\lulu|l1|l_arr[1][1]~q\ & !\lulu|l1|l_arr[0][0]~q\) ) ) ) # ( \lulu|l1|l_arr[1][0]~q\ & ( !\lulu|l1|l_arr[0][1]~q\ & ( (!\lulu|l1|l_arr[0][0]~q\) # 
-- (\lulu|l1|l_arr[1][1]~q\) ) ) ) # ( !\lulu|l1|l_arr[1][0]~q\ & ( !\lulu|l1|l_arr[0][1]~q\ & ( \lulu|l1|l_arr[1][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111110000111100000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l1|ALT_INV_l_arr[1][1]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[0][0]~q\,
	datae => \lulu|l1|ALT_INV_l_arr[1][0]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[0][1]~q\,
	combout => \lulu|l1|LessThan6~1_combout\);

-- Location: MLABCELL_X82_Y6_N12
\lulu|l1|LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan6~2_combout\ = ( \lulu|l1|LessThan6~1_combout\ & ( (!\lulu|l1|l_arr[0][3]~q\ & (((!\lulu|l1|l_arr[0][2]~DUPLICATE_q\) # (\lulu|l1|l_arr[1][3]~q\)) # (\lulu|l1|l_arr[1][2]~q\))) # (\lulu|l1|l_arr[0][3]~q\ & (\lulu|l1|l_arr[1][3]~q\ & 
-- ((!\lulu|l1|l_arr[0][2]~DUPLICATE_q\) # (\lulu|l1|l_arr[1][2]~q\)))) ) ) # ( !\lulu|l1|LessThan6~1_combout\ & ( (!\lulu|l1|l_arr[0][3]~q\ & (((\lulu|l1|l_arr[1][2]~q\ & !\lulu|l1|l_arr[0][2]~DUPLICATE_q\)) # (\lulu|l1|l_arr[1][3]~q\))) # 
-- (\lulu|l1|l_arr[0][3]~q\ & (\lulu|l1|l_arr[1][2]~q\ & (!\lulu|l1|l_arr[0][2]~DUPLICATE_q\ & \lulu|l1|l_arr[1][3]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010111010001000001011101010100010111110111010001011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_l_arr[0][3]~q\,
	datab => \lulu|l1|ALT_INV_l_arr[1][2]~q\,
	datac => \lulu|l1|ALT_INV_l_arr[0][2]~DUPLICATE_q\,
	datad => \lulu|l1|ALT_INV_l_arr[1][3]~q\,
	dataf => \lulu|l1|ALT_INV_LessThan6~1_combout\,
	combout => \lulu|l1|LessThan6~2_combout\);

-- Location: MLABCELL_X82_Y6_N30
\lulu|l1|LessThan6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan6~5_combout\ = ( \lulu|l1|LessThan6~2_combout\ & ( (!\lulu|l1|LessThan6~4_combout\ & ((!\lulu|l1|LessThan6~3_combout\) # ((\lulu|l1|l_arr[0][4]~q\ & !\lulu|l1|l_arr[1][4]~q\)))) ) ) # ( !\lulu|l1|LessThan6~2_combout\ & ( 
-- (!\lulu|l1|LessThan6~4_combout\ & (((!\lulu|l1|l_arr[1][4]~q\) # (!\lulu|l1|LessThan6~3_combout\)) # (\lulu|l1|l_arr[0][4]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100010101010101010001010101010001000001010101000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan6~4_combout\,
	datab => \lulu|l1|ALT_INV_l_arr[0][4]~q\,
	datac => \lulu|l1|ALT_INV_l_arr[1][4]~q\,
	datad => \lulu|l1|ALT_INV_LessThan6~3_combout\,
	dataf => \lulu|l1|ALT_INV_LessThan6~2_combout\,
	combout => \lulu|l1|LessThan6~5_combout\);

-- Location: FF_X83_Y6_N59
\lulu|l1|l_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~12_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[1][8]~q\);

-- Location: LABCELL_X83_Y6_N57
\lulu|l1|LessThan6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan6~6_combout\ = ( \lulu|l1|l_arr[1][8]~q\ & ( \lulu|l1|l_arr[0][9]~q\ & ( (\lulu|l1|l_arr[1][9]~DUPLICATE_q\ & ((!\lulu|l1|l_arr[0][8]~q\) # (!\lulu|l1|LessThan6~5_combout\))) ) ) ) # ( !\lulu|l1|l_arr[1][8]~q\ & ( \lulu|l1|l_arr[0][9]~q\ 
-- & ( (\lulu|l1|l_arr[1][9]~DUPLICATE_q\ & (!\lulu|l1|l_arr[0][8]~q\ & !\lulu|l1|LessThan6~5_combout\)) ) ) ) # ( \lulu|l1|l_arr[1][8]~q\ & ( !\lulu|l1|l_arr[0][9]~q\ & ( (!\lulu|l1|l_arr[1][9]~DUPLICATE_q\ & ((!\lulu|l1|l_arr[0][8]~q\) # 
-- (!\lulu|l1|LessThan6~5_combout\))) ) ) ) # ( !\lulu|l1|l_arr[1][8]~q\ & ( !\lulu|l1|l_arr[0][9]~q\ & ( (!\lulu|l1|l_arr[1][9]~DUPLICATE_q\ & (!\lulu|l1|l_arr[0][8]~q\ & !\lulu|l1|LessThan6~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101010101010000001010000000000000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_l_arr[1][9]~DUPLICATE_q\,
	datac => \lulu|l1|ALT_INV_l_arr[0][8]~q\,
	datad => \lulu|l1|ALT_INV_LessThan6~5_combout\,
	datae => \lulu|l1|ALT_INV_l_arr[1][8]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[0][9]~q\,
	combout => \lulu|l1|LessThan6~6_combout\);

-- Location: LABCELL_X83_Y6_N39
\lulu|l1|LessThan6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan6~7_combout\ = ( \lulu|l1|LessThan6~6_combout\ ) # ( !\lulu|l1|LessThan6~6_combout\ & ( \lulu|l1|LessThan6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l1|ALT_INV_LessThan6~0_combout\,
	dataf => \lulu|l1|ALT_INV_LessThan6~6_combout\,
	combout => \lulu|l1|LessThan6~7_combout\);

-- Location: LABCELL_X83_Y6_N48
\lulu|l1|temp_max~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_max~1_combout\ = ( \lulu|l1|l_arr[0][8]~q\ & ( (!\lulu|l1|LessThan6~7_combout\) # (\lulu|l1|l_arr[1][8]~q\) ) ) # ( !\lulu|l1|l_arr[0][8]~q\ & ( (\lulu|l1|LessThan6~7_combout\ & \lulu|l1|l_arr[1][8]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datad => \lulu|l1|ALT_INV_l_arr[1][8]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[0][8]~q\,
	combout => \lulu|l1|temp_max~1_combout\);

-- Location: MLABCELL_X84_Y6_N18
\lulu|l1|l_arr[2][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|l_arr[2][8]~feeder_combout\ = ( \lulu|l1|temp_min~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_temp_min~12_combout\,
	combout => \lulu|l1|l_arr[2][8]~feeder_combout\);

-- Location: FF_X84_Y6_N19
\lulu|l1|l_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|l_arr[2][8]~feeder_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[2][8]~q\);

-- Location: FF_X82_Y6_N55
\lulu|l1|l_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~19_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[1][7]~q\);

-- Location: FF_X81_Y6_N14
\lulu|l1|l_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_min~19_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[2][7]~q\);

-- Location: FF_X82_Y6_N28
\lulu|l1|l_arr[1][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|l_arr[1][6]~feeder_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[1][6]~DUPLICATE_q\);

-- Location: FF_X81_Y6_N35
\lulu|l1|l_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_min~18_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[2][6]~q\);

-- Location: MLABCELL_X82_Y6_N36
\lulu|l1|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan5~0_combout\ = ( !\lulu|l1|l_arr[0][3]~q\ & ( (!\lulu|l1|l_arr[0][0]~q\ & (!\lulu|l1|l_arr[0][1]~q\ & !\lulu|l1|l_arr[0][2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l1|ALT_INV_l_arr[0][0]~q\,
	datac => \lulu|l1|ALT_INV_l_arr[0][1]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[0][2]~DUPLICATE_q\,
	dataf => \lulu|l1|ALT_INV_l_arr[0][3]~q\,
	combout => \lulu|l1|LessThan5~0_combout\);

-- Location: MLABCELL_X82_Y6_N9
\lulu|l1|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan5~1_combout\ = ( !\lulu|l1|l_arr[0][7]~q\ & ( (!\lulu|l1|l_arr[0][9]~q\ & (!\lulu|l1|l_arr[0][8]~q\ & !\lulu|l1|l_arr[0][6]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_l_arr[0][9]~q\,
	datac => \lulu|l1|ALT_INV_l_arr[0][8]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[0][6]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[0][7]~q\,
	combout => \lulu|l1|LessThan5~1_combout\);

-- Location: MLABCELL_X82_Y6_N6
\lulu|l1|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan5~2_combout\ = ( \lulu|l1|LessThan5~1_combout\ & ( ((!\lulu|l1|LessThan5~0_combout\) # (\lulu|l1|l_arr[0][5]~q\)) # (\lulu|l1|l_arr[0][4]~q\) ) ) # ( !\lulu|l1|LessThan5~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l1|ALT_INV_l_arr[0][4]~q\,
	datac => \lulu|l1|ALT_INV_LessThan5~0_combout\,
	datad => \lulu|l1|ALT_INV_l_arr[0][5]~q\,
	dataf => \lulu|l1|ALT_INV_LessThan5~1_combout\,
	combout => \lulu|l1|LessThan5~2_combout\);

-- Location: FF_X81_Y6_N50
\lulu|l1|l_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_min~17_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[2][5]~q\);

-- Location: FF_X81_Y6_N47
\lulu|l1|l_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_min~16_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[2][4]~q\);

-- Location: FF_X81_Y6_N17
\lulu|l1|l_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_min~15_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[2][3]~q\);

-- Location: FF_X82_Y6_N22
\lulu|l1|l_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~14_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[0][2]~q\);

-- Location: FF_X81_Y6_N44
\lulu|l1|l_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_min~14_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[2][2]~q\);

-- Location: FF_X81_Y6_N32
\lulu|l1|l_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_min~13_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[2][1]~q\);

-- Location: FF_X85_Y6_N4
\lulu|l1|l_arr[1][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|l_arr[1][0]~feeder_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[1][0]~DUPLICATE_q\);

-- Location: FF_X85_Y6_N28
\lulu|l1|l_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|temp_min~10_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_arr[2][0]~q\);

-- Location: LABCELL_X83_Y6_N0
\lulu|l1|LessThan7~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan7~42_cout\ = CARRY(( \lulu|l1|l_arr[2][0]~q\ ) + ( (!\lulu|l1|LessThan6~7_combout\ & ((!\lulu|l1|LessThan5~2_combout\) # ((!\lulu|l1|l_arr[0][0]~q\)))) # (\lulu|l1|LessThan6~7_combout\ & (((!\lulu|l1|l_arr[1][0]~DUPLICATE_q\)))) ) + ( 
-- !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan5~2_combout\,
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[1][0]~DUPLICATE_q\,
	datad => \lulu|l1|ALT_INV_l_arr[2][0]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[0][0]~q\,
	cin => GND,
	cout => \lulu|l1|LessThan7~42_cout\);

-- Location: LABCELL_X83_Y6_N3
\lulu|l1|LessThan7~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan7~38_cout\ = CARRY(( \lulu|l1|l_arr[2][1]~q\ ) + ( (!\lulu|l1|LessThan6~7_combout\ & ((!\lulu|l1|LessThan5~2_combout\) # ((!\lulu|l1|l_arr[0][1]~q\)))) # (\lulu|l1|LessThan6~7_combout\ & (((!\lulu|l1|l_arr[1][1]~q\)))) ) + ( 
-- \lulu|l1|LessThan7~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan5~2_combout\,
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[1][1]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[2][1]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[0][1]~q\,
	cin => \lulu|l1|LessThan7~42_cout\,
	cout => \lulu|l1|LessThan7~38_cout\);

-- Location: LABCELL_X83_Y6_N6
\lulu|l1|LessThan7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan7~34_cout\ = CARRY(( (!\lulu|l1|LessThan6~7_combout\ & ((!\lulu|l1|LessThan5~2_combout\) # ((!\lulu|l1|l_arr[0][2]~q\)))) # (\lulu|l1|LessThan6~7_combout\ & (((!\lulu|l1|l_arr[1][2]~q\)))) ) + ( \lulu|l1|l_arr[2][2]~q\ ) + ( 
-- \lulu|l1|LessThan7~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan5~2_combout\,
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[1][2]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[0][2]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[2][2]~q\,
	cin => \lulu|l1|LessThan7~38_cout\,
	cout => \lulu|l1|LessThan7~34_cout\);

-- Location: LABCELL_X83_Y6_N9
\lulu|l1|LessThan7~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan7~30_cout\ = CARRY(( (!\lulu|l1|LessThan6~7_combout\ & ((!\lulu|l1|LessThan5~2_combout\) # ((!\lulu|l1|l_arr[0][3]~q\)))) # (\lulu|l1|LessThan6~7_combout\ & (((!\lulu|l1|l_arr[1][3]~q\)))) ) + ( \lulu|l1|l_arr[2][3]~q\ ) + ( 
-- \lulu|l1|LessThan7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan5~2_combout\,
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[1][3]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[0][3]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[2][3]~q\,
	cin => \lulu|l1|LessThan7~34_cout\,
	cout => \lulu|l1|LessThan7~30_cout\);

-- Location: LABCELL_X83_Y6_N12
\lulu|l1|LessThan7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan7~26_cout\ = CARRY(( \lulu|l1|l_arr[2][4]~q\ ) + ( (!\lulu|l1|LessThan6~7_combout\ & ((!\lulu|l1|LessThan5~2_combout\) # ((!\lulu|l1|l_arr[0][4]~q\)))) # (\lulu|l1|LessThan6~7_combout\ & (((!\lulu|l1|l_arr[1][4]~q\)))) ) + ( 
-- \lulu|l1|LessThan7~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan5~2_combout\,
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[1][4]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[2][4]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[0][4]~q\,
	cin => \lulu|l1|LessThan7~30_cout\,
	cout => \lulu|l1|LessThan7~26_cout\);

-- Location: LABCELL_X83_Y6_N15
\lulu|l1|LessThan7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan7~22_cout\ = CARRY(( (!\lulu|l1|LessThan6~7_combout\ & ((!\lulu|l1|LessThan5~2_combout\) # ((!\lulu|l1|l_arr[0][5]~q\)))) # (\lulu|l1|LessThan6~7_combout\ & (((!\lulu|l1|l_arr[1][5]~q\)))) ) + ( \lulu|l1|l_arr[2][5]~q\ ) + ( 
-- \lulu|l1|LessThan7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan5~2_combout\,
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[1][5]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[0][5]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[2][5]~q\,
	cin => \lulu|l1|LessThan7~26_cout\,
	cout => \lulu|l1|LessThan7~22_cout\);

-- Location: LABCELL_X83_Y6_N18
\lulu|l1|LessThan7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan7~18_cout\ = CARRY(( (!\lulu|l1|LessThan6~6_combout\ & ((!\lulu|l1|LessThan6~0_combout\ & ((!\lulu|l1|l_arr[0][6]~q\))) # (\lulu|l1|LessThan6~0_combout\ & (!\lulu|l1|l_arr[1][6]~DUPLICATE_q\)))) # (\lulu|l1|LessThan6~6_combout\ & 
-- (((!\lulu|l1|l_arr[1][6]~DUPLICATE_q\)))) ) + ( \lulu|l1|l_arr[2][6]~q\ ) + ( \lulu|l1|LessThan7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111100001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|l1|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[1][6]~DUPLICATE_q\,
	datad => \lulu|l1|ALT_INV_l_arr[0][6]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[2][6]~q\,
	cin => \lulu|l1|LessThan7~22_cout\,
	cout => \lulu|l1|LessThan7~18_cout\);

-- Location: LABCELL_X83_Y6_N21
\lulu|l1|LessThan7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan7~14_cout\ = CARRY(( \lulu|l1|l_arr[2][7]~q\ ) + ( (!\lulu|l1|LessThan6~6_combout\ & ((!\lulu|l1|LessThan6~0_combout\ & ((!\lulu|l1|l_arr[0][7]~q\))) # (\lulu|l1|LessThan6~0_combout\ & (!\lulu|l1|l_arr[1][7]~q\)))) # 
-- (\lulu|l1|LessThan6~6_combout\ & (((!\lulu|l1|l_arr[1][7]~q\)))) ) + ( \lulu|l1|LessThan7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001111000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|l1|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[1][7]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[2][7]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[0][7]~q\,
	cin => \lulu|l1|LessThan7~18_cout\,
	cout => \lulu|l1|LessThan7~14_cout\);

-- Location: LABCELL_X83_Y6_N24
\lulu|l1|LessThan7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan7~10_cout\ = CARRY(( !\lulu|l1|temp_max~1_combout\ ) + ( \lulu|l1|l_arr[2][8]~q\ ) + ( \lulu|l1|LessThan7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l1|ALT_INV_temp_max~1_combout\,
	dataf => \lulu|l1|ALT_INV_l_arr[2][8]~q\,
	cin => \lulu|l1|LessThan7~14_cout\,
	cout => \lulu|l1|LessThan7~10_cout\);

-- Location: LABCELL_X83_Y6_N27
\lulu|l1|LessThan7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan7~6_cout\ = CARRY(( \lulu|l1|l_arr[2][9]~q\ ) + ( (!\lulu|l1|l_arr[0][9]~q\ & !\lulu|l1|l_arr[1][9]~q\) ) + ( \lulu|l1|LessThan7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_l_arr[0][9]~q\,
	datac => \lulu|l1|ALT_INV_l_arr[1][9]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[2][9]~q\,
	cin => \lulu|l1|LessThan7~10_cout\,
	cout => \lulu|l1|LessThan7~6_cout\);

-- Location: LABCELL_X83_Y6_N30
\lulu|l1|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|LessThan7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \lulu|l1|LessThan7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \lulu|l1|LessThan7~6_cout\,
	sumout => \lulu|l1|LessThan7~1_sumout\);

-- Location: LABCELL_X83_Y6_N42
\lulu|l1|temp_max~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_max~10_combout\ = ( \lulu|l1|l_arr[2][9]~q\ & ( (!\lulu|l1|LessThan7~1_sumout\) # ((\lulu|l1|l_arr[1][9]~DUPLICATE_q\) # (\lulu|l1|l_arr[0][9]~q\)) ) ) # ( !\lulu|l1|l_arr[2][9]~q\ & ( (\lulu|l1|LessThan7~1_sumout\ & 
-- ((\lulu|l1|l_arr[1][9]~DUPLICATE_q\) # (\lulu|l1|l_arr[0][9]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l1|ALT_INV_LessThan7~1_sumout\,
	datac => \lulu|l1|ALT_INV_l_arr[0][9]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[1][9]~DUPLICATE_q\,
	dataf => \lulu|l1|ALT_INV_l_arr[2][9]~q\,
	combout => \lulu|l1|temp_max~10_combout\);

-- Location: FF_X83_Y6_N44
\lulu|l1|l_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_max~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_out\(9));

-- Location: LABCELL_X79_Y8_N42
\lulu|u1|sig_arr[2][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|sig_arr[2][9]~feeder_combout\ = ( \lulu|l1|l_out\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_l_out\(9),
	combout => \lulu|u1|sig_arr[2][9]~feeder_combout\);

-- Location: FF_X79_Y8_N43
\lulu|u1|sig_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|sig_arr[2][9]~feeder_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[2][9]~q\);

-- Location: FF_X83_Y8_N40
\lulu|u1|sig_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(9),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[1][9]~q\);

-- Location: FF_X83_Y8_N44
\lulu|u1|sig_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(9),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[0][9]~q\);

-- Location: LABCELL_X83_Y6_N45
\lulu|l1|temp_max~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_max~2_combout\ = ( \lulu|l1|temp_max~1_combout\ & ( (\lulu|l1|LessThan7~1_sumout\) # (\lulu|l1|l_arr[2][8]~q\) ) ) # ( !\lulu|l1|temp_max~1_combout\ & ( (\lulu|l1|l_arr[2][8]~q\ & !\lulu|l1|LessThan7~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_l_arr[2][8]~q\,
	datab => \lulu|l1|ALT_INV_LessThan7~1_sumout\,
	dataf => \lulu|l1|ALT_INV_temp_max~1_combout\,
	combout => \lulu|l1|temp_max~2_combout\);

-- Location: FF_X83_Y6_N46
\lulu|l1|l_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_max~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_out\(8));

-- Location: LABCELL_X83_Y8_N36
\lulu|u1|sig_arr[1][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|sig_arr[1][8]~feeder_combout\ = ( \lulu|l1|l_out\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_l_out\(8),
	combout => \lulu|u1|sig_arr[1][8]~feeder_combout\);

-- Location: FF_X83_Y8_N38
\lulu|u1|sig_arr[1][8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|sig_arr[1][8]~feeder_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[1][8]~DUPLICATE_q\);

-- Location: FF_X83_Y8_N41
\lulu|u1|sig_arr[1][9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(9),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[1][9]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y8_N0
\lulu|u1|sig_arr[0][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|sig_arr[0][8]~feeder_combout\ = ( \lulu|l1|l_out\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_l_out\(8),
	combout => \lulu|u1|sig_arr[0][8]~feeder_combout\);

-- Location: FF_X84_Y8_N2
\lulu|u1|sig_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|sig_arr[0][8]~feeder_combout\,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[0][8]~q\);

-- Location: MLABCELL_X82_Y6_N3
\lulu|l1|temp_max~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_max~3_combout\ = ( \lulu|l1|l_arr[1][4]~q\ & ( (!\lulu|l1|LessThan7~1_sumout\ & (((\lulu|l1|l_arr[2][4]~q\)))) # (\lulu|l1|LessThan7~1_sumout\ & (((\lulu|l1|l_arr[0][4]~q\)) # (\lulu|l1|LessThan6~7_combout\))) ) ) # ( 
-- !\lulu|l1|l_arr[1][4]~q\ & ( (!\lulu|l1|LessThan7~1_sumout\ & (((\lulu|l1|l_arr[2][4]~q\)))) # (\lulu|l1|LessThan7~1_sumout\ & (!\lulu|l1|LessThan6~7_combout\ & (\lulu|l1|l_arr[0][4]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan7~1_sumout\,
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[0][4]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[2][4]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[1][4]~q\,
	combout => \lulu|l1|temp_max~3_combout\);

-- Location: FF_X82_Y6_N4
\lulu|l1|l_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_max~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_out\(4));

-- Location: FF_X83_Y8_N29
\lulu|u1|sig_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(4),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[0][4]~q\);

-- Location: FF_X83_Y8_N22
\lulu|u1|sig_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(4),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[1][4]~q\);

-- Location: LABCELL_X83_Y6_N51
\lulu|l1|temp_max~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_max~8_combout\ = ( \lulu|l1|l_arr[2][2]~q\ & ( (!\lulu|l1|LessThan7~1_sumout\) # ((!\lulu|l1|LessThan6~7_combout\ & ((\lulu|l1|l_arr[0][2]~q\))) # (\lulu|l1|LessThan6~7_combout\ & (\lulu|l1|l_arr[1][2]~q\))) ) ) # ( !\lulu|l1|l_arr[2][2]~q\ 
-- & ( (\lulu|l1|LessThan7~1_sumout\ & ((!\lulu|l1|LessThan6~7_combout\ & ((\lulu|l1|l_arr[0][2]~q\))) # (\lulu|l1|LessThan6~7_combout\ & (\lulu|l1|l_arr[1][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000010000110111110001111111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_l_arr[1][2]~q\,
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l1|ALT_INV_LessThan7~1_sumout\,
	datad => \lulu|l1|ALT_INV_l_arr[0][2]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[2][2]~q\,
	combout => \lulu|l1|temp_max~8_combout\);

-- Location: FF_X83_Y6_N52
\lulu|l1|l_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_max~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_out\(2));

-- Location: FF_X83_Y8_N47
\lulu|u1|sig_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(2),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[0][2]~q\);

-- Location: FF_X83_Y8_N7
\lulu|u1|sig_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(2),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[1][2]~q\);

-- Location: MLABCELL_X82_Y6_N0
\lulu|l1|temp_max~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_max~7_combout\ = ( \lulu|l1|l_arr[0][3]~q\ & ( (!\lulu|l1|LessThan7~1_sumout\ & (((\lulu|l1|l_arr[2][3]~q\)))) # (\lulu|l1|LessThan7~1_sumout\ & ((!\lulu|l1|LessThan6~7_combout\) # ((\lulu|l1|l_arr[1][3]~q\)))) ) ) # ( 
-- !\lulu|l1|l_arr[0][3]~q\ & ( (!\lulu|l1|LessThan7~1_sumout\ & (((\lulu|l1|l_arr[2][3]~q\)))) # (\lulu|l1|LessThan7~1_sumout\ & (\lulu|l1|LessThan6~7_combout\ & ((\lulu|l1|l_arr[1][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan7~1_sumout\,
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[2][3]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[1][3]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[0][3]~q\,
	combout => \lulu|l1|temp_max~7_combout\);

-- Location: FF_X82_Y6_N1
\lulu|l1|l_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_max~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_out\(3));

-- Location: FF_X83_Y8_N14
\lulu|u1|sig_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(3),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[1][3]~q\);

-- Location: LABCELL_X83_Y6_N36
\lulu|l1|temp_max~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_max~0_combout\ = ( \lulu|l1|LessThan7~1_sumout\ & ( (!\lulu|l1|LessThan6~7_combout\ & (\lulu|l1|l_arr[0][0]~q\)) # (\lulu|l1|LessThan6~7_combout\ & ((\lulu|l1|l_arr[1][0]~DUPLICATE_q\))) ) ) # ( !\lulu|l1|LessThan7~1_sumout\ & ( 
-- \lulu|l1|l_arr[2][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_l_arr[2][0]~q\,
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[0][0]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[1][0]~DUPLICATE_q\,
	dataf => \lulu|l1|ALT_INV_LessThan7~1_sumout\,
	combout => \lulu|l1|temp_max~0_combout\);

-- Location: FF_X83_Y6_N37
\lulu|l1|l_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_max~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_out\(0));

-- Location: FF_X83_Y8_N32
\lulu|u1|sig_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(0),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[1][0]~q\);

-- Location: MLABCELL_X82_Y6_N51
\lulu|l1|temp_max~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_max~9_combout\ = ( \lulu|l1|l_arr[2][1]~q\ & ( (!\lulu|l1|LessThan7~1_sumout\) # ((!\lulu|l1|LessThan6~7_combout\ & ((\lulu|l1|l_arr[0][1]~q\))) # (\lulu|l1|LessThan6~7_combout\ & (\lulu|l1|l_arr[1][1]~q\))) ) ) # ( !\lulu|l1|l_arr[2][1]~q\ 
-- & ( (\lulu|l1|LessThan7~1_sumout\ & ((!\lulu|l1|LessThan6~7_combout\ & ((\lulu|l1|l_arr[0][1]~q\))) # (\lulu|l1|LessThan6~7_combout\ & (\lulu|l1|l_arr[1][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan7~1_sumout\,
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[1][1]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[0][1]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[2][1]~q\,
	combout => \lulu|l1|temp_max~9_combout\);

-- Location: FF_X82_Y6_N52
\lulu|l1|l_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_max~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_out\(1));

-- Location: FF_X83_Y8_N5
\lulu|u1|sig_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(1),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[0][1]~q\);

-- Location: FF_X83_Y8_N2
\lulu|u1|sig_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(0),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[0][0]~q\);

-- Location: FF_X83_Y8_N53
\lulu|u1|sig_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(1),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[1][1]~q\);

-- Location: LABCELL_X83_Y8_N45
\lulu|u1|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan2~1_combout\ = ( \lulu|u1|sig_arr[0][0]~q\ & ( \lulu|u1|sig_arr[1][1]~q\ & ( !\lulu|u1|sig_arr[0][1]~q\ ) ) ) # ( !\lulu|u1|sig_arr[0][0]~q\ & ( \lulu|u1|sig_arr[1][1]~q\ & ( (!\lulu|u1|sig_arr[0][1]~q\) # (\lulu|u1|sig_arr[1][0]~q\) ) ) 
-- ) # ( !\lulu|u1|sig_arr[0][0]~q\ & ( !\lulu|u1|sig_arr[1][1]~q\ & ( (\lulu|u1|sig_arr[1][0]~q\ & !\lulu|u1|sig_arr[0][1]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000011111111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|u1|ALT_INV_sig_arr[1][0]~q\,
	datad => \lulu|u1|ALT_INV_sig_arr[0][1]~q\,
	datae => \lulu|u1|ALT_INV_sig_arr[0][0]~q\,
	dataf => \lulu|u1|ALT_INV_sig_arr[1][1]~q\,
	combout => \lulu|u1|LessThan2~1_combout\);

-- Location: FF_X80_Y7_N13
\lulu|u1|sig_arr[0][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(3),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[0][3]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N54
\lulu|u1|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan2~2_combout\ = ( \lulu|u1|LessThan2~1_combout\ & ( \lulu|u1|sig_arr[0][3]~DUPLICATE_q\ & ( (\lulu|u1|sig_arr[1][3]~q\ & ((!\lulu|u1|sig_arr[0][2]~q\) # (\lulu|u1|sig_arr[1][2]~q\))) ) ) ) # ( !\lulu|u1|LessThan2~1_combout\ & ( 
-- \lulu|u1|sig_arr[0][3]~DUPLICATE_q\ & ( (!\lulu|u1|sig_arr[0][2]~q\ & (\lulu|u1|sig_arr[1][2]~q\ & \lulu|u1|sig_arr[1][3]~q\)) ) ) ) # ( \lulu|u1|LessThan2~1_combout\ & ( !\lulu|u1|sig_arr[0][3]~DUPLICATE_q\ & ( (!\lulu|u1|sig_arr[0][2]~q\) # 
-- ((\lulu|u1|sig_arr[1][3]~q\) # (\lulu|u1|sig_arr[1][2]~q\)) ) ) ) # ( !\lulu|u1|LessThan2~1_combout\ & ( !\lulu|u1|sig_arr[0][3]~DUPLICATE_q\ & ( ((!\lulu|u1|sig_arr[0][2]~q\ & \lulu|u1|sig_arr[1][2]~q\)) # (\lulu|u1|sig_arr[1][3]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111110011111111111100000000000011000000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u1|ALT_INV_sig_arr[0][2]~q\,
	datac => \lulu|u1|ALT_INV_sig_arr[1][2]~q\,
	datad => \lulu|u1|ALT_INV_sig_arr[1][3]~q\,
	datae => \lulu|u1|ALT_INV_LessThan2~1_combout\,
	dataf => \lulu|u1|ALT_INV_sig_arr[0][3]~DUPLICATE_q\,
	combout => \lulu|u1|LessThan2~2_combout\);

-- Location: MLABCELL_X82_Y6_N45
\lulu|l1|temp_max~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_max~6_combout\ = ( \lulu|l1|l_arr[1][5]~q\ & ( (!\lulu|l1|LessThan7~1_sumout\ & (((\lulu|l1|l_arr[2][5]~q\)))) # (\lulu|l1|LessThan7~1_sumout\ & (((\lulu|l1|l_arr[0][5]~q\)) # (\lulu|l1|LessThan6~7_combout\))) ) ) # ( 
-- !\lulu|l1|l_arr[1][5]~q\ & ( (!\lulu|l1|LessThan7~1_sumout\ & (((\lulu|l1|l_arr[2][5]~q\)))) # (\lulu|l1|LessThan7~1_sumout\ & (!\lulu|l1|LessThan6~7_combout\ & (\lulu|l1|l_arr[0][5]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan7~1_sumout\,
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[0][5]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[2][5]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[1][5]~q\,
	combout => \lulu|l1|temp_max~6_combout\);

-- Location: FF_X82_Y6_N47
\lulu|l1|l_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_max~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_out\(5));

-- Location: MLABCELL_X84_Y8_N27
\lulu|u1|sig_arr[1][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|sig_arr[1][5]~feeder_combout\ = ( \lulu|l1|l_out\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_l_out\(5),
	combout => \lulu|u1|sig_arr[1][5]~feeder_combout\);

-- Location: FF_X84_Y8_N29
\lulu|u1|sig_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|sig_arr[1][5]~feeder_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[1][5]~q\);

-- Location: MLABCELL_X82_Y6_N48
\lulu|l1|temp_max~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_max~5_combout\ = ( \lulu|l1|l_arr[0][6]~q\ & ( (!\lulu|l1|LessThan7~1_sumout\ & (((\lulu|l1|l_arr[2][6]~q\)))) # (\lulu|l1|LessThan7~1_sumout\ & ((!\lulu|l1|LessThan6~7_combout\) # ((\lulu|l1|l_arr[1][6]~q\)))) ) ) # ( 
-- !\lulu|l1|l_arr[0][6]~q\ & ( (!\lulu|l1|LessThan7~1_sumout\ & (((\lulu|l1|l_arr[2][6]~q\)))) # (\lulu|l1|LessThan7~1_sumout\ & (\lulu|l1|LessThan6~7_combout\ & ((\lulu|l1|l_arr[1][6]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan7~1_sumout\,
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[2][6]~q\,
	datad => \lulu|l1|ALT_INV_l_arr[1][6]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[0][6]~q\,
	combout => \lulu|l1|temp_max~5_combout\);

-- Location: FF_X82_Y6_N49
\lulu|l1|l_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_max~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_out\(6));

-- Location: MLABCELL_X84_Y8_N57
\lulu|u1|sig_arr[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|sig_arr[0][6]~feeder_combout\ = ( \lulu|l1|l_out\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_l_out\(6),
	combout => \lulu|u1|sig_arr[0][6]~feeder_combout\);

-- Location: FF_X84_Y8_N59
\lulu|u1|sig_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|sig_arr[0][6]~feeder_combout\,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[0][6]~q\);

-- Location: MLABCELL_X84_Y8_N18
\lulu|u1|sig_arr[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|sig_arr[0][5]~feeder_combout\ = ( \lulu|l1|l_out\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_l_out\(5),
	combout => \lulu|u1|sig_arr[0][5]~feeder_combout\);

-- Location: FF_X84_Y8_N20
\lulu|u1|sig_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|sig_arr[0][5]~feeder_combout\,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[0][5]~q\);

-- Location: MLABCELL_X84_Y8_N15
\lulu|u1|sig_arr[1][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|sig_arr[1][6]~feeder_combout\ = ( \lulu|l1|l_out\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_l_out\(6),
	combout => \lulu|u1|sig_arr[1][6]~feeder_combout\);

-- Location: FF_X84_Y8_N17
\lulu|u1|sig_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|sig_arr[1][6]~feeder_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[1][6]~q\);

-- Location: MLABCELL_X82_Y6_N42
\lulu|l1|temp_max~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l1|temp_max~4_combout\ = ( \lulu|l1|l_arr[0][7]~q\ & ( (!\lulu|l1|LessThan7~1_sumout\ & (((\lulu|l1|l_arr[2][7]~q\)))) # (\lulu|l1|LessThan7~1_sumout\ & ((!\lulu|l1|LessThan6~7_combout\) # ((\lulu|l1|l_arr[1][7]~DUPLICATE_q\)))) ) ) # ( 
-- !\lulu|l1|l_arr[0][7]~q\ & ( (!\lulu|l1|LessThan7~1_sumout\ & (((\lulu|l1|l_arr[2][7]~q\)))) # (\lulu|l1|LessThan7~1_sumout\ & (\lulu|l1|LessThan6~7_combout\ & (\lulu|l1|l_arr[1][7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l1|ALT_INV_LessThan7~1_sumout\,
	datab => \lulu|l1|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l1|ALT_INV_l_arr[1][7]~DUPLICATE_q\,
	datad => \lulu|l1|ALT_INV_l_arr[2][7]~q\,
	dataf => \lulu|l1|ALT_INV_l_arr[0][7]~q\,
	combout => \lulu|l1|temp_max~4_combout\);

-- Location: FF_X82_Y6_N43
\lulu|l1|l_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l1|temp_max~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l1|l_out\(7));

-- Location: LABCELL_X83_Y8_N33
\lulu|u1|sig_arr[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|sig_arr[1][7]~feeder_combout\ = ( \lulu|l1|l_out\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_l_out\(7),
	combout => \lulu|u1|sig_arr[1][7]~feeder_combout\);

-- Location: FF_X83_Y8_N34
\lulu|u1|sig_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|sig_arr[1][7]~feeder_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[1][7]~q\);

-- Location: LABCELL_X85_Y8_N51
\lulu|u1|sig_arr[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|sig_arr[0][7]~feeder_combout\ = ( \lulu|l1|l_out\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_l_out\(7),
	combout => \lulu|u1|sig_arr[0][7]~feeder_combout\);

-- Location: FF_X85_Y8_N53
\lulu|u1|sig_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|sig_arr[0][7]~feeder_combout\,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[0][7]~q\);

-- Location: MLABCELL_X84_Y8_N48
\lulu|u1|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan2~3_combout\ = ( \lulu|u1|sig_arr[1][7]~q\ & ( \lulu|u1|sig_arr[0][7]~q\ & ( (!\lulu|u1|sig_arr[0][6]~q\ & (((\lulu|u1|sig_arr[1][5]~q\ & !\lulu|u1|sig_arr[0][5]~q\)) # (\lulu|u1|sig_arr[1][6]~q\))) # (\lulu|u1|sig_arr[0][6]~q\ & 
-- (\lulu|u1|sig_arr[1][5]~q\ & (!\lulu|u1|sig_arr[0][5]~q\ & \lulu|u1|sig_arr[1][6]~q\))) ) ) ) # ( \lulu|u1|sig_arr[1][7]~q\ & ( !\lulu|u1|sig_arr[0][7]~q\ ) ) # ( !\lulu|u1|sig_arr[1][7]~q\ & ( !\lulu|u1|sig_arr[0][7]~q\ & ( (!\lulu|u1|sig_arr[0][6]~q\ & 
-- (((\lulu|u1|sig_arr[1][5]~q\ & !\lulu|u1|sig_arr[0][5]~q\)) # (\lulu|u1|sig_arr[1][6]~q\))) # (\lulu|u1|sig_arr[0][6]~q\ & (\lulu|u1|sig_arr[1][5]~q\ & (!\lulu|u1|sig_arr[0][5]~q\ & \lulu|u1|sig_arr[1][6]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011011100111111111111111100000000000000000100000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_sig_arr[1][5]~q\,
	datab => \lulu|u1|ALT_INV_sig_arr[0][6]~q\,
	datac => \lulu|u1|ALT_INV_sig_arr[0][5]~q\,
	datad => \lulu|u1|ALT_INV_sig_arr[1][6]~q\,
	datae => \lulu|u1|ALT_INV_sig_arr[1][7]~q\,
	dataf => \lulu|u1|ALT_INV_sig_arr[0][7]~q\,
	combout => \lulu|u1|LessThan2~3_combout\);

-- Location: MLABCELL_X84_Y8_N30
\lulu|u1|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan2~0_combout\ = ( \lulu|u1|sig_arr[1][7]~q\ & ( \lulu|u1|sig_arr[0][7]~q\ & ( (!\lulu|u1|sig_arr[1][5]~q\ & (!\lulu|u1|sig_arr[0][5]~q\ & (!\lulu|u1|sig_arr[0][6]~q\ $ (\lulu|u1|sig_arr[1][6]~q\)))) # (\lulu|u1|sig_arr[1][5]~q\ & 
-- (\lulu|u1|sig_arr[0][5]~q\ & (!\lulu|u1|sig_arr[0][6]~q\ $ (\lulu|u1|sig_arr[1][6]~q\)))) ) ) ) # ( !\lulu|u1|sig_arr[1][7]~q\ & ( !\lulu|u1|sig_arr[0][7]~q\ & ( (!\lulu|u1|sig_arr[1][5]~q\ & (!\lulu|u1|sig_arr[0][5]~q\ & (!\lulu|u1|sig_arr[0][6]~q\ $ 
-- (\lulu|u1|sig_arr[1][6]~q\)))) # (\lulu|u1|sig_arr[1][5]~q\ & (\lulu|u1|sig_arr[0][5]~q\ & (!\lulu|u1|sig_arr[0][6]~q\ $ (\lulu|u1|sig_arr[1][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_sig_arr[1][5]~q\,
	datab => \lulu|u1|ALT_INV_sig_arr[0][6]~q\,
	datac => \lulu|u1|ALT_INV_sig_arr[0][5]~q\,
	datad => \lulu|u1|ALT_INV_sig_arr[1][6]~q\,
	datae => \lulu|u1|ALT_INV_sig_arr[1][7]~q\,
	dataf => \lulu|u1|ALT_INV_sig_arr[0][7]~q\,
	combout => \lulu|u1|LessThan2~0_combout\);

-- Location: LABCELL_X83_Y8_N18
\lulu|u1|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan2~4_combout\ = ( !\lulu|u1|LessThan2~3_combout\ & ( \lulu|u1|LessThan2~0_combout\ & ( (!\lulu|u1|sig_arr[0][4]~q\ & (!\lulu|u1|sig_arr[1][4]~q\ & !\lulu|u1|LessThan2~2_combout\)) # (\lulu|u1|sig_arr[0][4]~q\ & 
-- ((!\lulu|u1|sig_arr[1][4]~q\) # (!\lulu|u1|LessThan2~2_combout\))) ) ) ) # ( !\lulu|u1|LessThan2~3_combout\ & ( !\lulu|u1|LessThan2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011010100110101000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_sig_arr[0][4]~q\,
	datab => \lulu|u1|ALT_INV_sig_arr[1][4]~q\,
	datac => \lulu|u1|ALT_INV_LessThan2~2_combout\,
	datae => \lulu|u1|ALT_INV_LessThan2~3_combout\,
	dataf => \lulu|u1|ALT_INV_LessThan2~0_combout\,
	combout => \lulu|u1|LessThan2~4_combout\);

-- Location: LABCELL_X83_Y8_N15
\lulu|u1|LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan2~5_combout\ = ( \lulu|u1|sig_arr[0][8]~q\ & ( \lulu|u1|LessThan2~4_combout\ & ( (\lulu|u1|sig_arr[1][9]~DUPLICATE_q\ & !\lulu|u1|sig_arr[0][9]~q\) ) ) ) # ( !\lulu|u1|sig_arr[0][8]~q\ & ( \lulu|u1|LessThan2~4_combout\ & ( 
-- (!\lulu|u1|sig_arr[1][8]~DUPLICATE_q\ & (\lulu|u1|sig_arr[1][9]~DUPLICATE_q\ & !\lulu|u1|sig_arr[0][9]~q\)) # (\lulu|u1|sig_arr[1][8]~DUPLICATE_q\ & ((!\lulu|u1|sig_arr[0][9]~q\) # (\lulu|u1|sig_arr[1][9]~DUPLICATE_q\))) ) ) ) # ( 
-- \lulu|u1|sig_arr[0][8]~q\ & ( !\lulu|u1|LessThan2~4_combout\ & ( (!\lulu|u1|sig_arr[1][8]~DUPLICATE_q\ & (\lulu|u1|sig_arr[1][9]~DUPLICATE_q\ & !\lulu|u1|sig_arr[0][9]~q\)) # (\lulu|u1|sig_arr[1][8]~DUPLICATE_q\ & ((!\lulu|u1|sig_arr[0][9]~q\) # 
-- (\lulu|u1|sig_arr[1][9]~DUPLICATE_q\))) ) ) ) # ( !\lulu|u1|sig_arr[0][8]~q\ & ( !\lulu|u1|LessThan2~4_combout\ & ( (!\lulu|u1|sig_arr[0][9]~q\) # (\lulu|u1|sig_arr[1][9]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011011100010111000101110001011100010011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_sig_arr[1][8]~DUPLICATE_q\,
	datab => \lulu|u1|ALT_INV_sig_arr[1][9]~DUPLICATE_q\,
	datac => \lulu|u1|ALT_INV_sig_arr[0][9]~q\,
	datae => \lulu|u1|ALT_INV_sig_arr[0][8]~q\,
	dataf => \lulu|u1|ALT_INV_LessThan2~4_combout\,
	combout => \lulu|u1|LessThan2~5_combout\);

-- Location: LABCELL_X81_Y8_N24
\lulu|u1|temp_max~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~8_combout\ = ( \lulu|u1|sig_arr[0][9]~q\ & ( \lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[1][9]~q\ ) ) ) # ( !\lulu|u1|sig_arr[0][9]~q\ & ( \lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[1][9]~q\ ) ) ) # ( 
-- \lulu|u1|sig_arr[0][9]~q\ & ( !\lulu|u1|LessThan2~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|u1|ALT_INV_sig_arr[1][9]~q\,
	datae => \lulu|u1|ALT_INV_sig_arr[0][9]~q\,
	dataf => \lulu|u1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|u1|temp_max~8_combout\);

-- Location: LABCELL_X79_Y8_N48
\lulu|u1|temp_max~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~11_combout\ = ( \lulu|u1|sig_arr[2][9]~q\ & ( \lulu|u1|temp_max~8_combout\ ) ) # ( !\lulu|u1|sig_arr[2][9]~q\ & ( \lulu|u1|temp_max~8_combout\ ) ) # ( \lulu|u1|sig_arr[2][9]~q\ & ( !\lulu|u1|temp_max~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \lulu|u1|ALT_INV_sig_arr[2][9]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~8_combout\,
	combout => \lulu|u1|temp_max~11_combout\);

-- Location: FF_X79_Y7_N50
\lulu|u1|u_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~11_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[1][9]~q\);

-- Location: FF_X79_Y7_N35
\lulu|u1|u_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~11_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[0][9]~q\);

-- Location: LABCELL_X79_Y8_N39
\lulu|u1|u_arr[2][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|u_arr[2][9]~feeder_combout\ = ( \lulu|u1|temp_max~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|u1|ALT_INV_temp_max~11_combout\,
	combout => \lulu|u1|u_arr[2][9]~feeder_combout\);

-- Location: FF_X79_Y8_N40
\lulu|u1|u_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|u_arr[2][9]~feeder_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[2][9]~q\);

-- Location: FF_X83_Y8_N56
\lulu|u1|sig_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(8),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[2][8]~q\);

-- Location: FF_X83_Y8_N37
\lulu|u1|sig_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|sig_arr[1][8]~feeder_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[1][8]~q\);

-- Location: LABCELL_X81_Y8_N33
\lulu|u1|temp_max~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~9_combout\ = ( \lulu|u1|sig_arr[1][8]~q\ & ( \lulu|u1|LessThan2~5_combout\ ) ) # ( \lulu|u1|sig_arr[1][8]~q\ & ( !\lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[0][8]~q\ ) ) ) # ( !\lulu|u1|sig_arr[1][8]~q\ & ( 
-- !\lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[0][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|u1|ALT_INV_sig_arr[0][8]~q\,
	datae => \lulu|u1|ALT_INV_sig_arr[1][8]~q\,
	dataf => \lulu|u1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|u1|temp_max~9_combout\);

-- Location: LABCELL_X80_Y8_N45
\lulu|u1|temp_max~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~12_combout\ = ( \lulu|u1|sig_arr[2][9]~q\ & ( \lulu|u1|temp_max~9_combout\ & ( (\lulu|u1|temp_max~8_combout\) # (\lulu|u1|sig_arr[2][8]~q\) ) ) ) # ( !\lulu|u1|sig_arr[2][9]~q\ & ( \lulu|u1|temp_max~9_combout\ ) ) # ( 
-- \lulu|u1|sig_arr[2][9]~q\ & ( !\lulu|u1|temp_max~9_combout\ & ( \lulu|u1|sig_arr[2][8]~q\ ) ) ) # ( !\lulu|u1|sig_arr[2][9]~q\ & ( !\lulu|u1|temp_max~9_combout\ & ( (\lulu|u1|sig_arr[2][8]~q\ & !\lulu|u1|temp_max~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010101010101010111111111111111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_sig_arr[2][8]~q\,
	datac => \lulu|u1|ALT_INV_temp_max~8_combout\,
	datae => \lulu|u1|ALT_INV_sig_arr[2][9]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~9_combout\,
	combout => \lulu|u1|temp_max~12_combout\);

-- Location: FF_X79_Y7_N23
\lulu|u1|u_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~12_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[0][8]~q\);

-- Location: LABCELL_X81_Y8_N6
\lulu|u1|LessThan3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan3~10_combout\ = ( \lulu|u1|sig_arr[2][8]~q\ & ( \lulu|u1|temp_max~8_combout\ & ( (!\lulu|u1|temp_max~9_combout\ & \lulu|u1|sig_arr[2][9]~q\) ) ) ) # ( \lulu|u1|sig_arr[2][8]~q\ & ( !\lulu|u1|temp_max~8_combout\ & ( 
-- (!\lulu|u1|temp_max~9_combout\) # (\lulu|u1|sig_arr[2][9]~q\) ) ) ) # ( !\lulu|u1|sig_arr[2][8]~q\ & ( !\lulu|u1|temp_max~8_combout\ & ( \lulu|u1|sig_arr[2][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101011111010111100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_temp_max~9_combout\,
	datac => \lulu|u1|ALT_INV_sig_arr[2][9]~q\,
	datae => \lulu|u1|ALT_INV_sig_arr[2][8]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~8_combout\,
	combout => \lulu|u1|LessThan3~10_combout\);

-- Location: LABCELL_X81_Y8_N48
\lulu|u1|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan3~9_combout\ = ( \lulu|u1|sig_arr[2][8]~q\ & ( \lulu|u1|temp_max~9_combout\ & ( !\lulu|u1|temp_max~8_combout\ $ (\lulu|u1|sig_arr[2][9]~q\) ) ) ) # ( !\lulu|u1|sig_arr[2][8]~q\ & ( !\lulu|u1|temp_max~9_combout\ & ( 
-- !\lulu|u1|temp_max~8_combout\ $ (\lulu|u1|sig_arr[2][9]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101000000000000000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_temp_max~8_combout\,
	datac => \lulu|u1|ALT_INV_sig_arr[2][9]~q\,
	datae => \lulu|u1|ALT_INV_sig_arr[2][8]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~9_combout\,
	combout => \lulu|u1|LessThan3~9_combout\);

-- Location: FF_X80_Y7_N26
\lulu|u1|sig_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(7),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[2][7]~q\);

-- Location: LABCELL_X80_Y7_N30
\lulu|u1|temp_max~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~2_combout\ = ( \lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[1][6]~q\ ) ) # ( !\lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[0][6]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|u1|ALT_INV_sig_arr[1][6]~q\,
	datad => \lulu|u1|ALT_INV_sig_arr[0][6]~q\,
	dataf => \lulu|u1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|u1|temp_max~2_combout\);

-- Location: FF_X81_Y7_N8
\lulu|u1|sig_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(6),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[2][6]~q\);

-- Location: LABCELL_X81_Y7_N30
\lulu|u1|temp_max~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~1_combout\ = ( \lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[1][7]~q\ ) ) # ( !\lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[0][7]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u1|ALT_INV_sig_arr[0][7]~q\,
	datac => \lulu|u1|ALT_INV_sig_arr[1][7]~q\,
	dataf => \lulu|u1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|u1|temp_max~1_combout\);

-- Location: LABCELL_X80_Y7_N54
\lulu|u1|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan3~0_combout\ = ( \lulu|u1|temp_max~1_combout\ & ( (\lulu|u1|sig_arr[2][7]~q\ & (!\lulu|u1|temp_max~2_combout\ $ (\lulu|u1|sig_arr[2][6]~q\))) ) ) # ( !\lulu|u1|temp_max~1_combout\ & ( (!\lulu|u1|sig_arr[2][7]~q\ & 
-- (!\lulu|u1|temp_max~2_combout\ $ (\lulu|u1|sig_arr[2][6]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_sig_arr[2][7]~q\,
	datab => \lulu|u1|ALT_INV_temp_max~2_combout\,
	datac => \lulu|u1|ALT_INV_sig_arr[2][6]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~1_combout\,
	combout => \lulu|u1|LessThan3~0_combout\);

-- Location: LABCELL_X75_Y7_N3
\lulu|u1|sig_arr[2][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|sig_arr[2][1]~feeder_combout\ = ( \lulu|l1|l_out\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_l_out\(1),
	combout => \lulu|u1|sig_arr[2][1]~feeder_combout\);

-- Location: FF_X75_Y7_N4
\lulu|u1|sig_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|sig_arr[2][1]~feeder_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[2][1]~q\);

-- Location: LABCELL_X83_Y8_N48
\lulu|u1|temp_max~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~5_combout\ = ( \lulu|u1|sig_arr[0][1]~q\ & ( \lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[1][1]~q\ ) ) ) # ( !\lulu|u1|sig_arr[0][1]~q\ & ( \lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[1][1]~q\ ) ) ) # ( 
-- \lulu|u1|sig_arr[0][1]~q\ & ( !\lulu|u1|LessThan2~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|u1|ALT_INV_sig_arr[1][1]~q\,
	datae => \lulu|u1|ALT_INV_sig_arr[0][1]~q\,
	dataf => \lulu|u1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|u1|temp_max~5_combout\);

-- Location: FF_X80_Y7_N44
\lulu|u1|sig_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(0),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[2][0]~q\);

-- Location: LABCELL_X83_Y8_N24
\lulu|u1|temp_max~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~0_combout\ = ( \lulu|u1|sig_arr[0][0]~q\ & ( \lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[1][0]~q\ ) ) ) # ( !\lulu|u1|sig_arr[0][0]~q\ & ( \lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[1][0]~q\ ) ) ) # ( 
-- \lulu|u1|sig_arr[0][0]~q\ & ( !\lulu|u1|LessThan2~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u1|ALT_INV_sig_arr[1][0]~q\,
	datae => \lulu|u1|ALT_INV_sig_arr[0][0]~q\,
	dataf => \lulu|u1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|u1|temp_max~0_combout\);

-- Location: LABCELL_X81_Y7_N24
\lulu|u1|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan3~3_combout\ = ( \lulu|u1|sig_arr[2][0]~q\ & ( \lulu|u1|temp_max~0_combout\ & ( (\lulu|u1|sig_arr[2][1]~q\ & !\lulu|u1|temp_max~5_combout\) ) ) ) # ( !\lulu|u1|sig_arr[2][0]~q\ & ( \lulu|u1|temp_max~0_combout\ & ( 
-- (\lulu|u1|sig_arr[2][1]~q\ & !\lulu|u1|temp_max~5_combout\) ) ) ) # ( \lulu|u1|sig_arr[2][0]~q\ & ( !\lulu|u1|temp_max~0_combout\ & ( (!\lulu|u1|temp_max~5_combout\) # (\lulu|u1|sig_arr[2][1]~q\) ) ) ) # ( !\lulu|u1|sig_arr[2][0]~q\ & ( 
-- !\lulu|u1|temp_max~0_combout\ & ( (\lulu|u1|sig_arr[2][1]~q\ & !\lulu|u1|temp_max~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111100111111001100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u1|ALT_INV_sig_arr[2][1]~q\,
	datac => \lulu|u1|ALT_INV_temp_max~5_combout\,
	datae => \lulu|u1|ALT_INV_sig_arr[2][0]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~0_combout\,
	combout => \lulu|u1|LessThan3~3_combout\);

-- Location: LABCELL_X77_Y7_N33
\lulu|u1|sig_arr[2][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|sig_arr[2][5]~feeder_combout\ = ( \lulu|l1|l_out\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l1|ALT_INV_l_out\(5),
	combout => \lulu|u1|sig_arr[2][5]~feeder_combout\);

-- Location: FF_X77_Y7_N34
\lulu|u1|sig_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|sig_arr[2][5]~feeder_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[2][5]~q\);

-- Location: MLABCELL_X84_Y8_N42
\lulu|u1|temp_max~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~3_combout\ = ( \lulu|u1|sig_arr[1][5]~q\ & ( \lulu|u1|LessThan2~5_combout\ ) ) # ( \lulu|u1|sig_arr[1][5]~q\ & ( !\lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[0][5]~q\ ) ) ) # ( !\lulu|u1|sig_arr[1][5]~q\ & ( 
-- !\lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[0][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_sig_arr[0][5]~q\,
	datae => \lulu|u1|ALT_INV_sig_arr[1][5]~q\,
	dataf => \lulu|u1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|u1|temp_max~3_combout\);

-- Location: LABCELL_X81_Y7_N21
\lulu|u1|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan3~1_combout\ = ( !\lulu|u1|sig_arr[2][5]~q\ & ( \lulu|u1|temp_max~3_combout\ ) ) # ( \lulu|u1|sig_arr[2][5]~q\ & ( !\lulu|u1|temp_max~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \lulu|u1|ALT_INV_sig_arr[2][5]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~3_combout\,
	combout => \lulu|u1|LessThan3~1_combout\);

-- Location: FF_X80_Y7_N14
\lulu|u1|sig_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(3),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[0][3]~q\);

-- Location: LABCELL_X80_Y7_N24
\lulu|u1|temp_max~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~6_combout\ = ( \lulu|u1|sig_arr[0][3]~q\ & ( (!\lulu|u1|LessThan2~5_combout\) # (\lulu|u1|sig_arr[1][3]~q\) ) ) # ( !\lulu|u1|sig_arr[0][3]~q\ & ( (\lulu|u1|sig_arr[1][3]~q\ & \lulu|u1|LessThan2~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u1|ALT_INV_sig_arr[1][3]~q\,
	datac => \lulu|u1|ALT_INV_LessThan2~5_combout\,
	dataf => \lulu|u1|ALT_INV_sig_arr[0][3]~q\,
	combout => \lulu|u1|temp_max~6_combout\);

-- Location: FF_X81_Y7_N50
\lulu|u1|sig_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(2),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[2][2]~q\);

-- Location: FF_X80_Y7_N29
\lulu|u1|sig_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(3),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[2][3]~q\);

-- Location: FF_X83_Y8_N8
\lulu|u1|sig_arr[1][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(2),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[1][2]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N3
\lulu|u1|temp_max~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~7_combout\ = ( \lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[1][2]~DUPLICATE_q\ ) ) # ( !\lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[0][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u1|ALT_INV_sig_arr[0][2]~q\,
	datac => \lulu|u1|ALT_INV_sig_arr[1][2]~DUPLICATE_q\,
	dataf => \lulu|u1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|u1|temp_max~7_combout\);

-- Location: LABCELL_X80_Y7_N27
\lulu|u1|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan3~4_combout\ = ( \lulu|u1|temp_max~7_combout\ & ( (\lulu|u1|sig_arr[2][2]~q\ & (!\lulu|u1|temp_max~6_combout\ $ (\lulu|u1|sig_arr[2][3]~q\))) ) ) # ( !\lulu|u1|temp_max~7_combout\ & ( (!\lulu|u1|sig_arr[2][2]~q\ & 
-- (!\lulu|u1|temp_max~6_combout\ $ (\lulu|u1|sig_arr[2][3]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_temp_max~6_combout\,
	datac => \lulu|u1|ALT_INV_sig_arr[2][2]~q\,
	datad => \lulu|u1|ALT_INV_sig_arr[2][3]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~7_combout\,
	combout => \lulu|u1|LessThan3~4_combout\);

-- Location: LABCELL_X80_Y7_N45
\lulu|u1|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan3~5_combout\ = ( \lulu|u1|temp_max~6_combout\ & ( (!\lulu|u1|temp_max~7_combout\ & (\lulu|u1|sig_arr[2][2]~q\ & \lulu|u1|sig_arr[2][3]~q\)) ) ) # ( !\lulu|u1|temp_max~6_combout\ & ( ((!\lulu|u1|temp_max~7_combout\ & 
-- \lulu|u1|sig_arr[2][2]~q\)) # (\lulu|u1|sig_arr[2][3]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111111000010101111111100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_temp_max~7_combout\,
	datac => \lulu|u1|ALT_INV_sig_arr[2][2]~q\,
	datad => \lulu|u1|ALT_INV_sig_arr[2][3]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~6_combout\,
	combout => \lulu|u1|LessThan3~5_combout\);

-- Location: FF_X80_Y7_N5
\lulu|u1|sig_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(4),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[2][4]~q\);

-- Location: FF_X83_Y8_N23
\lulu|u1|sig_arr[1][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l1|l_out\(4),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|sig_arr[1][4]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N9
\lulu|u1|temp_max~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~4_combout\ = ( \lulu|u1|sig_arr[0][4]~q\ & ( \lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[1][4]~DUPLICATE_q\ ) ) ) # ( !\lulu|u1|sig_arr[0][4]~q\ & ( \lulu|u1|LessThan2~5_combout\ & ( \lulu|u1|sig_arr[1][4]~DUPLICATE_q\ ) ) ) # ( 
-- \lulu|u1|sig_arr[0][4]~q\ & ( !\lulu|u1|LessThan2~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_sig_arr[1][4]~DUPLICATE_q\,
	datae => \lulu|u1|ALT_INV_sig_arr[0][4]~q\,
	dataf => \lulu|u1|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|u1|temp_max~4_combout\);

-- Location: LABCELL_X80_Y7_N42
\lulu|u1|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan3~2_combout\ = ( \lulu|u1|temp_max~4_combout\ & ( !\lulu|u1|sig_arr[2][4]~q\ ) ) # ( !\lulu|u1|temp_max~4_combout\ & ( \lulu|u1|sig_arr[2][4]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|u1|ALT_INV_sig_arr[2][4]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~4_combout\,
	combout => \lulu|u1|LessThan3~2_combout\);

-- Location: LABCELL_X80_Y7_N48
\lulu|u1|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan3~6_combout\ = ( \lulu|u1|LessThan3~5_combout\ & ( !\lulu|u1|LessThan3~2_combout\ & ( (\lulu|u1|LessThan3~0_combout\ & !\lulu|u1|LessThan3~1_combout\) ) ) ) # ( !\lulu|u1|LessThan3~5_combout\ & ( !\lulu|u1|LessThan3~2_combout\ & ( 
-- (\lulu|u1|LessThan3~0_combout\ & (\lulu|u1|LessThan3~3_combout\ & (!\lulu|u1|LessThan3~1_combout\ & \lulu|u1|LessThan3~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan3~0_combout\,
	datab => \lulu|u1|ALT_INV_LessThan3~3_combout\,
	datac => \lulu|u1|ALT_INV_LessThan3~1_combout\,
	datad => \lulu|u1|ALT_INV_LessThan3~4_combout\,
	datae => \lulu|u1|ALT_INV_LessThan3~5_combout\,
	dataf => \lulu|u1|ALT_INV_LessThan3~2_combout\,
	combout => \lulu|u1|LessThan3~6_combout\);

-- Location: LABCELL_X80_Y7_N57
\lulu|u1|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan3~7_combout\ = ( \lulu|u1|temp_max~1_combout\ & ( (\lulu|u1|sig_arr[2][7]~q\ & (!\lulu|u1|temp_max~2_combout\ & \lulu|u1|sig_arr[2][6]~q\)) ) ) # ( !\lulu|u1|temp_max~1_combout\ & ( ((!\lulu|u1|temp_max~2_combout\ & 
-- \lulu|u1|sig_arr[2][6]~q\)) # (\lulu|u1|sig_arr[2][7]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111011101010101011101110100000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_sig_arr[2][7]~q\,
	datab => \lulu|u1|ALT_INV_temp_max~2_combout\,
	datad => \lulu|u1|ALT_INV_sig_arr[2][6]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~1_combout\,
	combout => \lulu|u1|LessThan3~7_combout\);

-- Location: LABCELL_X80_Y7_N15
\lulu|u1|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan3~8_combout\ = ( \lulu|u1|LessThan3~0_combout\ & ( \lulu|u1|temp_max~3_combout\ & ( (!\lulu|u1|LessThan3~7_combout\ & ((!\lulu|u1|sig_arr[2][4]~q\) # ((!\lulu|u1|sig_arr[2][5]~q\) # (\lulu|u1|temp_max~4_combout\)))) ) ) ) # ( 
-- !\lulu|u1|LessThan3~0_combout\ & ( \lulu|u1|temp_max~3_combout\ & ( !\lulu|u1|LessThan3~7_combout\ ) ) ) # ( \lulu|u1|LessThan3~0_combout\ & ( !\lulu|u1|temp_max~3_combout\ & ( (!\lulu|u1|LessThan3~7_combout\ & (!\lulu|u1|sig_arr[2][5]~q\ & 
-- ((!\lulu|u1|sig_arr[2][4]~q\) # (\lulu|u1|temp_max~4_combout\)))) ) ) ) # ( !\lulu|u1|LessThan3~0_combout\ & ( !\lulu|u1|temp_max~3_combout\ & ( !\lulu|u1|LessThan3~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100100011000000000011001100110011001100110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_sig_arr[2][4]~q\,
	datab => \lulu|u1|ALT_INV_LessThan3~7_combout\,
	datac => \lulu|u1|ALT_INV_temp_max~4_combout\,
	datad => \lulu|u1|ALT_INV_sig_arr[2][5]~q\,
	datae => \lulu|u1|ALT_INV_LessThan3~0_combout\,
	dataf => \lulu|u1|ALT_INV_temp_max~3_combout\,
	combout => \lulu|u1|LessThan3~8_combout\);

-- Location: LABCELL_X80_Y7_N18
\lulu|u1|temp_max~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~18_combout\ = ( \lulu|u1|sig_arr[2][6]~q\ & ( \lulu|u1|temp_max~2_combout\ ) ) # ( !\lulu|u1|sig_arr[2][6]~q\ & ( \lulu|u1|temp_max~2_combout\ & ( (!\lulu|u1|LessThan3~10_combout\ & ((!\lulu|u1|LessThan3~9_combout\) # 
-- ((!\lulu|u1|LessThan3~6_combout\ & \lulu|u1|LessThan3~8_combout\)))) ) ) ) # ( \lulu|u1|sig_arr[2][6]~q\ & ( !\lulu|u1|temp_max~2_combout\ & ( ((\lulu|u1|LessThan3~9_combout\ & ((!\lulu|u1|LessThan3~8_combout\) # (\lulu|u1|LessThan3~6_combout\)))) # 
-- (\lulu|u1|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110101011110001000101010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan3~10_combout\,
	datab => \lulu|u1|ALT_INV_LessThan3~9_combout\,
	datac => \lulu|u1|ALT_INV_LessThan3~6_combout\,
	datad => \lulu|u1|ALT_INV_LessThan3~8_combout\,
	datae => \lulu|u1|ALT_INV_sig_arr[2][6]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~2_combout\,
	combout => \lulu|u1|temp_max~18_combout\);

-- Location: FF_X79_Y7_N31
\lulu|u1|u_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~18_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[0][6]~q\);

-- Location: FF_X79_Y7_N44
\lulu|u1|u_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~18_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[1][6]~q\);

-- Location: LABCELL_X80_Y7_N36
\lulu|u1|temp_max~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~19_combout\ = ( \lulu|u1|sig_arr[2][7]~q\ & ( \lulu|u1|temp_max~1_combout\ ) ) # ( !\lulu|u1|sig_arr[2][7]~q\ & ( \lulu|u1|temp_max~1_combout\ & ( (!\lulu|u1|LessThan3~10_combout\ & ((!\lulu|u1|LessThan3~9_combout\) # 
-- ((\lulu|u1|LessThan3~8_combout\ & !\lulu|u1|LessThan3~6_combout\)))) ) ) ) # ( \lulu|u1|sig_arr[2][7]~q\ & ( !\lulu|u1|temp_max~1_combout\ & ( ((\lulu|u1|LessThan3~9_combout\ & ((!\lulu|u1|LessThan3~8_combout\) # (\lulu|u1|LessThan3~6_combout\)))) # 
-- (\lulu|u1|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011101111110101010001000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan3~10_combout\,
	datab => \lulu|u1|ALT_INV_LessThan3~8_combout\,
	datac => \lulu|u1|ALT_INV_LessThan3~6_combout\,
	datad => \lulu|u1|ALT_INV_LessThan3~9_combout\,
	datae => \lulu|u1|ALT_INV_sig_arr[2][7]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~1_combout\,
	combout => \lulu|u1|temp_max~19_combout\);

-- Location: FF_X79_Y7_N17
\lulu|u1|u_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~19_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[0][7]~q\);

-- Location: LABCELL_X80_Y7_N21
\lulu|u1|temp_max~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~17_combout\ = ( \lulu|u1|sig_arr[2][5]~q\ & ( \lulu|u1|temp_max~3_combout\ ) ) # ( !\lulu|u1|sig_arr[2][5]~q\ & ( \lulu|u1|temp_max~3_combout\ & ( (!\lulu|u1|LessThan3~10_combout\ & ((!\lulu|u1|LessThan3~9_combout\) # 
-- ((\lulu|u1|LessThan3~8_combout\ & !\lulu|u1|LessThan3~6_combout\)))) ) ) ) # ( \lulu|u1|sig_arr[2][5]~q\ & ( !\lulu|u1|temp_max~3_combout\ & ( ((\lulu|u1|LessThan3~9_combout\ & ((!\lulu|u1|LessThan3~8_combout\) # (\lulu|u1|LessThan3~6_combout\)))) # 
-- (\lulu|u1|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101010111011110001010100010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan3~10_combout\,
	datab => \lulu|u1|ALT_INV_LessThan3~9_combout\,
	datac => \lulu|u1|ALT_INV_LessThan3~8_combout\,
	datad => \lulu|u1|ALT_INV_LessThan3~6_combout\,
	datae => \lulu|u1|ALT_INV_sig_arr[2][5]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~3_combout\,
	combout => \lulu|u1|temp_max~17_combout\);

-- Location: FF_X79_Y7_N14
\lulu|u1|u_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~17_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[0][5]~q\);

-- Location: FF_X80_Y7_N34
\lulu|u1|u_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~17_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[1][5]~q\);

-- Location: FF_X79_Y7_N8
\lulu|u1|u_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~19_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[1][7]~q\);

-- Location: LABCELL_X79_Y7_N9
\lulu|u1|LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan6~3_combout\ = ( \lulu|u1|u_arr[1][5]~q\ & ( \lulu|u1|u_arr[1][7]~q\ & ( (\lulu|u1|u_arr[0][7]~q\ & (\lulu|u1|u_arr[0][5]~q\ & (!\lulu|u1|u_arr[0][6]~q\ $ (\lulu|u1|u_arr[1][6]~q\)))) ) ) ) # ( !\lulu|u1|u_arr[1][5]~q\ & ( 
-- \lulu|u1|u_arr[1][7]~q\ & ( (\lulu|u1|u_arr[0][7]~q\ & (!\lulu|u1|u_arr[0][5]~q\ & (!\lulu|u1|u_arr[0][6]~q\ $ (\lulu|u1|u_arr[1][6]~q\)))) ) ) ) # ( \lulu|u1|u_arr[1][5]~q\ & ( !\lulu|u1|u_arr[1][7]~q\ & ( (!\lulu|u1|u_arr[0][7]~q\ & 
-- (\lulu|u1|u_arr[0][5]~q\ & (!\lulu|u1|u_arr[0][6]~q\ $ (\lulu|u1|u_arr[1][6]~q\)))) ) ) ) # ( !\lulu|u1|u_arr[1][5]~q\ & ( !\lulu|u1|u_arr[1][7]~q\ & ( (!\lulu|u1|u_arr[0][7]~q\ & (!\lulu|u1|u_arr[0][5]~q\ & (!\lulu|u1|u_arr[0][6]~q\ $ 
-- (\lulu|u1|u_arr[1][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_u_arr[0][6]~q\,
	datab => \lulu|u1|ALT_INV_u_arr[1][6]~q\,
	datac => \lulu|u1|ALT_INV_u_arr[0][7]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[0][5]~q\,
	datae => \lulu|u1|ALT_INV_u_arr[1][5]~q\,
	dataf => \lulu|u1|ALT_INV_u_arr[1][7]~q\,
	combout => \lulu|u1|LessThan6~3_combout\);

-- Location: LABCELL_X79_Y7_N12
\lulu|u1|LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan6~4_combout\ = ( \lulu|u1|u_arr[0][5]~q\ & ( \lulu|u1|u_arr[0][7]~q\ & ( (!\lulu|u1|u_arr[1][7]~q\) # ((!\lulu|u1|u_arr[0][6]~q\ & (!\lulu|u1|u_arr[1][5]~q\ & !\lulu|u1|u_arr[1][6]~q\)) # (\lulu|u1|u_arr[0][6]~q\ & 
-- ((!\lulu|u1|u_arr[1][5]~q\) # (!\lulu|u1|u_arr[1][6]~q\)))) ) ) ) # ( !\lulu|u1|u_arr[0][5]~q\ & ( \lulu|u1|u_arr[0][7]~q\ & ( (!\lulu|u1|u_arr[1][7]~q\) # ((\lulu|u1|u_arr[0][6]~q\ & !\lulu|u1|u_arr[1][6]~q\)) ) ) ) # ( \lulu|u1|u_arr[0][5]~q\ & ( 
-- !\lulu|u1|u_arr[0][7]~q\ & ( (!\lulu|u1|u_arr[1][7]~q\ & ((!\lulu|u1|u_arr[0][6]~q\ & (!\lulu|u1|u_arr[1][5]~q\ & !\lulu|u1|u_arr[1][6]~q\)) # (\lulu|u1|u_arr[0][6]~q\ & ((!\lulu|u1|u_arr[1][5]~q\) # (!\lulu|u1|u_arr[1][6]~q\))))) ) ) ) # ( 
-- !\lulu|u1|u_arr[0][5]~q\ & ( !\lulu|u1|u_arr[0][7]~q\ & ( (\lulu|u1|u_arr[0][6]~q\ & (!\lulu|u1|u_arr[1][6]~q\ & !\lulu|u1|u_arr[1][7]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000110101000000000011111111010100001111111111010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_u_arr[0][6]~q\,
	datab => \lulu|u1|ALT_INV_u_arr[1][5]~q\,
	datac => \lulu|u1|ALT_INV_u_arr[1][6]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[1][7]~q\,
	datae => \lulu|u1|ALT_INV_u_arr[0][5]~q\,
	dataf => \lulu|u1|ALT_INV_u_arr[0][7]~q\,
	combout => \lulu|u1|LessThan6~4_combout\);

-- Location: LABCELL_X80_Y7_N6
\lulu|u1|temp_max~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~16_combout\ = ( \lulu|u1|sig_arr[2][4]~q\ & ( \lulu|u1|temp_max~4_combout\ ) ) # ( !\lulu|u1|sig_arr[2][4]~q\ & ( \lulu|u1|temp_max~4_combout\ & ( (!\lulu|u1|LessThan3~10_combout\ & ((!\lulu|u1|LessThan3~9_combout\) # 
-- ((!\lulu|u1|LessThan3~6_combout\ & \lulu|u1|LessThan3~8_combout\)))) ) ) ) # ( \lulu|u1|sig_arr[2][4]~q\ & ( !\lulu|u1|temp_max~4_combout\ & ( ((\lulu|u1|LessThan3~9_combout\ & ((!\lulu|u1|LessThan3~8_combout\) # (\lulu|u1|LessThan3~6_combout\)))) # 
-- (\lulu|u1|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110101011110001000101010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan3~10_combout\,
	datab => \lulu|u1|ALT_INV_LessThan3~9_combout\,
	datac => \lulu|u1|ALT_INV_LessThan3~6_combout\,
	datad => \lulu|u1|ALT_INV_LessThan3~8_combout\,
	datae => \lulu|u1|ALT_INV_sig_arr[2][4]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~4_combout\,
	combout => \lulu|u1|temp_max~16_combout\);

-- Location: FF_X80_Y7_N17
\lulu|u1|u_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~16_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[0][4]~q\);

-- Location: LABCELL_X80_Y7_N0
\lulu|u1|temp_max~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~15_combout\ = ( \lulu|u1|LessThan3~9_combout\ & ( \lulu|u1|LessThan3~6_combout\ & ( \lulu|u1|sig_arr[2][3]~q\ ) ) ) # ( !\lulu|u1|LessThan3~9_combout\ & ( \lulu|u1|LessThan3~6_combout\ & ( (!\lulu|u1|LessThan3~10_combout\ & 
-- ((\lulu|u1|temp_max~6_combout\))) # (\lulu|u1|LessThan3~10_combout\ & (\lulu|u1|sig_arr[2][3]~q\)) ) ) ) # ( \lulu|u1|LessThan3~9_combout\ & ( !\lulu|u1|LessThan3~6_combout\ & ( (!\lulu|u1|LessThan3~10_combout\ & ((!\lulu|u1|LessThan3~8_combout\ & 
-- (\lulu|u1|sig_arr[2][3]~q\)) # (\lulu|u1|LessThan3~8_combout\ & ((\lulu|u1|temp_max~6_combout\))))) # (\lulu|u1|LessThan3~10_combout\ & (\lulu|u1|sig_arr[2][3]~q\)) ) ) ) # ( !\lulu|u1|LessThan3~9_combout\ & ( !\lulu|u1|LessThan3~6_combout\ & ( 
-- (!\lulu|u1|LessThan3~10_combout\ & ((\lulu|u1|temp_max~6_combout\))) # (\lulu|u1|LessThan3~10_combout\ & (\lulu|u1|sig_arr[2][3]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101010101010001110100011101000111010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_sig_arr[2][3]~q\,
	datab => \lulu|u1|ALT_INV_LessThan3~10_combout\,
	datac => \lulu|u1|ALT_INV_temp_max~6_combout\,
	datad => \lulu|u1|ALT_INV_LessThan3~8_combout\,
	datae => \lulu|u1|ALT_INV_LessThan3~9_combout\,
	dataf => \lulu|u1|ALT_INV_LessThan3~6_combout\,
	combout => \lulu|u1|temp_max~15_combout\);

-- Location: FF_X80_Y7_N32
\lulu|u1|u_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~15_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[1][3]~q\);

-- Location: LABCELL_X80_Y7_N9
\lulu|u1|temp_max~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~14_combout\ = ( \lulu|u1|sig_arr[2][2]~q\ & ( \lulu|u1|temp_max~7_combout\ ) ) # ( !\lulu|u1|sig_arr[2][2]~q\ & ( \lulu|u1|temp_max~7_combout\ & ( (!\lulu|u1|LessThan3~10_combout\ & ((!\lulu|u1|LessThan3~9_combout\) # 
-- ((\lulu|u1|LessThan3~8_combout\ & !\lulu|u1|LessThan3~6_combout\)))) ) ) ) # ( \lulu|u1|sig_arr[2][2]~q\ & ( !\lulu|u1|temp_max~7_combout\ & ( ((\lulu|u1|LessThan3~9_combout\ & ((!\lulu|u1|LessThan3~8_combout\) # (\lulu|u1|LessThan3~6_combout\)))) # 
-- (\lulu|u1|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101010111011110001010100010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan3~10_combout\,
	datab => \lulu|u1|ALT_INV_LessThan3~9_combout\,
	datac => \lulu|u1|ALT_INV_LessThan3~8_combout\,
	datad => \lulu|u1|ALT_INV_LessThan3~6_combout\,
	datae => \lulu|u1|ALT_INV_sig_arr[2][2]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~7_combout\,
	combout => \lulu|u1|temp_max~14_combout\);

-- Location: LABCELL_X79_Y7_N42
\lulu|u1|u_arr[1][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|u_arr[1][2]~feeder_combout\ = ( \lulu|u1|temp_max~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|u1|ALT_INV_temp_max~14_combout\,
	combout => \lulu|u1|u_arr[1][2]~feeder_combout\);

-- Location: FF_X79_Y7_N43
\lulu|u1|u_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|u_arr[1][2]~feeder_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[1][2]~q\);

-- Location: LABCELL_X79_Y7_N30
\lulu|u1|u_arr[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|u_arr[0][2]~feeder_combout\ = ( \lulu|u1|temp_max~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|u1|ALT_INV_temp_max~14_combout\,
	combout => \lulu|u1|u_arr[0][2]~feeder_combout\);

-- Location: FF_X79_Y7_N32
\lulu|u1|u_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|u_arr[0][2]~feeder_combout\,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[0][2]~q\);

-- Location: FF_X78_Y7_N34
\lulu|u1|u_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~15_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[0][3]~q\);

-- Location: LABCELL_X80_Y7_N39
\lulu|u1|temp_max~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~13_combout\ = ( \lulu|u1|sig_arr[2][1]~q\ & ( \lulu|u1|temp_max~5_combout\ ) ) # ( !\lulu|u1|sig_arr[2][1]~q\ & ( \lulu|u1|temp_max~5_combout\ & ( (!\lulu|u1|LessThan3~10_combout\ & ((!\lulu|u1|LessThan3~9_combout\) # 
-- ((\lulu|u1|LessThan3~8_combout\ & !\lulu|u1|LessThan3~6_combout\)))) ) ) ) # ( \lulu|u1|sig_arr[2][1]~q\ & ( !\lulu|u1|temp_max~5_combout\ & ( ((\lulu|u1|LessThan3~9_combout\ & ((!\lulu|u1|LessThan3~8_combout\) # (\lulu|u1|LessThan3~6_combout\)))) # 
-- (\lulu|u1|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111010101111110100010101000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan3~10_combout\,
	datab => \lulu|u1|ALT_INV_LessThan3~8_combout\,
	datac => \lulu|u1|ALT_INV_LessThan3~9_combout\,
	datad => \lulu|u1|ALT_INV_LessThan3~6_combout\,
	datae => \lulu|u1|ALT_INV_sig_arr[2][1]~q\,
	dataf => \lulu|u1|ALT_INV_temp_max~5_combout\,
	combout => \lulu|u1|temp_max~13_combout\);

-- Location: FF_X79_Y7_N29
\lulu|u1|u_arr[1][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~13_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[1][1]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y7_N6
\lulu|u1|temp_max~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_max~10_combout\ = ( \lulu|u1|LessThan3~9_combout\ & ( \lulu|u1|LessThan3~8_combout\ & ( (!\lulu|u1|LessThan3~10_combout\ & ((!\lulu|u1|LessThan3~6_combout\ & (\lulu|u1|temp_max~0_combout\)) # (\lulu|u1|LessThan3~6_combout\ & 
-- ((\lulu|u1|sig_arr[2][0]~q\))))) # (\lulu|u1|LessThan3~10_combout\ & (((\lulu|u1|sig_arr[2][0]~q\)))) ) ) ) # ( !\lulu|u1|LessThan3~9_combout\ & ( \lulu|u1|LessThan3~8_combout\ & ( (!\lulu|u1|LessThan3~10_combout\ & (\lulu|u1|temp_max~0_combout\)) # 
-- (\lulu|u1|LessThan3~10_combout\ & ((\lulu|u1|sig_arr[2][0]~q\))) ) ) ) # ( \lulu|u1|LessThan3~9_combout\ & ( !\lulu|u1|LessThan3~8_combout\ & ( \lulu|u1|sig_arr[2][0]~q\ ) ) ) # ( !\lulu|u1|LessThan3~9_combout\ & ( !\lulu|u1|LessThan3~8_combout\ & ( 
-- (!\lulu|u1|LessThan3~10_combout\ & (\lulu|u1|temp_max~0_combout\)) # (\lulu|u1|LessThan3~10_combout\ & ((\lulu|u1|sig_arr[2][0]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011001100110011001101010011010100110101001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_temp_max~0_combout\,
	datab => \lulu|u1|ALT_INV_sig_arr[2][0]~q\,
	datac => \lulu|u1|ALT_INV_LessThan3~10_combout\,
	datad => \lulu|u1|ALT_INV_LessThan3~6_combout\,
	datae => \lulu|u1|ALT_INV_LessThan3~9_combout\,
	dataf => \lulu|u1|ALT_INV_LessThan3~8_combout\,
	combout => \lulu|u1|temp_max~10_combout\);

-- Location: FF_X80_Y7_N53
\lulu|u1|u_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~10_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[0][0]~q\);

-- Location: FF_X79_Y7_N20
\lulu|u1|u_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~13_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[0][1]~q\);

-- Location: FF_X81_Y7_N1
\lulu|u1|u_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~10_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[1][0]~q\);

-- Location: LABCELL_X79_Y7_N18
\lulu|u1|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan6~1_combout\ = ( \lulu|u1|u_arr[0][1]~q\ & ( \lulu|u1|u_arr[1][0]~q\ & ( !\lulu|u1|u_arr[1][1]~DUPLICATE_q\ ) ) ) # ( \lulu|u1|u_arr[0][1]~q\ & ( !\lulu|u1|u_arr[1][0]~q\ & ( (!\lulu|u1|u_arr[1][1]~DUPLICATE_q\) # 
-- (\lulu|u1|u_arr[0][0]~q\) ) ) ) # ( !\lulu|u1|u_arr[0][1]~q\ & ( !\lulu|u1|u_arr[1][0]~q\ & ( (!\lulu|u1|u_arr[1][1]~DUPLICATE_q\ & \lulu|u1|u_arr[0][0]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101011111010111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_u_arr[1][1]~DUPLICATE_q\,
	datac => \lulu|u1|ALT_INV_u_arr[0][0]~q\,
	datae => \lulu|u1|ALT_INV_u_arr[0][1]~q\,
	dataf => \lulu|u1|ALT_INV_u_arr[1][0]~q\,
	combout => \lulu|u1|LessThan6~1_combout\);

-- Location: LABCELL_X79_Y7_N45
\lulu|u1|LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan6~2_combout\ = ( \lulu|u1|LessThan6~1_combout\ & ( (!\lulu|u1|u_arr[1][3]~q\ & ((!\lulu|u1|u_arr[1][2]~q\) # ((\lulu|u1|u_arr[0][3]~q\) # (\lulu|u1|u_arr[0][2]~q\)))) # (\lulu|u1|u_arr[1][3]~q\ & (\lulu|u1|u_arr[0][3]~q\ & 
-- ((!\lulu|u1|u_arr[1][2]~q\) # (\lulu|u1|u_arr[0][2]~q\)))) ) ) # ( !\lulu|u1|LessThan6~1_combout\ & ( (!\lulu|u1|u_arr[1][3]~q\ & (((!\lulu|u1|u_arr[1][2]~q\ & \lulu|u1|u_arr[0][2]~q\)) # (\lulu|u1|u_arr[0][3]~q\))) # (\lulu|u1|u_arr[1][3]~q\ & 
-- (!\lulu|u1|u_arr[1][2]~q\ & (\lulu|u1|u_arr[0][2]~q\ & \lulu|u1|u_arr[0][3]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101110000010001010111010001010111011111000101011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_u_arr[1][3]~q\,
	datab => \lulu|u1|ALT_INV_u_arr[1][2]~q\,
	datac => \lulu|u1|ALT_INV_u_arr[0][2]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[0][3]~q\,
	dataf => \lulu|u1|ALT_INV_LessThan6~1_combout\,
	combout => \lulu|u1|LessThan6~2_combout\);

-- Location: FF_X79_Y7_N26
\lulu|u1|u_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~16_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[1][4]~q\);

-- Location: LABCELL_X79_Y7_N24
\lulu|u1|LessThan6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan6~5_combout\ = ( \lulu|u1|u_arr[1][4]~q\ & ( (!\lulu|u1|LessThan6~4_combout\ & ((!\lulu|u1|LessThan6~3_combout\) # ((!\lulu|u1|u_arr[0][4]~q\) # (!\lulu|u1|LessThan6~2_combout\)))) ) ) # ( !\lulu|u1|u_arr[1][4]~q\ & ( 
-- (!\lulu|u1|LessThan6~4_combout\ & ((!\lulu|u1|LessThan6~3_combout\) # ((!\lulu|u1|u_arr[0][4]~q\ & !\lulu|u1|LessThan6~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010001000110011001100100011001000100010001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan6~3_combout\,
	datab => \lulu|u1|ALT_INV_LessThan6~4_combout\,
	datac => \lulu|u1|ALT_INV_u_arr[0][4]~q\,
	datad => \lulu|u1|ALT_INV_LessThan6~2_combout\,
	datae => \lulu|u1|ALT_INV_u_arr[1][4]~q\,
	combout => \lulu|u1|LessThan6~5_combout\);

-- Location: FF_X79_Y7_N53
\lulu|u1|u_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~12_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[1][8]~q\);

-- Location: LABCELL_X79_Y7_N48
\lulu|u1|LessThan6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan6~6_combout\ = ( \lulu|u1|u_arr[1][8]~q\ & ( (\lulu|u1|u_arr[0][8]~q\ & (!\lulu|u1|LessThan6~5_combout\ & (!\lulu|u1|u_arr[0][9]~q\ $ (\lulu|u1|u_arr[1][9]~q\)))) ) ) # ( !\lulu|u1|u_arr[1][8]~q\ & ( (!\lulu|u1|u_arr[0][8]~q\ & 
-- (!\lulu|u1|LessThan6~5_combout\ & (!\lulu|u1|u_arr[0][9]~q\ $ (\lulu|u1|u_arr[1][9]~q\)))) # (\lulu|u1|u_arr[0][8]~q\ & ((!\lulu|u1|u_arr[0][9]~q\ $ (\lulu|u1|u_arr[1][9]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000001101110100000000110101000000000001000100000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_u_arr[0][8]~q\,
	datab => \lulu|u1|ALT_INV_LessThan6~5_combout\,
	datac => \lulu|u1|ALT_INV_u_arr[0][9]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[1][9]~q\,
	dataf => \lulu|u1|ALT_INV_u_arr[1][8]~q\,
	combout => \lulu|u1|LessThan6~6_combout\);

-- Location: LABCELL_X79_Y7_N33
\lulu|u1|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan6~0_combout\ = ( !\lulu|u1|u_arr[1][9]~q\ & ( \lulu|u1|u_arr[0][9]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lulu|u1|ALT_INV_u_arr[0][9]~q\,
	dataf => \lulu|u1|ALT_INV_u_arr[1][9]~q\,
	combout => \lulu|u1|LessThan6~0_combout\);

-- Location: LABCELL_X79_Y7_N51
\lulu|u1|temp_min~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_min~1_combout\ = ( \lulu|u1|LessThan6~0_combout\ & ( \lulu|u1|u_arr[1][8]~q\ ) ) # ( !\lulu|u1|LessThan6~0_combout\ & ( (!\lulu|u1|LessThan6~6_combout\ & (\lulu|u1|u_arr[0][8]~q\)) # (\lulu|u1|LessThan6~6_combout\ & 
-- ((\lulu|u1|u_arr[1][8]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_u_arr[0][8]~q\,
	datac => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	datad => \lulu|u1|ALT_INV_u_arr[1][8]~q\,
	dataf => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	combout => \lulu|u1|temp_min~1_combout\);

-- Location: FF_X80_Y8_N47
\lulu|u1|u_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_max~12_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[2][8]~q\);

-- Location: FF_X80_Y7_N38
\lulu|u1|u_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_max~19_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[2][7]~q\);

-- Location: FF_X80_Y7_N20
\lulu|u1|u_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_max~18_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[2][6]~q\);

-- Location: FF_X80_Y7_N23
\lulu|u1|u_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_max~17_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[2][5]~q\);

-- Location: FF_X80_Y7_N8
\lulu|u1|u_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_max~16_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[2][4]~q\);

-- Location: FF_X80_Y7_N2
\lulu|u1|u_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_max~15_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[2][3]~q\);

-- Location: FF_X78_Y7_N35
\lulu|u1|u_arr[0][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~15_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[0][3]~DUPLICATE_q\);

-- Location: FF_X80_Y7_N11
\lulu|u1|u_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_max~14_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[2][2]~q\);

-- Location: FF_X79_Y7_N28
\lulu|u1|u_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~13_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[1][1]~q\);

-- Location: FF_X80_Y7_N41
\lulu|u1|u_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_max~13_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[2][1]~q\);

-- Location: FF_X81_Y7_N34
\lulu|u1|u_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|temp_max~10_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_arr[2][0]~q\);

-- Location: MLABCELL_X78_Y7_N0
\lulu|u1|LessThan7~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan7~42_cout\ = CARRY(( (!\lulu|u1|LessThan6~6_combout\ & ((!\lulu|u1|LessThan6~0_combout\ & ((\lulu|u1|u_arr[0][0]~q\))) # (\lulu|u1|LessThan6~0_combout\ & (\lulu|u1|u_arr[1][0]~q\)))) # (\lulu|u1|LessThan6~6_combout\ & 
-- (((\lulu|u1|u_arr[1][0]~q\)))) ) + ( !\lulu|u1|u_arr[2][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u1|ALT_INV_u_arr[1][0]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[0][0]~q\,
	dataf => \lulu|u1|ALT_INV_u_arr[2][0]~q\,
	cin => GND,
	cout => \lulu|u1|LessThan7~42_cout\);

-- Location: MLABCELL_X78_Y7_N3
\lulu|u1|LessThan7~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan7~38_cout\ = CARRY(( (!\lulu|u1|LessThan6~6_combout\ & ((!\lulu|u1|LessThan6~0_combout\ & ((\lulu|u1|u_arr[0][1]~q\))) # (\lulu|u1|LessThan6~0_combout\ & (\lulu|u1|u_arr[1][1]~q\)))) # (\lulu|u1|LessThan6~6_combout\ & 
-- (((\lulu|u1|u_arr[1][1]~q\)))) ) + ( !\lulu|u1|u_arr[2][1]~q\ ) + ( \lulu|u1|LessThan7~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u1|ALT_INV_u_arr[1][1]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[0][1]~q\,
	dataf => \lulu|u1|ALT_INV_u_arr[2][1]~q\,
	cin => \lulu|u1|LessThan7~42_cout\,
	cout => \lulu|u1|LessThan7~38_cout\);

-- Location: MLABCELL_X78_Y7_N6
\lulu|u1|LessThan7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan7~34_cout\ = CARRY(( !\lulu|u1|u_arr[2][2]~q\ ) + ( (!\lulu|u1|LessThan6~6_combout\ & ((!\lulu|u1|LessThan6~0_combout\ & ((\lulu|u1|u_arr[0][2]~q\))) # (\lulu|u1|LessThan6~0_combout\ & (\lulu|u1|u_arr[1][2]~q\)))) # 
-- (\lulu|u1|LessThan6~6_combout\ & (((\lulu|u1|u_arr[1][2]~q\)))) ) + ( \lulu|u1|LessThan7~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u1|ALT_INV_u_arr[1][2]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[2][2]~q\,
	dataf => \lulu|u1|ALT_INV_u_arr[0][2]~q\,
	cin => \lulu|u1|LessThan7~38_cout\,
	cout => \lulu|u1|LessThan7~34_cout\);

-- Location: MLABCELL_X78_Y7_N9
\lulu|u1|LessThan7~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan7~30_cout\ = CARRY(( !\lulu|u1|u_arr[2][3]~q\ ) + ( (!\lulu|u1|LessThan6~6_combout\ & ((!\lulu|u1|LessThan6~0_combout\ & ((\lulu|u1|u_arr[0][3]~DUPLICATE_q\))) # (\lulu|u1|LessThan6~0_combout\ & (\lulu|u1|u_arr[1][3]~q\)))) # 
-- (\lulu|u1|LessThan6~6_combout\ & (((\lulu|u1|u_arr[1][3]~q\)))) ) + ( \lulu|u1|LessThan7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u1|ALT_INV_u_arr[1][3]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[2][3]~q\,
	dataf => \lulu|u1|ALT_INV_u_arr[0][3]~DUPLICATE_q\,
	cin => \lulu|u1|LessThan7~34_cout\,
	cout => \lulu|u1|LessThan7~30_cout\);

-- Location: MLABCELL_X78_Y7_N12
\lulu|u1|LessThan7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan7~26_cout\ = CARRY(( !\lulu|u1|u_arr[2][4]~q\ ) + ( (!\lulu|u1|LessThan6~6_combout\ & ((!\lulu|u1|LessThan6~0_combout\ & ((\lulu|u1|u_arr[0][4]~q\))) # (\lulu|u1|LessThan6~0_combout\ & (\lulu|u1|u_arr[1][4]~q\)))) # 
-- (\lulu|u1|LessThan6~6_combout\ & (((\lulu|u1|u_arr[1][4]~q\)))) ) + ( \lulu|u1|LessThan7~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u1|ALT_INV_u_arr[1][4]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[2][4]~q\,
	dataf => \lulu|u1|ALT_INV_u_arr[0][4]~q\,
	cin => \lulu|u1|LessThan7~30_cout\,
	cout => \lulu|u1|LessThan7~26_cout\);

-- Location: MLABCELL_X78_Y7_N15
\lulu|u1|LessThan7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan7~22_cout\ = CARRY(( !\lulu|u1|u_arr[2][5]~q\ ) + ( (!\lulu|u1|LessThan6~6_combout\ & ((!\lulu|u1|LessThan6~0_combout\ & ((\lulu|u1|u_arr[0][5]~q\))) # (\lulu|u1|LessThan6~0_combout\ & (\lulu|u1|u_arr[1][5]~q\)))) # 
-- (\lulu|u1|LessThan6~6_combout\ & (((\lulu|u1|u_arr[1][5]~q\)))) ) + ( \lulu|u1|LessThan7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u1|ALT_INV_u_arr[1][5]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[2][5]~q\,
	dataf => \lulu|u1|ALT_INV_u_arr[0][5]~q\,
	cin => \lulu|u1|LessThan7~26_cout\,
	cout => \lulu|u1|LessThan7~22_cout\);

-- Location: MLABCELL_X78_Y7_N18
\lulu|u1|LessThan7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan7~18_cout\ = CARRY(( !\lulu|u1|u_arr[2][6]~q\ ) + ( (!\lulu|u1|LessThan6~6_combout\ & ((!\lulu|u1|LessThan6~0_combout\ & ((\lulu|u1|u_arr[0][6]~q\))) # (\lulu|u1|LessThan6~0_combout\ & (\lulu|u1|u_arr[1][6]~q\)))) # 
-- (\lulu|u1|LessThan6~6_combout\ & (((\lulu|u1|u_arr[1][6]~q\)))) ) + ( \lulu|u1|LessThan7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u1|ALT_INV_u_arr[1][6]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[2][6]~q\,
	dataf => \lulu|u1|ALT_INV_u_arr[0][6]~q\,
	cin => \lulu|u1|LessThan7~22_cout\,
	cout => \lulu|u1|LessThan7~18_cout\);

-- Location: MLABCELL_X78_Y7_N21
\lulu|u1|LessThan7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan7~14_cout\ = CARRY(( !\lulu|u1|u_arr[2][7]~q\ ) + ( (!\lulu|u1|LessThan6~6_combout\ & ((!\lulu|u1|LessThan6~0_combout\ & ((\lulu|u1|u_arr[0][7]~q\))) # (\lulu|u1|LessThan6~0_combout\ & (\lulu|u1|u_arr[1][7]~q\)))) # 
-- (\lulu|u1|LessThan6~6_combout\ & (((\lulu|u1|u_arr[1][7]~q\)))) ) + ( \lulu|u1|LessThan7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u1|ALT_INV_u_arr[1][7]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[2][7]~q\,
	dataf => \lulu|u1|ALT_INV_u_arr[0][7]~q\,
	cin => \lulu|u1|LessThan7~18_cout\,
	cout => \lulu|u1|LessThan7~14_cout\);

-- Location: MLABCELL_X78_Y7_N24
\lulu|u1|LessThan7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan7~10_cout\ = CARRY(( !\lulu|u1|u_arr[2][8]~q\ ) + ( \lulu|u1|temp_min~1_combout\ ) + ( \lulu|u1|LessThan7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|u1|ALT_INV_temp_min~1_combout\,
	datad => \lulu|u1|ALT_INV_u_arr[2][8]~q\,
	cin => \lulu|u1|LessThan7~14_cout\,
	cout => \lulu|u1|LessThan7~10_cout\);

-- Location: MLABCELL_X78_Y7_N27
\lulu|u1|LessThan7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan7~6_cout\ = CARRY(( !\lulu|u1|u_arr[2][9]~q\ ) + ( (\lulu|u1|u_arr[0][9]~q\ & \lulu|u1|u_arr[1][9]~q\) ) + ( \lulu|u1|LessThan7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_u_arr[0][9]~q\,
	datac => \lulu|u1|ALT_INV_u_arr[1][9]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[2][9]~q\,
	cin => \lulu|u1|LessThan7~10_cout\,
	cout => \lulu|u1|LessThan7~6_cout\);

-- Location: MLABCELL_X78_Y7_N30
\lulu|u1|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|LessThan7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \lulu|u1|LessThan7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \lulu|u1|LessThan7~6_cout\,
	sumout => \lulu|u1|LessThan7~1_sumout\);

-- Location: MLABCELL_X78_Y7_N42
\lulu|u1|temp_min~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_min~10_combout\ = ( \lulu|u1|u_arr[2][9]~q\ & ( \lulu|u1|LessThan7~1_sumout\ & ( (\lulu|u1|u_arr[1][9]~q\ & \lulu|u1|u_arr[0][9]~q\) ) ) ) # ( !\lulu|u1|u_arr[2][9]~q\ & ( \lulu|u1|LessThan7~1_sumout\ & ( (\lulu|u1|u_arr[1][9]~q\ & 
-- \lulu|u1|u_arr[0][9]~q\) ) ) ) # ( \lulu|u1|u_arr[2][9]~q\ & ( !\lulu|u1|LessThan7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u1|ALT_INV_u_arr[1][9]~q\,
	datac => \lulu|u1|ALT_INV_u_arr[0][9]~q\,
	datae => \lulu|u1|ALT_INV_u_arr[2][9]~q\,
	dataf => \lulu|u1|ALT_INV_LessThan7~1_sumout\,
	combout => \lulu|u1|temp_min~10_combout\);

-- Location: FF_X78_Y7_N43
\lulu|u1|u_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_min~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_out\(9));

-- Location: LABCELL_X81_Y8_N57
\lulu|l2|sig_arr[1][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|sig_arr[1][9]~feeder_combout\ = ( \lulu|u1|u_out\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|u1|ALT_INV_u_out\(9),
	combout => \lulu|l2|sig_arr[1][9]~feeder_combout\);

-- Location: FF_X81_Y8_N58
\lulu|l2|sig_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|sig_arr[1][9]~feeder_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[1][9]~q\);

-- Location: FF_X81_Y7_N59
\lulu|l2|sig_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(9),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[0][9]~q\);

-- Location: LABCELL_X77_Y7_N15
\lulu|u1|temp_min~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_min~2_combout\ = ( \lulu|u1|temp_min~1_combout\ & ( \lulu|u1|LessThan7~1_sumout\ ) ) # ( \lulu|u1|temp_min~1_combout\ & ( !\lulu|u1|LessThan7~1_sumout\ & ( \lulu|u1|u_arr[2][8]~q\ ) ) ) # ( !\lulu|u1|temp_min~1_combout\ & ( 
-- !\lulu|u1|LessThan7~1_sumout\ & ( \lulu|u1|u_arr[2][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|u1|ALT_INV_u_arr[2][8]~q\,
	datae => \lulu|u1|ALT_INV_temp_min~1_combout\,
	dataf => \lulu|u1|ALT_INV_LessThan7~1_sumout\,
	combout => \lulu|u1|temp_min~2_combout\);

-- Location: FF_X77_Y7_N16
\lulu|u1|u_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_min~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_out\(8));

-- Location: LABCELL_X81_Y8_N12
\lulu|l2|sig_arr[1][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|sig_arr[1][8]~feeder_combout\ = ( \lulu|u1|u_out\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|u1|ALT_INV_u_out\(8),
	combout => \lulu|l2|sig_arr[1][8]~feeder_combout\);

-- Location: FF_X81_Y8_N13
\lulu|l2|sig_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|sig_arr[1][8]~feeder_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[1][8]~q\);

-- Location: FF_X82_Y8_N25
\lulu|l2|sig_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(8),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[0][8]~q\);

-- Location: MLABCELL_X78_Y7_N48
\lulu|u1|temp_min~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_min~3_combout\ = ( \lulu|u1|LessThan6~0_combout\ & ( \lulu|u1|u_arr[1][4]~q\ & ( (\lulu|u1|LessThan7~1_sumout\) # (\lulu|u1|u_arr[2][4]~q\) ) ) ) # ( !\lulu|u1|LessThan6~0_combout\ & ( \lulu|u1|u_arr[1][4]~q\ & ( 
-- (!\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[2][4]~q\)) # (\lulu|u1|LessThan7~1_sumout\ & (((\lulu|u1|LessThan6~6_combout\) # (\lulu|u1|u_arr[0][4]~q\)))) ) ) ) # ( \lulu|u1|LessThan6~0_combout\ & ( !\lulu|u1|u_arr[1][4]~q\ & ( 
-- (\lulu|u1|u_arr[2][4]~q\ & !\lulu|u1|LessThan7~1_sumout\) ) ) ) # ( !\lulu|u1|LessThan6~0_combout\ & ( !\lulu|u1|u_arr[1][4]~q\ & ( (!\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[2][4]~q\)) # (\lulu|u1|LessThan7~1_sumout\ & (((\lulu|u1|u_arr[0][4]~q\ & 
-- !\lulu|u1|LessThan6~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110000010101010000000001010101001111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_u_arr[2][4]~q\,
	datab => \lulu|u1|ALT_INV_u_arr[0][4]~q\,
	datac => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	datad => \lulu|u1|ALT_INV_LessThan7~1_sumout\,
	datae => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	dataf => \lulu|u1|ALT_INV_u_arr[1][4]~q\,
	combout => \lulu|u1|temp_min~3_combout\);

-- Location: FF_X78_Y7_N49
\lulu|u1|u_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_min~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_out\(4));

-- Location: FF_X82_Y8_N38
\lulu|l2|sig_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(4),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[1][4]~q\);

-- Location: LABCELL_X79_Y7_N54
\lulu|u1|temp_min~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_min~6_combout\ = ( \lulu|u1|LessThan6~0_combout\ & ( \lulu|u1|LessThan6~6_combout\ & ( (!\lulu|u1|LessThan7~1_sumout\ & ((\lulu|u1|u_arr[2][5]~q\))) # (\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[1][5]~q\)) ) ) ) # ( 
-- !\lulu|u1|LessThan6~0_combout\ & ( \lulu|u1|LessThan6~6_combout\ & ( (!\lulu|u1|LessThan7~1_sumout\ & ((\lulu|u1|u_arr[2][5]~q\))) # (\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[1][5]~q\)) ) ) ) # ( \lulu|u1|LessThan6~0_combout\ & ( 
-- !\lulu|u1|LessThan6~6_combout\ & ( (!\lulu|u1|LessThan7~1_sumout\ & ((\lulu|u1|u_arr[2][5]~q\))) # (\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[1][5]~q\)) ) ) ) # ( !\lulu|u1|LessThan6~0_combout\ & ( !\lulu|u1|LessThan6~6_combout\ & ( 
-- (!\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[2][5]~q\)) # (\lulu|u1|LessThan7~1_sumout\ & ((\lulu|u1|u_arr[0][5]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan7~1_sumout\,
	datab => \lulu|u1|ALT_INV_u_arr[1][5]~q\,
	datac => \lulu|u1|ALT_INV_u_arr[2][5]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[0][5]~q\,
	datae => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	dataf => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	combout => \lulu|u1|temp_min~6_combout\);

-- Location: FF_X79_Y7_N56
\lulu|u1|u_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_min~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_out\(5));

-- Location: FF_X82_Y8_N7
\lulu|l2|sig_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(5),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[0][5]~q\);

-- Location: LABCELL_X79_Y7_N0
\lulu|u1|temp_min~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_min~5_combout\ = ( \lulu|u1|LessThan6~0_combout\ & ( \lulu|u1|LessThan6~6_combout\ & ( (!\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[2][6]~q\)) # (\lulu|u1|LessThan7~1_sumout\ & ((\lulu|u1|u_arr[1][6]~q\))) ) ) ) # ( 
-- !\lulu|u1|LessThan6~0_combout\ & ( \lulu|u1|LessThan6~6_combout\ & ( (!\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[2][6]~q\)) # (\lulu|u1|LessThan7~1_sumout\ & ((\lulu|u1|u_arr[1][6]~q\))) ) ) ) # ( \lulu|u1|LessThan6~0_combout\ & ( 
-- !\lulu|u1|LessThan6~6_combout\ & ( (!\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[2][6]~q\)) # (\lulu|u1|LessThan7~1_sumout\ & ((\lulu|u1|u_arr[1][6]~q\))) ) ) ) # ( !\lulu|u1|LessThan6~0_combout\ & ( !\lulu|u1|LessThan6~6_combout\ & ( 
-- (!\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[2][6]~q\)) # (\lulu|u1|LessThan7~1_sumout\ & ((\lulu|u1|u_arr[0][6]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001000100111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan7~1_sumout\,
	datab => \lulu|u1|ALT_INV_u_arr[2][6]~q\,
	datac => \lulu|u1|ALT_INV_u_arr[0][6]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[1][6]~q\,
	datae => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	dataf => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	combout => \lulu|u1|temp_min~5_combout\);

-- Location: FF_X79_Y7_N1
\lulu|u1|u_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_min~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_out\(6));

-- Location: FF_X82_Y8_N32
\lulu|l2|sig_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(6),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[0][6]~q\);

-- Location: LABCELL_X77_Y7_N9
\lulu|u1|temp_min~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_min~4_combout\ = ( \lulu|u1|LessThan6~0_combout\ & ( \lulu|u1|LessThan7~1_sumout\ & ( \lulu|u1|u_arr[1][7]~q\ ) ) ) # ( !\lulu|u1|LessThan6~0_combout\ & ( \lulu|u1|LessThan7~1_sumout\ & ( (!\lulu|u1|LessThan6~6_combout\ & 
-- ((\lulu|u1|u_arr[0][7]~q\))) # (\lulu|u1|LessThan6~6_combout\ & (\lulu|u1|u_arr[1][7]~q\)) ) ) ) # ( \lulu|u1|LessThan6~0_combout\ & ( !\lulu|u1|LessThan7~1_sumout\ & ( \lulu|u1|u_arr[2][7]~q\ ) ) ) # ( !\lulu|u1|LessThan6~0_combout\ & ( 
-- !\lulu|u1|LessThan7~1_sumout\ & ( \lulu|u1|u_arr[2][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_u_arr[2][7]~q\,
	datab => \lulu|u1|ALT_INV_u_arr[1][7]~q\,
	datac => \lulu|u1|ALT_INV_u_arr[0][7]~q\,
	datad => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	datae => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	dataf => \lulu|u1|ALT_INV_LessThan7~1_sumout\,
	combout => \lulu|u1|temp_min~4_combout\);

-- Location: FF_X77_Y7_N10
\lulu|u1|u_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_min~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_out\(7));

-- Location: FF_X82_Y8_N14
\lulu|l2|sig_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(7),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[1][7]~q\);

-- Location: FF_X82_Y8_N35
\lulu|l2|sig_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(7),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[0][7]~q\);

-- Location: FF_X82_Y8_N43
\lulu|l2|sig_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(5),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[1][5]~q\);

-- Location: FF_X82_Y8_N41
\lulu|l2|sig_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(6),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[1][6]~q\);

-- Location: MLABCELL_X82_Y8_N9
\lulu|l2|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan2~0_combout\ = ( \lulu|l2|sig_arr[1][5]~q\ & ( \lulu|l2|sig_arr[1][6]~q\ & ( (\lulu|l2|sig_arr[0][5]~q\ & (\lulu|l2|sig_arr[0][6]~q\ & (!\lulu|l2|sig_arr[1][7]~q\ $ (\lulu|l2|sig_arr[0][7]~q\)))) ) ) ) # ( !\lulu|l2|sig_arr[1][5]~q\ & ( 
-- \lulu|l2|sig_arr[1][6]~q\ & ( (!\lulu|l2|sig_arr[0][5]~q\ & (\lulu|l2|sig_arr[0][6]~q\ & (!\lulu|l2|sig_arr[1][7]~q\ $ (\lulu|l2|sig_arr[0][7]~q\)))) ) ) ) # ( \lulu|l2|sig_arr[1][5]~q\ & ( !\lulu|l2|sig_arr[1][6]~q\ & ( (\lulu|l2|sig_arr[0][5]~q\ & 
-- (!\lulu|l2|sig_arr[0][6]~q\ & (!\lulu|l2|sig_arr[1][7]~q\ $ (\lulu|l2|sig_arr[0][7]~q\)))) ) ) ) # ( !\lulu|l2|sig_arr[1][5]~q\ & ( !\lulu|l2|sig_arr[1][6]~q\ & ( (!\lulu|l2|sig_arr[0][5]~q\ & (!\lulu|l2|sig_arr[0][6]~q\ & (!\lulu|l2|sig_arr[1][7]~q\ $ 
-- (\lulu|l2|sig_arr[0][7]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_sig_arr[0][5]~q\,
	datab => \lulu|l2|ALT_INV_sig_arr[0][6]~q\,
	datac => \lulu|l2|ALT_INV_sig_arr[1][7]~q\,
	datad => \lulu|l2|ALT_INV_sig_arr[0][7]~q\,
	datae => \lulu|l2|ALT_INV_sig_arr[1][5]~q\,
	dataf => \lulu|l2|ALT_INV_sig_arr[1][6]~q\,
	combout => \lulu|l2|LessThan2~0_combout\);

-- Location: FF_X82_Y8_N22
\lulu|l2|sig_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(4),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[0][4]~q\);

-- Location: MLABCELL_X82_Y8_N45
\lulu|l2|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan2~3_combout\ = ( \lulu|l2|sig_arr[1][5]~q\ & ( \lulu|l2|sig_arr[1][6]~q\ & ( (\lulu|l2|sig_arr[0][7]~q\ & !\lulu|l2|sig_arr[1][7]~q\) ) ) ) # ( !\lulu|l2|sig_arr[1][5]~q\ & ( \lulu|l2|sig_arr[1][6]~q\ & ( (!\lulu|l2|sig_arr[0][7]~q\ & 
-- (!\lulu|l2|sig_arr[1][7]~q\ & (\lulu|l2|sig_arr[0][6]~q\ & \lulu|l2|sig_arr[0][5]~q\))) # (\lulu|l2|sig_arr[0][7]~q\ & ((!\lulu|l2|sig_arr[1][7]~q\) # ((\lulu|l2|sig_arr[0][6]~q\ & \lulu|l2|sig_arr[0][5]~q\)))) ) ) ) # ( \lulu|l2|sig_arr[1][5]~q\ & ( 
-- !\lulu|l2|sig_arr[1][6]~q\ & ( (!\lulu|l2|sig_arr[0][7]~q\ & (!\lulu|l2|sig_arr[1][7]~q\ & \lulu|l2|sig_arr[0][6]~q\)) # (\lulu|l2|sig_arr[0][7]~q\ & ((!\lulu|l2|sig_arr[1][7]~q\) # (\lulu|l2|sig_arr[0][6]~q\))) ) ) ) # ( !\lulu|l2|sig_arr[1][5]~q\ & ( 
-- !\lulu|l2|sig_arr[1][6]~q\ & ( (!\lulu|l2|sig_arr[0][7]~q\ & (!\lulu|l2|sig_arr[1][7]~q\ & ((\lulu|l2|sig_arr[0][5]~q\) # (\lulu|l2|sig_arr[0][6]~q\)))) # (\lulu|l2|sig_arr[0][7]~q\ & ((!\lulu|l2|sig_arr[1][7]~q\) # ((\lulu|l2|sig_arr[0][5]~q\) # 
-- (\lulu|l2|sig_arr[0][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110111011101010011010100110101000100010011010100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_sig_arr[0][7]~q\,
	datab => \lulu|l2|ALT_INV_sig_arr[1][7]~q\,
	datac => \lulu|l2|ALT_INV_sig_arr[0][6]~q\,
	datad => \lulu|l2|ALT_INV_sig_arr[0][5]~q\,
	datae => \lulu|l2|ALT_INV_sig_arr[1][5]~q\,
	dataf => \lulu|l2|ALT_INV_sig_arr[1][6]~q\,
	combout => \lulu|l2|LessThan2~3_combout\);

-- Location: MLABCELL_X78_Y7_N54
\lulu|u1|temp_min~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_min~8_combout\ = ( \lulu|u1|LessThan6~0_combout\ & ( \lulu|u1|u_arr[0][2]~q\ & ( (!\lulu|u1|LessThan7~1_sumout\ & ((\lulu|u1|u_arr[2][2]~q\))) # (\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[1][2]~q\)) ) ) ) # ( 
-- !\lulu|u1|LessThan6~0_combout\ & ( \lulu|u1|u_arr[0][2]~q\ & ( (!\lulu|u1|LessThan7~1_sumout\ & (((\lulu|u1|u_arr[2][2]~q\)))) # (\lulu|u1|LessThan7~1_sumout\ & (((!\lulu|u1|LessThan6~6_combout\)) # (\lulu|u1|u_arr[1][2]~q\))) ) ) ) # ( 
-- \lulu|u1|LessThan6~0_combout\ & ( !\lulu|u1|u_arr[0][2]~q\ & ( (!\lulu|u1|LessThan7~1_sumout\ & ((\lulu|u1|u_arr[2][2]~q\))) # (\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[1][2]~q\)) ) ) ) # ( !\lulu|u1|LessThan6~0_combout\ & ( !\lulu|u1|u_arr[0][2]~q\ 
-- & ( (!\lulu|u1|LessThan7~1_sumout\ & (((\lulu|u1|u_arr[2][2]~q\)))) # (\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[1][2]~q\ & ((\lulu|u1|LessThan6~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100110101010100110011111101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_u_arr[1][2]~q\,
	datab => \lulu|u1|ALT_INV_u_arr[2][2]~q\,
	datac => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	datad => \lulu|u1|ALT_INV_LessThan7~1_sumout\,
	datae => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	dataf => \lulu|u1|ALT_INV_u_arr[0][2]~q\,
	combout => \lulu|u1|temp_min~8_combout\);

-- Location: FF_X78_Y7_N55
\lulu|u1|u_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_min~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_out\(2));

-- Location: FF_X82_Y9_N47
\lulu|l2|sig_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(2),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[0][2]~q\);

-- Location: LABCELL_X79_Y7_N39
\lulu|u1|temp_min~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_min~7_combout\ = ( \lulu|u1|u_arr[2][3]~q\ & ( \lulu|u1|LessThan6~6_combout\ & ( (!\lulu|u1|LessThan7~1_sumout\) # (\lulu|u1|u_arr[1][3]~q\) ) ) ) # ( !\lulu|u1|u_arr[2][3]~q\ & ( \lulu|u1|LessThan6~6_combout\ & ( (\lulu|u1|u_arr[1][3]~q\ & 
-- \lulu|u1|LessThan7~1_sumout\) ) ) ) # ( \lulu|u1|u_arr[2][3]~q\ & ( !\lulu|u1|LessThan6~6_combout\ & ( (!\lulu|u1|LessThan7~1_sumout\) # ((!\lulu|u1|LessThan6~0_combout\ & ((\lulu|u1|u_arr[0][3]~q\))) # (\lulu|u1|LessThan6~0_combout\ & 
-- (\lulu|u1|u_arr[1][3]~q\))) ) ) ) # ( !\lulu|u1|u_arr[2][3]~q\ & ( !\lulu|u1|LessThan6~6_combout\ & ( (\lulu|u1|LessThan7~1_sumout\ & ((!\lulu|u1|LessThan6~0_combout\ & ((\lulu|u1|u_arr[0][3]~q\))) # (\lulu|u1|LessThan6~0_combout\ & 
-- (\lulu|u1|u_arr[1][3]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101111111110001110100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_u_arr[1][3]~q\,
	datab => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u1|ALT_INV_u_arr[0][3]~q\,
	datad => \lulu|u1|ALT_INV_LessThan7~1_sumout\,
	datae => \lulu|u1|ALT_INV_u_arr[2][3]~q\,
	dataf => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	combout => \lulu|u1|temp_min~7_combout\);

-- Location: FF_X79_Y7_N40
\lulu|u1|u_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_min~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_out\(3));

-- Location: FF_X82_Y9_N4
\lulu|l2|sig_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(3),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[1][3]~q\);

-- Location: MLABCELL_X78_Y7_N36
\lulu|u1|temp_min~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_min~0_combout\ = ( \lulu|u1|u_arr[0][0]~q\ & ( \lulu|u1|LessThan6~6_combout\ & ( (!\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[2][0]~q\)) # (\lulu|u1|LessThan7~1_sumout\ & ((\lulu|u1|u_arr[1][0]~q\))) ) ) ) # ( !\lulu|u1|u_arr[0][0]~q\ & 
-- ( \lulu|u1|LessThan6~6_combout\ & ( (!\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[2][0]~q\)) # (\lulu|u1|LessThan7~1_sumout\ & ((\lulu|u1|u_arr[1][0]~q\))) ) ) ) # ( \lulu|u1|u_arr[0][0]~q\ & ( !\lulu|u1|LessThan6~6_combout\ & ( 
-- (!\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[2][0]~q\)) # (\lulu|u1|LessThan7~1_sumout\ & (((!\lulu|u1|LessThan6~0_combout\) # (\lulu|u1|u_arr[1][0]~q\)))) ) ) ) # ( !\lulu|u1|u_arr[0][0]~q\ & ( !\lulu|u1|LessThan6~6_combout\ & ( 
-- (!\lulu|u1|LessThan7~1_sumout\ & (\lulu|u1|u_arr[2][0]~q\)) # (\lulu|u1|LessThan7~1_sumout\ & (((\lulu|u1|LessThan6~0_combout\ & \lulu|u1|u_arr[1][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101011100111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_u_arr[2][0]~q\,
	datab => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u1|ALT_INV_u_arr[1][0]~q\,
	datad => \lulu|u1|ALT_INV_LessThan7~1_sumout\,
	datae => \lulu|u1|ALT_INV_u_arr[0][0]~q\,
	dataf => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	combout => \lulu|u1|temp_min~0_combout\);

-- Location: FF_X78_Y7_N37
\lulu|u1|u_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_min~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_out\(0));

-- Location: FF_X82_Y8_N47
\lulu|l2|sig_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(0),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[1][0]~q\);

-- Location: LABCELL_X77_Y7_N48
\lulu|u1|temp_min~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u1|temp_min~9_combout\ = ( \lulu|u1|LessThan6~0_combout\ & ( \lulu|u1|LessThan7~1_sumout\ & ( \lulu|u1|u_arr[1][1]~q\ ) ) ) # ( !\lulu|u1|LessThan6~0_combout\ & ( \lulu|u1|LessThan7~1_sumout\ & ( (!\lulu|u1|LessThan6~6_combout\ & 
-- ((\lulu|u1|u_arr[0][1]~q\))) # (\lulu|u1|LessThan6~6_combout\ & (\lulu|u1|u_arr[1][1]~q\)) ) ) ) # ( \lulu|u1|LessThan6~0_combout\ & ( !\lulu|u1|LessThan7~1_sumout\ & ( \lulu|u1|u_arr[2][1]~q\ ) ) ) # ( !\lulu|u1|LessThan6~0_combout\ & ( 
-- !\lulu|u1|LessThan7~1_sumout\ & ( \lulu|u1|u_arr[2][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001101110110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u1|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u1|ALT_INV_u_arr[1][1]~q\,
	datac => \lulu|u1|ALT_INV_u_arr[2][1]~q\,
	datad => \lulu|u1|ALT_INV_u_arr[0][1]~q\,
	datae => \lulu|u1|ALT_INV_LessThan6~0_combout\,
	dataf => \lulu|u1|ALT_INV_LessThan7~1_sumout\,
	combout => \lulu|u1|temp_min~9_combout\);

-- Location: FF_X77_Y7_N49
\lulu|u1|u_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u1|temp_min~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u1|u_out\(1));

-- Location: FF_X81_Y8_N19
\lulu|l2|sig_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(1),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[1][1]~q\);

-- Location: FF_X82_Y8_N1
\lulu|l2|sig_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(0),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[0][0]~q\);

-- Location: FF_X82_Y8_N11
\lulu|l2|sig_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(1),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[0][1]~q\);

-- Location: MLABCELL_X82_Y8_N0
\lulu|l2|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan2~1_combout\ = ( \lulu|l2|sig_arr[0][1]~q\ & ( (!\lulu|l2|sig_arr[1][1]~q\) # ((!\lulu|l2|sig_arr[1][0]~q\ & \lulu|l2|sig_arr[0][0]~q\)) ) ) # ( !\lulu|l2|sig_arr[0][1]~q\ & ( (!\lulu|l2|sig_arr[1][0]~q\ & (!\lulu|l2|sig_arr[1][1]~q\ & 
-- \lulu|l2|sig_arr[0][0]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011110000111111001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l2|ALT_INV_sig_arr[1][0]~q\,
	datac => \lulu|l2|ALT_INV_sig_arr[1][1]~q\,
	datad => \lulu|l2|ALT_INV_sig_arr[0][0]~q\,
	dataf => \lulu|l2|ALT_INV_sig_arr[0][1]~q\,
	combout => \lulu|l2|LessThan2~1_combout\);

-- Location: FF_X82_Y8_N19
\lulu|l2|sig_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(3),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[0][3]~q\);

-- Location: FF_X82_Y9_N17
\lulu|l2|sig_arr[1][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(2),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[1][2]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y8_N18
\lulu|l2|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan2~2_combout\ = ( \lulu|l2|sig_arr[1][2]~DUPLICATE_q\ & ( (!\lulu|l2|sig_arr[1][3]~q\ & (((\lulu|l2|sig_arr[0][2]~q\ & \lulu|l2|LessThan2~1_combout\)) # (\lulu|l2|sig_arr[0][3]~q\))) # (\lulu|l2|sig_arr[1][3]~q\ & 
-- (\lulu|l2|sig_arr[0][2]~q\ & (\lulu|l2|LessThan2~1_combout\ & \lulu|l2|sig_arr[0][3]~q\))) ) ) # ( !\lulu|l2|sig_arr[1][2]~DUPLICATE_q\ & ( (!\lulu|l2|sig_arr[1][3]~q\ & (((\lulu|l2|sig_arr[0][3]~q\) # (\lulu|l2|LessThan2~1_combout\)) # 
-- (\lulu|l2|sig_arr[0][2]~q\))) # (\lulu|l2|sig_arr[1][3]~q\ & (\lulu|l2|sig_arr[0][3]~q\ & ((\lulu|l2|LessThan2~1_combout\) # (\lulu|l2|sig_arr[0][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011011111010011001101111100000100110011010000010011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_sig_arr[0][2]~q\,
	datab => \lulu|l2|ALT_INV_sig_arr[1][3]~q\,
	datac => \lulu|l2|ALT_INV_LessThan2~1_combout\,
	datad => \lulu|l2|ALT_INV_sig_arr[0][3]~q\,
	dataf => \lulu|l2|ALT_INV_sig_arr[1][2]~DUPLICATE_q\,
	combout => \lulu|l2|LessThan2~2_combout\);

-- Location: MLABCELL_X82_Y8_N51
\lulu|l2|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan2~4_combout\ = ( \lulu|l2|LessThan2~2_combout\ & ( (!\lulu|l2|LessThan2~3_combout\ & ((!\lulu|l2|LessThan2~0_combout\) # ((\lulu|l2|sig_arr[1][4]~q\ & !\lulu|l2|sig_arr[0][4]~q\)))) ) ) # ( !\lulu|l2|LessThan2~2_combout\ & ( 
-- (!\lulu|l2|LessThan2~3_combout\ & (((!\lulu|l2|LessThan2~0_combout\) # (!\lulu|l2|sig_arr[0][4]~q\)) # (\lulu|l2|sig_arr[1][4]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110100000000111111010000000011011100000000001101110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_sig_arr[1][4]~q\,
	datab => \lulu|l2|ALT_INV_LessThan2~0_combout\,
	datac => \lulu|l2|ALT_INV_sig_arr[0][4]~q\,
	datad => \lulu|l2|ALT_INV_LessThan2~3_combout\,
	dataf => \lulu|l2|ALT_INV_LessThan2~2_combout\,
	combout => \lulu|l2|LessThan2~4_combout\);

-- Location: MLABCELL_X82_Y8_N24
\lulu|l2|LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan2~5_combout\ = ( \lulu|l2|LessThan2~4_combout\ & ( (!\lulu|l2|sig_arr[0][9]~q\ & (!\lulu|l2|sig_arr[1][9]~q\ & (!\lulu|l2|sig_arr[1][8]~q\ & \lulu|l2|sig_arr[0][8]~q\))) # (\lulu|l2|sig_arr[0][9]~q\ & ((!\lulu|l2|sig_arr[1][9]~q\) # 
-- ((!\lulu|l2|sig_arr[1][8]~q\ & \lulu|l2|sig_arr[0][8]~q\)))) ) ) # ( !\lulu|l2|LessThan2~4_combout\ & ( (!\lulu|l2|sig_arr[0][9]~q\ & (!\lulu|l2|sig_arr[1][9]~q\ & ((!\lulu|l2|sig_arr[1][8]~q\) # (\lulu|l2|sig_arr[0][8]~q\)))) # (\lulu|l2|sig_arr[0][9]~q\ 
-- & ((!\lulu|l2|sig_arr[1][9]~q\) # ((!\lulu|l2|sig_arr[1][8]~q\) # (\lulu|l2|sig_arr[0][8]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010011011101110101001101110101000100110101000100010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_sig_arr[0][9]~q\,
	datab => \lulu|l2|ALT_INV_sig_arr[1][9]~q\,
	datac => \lulu|l2|ALT_INV_sig_arr[1][8]~q\,
	datad => \lulu|l2|ALT_INV_sig_arr[0][8]~q\,
	dataf => \lulu|l2|ALT_INV_LessThan2~4_combout\,
	combout => \lulu|l2|LessThan2~5_combout\);

-- Location: LABCELL_X81_Y7_N36
\lulu|l2|temp_min~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~8_combout\ = ( \lulu|l2|sig_arr[0][9]~q\ & ( \lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[1][9]~q\ ) ) ) # ( !\lulu|l2|sig_arr[0][9]~q\ & ( \lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[1][9]~q\ ) ) ) # ( 
-- \lulu|l2|sig_arr[0][9]~q\ & ( !\lulu|l2|LessThan2~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l2|ALT_INV_sig_arr[1][9]~q\,
	datae => \lulu|l2|ALT_INV_sig_arr[0][9]~q\,
	dataf => \lulu|l2|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l2|temp_min~8_combout\);

-- Location: FF_X81_Y7_N41
\lulu|l2|sig_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(9),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[2][9]~q\);

-- Location: LABCELL_X81_Y7_N57
\lulu|l2|temp_min~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~11_combout\ = ( \lulu|l2|sig_arr[2][9]~q\ & ( \lulu|l2|temp_min~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_temp_min~8_combout\,
	dataf => \lulu|l2|ALT_INV_sig_arr[2][9]~q\,
	combout => \lulu|l2|temp_min~11_combout\);

-- Location: FF_X80_Y9_N41
\lulu|l2|l_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~11_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[1][9]~q\);

-- Location: FF_X81_Y7_N19
\lulu|l2|l_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~11_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[2][9]~q\);

-- Location: FF_X81_Y9_N35
\lulu|l2|l_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~11_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[0][9]~q\);

-- Location: FF_X81_Y7_N10
\lulu|l2|sig_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(8),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[2][8]~q\);

-- Location: LABCELL_X81_Y7_N12
\lulu|l2|temp_min~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~9_combout\ = ( \lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[1][8]~q\ ) ) # ( !\lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[0][8]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_sig_arr[0][8]~q\,
	datac => \lulu|l2|ALT_INV_sig_arr[1][8]~q\,
	dataf => \lulu|l2|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l2|temp_min~9_combout\);

-- Location: LABCELL_X81_Y7_N3
\lulu|l2|temp_min~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~12_combout\ = ( \lulu|l2|temp_min~8_combout\ & ( (\lulu|l2|sig_arr[2][8]~q\ & ((!\lulu|l2|sig_arr[2][9]~q\) # (\lulu|l2|temp_min~9_combout\))) ) ) # ( !\lulu|l2|temp_min~8_combout\ & ( (\lulu|l2|temp_min~9_combout\ & 
-- ((\lulu|l2|sig_arr[2][9]~q\) # (\lulu|l2|sig_arr[2][8]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111010001010100010100000111000001110100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_sig_arr[2][8]~q\,
	datab => \lulu|l2|ALT_INV_sig_arr[2][9]~q\,
	datac => \lulu|l2|ALT_INV_temp_min~9_combout\,
	datae => \lulu|l2|ALT_INV_temp_min~8_combout\,
	combout => \lulu|l2|temp_min~12_combout\);

-- Location: FF_X80_Y9_N35
\lulu|l2|l_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~12_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[1][8]~q\);

-- Location: FF_X81_Y9_N41
\lulu|l2|l_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~12_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[0][8]~q\);

-- Location: LABCELL_X81_Y7_N48
\lulu|l2|LessThan3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan3~10_combout\ = ( \lulu|l2|temp_min~9_combout\ & ( (!\lulu|l2|temp_min~8_combout\ & (!\lulu|l2|sig_arr[2][8]~q\ & !\lulu|l2|sig_arr[2][9]~q\)) # (\lulu|l2|temp_min~8_combout\ & ((!\lulu|l2|sig_arr[2][8]~q\) # 
-- (!\lulu|l2|sig_arr[2][9]~q\))) ) ) # ( !\lulu|l2|temp_min~9_combout\ & ( (\lulu|l2|temp_min~8_combout\ & !\lulu|l2|sig_arr[2][9]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011110101010100001111010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_temp_min~8_combout\,
	datac => \lulu|l2|ALT_INV_sig_arr[2][8]~q\,
	datad => \lulu|l2|ALT_INV_sig_arr[2][9]~q\,
	dataf => \lulu|l2|ALT_INV_temp_min~9_combout\,
	combout => \lulu|l2|LessThan3~10_combout\);

-- Location: FF_X82_Y9_N10
\lulu|l2|sig_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(2),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[2][2]~q\);

-- Location: FF_X82_Y9_N25
\lulu|l2|sig_arr[2][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(3),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[2][3]~DUPLICATE_q\);

-- Location: FF_X82_Y9_N16
\lulu|l2|sig_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(2),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[1][2]~q\);

-- Location: MLABCELL_X82_Y9_N33
\lulu|l2|temp_min~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~7_combout\ = ( \lulu|l2|sig_arr[1][2]~q\ & ( (\lulu|l2|LessThan2~5_combout\) # (\lulu|l2|sig_arr[0][2]~q\) ) ) # ( !\lulu|l2|sig_arr[1][2]~q\ & ( (\lulu|l2|sig_arr[0][2]~q\ & !\lulu|l2|LessThan2~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l2|ALT_INV_sig_arr[0][2]~q\,
	datad => \lulu|l2|ALT_INV_LessThan2~5_combout\,
	dataf => \lulu|l2|ALT_INV_sig_arr[1][2]~q\,
	combout => \lulu|l2|temp_min~7_combout\);

-- Location: MLABCELL_X82_Y9_N12
\lulu|l2|temp_min~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~6_combout\ = ( \lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[1][3]~q\ ) ) # ( !\lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[1][3]~q\ & ( \lulu|l2|sig_arr[0][3]~q\ ) ) ) # ( !\lulu|l2|LessThan2~5_combout\ & ( 
-- !\lulu|l2|sig_arr[1][3]~q\ & ( \lulu|l2|sig_arr[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l2|ALT_INV_sig_arr[0][3]~q\,
	datae => \lulu|l2|ALT_INV_LessThan2~5_combout\,
	dataf => \lulu|l2|ALT_INV_sig_arr[1][3]~q\,
	combout => \lulu|l2|temp_min~6_combout\);

-- Location: MLABCELL_X82_Y9_N54
\lulu|l2|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan3~4_combout\ = ( \lulu|l2|temp_min~6_combout\ & ( (\lulu|l2|sig_arr[2][3]~DUPLICATE_q\ & (!\lulu|l2|sig_arr[2][2]~q\ $ (\lulu|l2|temp_min~7_combout\))) ) ) # ( !\lulu|l2|temp_min~6_combout\ & ( (!\lulu|l2|sig_arr[2][3]~DUPLICATE_q\ & 
-- (!\lulu|l2|sig_arr[2][2]~q\ $ (\lulu|l2|temp_min~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_sig_arr[2][2]~q\,
	datab => \lulu|l2|ALT_INV_sig_arr[2][3]~DUPLICATE_q\,
	datac => \lulu|l2|ALT_INV_temp_min~7_combout\,
	dataf => \lulu|l2|ALT_INV_temp_min~6_combout\,
	combout => \lulu|l2|LessThan3~4_combout\);

-- Location: FF_X82_Y8_N59
\lulu|l2|sig_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(6),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[2][6]~q\);

-- Location: FF_X82_Y8_N56
\lulu|l2|sig_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(7),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[2][7]~q\);

-- Location: MLABCELL_X82_Y8_N54
\lulu|l2|temp_min~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~1_combout\ = ( \lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[1][7]~q\ ) ) # ( !\lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[0][7]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l2|ALT_INV_sig_arr[1][7]~q\,
	datac => \lulu|l2|ALT_INV_sig_arr[0][7]~q\,
	dataf => \lulu|l2|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l2|temp_min~1_combout\);

-- Location: MLABCELL_X82_Y8_N39
\lulu|l2|temp_min~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~2_combout\ = ( \lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[1][6]~q\ ) ) # ( !\lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[0][6]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l2|ALT_INV_sig_arr[0][6]~q\,
	datad => \lulu|l2|ALT_INV_sig_arr[1][6]~q\,
	dataf => \lulu|l2|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l2|temp_min~2_combout\);

-- Location: MLABCELL_X82_Y8_N36
\lulu|l2|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan3~0_combout\ = ( \lulu|l2|temp_min~2_combout\ & ( (\lulu|l2|sig_arr[2][6]~q\ & (!\lulu|l2|sig_arr[2][7]~q\ $ (\lulu|l2|temp_min~1_combout\))) ) ) # ( !\lulu|l2|temp_min~2_combout\ & ( (!\lulu|l2|sig_arr[2][6]~q\ & 
-- (!\lulu|l2|sig_arr[2][7]~q\ $ (\lulu|l2|temp_min~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_sig_arr[2][6]~q\,
	datab => \lulu|l2|ALT_INV_sig_arr[2][7]~q\,
	datac => \lulu|l2|ALT_INV_temp_min~1_combout\,
	dataf => \lulu|l2|ALT_INV_temp_min~2_combout\,
	combout => \lulu|l2|LessThan3~0_combout\);

-- Location: MLABCELL_X82_Y8_N21
\lulu|l2|temp_min~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~4_combout\ = ( \lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[1][4]~q\ ) ) # ( !\lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[0][4]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l2|ALT_INV_sig_arr[1][4]~q\,
	datad => \lulu|l2|ALT_INV_sig_arr[0][4]~q\,
	dataf => \lulu|l2|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l2|temp_min~4_combout\);

-- Location: FF_X80_Y8_N50
\lulu|l2|sig_arr[2][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(4),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[2][4]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y8_N27
\lulu|l2|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan3~2_combout\ = ( \lulu|l2|sig_arr[2][4]~DUPLICATE_q\ & ( !\lulu|l2|temp_min~4_combout\ ) ) # ( !\lulu|l2|sig_arr[2][4]~DUPLICATE_q\ & ( \lulu|l2|temp_min~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lulu|l2|ALT_INV_temp_min~4_combout\,
	dataf => \lulu|l2|ALT_INV_sig_arr[2][4]~DUPLICATE_q\,
	combout => \lulu|l2|LessThan3~2_combout\);

-- Location: FF_X82_Y9_N26
\lulu|l2|sig_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(3),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[2][3]~q\);

-- Location: MLABCELL_X82_Y9_N30
\lulu|l2|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan3~5_combout\ = (!\lulu|l2|temp_min~6_combout\ & (\lulu|l2|temp_min~7_combout\ & (!\lulu|l2|sig_arr[2][3]~q\ & !\lulu|l2|sig_arr[2][2]~q\))) # (\lulu|l2|temp_min~6_combout\ & ((!\lulu|l2|sig_arr[2][3]~q\) # ((\lulu|l2|temp_min~7_combout\ & 
-- !\lulu|l2|sig_arr[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100110000011100010011000001110001001100000111000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_temp_min~7_combout\,
	datab => \lulu|l2|ALT_INV_temp_min~6_combout\,
	datac => \lulu|l2|ALT_INV_sig_arr[2][3]~q\,
	datad => \lulu|l2|ALT_INV_sig_arr[2][2]~q\,
	combout => \lulu|l2|LessThan3~5_combout\);

-- Location: FF_X82_Y8_N44
\lulu|l2|sig_arr[1][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(5),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[1][5]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y8_N3
\lulu|l2|temp_min~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~3_combout\ = ( \lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[1][5]~DUPLICATE_q\ ) ) # ( !\lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[0][5]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l2|ALT_INV_sig_arr[1][5]~DUPLICATE_q\,
	datad => \lulu|l2|ALT_INV_sig_arr[0][5]~q\,
	dataf => \lulu|l2|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l2|temp_min~3_combout\);

-- Location: FF_X82_Y8_N50
\lulu|l2|sig_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(5),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[2][5]~q\);

-- Location: MLABCELL_X82_Y8_N48
\lulu|l2|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan3~1_combout\ = !\lulu|l2|temp_min~3_combout\ $ (!\lulu|l2|sig_arr[2][5]~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l2|ALT_INV_temp_min~3_combout\,
	datad => \lulu|l2|ALT_INV_sig_arr[2][5]~q\,
	combout => \lulu|l2|LessThan3~1_combout\);

-- Location: FF_X81_Y7_N28
\lulu|l2|sig_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(0),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[2][0]~q\);

-- Location: FF_X82_Y8_N53
\lulu|l2|sig_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(1),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[2][1]~q\);

-- Location: FF_X81_Y8_N20
\lulu|l2|sig_arr[1][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(1),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[1][1]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y8_N21
\lulu|l2|temp_min~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~5_combout\ = ( \lulu|l2|sig_arr[0][1]~q\ & ( \lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[1][1]~DUPLICATE_q\ ) ) ) # ( !\lulu|l2|sig_arr[0][1]~q\ & ( \lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[1][1]~DUPLICATE_q\ ) ) ) # ( 
-- \lulu|l2|sig_arr[0][1]~q\ & ( !\lulu|l2|LessThan2~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_sig_arr[1][1]~DUPLICATE_q\,
	datae => \lulu|l2|ALT_INV_sig_arr[0][1]~q\,
	dataf => \lulu|l2|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l2|temp_min~5_combout\);

-- Location: MLABCELL_X82_Y8_N12
\lulu|l2|temp_min~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~0_combout\ = ( \lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[1][0]~q\ ) ) # ( !\lulu|l2|LessThan2~5_combout\ & ( \lulu|l2|sig_arr[0][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l2|ALT_INV_sig_arr[1][0]~q\,
	datac => \lulu|l2|ALT_INV_sig_arr[0][0]~q\,
	dataf => \lulu|l2|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|l2|temp_min~0_combout\);

-- Location: MLABCELL_X82_Y8_N15
\lulu|l2|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan3~3_combout\ = ( \lulu|l2|temp_min~0_combout\ & ( (!\lulu|l2|sig_arr[2][0]~q\ & ((!\lulu|l2|sig_arr[2][1]~q\) # (\lulu|l2|temp_min~5_combout\))) # (\lulu|l2|sig_arr[2][0]~q\ & (!\lulu|l2|sig_arr[2][1]~q\ & \lulu|l2|temp_min~5_combout\)) ) 
-- ) # ( !\lulu|l2|temp_min~0_combout\ & ( (!\lulu|l2|sig_arr[2][1]~q\ & \lulu|l2|temp_min~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010100000111110101010000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_sig_arr[2][0]~q\,
	datac => \lulu|l2|ALT_INV_sig_arr[2][1]~q\,
	datad => \lulu|l2|ALT_INV_temp_min~5_combout\,
	dataf => \lulu|l2|ALT_INV_temp_min~0_combout\,
	combout => \lulu|l2|LessThan3~3_combout\);

-- Location: MLABCELL_X82_Y9_N42
\lulu|l2|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan3~6_combout\ = ( !\lulu|l2|LessThan3~1_combout\ & ( \lulu|l2|LessThan3~3_combout\ & ( (\lulu|l2|LessThan3~0_combout\ & (!\lulu|l2|LessThan3~2_combout\ & ((\lulu|l2|LessThan3~5_combout\) # (\lulu|l2|LessThan3~4_combout\)))) ) ) ) # ( 
-- !\lulu|l2|LessThan3~1_combout\ & ( !\lulu|l2|LessThan3~3_combout\ & ( (\lulu|l2|LessThan3~0_combout\ & (!\lulu|l2|LessThan3~2_combout\ & \lulu|l2|LessThan3~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000000000000010000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan3~4_combout\,
	datab => \lulu|l2|ALT_INV_LessThan3~0_combout\,
	datac => \lulu|l2|ALT_INV_LessThan3~2_combout\,
	datad => \lulu|l2|ALT_INV_LessThan3~5_combout\,
	datae => \lulu|l2|ALT_INV_LessThan3~1_combout\,
	dataf => \lulu|l2|ALT_INV_LessThan3~3_combout\,
	combout => \lulu|l2|LessThan3~6_combout\);

-- Location: LABCELL_X81_Y7_N54
\lulu|l2|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan3~9_combout\ = ( \lulu|l2|sig_arr[2][9]~q\ & ( (\lulu|l2|temp_min~8_combout\ & (!\lulu|l2|temp_min~9_combout\ $ (\lulu|l2|sig_arr[2][8]~q\))) ) ) # ( !\lulu|l2|sig_arr[2][9]~q\ & ( (!\lulu|l2|temp_min~8_combout\ & 
-- (!\lulu|l2|temp_min~9_combout\ $ (\lulu|l2|sig_arr[2][8]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l2|ALT_INV_temp_min~9_combout\,
	datac => \lulu|l2|ALT_INV_temp_min~8_combout\,
	datad => \lulu|l2|ALT_INV_sig_arr[2][8]~q\,
	dataf => \lulu|l2|ALT_INV_sig_arr[2][9]~q\,
	combout => \lulu|l2|LessThan3~9_combout\);

-- Location: FF_X80_Y8_N49
\lulu|l2|sig_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u1|u_out\(4),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|sig_arr[2][4]~q\);

-- Location: MLABCELL_X82_Y8_N57
\lulu|l2|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan3~7_combout\ = ( \lulu|l2|temp_min~2_combout\ & ( (!\lulu|l2|temp_min~1_combout\ & (!\lulu|l2|sig_arr[2][7]~q\ & !\lulu|l2|sig_arr[2][6]~q\)) # (\lulu|l2|temp_min~1_combout\ & ((!\lulu|l2|sig_arr[2][7]~q\) # (!\lulu|l2|sig_arr[2][6]~q\))) 
-- ) ) # ( !\lulu|l2|temp_min~2_combout\ & ( (\lulu|l2|temp_min~1_combout\ & !\lulu|l2|sig_arr[2][7]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110101010100001111010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_temp_min~1_combout\,
	datac => \lulu|l2|ALT_INV_sig_arr[2][7]~q\,
	datad => \lulu|l2|ALT_INV_sig_arr[2][6]~q\,
	dataf => \lulu|l2|ALT_INV_temp_min~2_combout\,
	combout => \lulu|l2|LessThan3~7_combout\);

-- Location: MLABCELL_X82_Y8_N30
\lulu|l2|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan3~8_combout\ = ( \lulu|l2|temp_min~3_combout\ & ( \lulu|l2|sig_arr[2][5]~q\ & ( (!\lulu|l2|LessThan3~7_combout\ & ((!\lulu|l2|LessThan3~0_combout\) # ((!\lulu|l2|temp_min~4_combout\) # (\lulu|l2|sig_arr[2][4]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\lulu|l2|temp_min~3_combout\ & ( \lulu|l2|sig_arr[2][5]~q\ & ( !\lulu|l2|LessThan3~7_combout\ ) ) ) # ( \lulu|l2|temp_min~3_combout\ & ( !\lulu|l2|sig_arr[2][5]~q\ & ( (!\lulu|l2|LessThan3~0_combout\ & !\lulu|l2|LessThan3~7_combout\) ) ) ) # ( 
-- !\lulu|l2|temp_min~3_combout\ & ( !\lulu|l2|sig_arr[2][5]~q\ & ( (!\lulu|l2|LessThan3~7_combout\ & ((!\lulu|l2|LessThan3~0_combout\) # ((!\lulu|l2|temp_min~4_combout\) # (\lulu|l2|sig_arr[2][4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101100000000101010100000000011111111000000001111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan3~0_combout\,
	datab => \lulu|l2|ALT_INV_sig_arr[2][4]~DUPLICATE_q\,
	datac => \lulu|l2|ALT_INV_temp_min~4_combout\,
	datad => \lulu|l2|ALT_INV_LessThan3~7_combout\,
	datae => \lulu|l2|ALT_INV_temp_min~3_combout\,
	dataf => \lulu|l2|ALT_INV_sig_arr[2][5]~q\,
	combout => \lulu|l2|LessThan3~8_combout\);

-- Location: LABCELL_X81_Y8_N42
\lulu|l2|temp_min~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~16_combout\ = ( \lulu|l2|sig_arr[2][4]~q\ & ( \lulu|l2|LessThan3~8_combout\ & ( (((\lulu|l2|LessThan3~6_combout\ & \lulu|l2|LessThan3~9_combout\)) # (\lulu|l2|temp_min~4_combout\)) # (\lulu|l2|LessThan3~10_combout\) ) ) ) # ( 
-- !\lulu|l2|sig_arr[2][4]~q\ & ( \lulu|l2|LessThan3~8_combout\ & ( (!\lulu|l2|LessThan3~10_combout\ & (\lulu|l2|temp_min~4_combout\ & ((!\lulu|l2|LessThan3~6_combout\) # (!\lulu|l2|LessThan3~9_combout\)))) ) ) ) # ( \lulu|l2|sig_arr[2][4]~q\ & ( 
-- !\lulu|l2|LessThan3~8_combout\ & ( ((\lulu|l2|LessThan3~9_combout\) # (\lulu|l2|temp_min~4_combout\)) # (\lulu|l2|LessThan3~10_combout\) ) ) ) # ( !\lulu|l2|sig_arr[2][4]~q\ & ( !\lulu|l2|LessThan3~8_combout\ & ( (!\lulu|l2|LessThan3~10_combout\ & 
-- (\lulu|l2|temp_min~4_combout\ & !\lulu|l2|LessThan3~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000010111111111111100001010000010000101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan3~10_combout\,
	datab => \lulu|l2|ALT_INV_LessThan3~6_combout\,
	datac => \lulu|l2|ALT_INV_temp_min~4_combout\,
	datad => \lulu|l2|ALT_INV_LessThan3~9_combout\,
	datae => \lulu|l2|ALT_INV_sig_arr[2][4]~q\,
	dataf => \lulu|l2|ALT_INV_LessThan3~8_combout\,
	combout => \lulu|l2|temp_min~16_combout\);

-- Location: FF_X81_Y9_N50
\lulu|l2|l_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~16_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[1][4]~q\);

-- Location: LABCELL_X81_Y8_N3
\lulu|l2|l_arr[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|l_arr[0][4]~feeder_combout\ = ( \lulu|l2|temp_min~16_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l2|ALT_INV_temp_min~16_combout\,
	combout => \lulu|l2|l_arr[0][4]~feeder_combout\);

-- Location: FF_X81_Y8_N4
\lulu|l2|l_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|l_arr[0][4]~feeder_combout\,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[0][4]~q\);

-- Location: MLABCELL_X82_Y9_N39
\lulu|l2|temp_min~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~14_combout\ = ( \lulu|l2|sig_arr[2][2]~q\ & ( \lulu|l2|temp_min~7_combout\ ) ) # ( !\lulu|l2|sig_arr[2][2]~q\ & ( \lulu|l2|temp_min~7_combout\ & ( (!\lulu|l2|LessThan3~10_combout\ & ((!\lulu|l2|LessThan3~9_combout\) # 
-- ((\lulu|l2|LessThan3~8_combout\ & !\lulu|l2|LessThan3~6_combout\)))) ) ) ) # ( \lulu|l2|sig_arr[2][2]~q\ & ( !\lulu|l2|temp_min~7_combout\ & ( ((\lulu|l2|LessThan3~9_combout\ & ((!\lulu|l2|LessThan3~8_combout\) # (\lulu|l2|LessThan3~6_combout\)))) # 
-- (\lulu|l2|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111011111111110000010000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan3~8_combout\,
	datab => \lulu|l2|ALT_INV_LessThan3~6_combout\,
	datac => \lulu|l2|ALT_INV_LessThan3~10_combout\,
	datad => \lulu|l2|ALT_INV_LessThan3~9_combout\,
	datae => \lulu|l2|ALT_INV_sig_arr[2][2]~q\,
	dataf => \lulu|l2|ALT_INV_temp_min~7_combout\,
	combout => \lulu|l2|temp_min~14_combout\);

-- Location: FF_X82_Y9_N41
\lulu|l2|l_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_min~14_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[1][2]~q\);

-- Location: MLABCELL_X82_Y9_N6
\lulu|l2|temp_min~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~15_combout\ = ( \lulu|l2|LessThan3~10_combout\ & ( \lulu|l2|LessThan3~6_combout\ & ( \lulu|l2|sig_arr[2][3]~q\ ) ) ) # ( !\lulu|l2|LessThan3~10_combout\ & ( \lulu|l2|LessThan3~6_combout\ & ( (!\lulu|l2|LessThan3~9_combout\ & 
-- ((\lulu|l2|temp_min~6_combout\))) # (\lulu|l2|LessThan3~9_combout\ & (\lulu|l2|sig_arr[2][3]~q\)) ) ) ) # ( \lulu|l2|LessThan3~10_combout\ & ( !\lulu|l2|LessThan3~6_combout\ & ( \lulu|l2|sig_arr[2][3]~q\ ) ) ) # ( !\lulu|l2|LessThan3~10_combout\ & ( 
-- !\lulu|l2|LessThan3~6_combout\ & ( (!\lulu|l2|LessThan3~9_combout\ & (((\lulu|l2|temp_min~6_combout\)))) # (\lulu|l2|LessThan3~9_combout\ & ((!\lulu|l2|LessThan3~8_combout\ & (\lulu|l2|sig_arr[2][3]~q\)) # (\lulu|l2|LessThan3~8_combout\ & 
-- ((\lulu|l2|temp_min~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000011110000111100000101101011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan3~9_combout\,
	datab => \lulu|l2|ALT_INV_LessThan3~8_combout\,
	datac => \lulu|l2|ALT_INV_sig_arr[2][3]~q\,
	datad => \lulu|l2|ALT_INV_temp_min~6_combout\,
	datae => \lulu|l2|ALT_INV_LessThan3~10_combout\,
	dataf => \lulu|l2|ALT_INV_LessThan3~6_combout\,
	combout => \lulu|l2|temp_min~15_combout\);

-- Location: FF_X80_Y9_N59
\lulu|l2|l_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~15_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[0][3]~q\);

-- Location: FF_X81_Y9_N38
\lulu|l2|l_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~14_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[0][2]~q\);

-- Location: MLABCELL_X82_Y9_N27
\lulu|l2|temp_min~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~13_combout\ = ( \lulu|l2|temp_min~5_combout\ & ( \lulu|l2|LessThan3~6_combout\ & ( ((!\lulu|l2|LessThan3~9_combout\ & !\lulu|l2|LessThan3~10_combout\)) # (\lulu|l2|sig_arr[2][1]~q\) ) ) ) # ( !\lulu|l2|temp_min~5_combout\ & ( 
-- \lulu|l2|LessThan3~6_combout\ & ( (\lulu|l2|sig_arr[2][1]~q\ & ((\lulu|l2|LessThan3~10_combout\) # (\lulu|l2|LessThan3~9_combout\))) ) ) ) # ( \lulu|l2|temp_min~5_combout\ & ( !\lulu|l2|LessThan3~6_combout\ & ( ((!\lulu|l2|LessThan3~10_combout\ & 
-- ((!\lulu|l2|LessThan3~9_combout\) # (\lulu|l2|LessThan3~8_combout\)))) # (\lulu|l2|sig_arr[2][1]~q\) ) ) ) # ( !\lulu|l2|temp_min~5_combout\ & ( !\lulu|l2|LessThan3~6_combout\ & ( (\lulu|l2|sig_arr[2][1]~q\ & (((\lulu|l2|LessThan3~9_combout\ & 
-- !\lulu|l2|LessThan3~8_combout\)) # (\lulu|l2|LessThan3~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001111101100001111111100000000010111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan3~9_combout\,
	datab => \lulu|l2|ALT_INV_LessThan3~8_combout\,
	datac => \lulu|l2|ALT_INV_LessThan3~10_combout\,
	datad => \lulu|l2|ALT_INV_sig_arr[2][1]~q\,
	datae => \lulu|l2|ALT_INV_temp_min~5_combout\,
	dataf => \lulu|l2|ALT_INV_LessThan3~6_combout\,
	combout => \lulu|l2|temp_min~13_combout\);

-- Location: FF_X82_Y9_N55
\lulu|l2|l_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~13_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[0][1]~q\);

-- Location: MLABCELL_X82_Y9_N36
\lulu|l2|temp_min~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~10_combout\ = ( \lulu|l2|sig_arr[2][0]~q\ & ( \lulu|l2|temp_min~0_combout\ ) ) # ( !\lulu|l2|sig_arr[2][0]~q\ & ( \lulu|l2|temp_min~0_combout\ & ( (!\lulu|l2|LessThan3~10_combout\ & ((!\lulu|l2|LessThan3~9_combout\) # 
-- ((\lulu|l2|LessThan3~8_combout\ & !\lulu|l2|LessThan3~6_combout\)))) ) ) ) # ( \lulu|l2|sig_arr[2][0]~q\ & ( !\lulu|l2|temp_min~0_combout\ & ( ((\lulu|l2|LessThan3~9_combout\ & ((!\lulu|l2|LessThan3~8_combout\) # (\lulu|l2|LessThan3~6_combout\)))) # 
-- (\lulu|l2|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010111111111111110100000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan3~8_combout\,
	datab => \lulu|l2|ALT_INV_LessThan3~6_combout\,
	datac => \lulu|l2|ALT_INV_LessThan3~9_combout\,
	datad => \lulu|l2|ALT_INV_LessThan3~10_combout\,
	datae => \lulu|l2|ALT_INV_sig_arr[2][0]~q\,
	dataf => \lulu|l2|ALT_INV_temp_min~0_combout\,
	combout => \lulu|l2|temp_min~10_combout\);

-- Location: FF_X81_Y9_N14
\lulu|l2|l_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~10_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[0][0]~q\);

-- Location: FF_X81_Y9_N56
\lulu|l2|l_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~13_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[1][1]~q\);

-- Location: FF_X82_Y9_N14
\lulu|l2|l_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~10_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[1][0]~q\);

-- Location: LABCELL_X81_Y9_N57
\lulu|l2|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan6~1_combout\ = ( \lulu|l2|l_arr[1][0]~q\ & ( (!\lulu|l2|l_arr[0][1]~q\ & ((!\lulu|l2|l_arr[0][0]~q\) # (\lulu|l2|l_arr[1][1]~q\))) # (\lulu|l2|l_arr[0][1]~q\ & (!\lulu|l2|l_arr[0][0]~q\ & \lulu|l2|l_arr[1][1]~q\)) ) ) # ( 
-- !\lulu|l2|l_arr[1][0]~q\ & ( (!\lulu|l2|l_arr[0][1]~q\ & \lulu|l2|l_arr[1][1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010100010001110111000000000101010101000100011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_l_arr[0][1]~q\,
	datab => \lulu|l2|ALT_INV_l_arr[0][0]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[1][1]~q\,
	datae => \lulu|l2|ALT_INV_l_arr[1][0]~q\,
	combout => \lulu|l2|LessThan6~1_combout\);

-- Location: FF_X80_Y9_N38
\lulu|l2|l_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~15_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[1][3]~q\);

-- Location: LABCELL_X81_Y9_N39
\lulu|l2|LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan6~2_combout\ = ( \lulu|l2|LessThan6~1_combout\ & ( \lulu|l2|l_arr[1][3]~q\ & ( ((!\lulu|l2|l_arr[0][3]~q\) # (!\lulu|l2|l_arr[0][2]~q\)) # (\lulu|l2|l_arr[1][2]~q\) ) ) ) # ( !\lulu|l2|LessThan6~1_combout\ & ( \lulu|l2|l_arr[1][3]~q\ & ( 
-- (!\lulu|l2|l_arr[0][3]~q\) # ((\lulu|l2|l_arr[1][2]~q\ & !\lulu|l2|l_arr[0][2]~q\)) ) ) ) # ( \lulu|l2|LessThan6~1_combout\ & ( !\lulu|l2|l_arr[1][3]~q\ & ( (!\lulu|l2|l_arr[0][3]~q\ & ((!\lulu|l2|l_arr[0][2]~q\) # (\lulu|l2|l_arr[1][2]~q\))) ) ) ) # ( 
-- !\lulu|l2|LessThan6~1_combout\ & ( !\lulu|l2|l_arr[1][3]~q\ & ( (\lulu|l2|l_arr[1][2]~q\ & (!\lulu|l2|l_arr[0][3]~q\ & !\lulu|l2|l_arr[0][2]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000111100000101000011110101111100001111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_l_arr[1][2]~q\,
	datac => \lulu|l2|ALT_INV_l_arr[0][3]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[0][2]~q\,
	datae => \lulu|l2|ALT_INV_LessThan6~1_combout\,
	dataf => \lulu|l2|ALT_INV_l_arr[1][3]~q\,
	combout => \lulu|l2|LessThan6~2_combout\);

-- Location: LABCELL_X81_Y7_N42
\lulu|l2|temp_min~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~17_combout\ = ( \lulu|l2|LessThan3~9_combout\ & ( \lulu|l2|LessThan3~6_combout\ & ( \lulu|l2|sig_arr[2][5]~q\ ) ) ) # ( !\lulu|l2|LessThan3~9_combout\ & ( \lulu|l2|LessThan3~6_combout\ & ( (!\lulu|l2|LessThan3~10_combout\ & 
-- ((\lulu|l2|temp_min~3_combout\))) # (\lulu|l2|LessThan3~10_combout\ & (\lulu|l2|sig_arr[2][5]~q\)) ) ) ) # ( \lulu|l2|LessThan3~9_combout\ & ( !\lulu|l2|LessThan3~6_combout\ & ( (!\lulu|l2|LessThan3~10_combout\ & ((!\lulu|l2|LessThan3~8_combout\ & 
-- (\lulu|l2|sig_arr[2][5]~q\)) # (\lulu|l2|LessThan3~8_combout\ & ((\lulu|l2|temp_min~3_combout\))))) # (\lulu|l2|LessThan3~10_combout\ & (\lulu|l2|sig_arr[2][5]~q\)) ) ) ) # ( !\lulu|l2|LessThan3~9_combout\ & ( !\lulu|l2|LessThan3~6_combout\ & ( 
-- (!\lulu|l2|LessThan3~10_combout\ & ((\lulu|l2|temp_min~3_combout\))) # (\lulu|l2|LessThan3~10_combout\ & (\lulu|l2|sig_arr[2][5]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011001100010011101100010001101110110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan3~10_combout\,
	datab => \lulu|l2|ALT_INV_sig_arr[2][5]~q\,
	datac => \lulu|l2|ALT_INV_LessThan3~8_combout\,
	datad => \lulu|l2|ALT_INV_temp_min~3_combout\,
	datae => \lulu|l2|ALT_INV_LessThan3~9_combout\,
	dataf => \lulu|l2|ALT_INV_LessThan3~6_combout\,
	combout => \lulu|l2|temp_min~17_combout\);

-- Location: FF_X82_Y9_N23
\lulu|l2|l_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~17_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[0][5]~q\);

-- Location: LABCELL_X81_Y8_N36
\lulu|l2|temp_min~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~19_combout\ = ( \lulu|l2|sig_arr[2][7]~q\ & ( \lulu|l2|LessThan3~8_combout\ & ( (((\lulu|l2|LessThan3~9_combout\ & \lulu|l2|LessThan3~6_combout\)) # (\lulu|l2|temp_min~1_combout\)) # (\lulu|l2|LessThan3~10_combout\) ) ) ) # ( 
-- !\lulu|l2|sig_arr[2][7]~q\ & ( \lulu|l2|LessThan3~8_combout\ & ( (!\lulu|l2|LessThan3~10_combout\ & (\lulu|l2|temp_min~1_combout\ & ((!\lulu|l2|LessThan3~9_combout\) # (!\lulu|l2|LessThan3~6_combout\)))) ) ) ) # ( \lulu|l2|sig_arr[2][7]~q\ & ( 
-- !\lulu|l2|LessThan3~8_combout\ & ( ((\lulu|l2|temp_min~1_combout\) # (\lulu|l2|LessThan3~10_combout\)) # (\lulu|l2|LessThan3~9_combout\) ) ) ) # ( !\lulu|l2|sig_arr[2][7]~q\ & ( !\lulu|l2|LessThan3~8_combout\ & ( (!\lulu|l2|LessThan3~9_combout\ & 
-- (!\lulu|l2|LessThan3~10_combout\ & \lulu|l2|temp_min~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000010111111111111100000000111000000001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan3~9_combout\,
	datab => \lulu|l2|ALT_INV_LessThan3~6_combout\,
	datac => \lulu|l2|ALT_INV_LessThan3~10_combout\,
	datad => \lulu|l2|ALT_INV_temp_min~1_combout\,
	datae => \lulu|l2|ALT_INV_sig_arr[2][7]~q\,
	dataf => \lulu|l2|ALT_INV_LessThan3~8_combout\,
	combout => \lulu|l2|temp_min~19_combout\);

-- Location: FF_X81_Y9_N32
\lulu|l2|l_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~19_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[0][7]~q\);

-- Location: MLABCELL_X82_Y9_N51
\lulu|l2|temp_min~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_min~18_combout\ = ( \lulu|l2|temp_min~2_combout\ & ( \lulu|l2|LessThan3~6_combout\ & ( ((!\lulu|l2|LessThan3~10_combout\ & !\lulu|l2|LessThan3~9_combout\)) # (\lulu|l2|sig_arr[2][6]~q\) ) ) ) # ( !\lulu|l2|temp_min~2_combout\ & ( 
-- \lulu|l2|LessThan3~6_combout\ & ( (\lulu|l2|sig_arr[2][6]~q\ & ((\lulu|l2|LessThan3~9_combout\) # (\lulu|l2|LessThan3~10_combout\))) ) ) ) # ( \lulu|l2|temp_min~2_combout\ & ( !\lulu|l2|LessThan3~6_combout\ & ( ((!\lulu|l2|LessThan3~10_combout\ & 
-- ((!\lulu|l2|LessThan3~9_combout\) # (\lulu|l2|LessThan3~8_combout\)))) # (\lulu|l2|sig_arr[2][6]~q\) ) ) ) # ( !\lulu|l2|temp_min~2_combout\ & ( !\lulu|l2|LessThan3~6_combout\ & ( (\lulu|l2|sig_arr[2][6]~q\ & (((!\lulu|l2|LessThan3~8_combout\ & 
-- \lulu|l2|LessThan3~9_combout\)) # (\lulu|l2|LessThan3~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101000101111101010111010100000101010101011111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_sig_arr[2][6]~q\,
	datab => \lulu|l2|ALT_INV_LessThan3~8_combout\,
	datac => \lulu|l2|ALT_INV_LessThan3~10_combout\,
	datad => \lulu|l2|ALT_INV_LessThan3~9_combout\,
	datae => \lulu|l2|ALT_INV_temp_min~2_combout\,
	dataf => \lulu|l2|ALT_INV_LessThan3~6_combout\,
	combout => \lulu|l2|temp_min~18_combout\);

-- Location: FF_X82_Y9_N59
\lulu|l2|l_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~18_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[0][6]~q\);

-- Location: FF_X81_Y9_N53
\lulu|l2|l_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~18_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[1][6]~q\);

-- Location: FF_X81_Y7_N5
\lulu|l2|l_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~17_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[1][5]~q\);

-- Location: FF_X81_Y9_N43
\lulu|l2|l_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~19_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[1][7]~q\);

-- Location: LABCELL_X81_Y9_N15
\lulu|l2|LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan6~4_combout\ = ( \lulu|l2|l_arr[1][5]~q\ & ( \lulu|l2|l_arr[1][7]~q\ & ( (!\lulu|l2|l_arr[0][7]~q\) # ((!\lulu|l2|l_arr[0][5]~q\ & ((!\lulu|l2|l_arr[0][6]~q\) # (\lulu|l2|l_arr[1][6]~q\))) # (\lulu|l2|l_arr[0][5]~q\ & 
-- (!\lulu|l2|l_arr[0][6]~q\ & \lulu|l2|l_arr[1][6]~q\))) ) ) ) # ( !\lulu|l2|l_arr[1][5]~q\ & ( \lulu|l2|l_arr[1][7]~q\ & ( (!\lulu|l2|l_arr[0][7]~q\) # ((!\lulu|l2|l_arr[0][6]~q\ & \lulu|l2|l_arr[1][6]~q\)) ) ) ) # ( \lulu|l2|l_arr[1][5]~q\ & ( 
-- !\lulu|l2|l_arr[1][7]~q\ & ( (!\lulu|l2|l_arr[0][7]~q\ & ((!\lulu|l2|l_arr[0][5]~q\ & ((!\lulu|l2|l_arr[0][6]~q\) # (\lulu|l2|l_arr[1][6]~q\))) # (\lulu|l2|l_arr[0][5]~q\ & (!\lulu|l2|l_arr[0][6]~q\ & \lulu|l2|l_arr[1][6]~q\)))) ) ) ) # ( 
-- !\lulu|l2|l_arr[1][5]~q\ & ( !\lulu|l2|l_arr[1][7]~q\ & ( (!\lulu|l2|l_arr[0][7]~q\ & (!\lulu|l2|l_arr[0][6]~q\ & \lulu|l2|l_arr[1][6]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000100000001100100011001100111111001110110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_l_arr[0][5]~q\,
	datab => \lulu|l2|ALT_INV_l_arr[0][7]~q\,
	datac => \lulu|l2|ALT_INV_l_arr[0][6]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[1][6]~q\,
	datae => \lulu|l2|ALT_INV_l_arr[1][5]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[1][7]~q\,
	combout => \lulu|l2|LessThan6~4_combout\);

-- Location: FF_X81_Y9_N52
\lulu|l2|l_arr[1][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~18_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[1][6]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y9_N18
\lulu|l2|LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan6~3_combout\ = ( \lulu|l2|l_arr[1][5]~q\ & ( \lulu|l2|l_arr[1][6]~DUPLICATE_q\ & ( (\lulu|l2|l_arr[0][5]~q\ & (\lulu|l2|l_arr[0][6]~q\ & (!\lulu|l2|l_arr[0][7]~q\ $ (\lulu|l2|l_arr[1][7]~q\)))) ) ) ) # ( !\lulu|l2|l_arr[1][5]~q\ & ( 
-- \lulu|l2|l_arr[1][6]~DUPLICATE_q\ & ( (!\lulu|l2|l_arr[0][5]~q\ & (\lulu|l2|l_arr[0][6]~q\ & (!\lulu|l2|l_arr[0][7]~q\ $ (\lulu|l2|l_arr[1][7]~q\)))) ) ) ) # ( \lulu|l2|l_arr[1][5]~q\ & ( !\lulu|l2|l_arr[1][6]~DUPLICATE_q\ & ( (\lulu|l2|l_arr[0][5]~q\ & 
-- (!\lulu|l2|l_arr[0][6]~q\ & (!\lulu|l2|l_arr[0][7]~q\ $ (\lulu|l2|l_arr[1][7]~q\)))) ) ) ) # ( !\lulu|l2|l_arr[1][5]~q\ & ( !\lulu|l2|l_arr[1][6]~DUPLICATE_q\ & ( (!\lulu|l2|l_arr[0][5]~q\ & (!\lulu|l2|l_arr[0][6]~q\ & (!\lulu|l2|l_arr[0][7]~q\ $ 
-- (\lulu|l2|l_arr[1][7]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_l_arr[0][7]~q\,
	datab => \lulu|l2|ALT_INV_l_arr[1][7]~q\,
	datac => \lulu|l2|ALT_INV_l_arr[0][5]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[0][6]~q\,
	datae => \lulu|l2|ALT_INV_l_arr[1][5]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[1][6]~DUPLICATE_q\,
	combout => \lulu|l2|LessThan6~3_combout\);

-- Location: LABCELL_X81_Y9_N21
\lulu|l2|LessThan6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan6~5_combout\ = ( \lulu|l2|LessThan6~3_combout\ & ( (!\lulu|l2|LessThan6~4_combout\ & ((!\lulu|l2|l_arr[1][4]~q\ & ((!\lulu|l2|LessThan6~2_combout\) # (\lulu|l2|l_arr[0][4]~q\))) # (\lulu|l2|l_arr[1][4]~q\ & (\lulu|l2|l_arr[0][4]~q\ & 
-- !\lulu|l2|LessThan6~2_combout\)))) ) ) # ( !\lulu|l2|LessThan6~3_combout\ & ( !\lulu|l2|LessThan6~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010110010000000001011001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_l_arr[1][4]~q\,
	datab => \lulu|l2|ALT_INV_l_arr[0][4]~q\,
	datac => \lulu|l2|ALT_INV_LessThan6~2_combout\,
	datad => \lulu|l2|ALT_INV_LessThan6~4_combout\,
	dataf => \lulu|l2|ALT_INV_LessThan6~3_combout\,
	combout => \lulu|l2|LessThan6~5_combout\);

-- Location: LABCELL_X80_Y9_N54
\lulu|l2|LessThan6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan6~6_combout\ = ( \lulu|l2|LessThan6~5_combout\ & ( \lulu|l2|l_arr[1][9]~q\ & ( (!\lulu|l2|l_arr[0][8]~q\ & (\lulu|l2|l_arr[0][9]~q\ & \lulu|l2|l_arr[1][8]~q\)) ) ) ) # ( !\lulu|l2|LessThan6~5_combout\ & ( \lulu|l2|l_arr[1][9]~q\ & ( 
-- (\lulu|l2|l_arr[0][9]~q\ & ((!\lulu|l2|l_arr[0][8]~q\) # (\lulu|l2|l_arr[1][8]~q\))) ) ) ) # ( \lulu|l2|LessThan6~5_combout\ & ( !\lulu|l2|l_arr[1][9]~q\ & ( (!\lulu|l2|l_arr[0][8]~q\ & (!\lulu|l2|l_arr[0][9]~q\ & \lulu|l2|l_arr[1][8]~q\)) ) ) ) # ( 
-- !\lulu|l2|LessThan6~5_combout\ & ( !\lulu|l2|l_arr[1][9]~q\ & ( (!\lulu|l2|l_arr[0][9]~q\ & ((!\lulu|l2|l_arr[0][8]~q\) # (\lulu|l2|l_arr[1][8]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100000010000000100000100011001000110000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_l_arr[0][8]~q\,
	datab => \lulu|l2|ALT_INV_l_arr[0][9]~q\,
	datac => \lulu|l2|ALT_INV_l_arr[1][8]~q\,
	datae => \lulu|l2|ALT_INV_LessThan6~5_combout\,
	dataf => \lulu|l2|ALT_INV_l_arr[1][9]~q\,
	combout => \lulu|l2|LessThan6~6_combout\);

-- Location: LABCELL_X81_Y9_N24
\lulu|l2|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan6~0_combout\ = ( !\lulu|l2|l_arr[0][9]~q\ & ( \lulu|l2|l_arr[1][9]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l2|ALT_INV_l_arr[1][9]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[0][9]~q\,
	combout => \lulu|l2|LessThan6~0_combout\);

-- Location: LABCELL_X80_Y9_N39
\lulu|l2|LessThan6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan6~7_combout\ = ( \lulu|l2|LessThan6~0_combout\ ) # ( !\lulu|l2|LessThan6~0_combout\ & ( \lulu|l2|LessThan6~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lulu|l2|ALT_INV_LessThan6~6_combout\,
	dataf => \lulu|l2|ALT_INV_LessThan6~0_combout\,
	combout => \lulu|l2|LessThan6~7_combout\);

-- Location: LABCELL_X80_Y9_N36
\lulu|l2|temp_max~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_max~1_combout\ = (!\lulu|l2|LessThan6~7_combout\ & ((\lulu|l2|l_arr[0][8]~q\))) # (\lulu|l2|LessThan6~7_combout\ & (\lulu|l2|l_arr[1][8]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_l_arr[1][8]~q\,
	datab => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l2|ALT_INV_l_arr[0][8]~q\,
	combout => \lulu|l2|temp_max~1_combout\);

-- Location: FF_X81_Y7_N53
\lulu|l2|l_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~12_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[2][8]~q\);

-- Location: FF_X81_Y8_N38
\lulu|l2|l_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_min~19_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[2][7]~q\);

-- Location: FF_X82_Y9_N53
\lulu|l2|l_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_min~18_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[2][6]~q\);

-- Location: LABCELL_X81_Y9_N30
\lulu|l2|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan5~0_combout\ = ( !\lulu|l2|l_arr[0][0]~q\ & ( (!\lulu|l2|l_arr[0][1]~q\ & (!\lulu|l2|l_arr[0][3]~q\ & !\lulu|l2|l_arr[0][2]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_l_arr[0][1]~q\,
	datab => \lulu|l2|ALT_INV_l_arr[0][3]~q\,
	datac => \lulu|l2|ALT_INV_l_arr[0][2]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[0][0]~q\,
	combout => \lulu|l2|LessThan5~0_combout\);

-- Location: LABCELL_X81_Y9_N48
\lulu|l2|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan5~1_combout\ = (!\lulu|l2|l_arr[0][8]~q\ & (!\lulu|l2|l_arr[0][6]~q\ & (!\lulu|l2|l_arr[0][9]~q\ & !\lulu|l2|l_arr[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_l_arr[0][8]~q\,
	datab => \lulu|l2|ALT_INV_l_arr[0][6]~q\,
	datac => \lulu|l2|ALT_INV_l_arr[0][9]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[0][7]~q\,
	combout => \lulu|l2|LessThan5~1_combout\);

-- Location: LABCELL_X81_Y9_N45
\lulu|l2|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan5~2_combout\ = ( \lulu|l2|LessThan5~1_combout\ & ( ((!\lulu|l2|LessThan5~0_combout\) # (\lulu|l2|l_arr[0][5]~q\)) # (\lulu|l2|l_arr[0][4]~q\) ) ) # ( !\lulu|l2|LessThan5~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100111111111111111111111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l2|ALT_INV_l_arr[0][4]~q\,
	datac => \lulu|l2|ALT_INV_LessThan5~0_combout\,
	datad => \lulu|l2|ALT_INV_l_arr[0][5]~q\,
	datae => \lulu|l2|ALT_INV_LessThan5~1_combout\,
	combout => \lulu|l2|LessThan5~2_combout\);

-- Location: FF_X81_Y7_N44
\lulu|l2|l_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_min~17_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[2][5]~q\);

-- Location: FF_X81_Y8_N44
\lulu|l2|l_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_min~16_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[2][4]~q\);

-- Location: FF_X82_Y9_N8
\lulu|l2|l_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_min~15_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[2][3]~q\);

-- Location: FF_X80_Y9_N58
\lulu|l2|l_arr[0][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~15_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[0][3]~DUPLICATE_q\);

-- Location: FF_X82_Y9_N50
\lulu|l2|l_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~14_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[2][2]~q\);

-- Location: FF_X82_Y9_N29
\lulu|l2|l_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_min~13_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[2][1]~q\);

-- Location: FF_X82_Y9_N35
\lulu|l2|l_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~10_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[2][0]~q\);

-- Location: LABCELL_X80_Y9_N0
\lulu|l2|LessThan7~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan7~42_cout\ = CARRY(( (!\lulu|l2|LessThan6~7_combout\ & ((!\lulu|l2|LessThan5~2_combout\) # ((!\lulu|l2|l_arr[0][0]~q\)))) # (\lulu|l2|LessThan6~7_combout\ & (((!\lulu|l2|l_arr[1][0]~q\)))) ) + ( \lulu|l2|l_arr[2][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan5~2_combout\,
	datab => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l2|ALT_INV_l_arr[1][0]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[0][0]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[2][0]~q\,
	cin => GND,
	cout => \lulu|l2|LessThan7~42_cout\);

-- Location: LABCELL_X80_Y9_N3
\lulu|l2|LessThan7~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan7~38_cout\ = CARRY(( (!\lulu|l2|LessThan6~7_combout\ & ((!\lulu|l2|LessThan5~2_combout\) # ((!\lulu|l2|l_arr[0][1]~q\)))) # (\lulu|l2|LessThan6~7_combout\ & (((!\lulu|l2|l_arr[1][1]~q\)))) ) + ( \lulu|l2|l_arr[2][1]~q\ ) + ( 
-- \lulu|l2|LessThan7~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan5~2_combout\,
	datab => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l2|ALT_INV_l_arr[1][1]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[0][1]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[2][1]~q\,
	cin => \lulu|l2|LessThan7~42_cout\,
	cout => \lulu|l2|LessThan7~38_cout\);

-- Location: LABCELL_X80_Y9_N6
\lulu|l2|LessThan7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan7~34_cout\ = CARRY(( (!\lulu|l2|LessThan6~7_combout\ & ((!\lulu|l2|LessThan5~2_combout\) # ((!\lulu|l2|l_arr[0][2]~q\)))) # (\lulu|l2|LessThan6~7_combout\ & (((!\lulu|l2|l_arr[1][2]~q\)))) ) + ( \lulu|l2|l_arr[2][2]~q\ ) + ( 
-- \lulu|l2|LessThan7~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan5~2_combout\,
	datab => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l2|ALT_INV_l_arr[1][2]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[0][2]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[2][2]~q\,
	cin => \lulu|l2|LessThan7~38_cout\,
	cout => \lulu|l2|LessThan7~34_cout\);

-- Location: LABCELL_X80_Y9_N9
\lulu|l2|LessThan7~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan7~30_cout\ = CARRY(( \lulu|l2|l_arr[2][3]~q\ ) + ( (!\lulu|l2|LessThan6~7_combout\ & ((!\lulu|l2|LessThan5~2_combout\) # ((!\lulu|l2|l_arr[0][3]~DUPLICATE_q\)))) # (\lulu|l2|LessThan6~7_combout\ & (((!\lulu|l2|l_arr[1][3]~q\)))) ) + ( 
-- \lulu|l2|LessThan7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan5~2_combout\,
	datab => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l2|ALT_INV_l_arr[1][3]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[2][3]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[0][3]~DUPLICATE_q\,
	cin => \lulu|l2|LessThan7~34_cout\,
	cout => \lulu|l2|LessThan7~30_cout\);

-- Location: LABCELL_X80_Y9_N12
\lulu|l2|LessThan7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan7~26_cout\ = CARRY(( \lulu|l2|l_arr[2][4]~q\ ) + ( (!\lulu|l2|LessThan6~7_combout\ & ((!\lulu|l2|LessThan5~2_combout\) # ((!\lulu|l2|l_arr[0][4]~q\)))) # (\lulu|l2|LessThan6~7_combout\ & (((!\lulu|l2|l_arr[1][4]~q\)))) ) + ( 
-- \lulu|l2|LessThan7~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan5~2_combout\,
	datab => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l2|ALT_INV_l_arr[1][4]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[2][4]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[0][4]~q\,
	cin => \lulu|l2|LessThan7~30_cout\,
	cout => \lulu|l2|LessThan7~26_cout\);

-- Location: LABCELL_X80_Y9_N15
\lulu|l2|LessThan7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan7~22_cout\ = CARRY(( \lulu|l2|l_arr[2][5]~q\ ) + ( (!\lulu|l2|LessThan6~7_combout\ & ((!\lulu|l2|LessThan5~2_combout\) # ((!\lulu|l2|l_arr[0][5]~q\)))) # (\lulu|l2|LessThan6~7_combout\ & (((!\lulu|l2|l_arr[1][5]~q\)))) ) + ( 
-- \lulu|l2|LessThan7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan5~2_combout\,
	datab => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l2|ALT_INV_l_arr[1][5]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[2][5]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[0][5]~q\,
	cin => \lulu|l2|LessThan7~26_cout\,
	cout => \lulu|l2|LessThan7~22_cout\);

-- Location: LABCELL_X80_Y9_N18
\lulu|l2|LessThan7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan7~18_cout\ = CARRY(( (!\lulu|l2|LessThan6~6_combout\ & ((!\lulu|l2|LessThan6~0_combout\ & ((!\lulu|l2|l_arr[0][6]~q\))) # (\lulu|l2|LessThan6~0_combout\ & (!\lulu|l2|l_arr[1][6]~q\)))) # (\lulu|l2|LessThan6~6_combout\ & 
-- (((!\lulu|l2|l_arr[1][6]~q\)))) ) + ( \lulu|l2|l_arr[2][6]~q\ ) + ( \lulu|l2|LessThan7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111100001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|l2|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|l2|ALT_INV_l_arr[1][6]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[0][6]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[2][6]~q\,
	cin => \lulu|l2|LessThan7~22_cout\,
	cout => \lulu|l2|LessThan7~18_cout\);

-- Location: LABCELL_X80_Y9_N21
\lulu|l2|LessThan7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan7~14_cout\ = CARRY(( (!\lulu|l2|LessThan6~6_combout\ & ((!\lulu|l2|LessThan6~0_combout\ & ((!\lulu|l2|l_arr[0][7]~q\))) # (\lulu|l2|LessThan6~0_combout\ & (!\lulu|l2|l_arr[1][7]~q\)))) # (\lulu|l2|LessThan6~6_combout\ & 
-- (((!\lulu|l2|l_arr[1][7]~q\)))) ) + ( \lulu|l2|l_arr[2][7]~q\ ) + ( \lulu|l2|LessThan7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111100001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|l2|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|l2|ALT_INV_l_arr[1][7]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[0][7]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[2][7]~q\,
	cin => \lulu|l2|LessThan7~18_cout\,
	cout => \lulu|l2|LessThan7~14_cout\);

-- Location: LABCELL_X80_Y9_N24
\lulu|l2|LessThan7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan7~10_cout\ = CARRY(( !\lulu|l2|temp_max~1_combout\ ) + ( \lulu|l2|l_arr[2][8]~q\ ) + ( \lulu|l2|LessThan7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l2|ALT_INV_temp_max~1_combout\,
	dataf => \lulu|l2|ALT_INV_l_arr[2][8]~q\,
	cin => \lulu|l2|LessThan7~14_cout\,
	cout => \lulu|l2|LessThan7~10_cout\);

-- Location: LABCELL_X80_Y9_N27
\lulu|l2|LessThan7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan7~6_cout\ = CARRY(( (!\lulu|l2|l_arr[1][9]~q\ & !\lulu|l2|l_arr[0][9]~q\) ) + ( \lulu|l2|l_arr[2][9]~q\ ) + ( \lulu|l2|LessThan7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_l_arr[1][9]~q\,
	datab => \lulu|l2|ALT_INV_l_arr[2][9]~q\,
	datac => \lulu|l2|ALT_INV_l_arr[0][9]~q\,
	cin => \lulu|l2|LessThan7~10_cout\,
	cout => \lulu|l2|LessThan7~6_cout\);

-- Location: LABCELL_X80_Y9_N30
\lulu|l2|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|LessThan7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \lulu|l2|LessThan7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \lulu|l2|LessThan7~6_cout\,
	sumout => \lulu|l2|LessThan7~1_sumout\);

-- Location: LABCELL_X80_Y9_N51
\lulu|l2|temp_max~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_max~2_combout\ = ( \lulu|l2|temp_max~1_combout\ & ( (\lulu|l2|l_arr[2][8]~q\) # (\lulu|l2|LessThan7~1_sumout\) ) ) # ( !\lulu|l2|temp_max~1_combout\ & ( (!\lulu|l2|LessThan7~1_sumout\ & \lulu|l2|l_arr[2][8]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l2|ALT_INV_LessThan7~1_sumout\,
	datac => \lulu|l2|ALT_INV_l_arr[2][8]~q\,
	dataf => \lulu|l2|ALT_INV_temp_max~1_combout\,
	combout => \lulu|l2|temp_max~2_combout\);

-- Location: FF_X80_Y9_N52
\lulu|l2|l_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_max~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_out\(8));

-- Location: FF_X85_Y7_N41
\lulu|u2|sig_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(8),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[0][8]~q\);

-- Location: LABCELL_X80_Y9_N48
\lulu|l2|temp_max~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_max~10_combout\ = ( \lulu|l2|l_arr[1][9]~q\ & ( (\lulu|l2|l_arr[2][9]~q\) # (\lulu|l2|LessThan7~1_sumout\) ) ) # ( !\lulu|l2|l_arr[1][9]~q\ & ( (!\lulu|l2|LessThan7~1_sumout\ & (\lulu|l2|l_arr[2][9]~q\)) # (\lulu|l2|LessThan7~1_sumout\ & 
-- ((\lulu|l2|l_arr[0][9]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|l2|ALT_INV_LessThan7~1_sumout\,
	datac => \lulu|l2|ALT_INV_l_arr[2][9]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[0][9]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[1][9]~q\,
	combout => \lulu|l2|temp_max~10_combout\);

-- Location: FF_X80_Y9_N49
\lulu|l2|l_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_max~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_out\(9));

-- Location: FF_X85_Y7_N38
\lulu|u2|sig_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(9),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[0][9]~q\);

-- Location: FF_X85_Y7_N8
\lulu|u2|sig_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(8),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[1][8]~q\);

-- Location: FF_X85_Y7_N47
\lulu|u2|sig_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(9),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[1][9]~q\);

-- Location: LABCELL_X81_Y9_N18
\lulu|l2|temp_max~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_max~3_combout\ = ( \lulu|l2|LessThan7~1_sumout\ & ( (!\lulu|l2|LessThan6~7_combout\ & ((\lulu|l2|l_arr[0][4]~q\))) # (\lulu|l2|LessThan6~7_combout\ & (\lulu|l2|l_arr[1][4]~q\)) ) ) # ( !\lulu|l2|LessThan7~1_sumout\ & ( 
-- \lulu|l2|l_arr[2][4]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_l_arr[1][4]~q\,
	datab => \lulu|l2|ALT_INV_l_arr[0][4]~q\,
	datac => \lulu|l2|ALT_INV_l_arr[2][4]~q\,
	datad => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	dataf => \lulu|l2|ALT_INV_LessThan7~1_sumout\,
	combout => \lulu|l2|temp_max~3_combout\);

-- Location: FF_X81_Y9_N19
\lulu|l2|l_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_max~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_out\(4));

-- Location: MLABCELL_X87_Y7_N3
\lulu|u2|sig_arr[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|sig_arr[0][4]~feeder_combout\ = ( \lulu|l2|l_out\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l2|ALT_INV_l_out\(4),
	combout => \lulu|u2|sig_arr[0][4]~feeder_combout\);

-- Location: FF_X87_Y7_N4
\lulu|u2|sig_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|sig_arr[0][4]~feeder_combout\,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[0][4]~q\);

-- Location: LABCELL_X81_Y9_N27
\lulu|l2|temp_max~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_max~5_combout\ = ( \lulu|l2|l_arr[1][6]~q\ & ( (!\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[2][6]~q\)))) # (\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[0][6]~q\)) # (\lulu|l2|LessThan6~7_combout\))) ) ) # ( 
-- !\lulu|l2|l_arr[1][6]~q\ & ( (!\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[2][6]~q\)))) # (\lulu|l2|LessThan7~1_sumout\ & (!\lulu|l2|LessThan6~7_combout\ & ((\lulu|l2|l_arr[0][6]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan7~1_sumout\,
	datab => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l2|ALT_INV_l_arr[2][6]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[0][6]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[1][6]~q\,
	combout => \lulu|l2|temp_max~5_combout\);

-- Location: FF_X81_Y9_N28
\lulu|l2|l_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_max~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_out\(6));

-- Location: FF_X85_Y7_N2
\lulu|u2|sig_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(6),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[1][6]~q\);

-- Location: LABCELL_X81_Y9_N3
\lulu|l2|temp_max~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_max~4_combout\ = ( \lulu|l2|l_arr[1][7]~q\ & ( (!\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[2][7]~q\)))) # (\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[0][7]~q\)) # (\lulu|l2|LessThan6~7_combout\))) ) ) # ( 
-- !\lulu|l2|l_arr[1][7]~q\ & ( (!\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[2][7]~q\)))) # (\lulu|l2|LessThan7~1_sumout\ & (!\lulu|l2|LessThan6~7_combout\ & (\lulu|l2|l_arr[0][7]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan7~1_sumout\,
	datab => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l2|ALT_INV_l_arr[0][7]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[2][7]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[1][7]~q\,
	combout => \lulu|l2|temp_max~4_combout\);

-- Location: FF_X81_Y9_N4
\lulu|l2|l_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_max~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_out\(7));

-- Location: FF_X85_Y7_N17
\lulu|u2|sig_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(7),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[1][7]~q\);

-- Location: LABCELL_X80_Y9_N45
\lulu|l2|temp_max~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_max~6_combout\ = ( \lulu|l2|l_arr[0][5]~q\ & ( (!\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[2][5]~q\)))) # (\lulu|l2|LessThan7~1_sumout\ & ((!\lulu|l2|LessThan6~7_combout\) # ((\lulu|l2|l_arr[1][5]~q\)))) ) ) # ( 
-- !\lulu|l2|l_arr[0][5]~q\ & ( (!\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[2][5]~q\)))) # (\lulu|l2|LessThan7~1_sumout\ & (\lulu|l2|LessThan6~7_combout\ & ((\lulu|l2|l_arr[1][5]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	datab => \lulu|l2|ALT_INV_LessThan7~1_sumout\,
	datac => \lulu|l2|ALT_INV_l_arr[2][5]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[1][5]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[0][5]~q\,
	combout => \lulu|l2|temp_max~6_combout\);

-- Location: FF_X80_Y9_N47
\lulu|l2|l_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_max~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_out\(5));

-- Location: FF_X85_Y7_N44
\lulu|u2|sig_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(5),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[1][5]~q\);

-- Location: FF_X85_Y7_N20
\lulu|u2|sig_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(6),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[0][6]~q\);

-- Location: FF_X84_Y7_N19
\lulu|u2|sig_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(5),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[0][5]~q\);

-- Location: LABCELL_X85_Y7_N21
\lulu|u2|sig_arr[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|sig_arr[0][7]~feeder_combout\ = \lulu|l2|l_out\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|l2|ALT_INV_l_out\(7),
	combout => \lulu|u2|sig_arr[0][7]~feeder_combout\);

-- Location: FF_X85_Y7_N22
\lulu|u2|sig_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|sig_arr[0][7]~feeder_combout\,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[0][7]~q\);

-- Location: LABCELL_X85_Y7_N45
\lulu|u2|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan2~0_combout\ = ( \lulu|u2|sig_arr[0][5]~q\ & ( \lulu|u2|sig_arr[0][7]~q\ & ( (\lulu|u2|sig_arr[1][7]~q\ & (\lulu|u2|sig_arr[1][5]~q\ & (!\lulu|u2|sig_arr[1][6]~q\ $ (\lulu|u2|sig_arr[0][6]~q\)))) ) ) ) # ( !\lulu|u2|sig_arr[0][5]~q\ & ( 
-- \lulu|u2|sig_arr[0][7]~q\ & ( (\lulu|u2|sig_arr[1][7]~q\ & (!\lulu|u2|sig_arr[1][5]~q\ & (!\lulu|u2|sig_arr[1][6]~q\ $ (\lulu|u2|sig_arr[0][6]~q\)))) ) ) ) # ( \lulu|u2|sig_arr[0][5]~q\ & ( !\lulu|u2|sig_arr[0][7]~q\ & ( (!\lulu|u2|sig_arr[1][7]~q\ & 
-- (\lulu|u2|sig_arr[1][5]~q\ & (!\lulu|u2|sig_arr[1][6]~q\ $ (\lulu|u2|sig_arr[0][6]~q\)))) ) ) ) # ( !\lulu|u2|sig_arr[0][5]~q\ & ( !\lulu|u2|sig_arr[0][7]~q\ & ( (!\lulu|u2|sig_arr[1][7]~q\ & (!\lulu|u2|sig_arr[1][5]~q\ & (!\lulu|u2|sig_arr[1][6]~q\ $ 
-- (\lulu|u2|sig_arr[0][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_sig_arr[1][6]~q\,
	datab => \lulu|u2|ALT_INV_sig_arr[1][7]~q\,
	datac => \lulu|u2|ALT_INV_sig_arr[1][5]~q\,
	datad => \lulu|u2|ALT_INV_sig_arr[0][6]~q\,
	datae => \lulu|u2|ALT_INV_sig_arr[0][5]~q\,
	dataf => \lulu|u2|ALT_INV_sig_arr[0][7]~q\,
	combout => \lulu|u2|LessThan2~0_combout\);

-- Location: LABCELL_X85_Y7_N3
\lulu|u2|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan2~3_combout\ = ( \lulu|u2|sig_arr[0][5]~q\ & ( \lulu|u2|sig_arr[0][7]~q\ & ( (!\lulu|u2|sig_arr[0][6]~q\ & (\lulu|u2|sig_arr[1][7]~q\ & \lulu|u2|sig_arr[1][6]~q\)) ) ) ) # ( !\lulu|u2|sig_arr[0][5]~q\ & ( \lulu|u2|sig_arr[0][7]~q\ & ( 
-- (\lulu|u2|sig_arr[1][7]~q\ & ((!\lulu|u2|sig_arr[0][6]~q\ & ((\lulu|u2|sig_arr[1][6]~q\) # (\lulu|u2|sig_arr[1][5]~q\))) # (\lulu|u2|sig_arr[0][6]~q\ & (\lulu|u2|sig_arr[1][5]~q\ & \lulu|u2|sig_arr[1][6]~q\)))) ) ) ) # ( \lulu|u2|sig_arr[0][5]~q\ & ( 
-- !\lulu|u2|sig_arr[0][7]~q\ & ( ((!\lulu|u2|sig_arr[0][6]~q\ & \lulu|u2|sig_arr[1][6]~q\)) # (\lulu|u2|sig_arr[1][7]~q\) ) ) ) # ( !\lulu|u2|sig_arr[0][5]~q\ & ( !\lulu|u2|sig_arr[0][7]~q\ & ( ((!\lulu|u2|sig_arr[0][6]~q\ & ((\lulu|u2|sig_arr[1][6]~q\) # 
-- (\lulu|u2|sig_arr[1][5]~q\))) # (\lulu|u2|sig_arr[0][6]~q\ & (\lulu|u2|sig_arr[1][5]~q\ & \lulu|u2|sig_arr[1][6]~q\))) # (\lulu|u2|sig_arr[1][7]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111110111111000011111010111100000010000010110000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_sig_arr[0][6]~q\,
	datab => \lulu|u2|ALT_INV_sig_arr[1][5]~q\,
	datac => \lulu|u2|ALT_INV_sig_arr[1][7]~q\,
	datad => \lulu|u2|ALT_INV_sig_arr[1][6]~q\,
	datae => \lulu|u2|ALT_INV_sig_arr[0][5]~q\,
	dataf => \lulu|u2|ALT_INV_sig_arr[0][7]~q\,
	combout => \lulu|u2|LessThan2~3_combout\);

-- Location: FF_X85_Y7_N14
\lulu|u2|sig_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(4),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[1][4]~q\);

-- Location: LABCELL_X80_Y9_N42
\lulu|l2|temp_max~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_max~7_combout\ = ( \lulu|l2|l_arr[0][3]~DUPLICATE_q\ & ( (!\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[2][3]~q\)))) # (\lulu|l2|LessThan7~1_sumout\ & ((!\lulu|l2|LessThan6~7_combout\) # ((\lulu|l2|l_arr[1][3]~q\)))) ) ) # ( 
-- !\lulu|l2|l_arr[0][3]~DUPLICATE_q\ & ( (!\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[2][3]~q\)))) # (\lulu|l2|LessThan7~1_sumout\ & (\lulu|l2|LessThan6~7_combout\ & ((\lulu|l2|l_arr[1][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	datab => \lulu|l2|ALT_INV_LessThan7~1_sumout\,
	datac => \lulu|l2|ALT_INV_l_arr[2][3]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[1][3]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[0][3]~DUPLICATE_q\,
	combout => \lulu|l2|temp_max~7_combout\);

-- Location: FF_X80_Y9_N43
\lulu|l2|l_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_max~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_out\(3));

-- Location: FF_X85_Y7_N56
\lulu|u2|sig_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(3),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[1][3]~q\);

-- Location: FF_X82_Y9_N49
\lulu|l2|l_arr[2][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|temp_min~14_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_arr[2][2]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y9_N9
\lulu|l2|temp_max~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_max~8_combout\ = ( \lulu|l2|l_arr[1][2]~q\ & ( (!\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[2][2]~DUPLICATE_q\)))) # (\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[0][2]~q\)) # (\lulu|l2|LessThan6~7_combout\))) ) ) # ( 
-- !\lulu|l2|l_arr[1][2]~q\ & ( (!\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[2][2]~DUPLICATE_q\)))) # (\lulu|l2|LessThan7~1_sumout\ & (!\lulu|l2|LessThan6~7_combout\ & ((\lulu|l2|l_arr[0][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan7~1_sumout\,
	datab => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l2|ALT_INV_l_arr[2][2]~DUPLICATE_q\,
	datad => \lulu|l2|ALT_INV_l_arr[0][2]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[1][2]~q\,
	combout => \lulu|l2|temp_max~8_combout\);

-- Location: FF_X81_Y9_N10
\lulu|l2|l_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_max~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_out\(2));

-- Location: FF_X85_Y7_N59
\lulu|u2|sig_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(2),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[1][2]~q\);

-- Location: FF_X84_Y7_N55
\lulu|u2|sig_arr[0][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(3),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[0][3]~DUPLICATE_q\);

-- Location: FF_X85_Y7_N23
\lulu|u2|sig_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(2),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[0][2]~q\);

-- Location: LABCELL_X81_Y9_N6
\lulu|l2|temp_max~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_max~9_combout\ = ( \lulu|l2|l_arr[0][1]~q\ & ( (!\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[2][1]~q\)))) # (\lulu|l2|LessThan7~1_sumout\ & ((!\lulu|l2|LessThan6~7_combout\) # ((\lulu|l2|l_arr[1][1]~q\)))) ) ) # ( 
-- !\lulu|l2|l_arr[0][1]~q\ & ( (!\lulu|l2|LessThan7~1_sumout\ & (((\lulu|l2|l_arr[2][1]~q\)))) # (\lulu|l2|LessThan7~1_sumout\ & (\lulu|l2|LessThan6~7_combout\ & ((\lulu|l2|l_arr[1][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan7~1_sumout\,
	datab => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l2|ALT_INV_l_arr[2][1]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[1][1]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[0][1]~q\,
	combout => \lulu|l2|temp_max~9_combout\);

-- Location: FF_X81_Y9_N7
\lulu|l2|l_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_max~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_out\(1));

-- Location: FF_X84_Y7_N13
\lulu|u2|sig_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(1),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[0][1]~q\);

-- Location: LABCELL_X81_Y9_N0
\lulu|l2|temp_max~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|l2|temp_max~0_combout\ = ( \lulu|l2|l_arr[2][0]~q\ & ( (!\lulu|l2|LessThan7~1_sumout\) # ((!\lulu|l2|LessThan6~7_combout\ & ((\lulu|l2|l_arr[0][0]~q\))) # (\lulu|l2|LessThan6~7_combout\ & (\lulu|l2|l_arr[1][0]~q\))) ) ) # ( !\lulu|l2|l_arr[2][0]~q\ 
-- & ( (\lulu|l2|LessThan7~1_sumout\ & ((!\lulu|l2|LessThan6~7_combout\ & ((\lulu|l2|l_arr[0][0]~q\))) # (\lulu|l2|LessThan6~7_combout\ & (\lulu|l2|l_arr[1][0]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|l2|ALT_INV_LessThan7~1_sumout\,
	datab => \lulu|l2|ALT_INV_LessThan6~7_combout\,
	datac => \lulu|l2|ALT_INV_l_arr[1][0]~q\,
	datad => \lulu|l2|ALT_INV_l_arr[0][0]~q\,
	dataf => \lulu|l2|ALT_INV_l_arr[2][0]~q\,
	combout => \lulu|l2|temp_max~0_combout\);

-- Location: FF_X81_Y9_N1
\lulu|l2|l_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|l2|temp_max~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|l2|l_out\(0));

-- Location: FF_X84_Y7_N4
\lulu|u2|sig_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(0),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[0][0]~q\);

-- Location: FF_X85_Y7_N29
\lulu|u2|sig_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(0),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[1][0]~q\);

-- Location: FF_X85_Y7_N50
\lulu|u2|sig_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(1),
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[1][1]~q\);

-- Location: LABCELL_X85_Y7_N51
\lulu|u2|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan2~1_combout\ = ( \lulu|u2|sig_arr[1][1]~q\ & ( (!\lulu|u2|sig_arr[0][1]~q\) # ((!\lulu|u2|sig_arr[0][0]~q\ & \lulu|u2|sig_arr[1][0]~q\)) ) ) # ( !\lulu|u2|sig_arr[1][1]~q\ & ( (!\lulu|u2|sig_arr[0][1]~q\ & (!\lulu|u2|sig_arr[0][0]~q\ & 
-- \lulu|u2|sig_arr[1][0]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010101010111110101010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_sig_arr[0][1]~q\,
	datac => \lulu|u2|ALT_INV_sig_arr[0][0]~q\,
	datad => \lulu|u2|ALT_INV_sig_arr[1][0]~q\,
	dataf => \lulu|u2|ALT_INV_sig_arr[1][1]~q\,
	combout => \lulu|u2|LessThan2~1_combout\);

-- Location: LABCELL_X85_Y7_N24
\lulu|u2|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan2~2_combout\ = ( \lulu|u2|LessThan2~1_combout\ & ( (!\lulu|u2|sig_arr[1][3]~q\ & (!\lulu|u2|sig_arr[0][3]~DUPLICATE_q\ & ((!\lulu|u2|sig_arr[0][2]~q\) # (\lulu|u2|sig_arr[1][2]~q\)))) # (\lulu|u2|sig_arr[1][3]~q\ & 
-- (((!\lulu|u2|sig_arr[0][3]~DUPLICATE_q\) # (!\lulu|u2|sig_arr[0][2]~q\)) # (\lulu|u2|sig_arr[1][2]~q\))) ) ) # ( !\lulu|u2|LessThan2~1_combout\ & ( (!\lulu|u2|sig_arr[1][3]~q\ & (\lulu|u2|sig_arr[1][2]~q\ & (!\lulu|u2|sig_arr[0][3]~DUPLICATE_q\ & 
-- !\lulu|u2|sig_arr[0][2]~q\))) # (\lulu|u2|sig_arr[1][3]~q\ & ((!\lulu|u2|sig_arr[0][3]~DUPLICATE_q\) # ((\lulu|u2|sig_arr[1][2]~q\ & !\lulu|u2|sig_arr[0][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101010000011100010101000011110101011100011111010101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_sig_arr[1][3]~q\,
	datab => \lulu|u2|ALT_INV_sig_arr[1][2]~q\,
	datac => \lulu|u2|ALT_INV_sig_arr[0][3]~DUPLICATE_q\,
	datad => \lulu|u2|ALT_INV_sig_arr[0][2]~q\,
	dataf => \lulu|u2|ALT_INV_LessThan2~1_combout\,
	combout => \lulu|u2|LessThan2~2_combout\);

-- Location: LABCELL_X85_Y7_N12
\lulu|u2|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan2~4_combout\ = ( \lulu|u2|sig_arr[1][4]~q\ & ( \lulu|u2|LessThan2~2_combout\ & ( (!\lulu|u2|LessThan2~0_combout\ & !\lulu|u2|LessThan2~3_combout\) ) ) ) # ( !\lulu|u2|sig_arr[1][4]~q\ & ( \lulu|u2|LessThan2~2_combout\ & ( 
-- (!\lulu|u2|LessThan2~3_combout\ & ((!\lulu|u2|LessThan2~0_combout\) # (\lulu|u2|sig_arr[0][4]~q\))) ) ) ) # ( \lulu|u2|sig_arr[1][4]~q\ & ( !\lulu|u2|LessThan2~2_combout\ & ( (!\lulu|u2|LessThan2~3_combout\ & ((!\lulu|u2|LessThan2~0_combout\) # 
-- (\lulu|u2|sig_arr[0][4]~q\))) ) ) ) # ( !\lulu|u2|sig_arr[1][4]~q\ & ( !\lulu|u2|LessThan2~2_combout\ & ( !\lulu|u2|LessThan2~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110100001101000011010000110100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_sig_arr[0][4]~q\,
	datab => \lulu|u2|ALT_INV_LessThan2~0_combout\,
	datac => \lulu|u2|ALT_INV_LessThan2~3_combout\,
	datae => \lulu|u2|ALT_INV_sig_arr[1][4]~q\,
	dataf => \lulu|u2|ALT_INV_LessThan2~2_combout\,
	combout => \lulu|u2|LessThan2~4_combout\);

-- Location: LABCELL_X85_Y7_N9
\lulu|u2|LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan2~5_combout\ = ( \lulu|u2|LessThan2~4_combout\ & ( (!\lulu|u2|sig_arr[0][9]~q\ & (((\lulu|u2|sig_arr[1][8]~q\ & !\lulu|u2|sig_arr[0][8]~q\)) # (\lulu|u2|sig_arr[1][9]~q\))) # (\lulu|u2|sig_arr[0][9]~q\ & (\lulu|u2|sig_arr[1][8]~q\ & 
-- (!\lulu|u2|sig_arr[0][8]~q\ & \lulu|u2|sig_arr[1][9]~q\))) ) ) # ( !\lulu|u2|LessThan2~4_combout\ & ( (!\lulu|u2|sig_arr[0][9]~q\ & (((!\lulu|u2|sig_arr[0][8]~q\) # (\lulu|u2|sig_arr[1][9]~q\)) # (\lulu|u2|sig_arr[1][8]~q\))) # (\lulu|u2|sig_arr[0][9]~q\ 
-- & (\lulu|u2|sig_arr[1][9]~q\ & ((!\lulu|u2|sig_arr[0][8]~q\) # (\lulu|u2|sig_arr[1][8]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001011111011101000101111101100100000101110100010000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_sig_arr[0][9]~q\,
	datab => \lulu|u2|ALT_INV_sig_arr[1][8]~q\,
	datac => \lulu|u2|ALT_INV_sig_arr[0][8]~q\,
	datad => \lulu|u2|ALT_INV_sig_arr[1][9]~q\,
	dataf => \lulu|u2|ALT_INV_LessThan2~4_combout\,
	combout => \lulu|u2|LessThan2~5_combout\);

-- Location: MLABCELL_X84_Y7_N15
\lulu|u2|temp_max~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~9_combout\ = ( \lulu|u2|sig_arr[1][8]~q\ & ( (\lulu|u2|LessThan2~5_combout\) # (\lulu|u2|sig_arr[0][8]~q\) ) ) # ( !\lulu|u2|sig_arr[1][8]~q\ & ( (\lulu|u2|sig_arr[0][8]~q\ & !\lulu|u2|LessThan2~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_sig_arr[0][8]~q\,
	datad => \lulu|u2|ALT_INV_LessThan2~5_combout\,
	datae => \lulu|u2|ALT_INV_sig_arr[1][8]~q\,
	combout => \lulu|u2|temp_max~9_combout\);

-- Location: MLABCELL_X82_Y7_N27
\lulu|u2|sig_arr[2][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|sig_arr[2][8]~feeder_combout\ = ( \lulu|l2|l_out\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l2|ALT_INV_l_out\(8),
	combout => \lulu|u2|sig_arr[2][8]~feeder_combout\);

-- Location: FF_X82_Y7_N28
\lulu|u2|sig_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|sig_arr[2][8]~feeder_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[2][8]~q\);

-- Location: FF_X83_Y7_N28
\lulu|u2|sig_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(9),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[2][9]~q\);

-- Location: LABCELL_X85_Y7_N33
\lulu|u2|temp_max~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~8_combout\ = ( \lulu|u2|sig_arr[1][9]~q\ & ( (\lulu|u2|LessThan2~5_combout\) # (\lulu|u2|sig_arr[0][9]~q\) ) ) # ( !\lulu|u2|sig_arr[1][9]~q\ & ( (\lulu|u2|sig_arr[0][9]~q\ & !\lulu|u2|LessThan2~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_sig_arr[0][9]~q\,
	datab => \lulu|u2|ALT_INV_LessThan2~5_combout\,
	dataf => \lulu|u2|ALT_INV_sig_arr[1][9]~q\,
	combout => \lulu|u2|temp_max~8_combout\);

-- Location: MLABCELL_X84_Y7_N6
\lulu|u2|LessThan3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan3~10_combout\ = ( \lulu|u2|temp_max~8_combout\ & ( (!\lulu|u2|temp_max~9_combout\ & (\lulu|u2|sig_arr[2][8]~q\ & \lulu|u2|sig_arr[2][9]~q\)) ) ) # ( !\lulu|u2|temp_max~8_combout\ & ( ((!\lulu|u2|temp_max~9_combout\ & 
-- \lulu|u2|sig_arr[2][8]~q\)) # (\lulu|u2|sig_arr[2][9]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000011001111111100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u2|ALT_INV_temp_max~9_combout\,
	datac => \lulu|u2|ALT_INV_sig_arr[2][8]~q\,
	datad => \lulu|u2|ALT_INV_sig_arr[2][9]~q\,
	dataf => \lulu|u2|ALT_INV_temp_max~8_combout\,
	combout => \lulu|u2|LessThan3~10_combout\);

-- Location: FF_X83_Y7_N17
\lulu|u2|sig_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(0),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[2][0]~q\);

-- Location: MLABCELL_X82_Y7_N51
\lulu|u2|sig_arr[2][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|sig_arr[2][4]~feeder_combout\ = ( \lulu|l2|l_out\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l2|ALT_INV_l_out\(4),
	combout => \lulu|u2|sig_arr[2][4]~feeder_combout\);

-- Location: FF_X82_Y7_N52
\lulu|u2|sig_arr[2][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|sig_arr[2][4]~feeder_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[2][4]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y7_N57
\lulu|u2|temp_max~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~4_combout\ = ( \lulu|u2|LessThan2~5_combout\ & ( \lulu|u2|sig_arr[1][4]~q\ ) ) # ( !\lulu|u2|LessThan2~5_combout\ & ( \lulu|u2|sig_arr[1][4]~q\ & ( \lulu|u2|sig_arr[0][4]~q\ ) ) ) # ( !\lulu|u2|LessThan2~5_combout\ & ( 
-- !\lulu|u2|sig_arr[1][4]~q\ & ( \lulu|u2|sig_arr[0][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|u2|ALT_INV_sig_arr[0][4]~q\,
	datae => \lulu|u2|ALT_INV_LessThan2~5_combout\,
	dataf => \lulu|u2|ALT_INV_sig_arr[1][4]~q\,
	combout => \lulu|u2|temp_max~4_combout\);

-- Location: MLABCELL_X84_Y7_N33
\lulu|u2|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan3~2_combout\ = !\lulu|u2|sig_arr[2][4]~DUPLICATE_q\ $ (!\lulu|u2|temp_max~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_sig_arr[2][4]~DUPLICATE_q\,
	datad => \lulu|u2|ALT_INV_temp_max~4_combout\,
	combout => \lulu|u2|LessThan3~2_combout\);

-- Location: FF_X83_Y7_N52
\lulu|u2|sig_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(5),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[2][5]~q\);

-- Location: MLABCELL_X84_Y7_N9
\lulu|u2|temp_max~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~3_combout\ = ( \lulu|u2|sig_arr[0][5]~q\ & ( (!\lulu|u2|LessThan2~5_combout\) # (\lulu|u2|sig_arr[1][5]~q\) ) ) # ( !\lulu|u2|sig_arr[0][5]~q\ & ( (\lulu|u2|LessThan2~5_combout\ & \lulu|u2|sig_arr[1][5]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan2~5_combout\,
	datac => \lulu|u2|ALT_INV_sig_arr[1][5]~q\,
	dataf => \lulu|u2|ALT_INV_sig_arr[0][5]~q\,
	combout => \lulu|u2|temp_max~3_combout\);

-- Location: LABCELL_X83_Y7_N15
\lulu|u2|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan3~1_combout\ = ( \lulu|u2|temp_max~3_combout\ & ( !\lulu|u2|sig_arr[2][5]~q\ ) ) # ( !\lulu|u2|temp_max~3_combout\ & ( \lulu|u2|sig_arr[2][5]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|u2|ALT_INV_sig_arr[2][5]~q\,
	dataf => \lulu|u2|ALT_INV_temp_max~3_combout\,
	combout => \lulu|u2|LessThan3~1_combout\);

-- Location: LABCELL_X85_Y7_N57
\lulu|u2|temp_max~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~7_combout\ = ( \lulu|u2|LessThan2~5_combout\ & ( \lulu|u2|sig_arr[1][2]~q\ ) ) # ( !\lulu|u2|LessThan2~5_combout\ & ( \lulu|u2|sig_arr[0][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_sig_arr[0][2]~q\,
	datad => \lulu|u2|ALT_INV_sig_arr[1][2]~q\,
	dataf => \lulu|u2|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|u2|temp_max~7_combout\);

-- Location: FF_X82_Y7_N7
\lulu|u2|sig_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(2),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[2][2]~q\);

-- Location: FF_X83_Y7_N10
\lulu|u2|sig_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(3),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[2][3]~q\);

-- Location: FF_X84_Y7_N56
\lulu|u2|sig_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(3),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[0][3]~q\);

-- Location: MLABCELL_X84_Y7_N30
\lulu|u2|temp_max~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~6_combout\ = (!\lulu|u2|LessThan2~5_combout\ & ((\lulu|u2|sig_arr[0][3]~q\))) # (\lulu|u2|LessThan2~5_combout\ & (\lulu|u2|sig_arr[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u2|ALT_INV_sig_arr[1][3]~q\,
	datac => \lulu|u2|ALT_INV_sig_arr[0][3]~q\,
	datad => \lulu|u2|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|u2|temp_max~6_combout\);

-- Location: LABCELL_X83_Y7_N48
\lulu|u2|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan3~5_combout\ = ( \lulu|u2|sig_arr[2][3]~q\ & ( \lulu|u2|temp_max~6_combout\ & ( (!\lulu|u2|temp_max~7_combout\ & \lulu|u2|sig_arr[2][2]~q\) ) ) ) # ( \lulu|u2|sig_arr[2][3]~q\ & ( !\lulu|u2|temp_max~6_combout\ ) ) # ( 
-- !\lulu|u2|sig_arr[2][3]~q\ & ( !\lulu|u2|temp_max~6_combout\ & ( (!\lulu|u2|temp_max~7_combout\ & \lulu|u2|sig_arr[2][2]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010111111111111111100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_temp_max~7_combout\,
	datac => \lulu|u2|ALT_INV_sig_arr[2][2]~q\,
	datae => \lulu|u2|ALT_INV_sig_arr[2][3]~q\,
	dataf => \lulu|u2|ALT_INV_temp_max~6_combout\,
	combout => \lulu|u2|LessThan3~5_combout\);

-- Location: LABCELL_X85_Y7_N27
\lulu|u2|temp_max~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~0_combout\ = ( \lulu|u2|LessThan2~5_combout\ & ( \lulu|u2|sig_arr[1][0]~q\ ) ) # ( !\lulu|u2|LessThan2~5_combout\ & ( \lulu|u2|sig_arr[0][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|u2|ALT_INV_sig_arr[0][0]~q\,
	datad => \lulu|u2|ALT_INV_sig_arr[1][0]~q\,
	dataf => \lulu|u2|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|u2|temp_max~0_combout\);

-- Location: FF_X83_Y7_N8
\lulu|u2|sig_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(1),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[2][1]~q\);

-- Location: FF_X84_Y7_N14
\lulu|u2|sig_arr[0][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(1),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[0][1]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y7_N48
\lulu|u2|temp_max~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~5_combout\ = ( \lulu|u2|LessThan2~5_combout\ & ( \lulu|u2|sig_arr[1][1]~q\ ) ) # ( !\lulu|u2|LessThan2~5_combout\ & ( \lulu|u2|sig_arr[0][1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u2|ALT_INV_sig_arr[0][1]~DUPLICATE_q\,
	datad => \lulu|u2|ALT_INV_sig_arr[1][1]~q\,
	datae => \lulu|u2|ALT_INV_LessThan2~5_combout\,
	combout => \lulu|u2|temp_max~5_combout\);

-- Location: LABCELL_X83_Y7_N6
\lulu|u2|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan3~3_combout\ = ( \lulu|u2|sig_arr[2][1]~q\ & ( \lulu|u2|temp_max~5_combout\ & ( (\lulu|u2|sig_arr[2][0]~q\ & !\lulu|u2|temp_max~0_combout\) ) ) ) # ( \lulu|u2|sig_arr[2][1]~q\ & ( !\lulu|u2|temp_max~5_combout\ ) ) # ( 
-- !\lulu|u2|sig_arr[2][1]~q\ & ( !\lulu|u2|temp_max~5_combout\ & ( (\lulu|u2|sig_arr[2][0]~q\ & !\lulu|u2|temp_max~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000111111111111111100000000000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u2|ALT_INV_sig_arr[2][0]~q\,
	datad => \lulu|u2|ALT_INV_temp_max~0_combout\,
	datae => \lulu|u2|ALT_INV_sig_arr[2][1]~q\,
	dataf => \lulu|u2|ALT_INV_temp_max~5_combout\,
	combout => \lulu|u2|LessThan3~3_combout\);

-- Location: FF_X85_Y7_N35
\lulu|u2|sig_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(7),
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[2][7]~q\);

-- Location: MLABCELL_X82_Y7_N57
\lulu|u2|sig_arr[2][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|sig_arr[2][6]~feeder_combout\ = ( \lulu|l2|l_out\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|l2|ALT_INV_l_out\(6),
	combout => \lulu|u2|sig_arr[2][6]~feeder_combout\);

-- Location: FF_X82_Y7_N59
\lulu|u2|sig_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|sig_arr[2][6]~feeder_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[2][6]~q\);

-- Location: LABCELL_X85_Y7_N54
\lulu|u2|temp_max~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~1_combout\ = ( \lulu|u2|sig_arr[1][7]~q\ & ( (\lulu|u2|sig_arr[0][7]~q\) # (\lulu|u2|LessThan2~5_combout\) ) ) # ( !\lulu|u2|sig_arr[1][7]~q\ & ( (!\lulu|u2|LessThan2~5_combout\ & \lulu|u2|sig_arr[0][7]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u2|ALT_INV_LessThan2~5_combout\,
	datac => \lulu|u2|ALT_INV_sig_arr[0][7]~q\,
	dataf => \lulu|u2|ALT_INV_sig_arr[1][7]~q\,
	combout => \lulu|u2|temp_max~1_combout\);

-- Location: FF_X85_Y7_N19
\lulu|u2|sig_arr[0][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|l2|l_out\(6),
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[0][6]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y7_N30
\lulu|u2|temp_max~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~2_combout\ = ( \lulu|u2|sig_arr[0][6]~DUPLICATE_q\ & ( (!\lulu|u2|LessThan2~5_combout\) # (\lulu|u2|sig_arr[1][6]~q\) ) ) # ( !\lulu|u2|sig_arr[0][6]~DUPLICATE_q\ & ( (\lulu|u2|LessThan2~5_combout\ & \lulu|u2|sig_arr[1][6]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u2|ALT_INV_LessThan2~5_combout\,
	datad => \lulu|u2|ALT_INV_sig_arr[1][6]~q\,
	dataf => \lulu|u2|ALT_INV_sig_arr[0][6]~DUPLICATE_q\,
	combout => \lulu|u2|temp_max~2_combout\);

-- Location: MLABCELL_X84_Y7_N27
\lulu|u2|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan3~0_combout\ = ( \lulu|u2|temp_max~1_combout\ & ( \lulu|u2|temp_max~2_combout\ & ( (\lulu|u2|sig_arr[2][7]~q\ & \lulu|u2|sig_arr[2][6]~q\) ) ) ) # ( !\lulu|u2|temp_max~1_combout\ & ( \lulu|u2|temp_max~2_combout\ & ( 
-- (!\lulu|u2|sig_arr[2][7]~q\ & \lulu|u2|sig_arr[2][6]~q\) ) ) ) # ( \lulu|u2|temp_max~1_combout\ & ( !\lulu|u2|temp_max~2_combout\ & ( (\lulu|u2|sig_arr[2][7]~q\ & !\lulu|u2|sig_arr[2][6]~q\) ) ) ) # ( !\lulu|u2|temp_max~1_combout\ & ( 
-- !\lulu|u2|temp_max~2_combout\ & ( (!\lulu|u2|sig_arr[2][7]~q\ & !\lulu|u2|sig_arr[2][6]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000010101010000000000000000101010100000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_sig_arr[2][7]~q\,
	datad => \lulu|u2|ALT_INV_sig_arr[2][6]~q\,
	datae => \lulu|u2|ALT_INV_temp_max~1_combout\,
	dataf => \lulu|u2|ALT_INV_temp_max~2_combout\,
	combout => \lulu|u2|LessThan3~0_combout\);

-- Location: LABCELL_X83_Y7_N39
\lulu|u2|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan3~4_combout\ = ( \lulu|u2|sig_arr[2][3]~q\ & ( \lulu|u2|temp_max~7_combout\ & ( (\lulu|u2|sig_arr[2][2]~q\ & \lulu|u2|temp_max~6_combout\) ) ) ) # ( !\lulu|u2|sig_arr[2][3]~q\ & ( \lulu|u2|temp_max~7_combout\ & ( 
-- (\lulu|u2|sig_arr[2][2]~q\ & !\lulu|u2|temp_max~6_combout\) ) ) ) # ( \lulu|u2|sig_arr[2][3]~q\ & ( !\lulu|u2|temp_max~7_combout\ & ( (!\lulu|u2|sig_arr[2][2]~q\ & \lulu|u2|temp_max~6_combout\) ) ) ) # ( !\lulu|u2|sig_arr[2][3]~q\ & ( 
-- !\lulu|u2|temp_max~7_combout\ & ( (!\lulu|u2|sig_arr[2][2]~q\ & !\lulu|u2|temp_max~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000001010101001010101000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_sig_arr[2][2]~q\,
	datad => \lulu|u2|ALT_INV_temp_max~6_combout\,
	datae => \lulu|u2|ALT_INV_sig_arr[2][3]~q\,
	dataf => \lulu|u2|ALT_INV_temp_max~7_combout\,
	combout => \lulu|u2|LessThan3~4_combout\);

-- Location: LABCELL_X83_Y7_N18
\lulu|u2|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan3~6_combout\ = ( \lulu|u2|LessThan3~0_combout\ & ( \lulu|u2|LessThan3~4_combout\ & ( (!\lulu|u2|LessThan3~2_combout\ & (!\lulu|u2|LessThan3~1_combout\ & ((\lulu|u2|LessThan3~3_combout\) # (\lulu|u2|LessThan3~5_combout\)))) ) ) ) # ( 
-- \lulu|u2|LessThan3~0_combout\ & ( !\lulu|u2|LessThan3~4_combout\ & ( (!\lulu|u2|LessThan3~2_combout\ & (!\lulu|u2|LessThan3~1_combout\ & \lulu|u2|LessThan3~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000100000000000000000000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan3~2_combout\,
	datab => \lulu|u2|ALT_INV_LessThan3~1_combout\,
	datac => \lulu|u2|ALT_INV_LessThan3~5_combout\,
	datad => \lulu|u2|ALT_INV_LessThan3~3_combout\,
	datae => \lulu|u2|ALT_INV_LessThan3~0_combout\,
	dataf => \lulu|u2|ALT_INV_LessThan3~4_combout\,
	combout => \lulu|u2|LessThan3~6_combout\);

-- Location: FF_X82_Y7_N53
\lulu|u2|sig_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|sig_arr[2][4]~feeder_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[2][4]~q\);

-- Location: FF_X82_Y7_N58
\lulu|u2|sig_arr[2][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|sig_arr[2][6]~feeder_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|sig_arr[2][6]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y7_N39
\lulu|u2|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan3~7_combout\ = ( !\lulu|u2|temp_max~1_combout\ & ( \lulu|u2|temp_max~2_combout\ & ( \lulu|u2|sig_arr[2][7]~q\ ) ) ) # ( \lulu|u2|temp_max~1_combout\ & ( !\lulu|u2|temp_max~2_combout\ & ( (\lulu|u2|sig_arr[2][6]~DUPLICATE_q\ & 
-- \lulu|u2|sig_arr[2][7]~q\) ) ) ) # ( !\lulu|u2|temp_max~1_combout\ & ( !\lulu|u2|temp_max~2_combout\ & ( (\lulu|u2|sig_arr[2][7]~q\) # (\lulu|u2|sig_arr[2][6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000000000101010100000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_sig_arr[2][6]~DUPLICATE_q\,
	datad => \lulu|u2|ALT_INV_sig_arr[2][7]~q\,
	datae => \lulu|u2|ALT_INV_temp_max~1_combout\,
	dataf => \lulu|u2|ALT_INV_temp_max~2_combout\,
	combout => \lulu|u2|LessThan3~7_combout\);

-- Location: MLABCELL_X84_Y7_N21
\lulu|u2|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan3~8_combout\ = ( !\lulu|u2|LessThan3~7_combout\ & ( \lulu|u2|temp_max~3_combout\ & ( (!\lulu|u2|LessThan3~0_combout\) # (((!\lulu|u2|sig_arr[2][4]~q\) # (!\lulu|u2|sig_arr[2][5]~q\)) # (\lulu|u2|temp_max~4_combout\)) ) ) ) # ( 
-- !\lulu|u2|LessThan3~7_combout\ & ( !\lulu|u2|temp_max~3_combout\ & ( (!\lulu|u2|LessThan3~0_combout\) # ((!\lulu|u2|sig_arr[2][5]~q\ & ((!\lulu|u2|sig_arr[2][4]~q\) # (\lulu|u2|temp_max~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101110101010000000000000000011111111111110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan3~0_combout\,
	datab => \lulu|u2|ALT_INV_temp_max~4_combout\,
	datac => \lulu|u2|ALT_INV_sig_arr[2][4]~q\,
	datad => \lulu|u2|ALT_INV_sig_arr[2][5]~q\,
	datae => \lulu|u2|ALT_INV_LessThan3~7_combout\,
	dataf => \lulu|u2|ALT_INV_temp_max~3_combout\,
	combout => \lulu|u2|LessThan3~8_combout\);

-- Location: LABCELL_X83_Y7_N12
\lulu|u2|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan3~9_combout\ = ( \lulu|u2|sig_arr[2][9]~q\ & ( (\lulu|u2|temp_max~8_combout\ & (!\lulu|u2|sig_arr[2][8]~q\ $ (\lulu|u2|temp_max~9_combout\))) ) ) # ( !\lulu|u2|sig_arr[2][9]~q\ & ( (!\lulu|u2|temp_max~8_combout\ & 
-- (!\lulu|u2|sig_arr[2][8]~q\ $ (\lulu|u2|temp_max~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_temp_max~8_combout\,
	datac => \lulu|u2|ALT_INV_sig_arr[2][8]~q\,
	datad => \lulu|u2|ALT_INV_temp_max~9_combout\,
	dataf => \lulu|u2|ALT_INV_sig_arr[2][9]~q\,
	combout => \lulu|u2|LessThan3~9_combout\);

-- Location: LABCELL_X83_Y7_N42
\lulu|u2|temp_max~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~10_combout\ = ( \lulu|u2|LessThan3~8_combout\ & ( \lulu|u2|LessThan3~9_combout\ & ( (!\lulu|u2|LessThan3~10_combout\ & ((!\lulu|u2|LessThan3~6_combout\ & ((\lulu|u2|temp_max~0_combout\))) # (\lulu|u2|LessThan3~6_combout\ & 
-- (\lulu|u2|sig_arr[2][0]~q\)))) # (\lulu|u2|LessThan3~10_combout\ & (\lulu|u2|sig_arr[2][0]~q\)) ) ) ) # ( !\lulu|u2|LessThan3~8_combout\ & ( \lulu|u2|LessThan3~9_combout\ & ( \lulu|u2|sig_arr[2][0]~q\ ) ) ) # ( \lulu|u2|LessThan3~8_combout\ & ( 
-- !\lulu|u2|LessThan3~9_combout\ & ( (!\lulu|u2|LessThan3~10_combout\ & ((\lulu|u2|temp_max~0_combout\))) # (\lulu|u2|LessThan3~10_combout\ & (\lulu|u2|sig_arr[2][0]~q\)) ) ) ) # ( !\lulu|u2|LessThan3~8_combout\ & ( !\lulu|u2|LessThan3~9_combout\ & ( 
-- (!\lulu|u2|LessThan3~10_combout\ & ((\lulu|u2|temp_max~0_combout\))) # (\lulu|u2|LessThan3~10_combout\ & (\lulu|u2|sig_arr[2][0]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100110011001100110001001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan3~10_combout\,
	datab => \lulu|u2|ALT_INV_sig_arr[2][0]~q\,
	datac => \lulu|u2|ALT_INV_LessThan3~6_combout\,
	datad => \lulu|u2|ALT_INV_temp_max~0_combout\,
	datae => \lulu|u2|ALT_INV_LessThan3~8_combout\,
	dataf => \lulu|u2|ALT_INV_LessThan3~9_combout\,
	combout => \lulu|u2|temp_max~10_combout\);

-- Location: FF_X84_Y7_N46
\lulu|u2|u_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~10_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[1][0]~q\);

-- Location: LABCELL_X85_Y7_N48
\lulu|u2|temp_max~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~11_combout\ = ( \lulu|u2|temp_max~8_combout\ ) # ( !\lulu|u2|temp_max~8_combout\ & ( \lulu|u2|sig_arr[2][9]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|u2|ALT_INV_sig_arr[2][9]~q\,
	dataf => \lulu|u2|ALT_INV_temp_max~8_combout\,
	combout => \lulu|u2|temp_max~11_combout\);

-- Location: FF_X83_Y9_N26
\lulu|u2|u_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~11_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[1][9]~q\);

-- Location: FF_X83_Y9_N20
\lulu|u2|u_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~11_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[0][9]~q\);

-- Location: LABCELL_X83_Y9_N24
\lulu|u2|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan6~0_combout\ = ( \lulu|u2|u_arr[0][9]~q\ & ( !\lulu|u2|u_arr[1][9]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lulu|u2|ALT_INV_u_arr[1][9]~q\,
	dataf => \lulu|u2|ALT_INV_u_arr[0][9]~q\,
	combout => \lulu|u2|LessThan6~0_combout\);

-- Location: FF_X83_Y7_N50
\lulu|u2|u_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~10_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[2][0]~q\);

-- Location: LABCELL_X83_Y7_N33
\lulu|u2|temp_max~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~12_combout\ = (!\lulu|u2|sig_arr[2][8]~q\ & (\lulu|u2|temp_max~9_combout\ & ((!\lulu|u2|sig_arr[2][9]~q\) # (\lulu|u2|temp_max~8_combout\)))) # (\lulu|u2|sig_arr[2][8]~q\ & ((!\lulu|u2|temp_max~8_combout\) # 
-- ((\lulu|u2|temp_max~9_combout\) # (\lulu|u2|sig_arr[2][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010111110111010001011111011101000101111101110100010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_sig_arr[2][8]~q\,
	datab => \lulu|u2|ALT_INV_temp_max~8_combout\,
	datac => \lulu|u2|ALT_INV_sig_arr[2][9]~q\,
	datad => \lulu|u2|ALT_INV_temp_max~9_combout\,
	combout => \lulu|u2|temp_max~12_combout\);

-- Location: FF_X83_Y9_N23
\lulu|u2|u_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~12_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[0][8]~q\);

-- Location: LABCELL_X83_Y7_N57
\lulu|u2|temp_max~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~17_combout\ = ( \lulu|u2|sig_arr[2][5]~q\ & ( \lulu|u2|temp_max~3_combout\ ) ) # ( !\lulu|u2|sig_arr[2][5]~q\ & ( \lulu|u2|temp_max~3_combout\ & ( (!\lulu|u2|LessThan3~10_combout\ & ((!\lulu|u2|LessThan3~9_combout\) # 
-- ((\lulu|u2|LessThan3~8_combout\ & !\lulu|u2|LessThan3~6_combout\)))) ) ) ) # ( \lulu|u2|sig_arr[2][5]~q\ & ( !\lulu|u2|temp_max~3_combout\ & ( ((\lulu|u2|LessThan3~9_combout\ & ((!\lulu|u2|LessThan3~8_combout\) # (\lulu|u2|LessThan3~6_combout\)))) # 
-- (\lulu|u2|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101010111011110001010100010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan3~10_combout\,
	datab => \lulu|u2|ALT_INV_LessThan3~9_combout\,
	datac => \lulu|u2|ALT_INV_LessThan3~8_combout\,
	datad => \lulu|u2|ALT_INV_LessThan3~6_combout\,
	datae => \lulu|u2|ALT_INV_sig_arr[2][5]~q\,
	dataf => \lulu|u2|ALT_INV_temp_max~3_combout\,
	combout => \lulu|u2|temp_max~17_combout\);

-- Location: FF_X83_Y9_N38
\lulu|u2|u_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~17_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[1][5]~q\);

-- Location: FF_X83_Y9_N8
\lulu|u2|u_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~17_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[0][5]~q\);

-- Location: LABCELL_X83_Y7_N24
\lulu|u2|temp_max~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~19_combout\ = ( \lulu|u2|LessThan3~8_combout\ & ( \lulu|u2|LessThan3~6_combout\ & ( (!\lulu|u2|LessThan3~10_combout\ & ((!\lulu|u2|LessThan3~9_combout\ & ((\lulu|u2|temp_max~1_combout\))) # (\lulu|u2|LessThan3~9_combout\ & 
-- (\lulu|u2|sig_arr[2][7]~q\)))) # (\lulu|u2|LessThan3~10_combout\ & (\lulu|u2|sig_arr[2][7]~q\)) ) ) ) # ( !\lulu|u2|LessThan3~8_combout\ & ( \lulu|u2|LessThan3~6_combout\ & ( (!\lulu|u2|LessThan3~10_combout\ & ((!\lulu|u2|LessThan3~9_combout\ & 
-- ((\lulu|u2|temp_max~1_combout\))) # (\lulu|u2|LessThan3~9_combout\ & (\lulu|u2|sig_arr[2][7]~q\)))) # (\lulu|u2|LessThan3~10_combout\ & (\lulu|u2|sig_arr[2][7]~q\)) ) ) ) # ( \lulu|u2|LessThan3~8_combout\ & ( !\lulu|u2|LessThan3~6_combout\ & ( 
-- (!\lulu|u2|LessThan3~10_combout\ & ((\lulu|u2|temp_max~1_combout\))) # (\lulu|u2|LessThan3~10_combout\ & (\lulu|u2|sig_arr[2][7]~q\)) ) ) ) # ( !\lulu|u2|LessThan3~8_combout\ & ( !\lulu|u2|LessThan3~6_combout\ & ( (!\lulu|u2|LessThan3~10_combout\ & 
-- ((!\lulu|u2|LessThan3~9_combout\ & ((\lulu|u2|temp_max~1_combout\))) # (\lulu|u2|LessThan3~9_combout\ & (\lulu|u2|sig_arr[2][7]~q\)))) # (\lulu|u2|LessThan3~10_combout\ & (\lulu|u2|sig_arr[2][7]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100110011000110110001101100011011001100110001101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan3~10_combout\,
	datab => \lulu|u2|ALT_INV_sig_arr[2][7]~q\,
	datac => \lulu|u2|ALT_INV_temp_max~1_combout\,
	datad => \lulu|u2|ALT_INV_LessThan3~9_combout\,
	datae => \lulu|u2|ALT_INV_LessThan3~8_combout\,
	dataf => \lulu|u2|ALT_INV_LessThan3~6_combout\,
	combout => \lulu|u2|temp_max~19_combout\);

-- Location: FF_X83_Y7_N31
\lulu|u2|u_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~19_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[0][7]~q\);

-- Location: MLABCELL_X84_Y7_N0
\lulu|u2|temp_max~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~18_combout\ = ( \lulu|u2|temp_max~2_combout\ & ( \lulu|u2|LessThan3~6_combout\ & ( ((!\lulu|u2|LessThan3~9_combout\ & !\lulu|u2|LessThan3~10_combout\)) # (\lulu|u2|sig_arr[2][6]~q\) ) ) ) # ( !\lulu|u2|temp_max~2_combout\ & ( 
-- \lulu|u2|LessThan3~6_combout\ & ( (\lulu|u2|sig_arr[2][6]~q\ & ((\lulu|u2|LessThan3~10_combout\) # (\lulu|u2|LessThan3~9_combout\))) ) ) ) # ( \lulu|u2|temp_max~2_combout\ & ( !\lulu|u2|LessThan3~6_combout\ & ( ((!\lulu|u2|LessThan3~10_combout\ & 
-- ((!\lulu|u2|LessThan3~9_combout\) # (\lulu|u2|LessThan3~8_combout\)))) # (\lulu|u2|sig_arr[2][6]~q\) ) ) ) # ( !\lulu|u2|temp_max~2_combout\ & ( !\lulu|u2|LessThan3~6_combout\ & ( (\lulu|u2|sig_arr[2][6]~q\ & (((\lulu|u2|LessThan3~9_combout\ & 
-- !\lulu|u2|LessThan3~8_combout\)) # (\lulu|u2|LessThan3~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110011100011001111111100000000011101111000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan3~9_combout\,
	datab => \lulu|u2|ALT_INV_LessThan3~10_combout\,
	datac => \lulu|u2|ALT_INV_LessThan3~8_combout\,
	datad => \lulu|u2|ALT_INV_sig_arr[2][6]~q\,
	datae => \lulu|u2|ALT_INV_temp_max~2_combout\,
	dataf => \lulu|u2|ALT_INV_LessThan3~6_combout\,
	combout => \lulu|u2|temp_max~18_combout\);

-- Location: FF_X84_Y7_N2
\lulu|u2|u_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_max~18_combout\,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[0][6]~q\);

-- Location: FF_X83_Y9_N56
\lulu|u2|u_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~19_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[1][7]~q\);

-- Location: FF_X84_Y7_N11
\lulu|u2|u_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~18_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[1][6]~q\);

-- Location: LABCELL_X83_Y9_N57
\lulu|u2|LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan6~3_combout\ = ( \lulu|u2|u_arr[1][7]~q\ & ( \lulu|u2|u_arr[1][6]~q\ & ( (\lulu|u2|u_arr[0][7]~q\ & (\lulu|u2|u_arr[0][6]~q\ & (!\lulu|u2|u_arr[1][5]~q\ $ (\lulu|u2|u_arr[0][5]~q\)))) ) ) ) # ( !\lulu|u2|u_arr[1][7]~q\ & ( 
-- \lulu|u2|u_arr[1][6]~q\ & ( (!\lulu|u2|u_arr[0][7]~q\ & (\lulu|u2|u_arr[0][6]~q\ & (!\lulu|u2|u_arr[1][5]~q\ $ (\lulu|u2|u_arr[0][5]~q\)))) ) ) ) # ( \lulu|u2|u_arr[1][7]~q\ & ( !\lulu|u2|u_arr[1][6]~q\ & ( (\lulu|u2|u_arr[0][7]~q\ & 
-- (!\lulu|u2|u_arr[0][6]~q\ & (!\lulu|u2|u_arr[1][5]~q\ $ (\lulu|u2|u_arr[0][5]~q\)))) ) ) ) # ( !\lulu|u2|u_arr[1][7]~q\ & ( !\lulu|u2|u_arr[1][6]~q\ & ( (!\lulu|u2|u_arr[0][7]~q\ & (!\lulu|u2|u_arr[0][6]~q\ & (!\lulu|u2|u_arr[1][5]~q\ $ 
-- (\lulu|u2|u_arr[0][5]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[1][5]~q\,
	datab => \lulu|u2|ALT_INV_u_arr[0][5]~q\,
	datac => \lulu|u2|ALT_INV_u_arr[0][7]~q\,
	datad => \lulu|u2|ALT_INV_u_arr[0][6]~q\,
	datae => \lulu|u2|ALT_INV_u_arr[1][7]~q\,
	dataf => \lulu|u2|ALT_INV_u_arr[1][6]~q\,
	combout => \lulu|u2|LessThan6~3_combout\);

-- Location: LABCELL_X83_Y9_N9
\lulu|u2|LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan6~4_combout\ = ( \lulu|u2|u_arr[0][6]~q\ & ( \lulu|u2|u_arr[1][6]~q\ & ( (!\lulu|u2|u_arr[0][7]~q\ & (!\lulu|u2|u_arr[1][5]~q\ & (\lulu|u2|u_arr[0][5]~q\ & !\lulu|u2|u_arr[1][7]~q\))) # (\lulu|u2|u_arr[0][7]~q\ & 
-- ((!\lulu|u2|u_arr[1][7]~q\) # ((!\lulu|u2|u_arr[1][5]~q\ & \lulu|u2|u_arr[0][5]~q\)))) ) ) ) # ( !\lulu|u2|u_arr[0][6]~q\ & ( \lulu|u2|u_arr[1][6]~q\ & ( (\lulu|u2|u_arr[0][7]~q\ & !\lulu|u2|u_arr[1][7]~q\) ) ) ) # ( \lulu|u2|u_arr[0][6]~q\ & ( 
-- !\lulu|u2|u_arr[1][6]~q\ & ( (!\lulu|u2|u_arr[1][7]~q\) # (\lulu|u2|u_arr[0][7]~q\) ) ) ) # ( !\lulu|u2|u_arr[0][6]~q\ & ( !\lulu|u2|u_arr[1][6]~q\ & ( (!\lulu|u2|u_arr[0][7]~q\ & (!\lulu|u2|u_arr[1][5]~q\ & (\lulu|u2|u_arr[0][5]~q\ & 
-- !\lulu|u2|u_arr[1][7]~q\))) # (\lulu|u2|u_arr[0][7]~q\ & ((!\lulu|u2|u_arr[1][7]~q\) # ((!\lulu|u2|u_arr[1][5]~q\ & \lulu|u2|u_arr[0][5]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100000010111111110000111100001111000000000010111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[1][5]~q\,
	datab => \lulu|u2|ALT_INV_u_arr[0][5]~q\,
	datac => \lulu|u2|ALT_INV_u_arr[0][7]~q\,
	datad => \lulu|u2|ALT_INV_u_arr[1][7]~q\,
	datae => \lulu|u2|ALT_INV_u_arr[0][6]~q\,
	dataf => \lulu|u2|ALT_INV_u_arr[1][6]~q\,
	combout => \lulu|u2|LessThan6~4_combout\);

-- Location: MLABCELL_X84_Y7_N39
\lulu|u2|temp_max~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~16_combout\ = ( \lulu|u2|temp_max~4_combout\ & ( \lulu|u2|LessThan3~8_combout\ & ( ((!\lulu|u2|LessThan3~10_combout\ & ((!\lulu|u2|LessThan3~9_combout\) # (!\lulu|u2|LessThan3~6_combout\)))) # (\lulu|u2|sig_arr[2][4]~DUPLICATE_q\) ) ) ) 
-- # ( !\lulu|u2|temp_max~4_combout\ & ( \lulu|u2|LessThan3~8_combout\ & ( (\lulu|u2|sig_arr[2][4]~DUPLICATE_q\ & (((\lulu|u2|LessThan3~9_combout\ & \lulu|u2|LessThan3~6_combout\)) # (\lulu|u2|LessThan3~10_combout\))) ) ) ) # ( \lulu|u2|temp_max~4_combout\ & 
-- ( !\lulu|u2|LessThan3~8_combout\ & ( ((!\lulu|u2|LessThan3~9_combout\ & !\lulu|u2|LessThan3~10_combout\)) # (\lulu|u2|sig_arr[2][4]~DUPLICATE_q\) ) ) ) # ( !\lulu|u2|temp_max~4_combout\ & ( !\lulu|u2|LessThan3~8_combout\ & ( 
-- (\lulu|u2|sig_arr[2][4]~DUPLICATE_q\ & ((\lulu|u2|LessThan3~10_combout\) # (\lulu|u2|LessThan3~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111100010001111111100000000001101111100100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan3~9_combout\,
	datab => \lulu|u2|ALT_INV_LessThan3~10_combout\,
	datac => \lulu|u2|ALT_INV_LessThan3~6_combout\,
	datad => \lulu|u2|ALT_INV_sig_arr[2][4]~DUPLICATE_q\,
	datae => \lulu|u2|ALT_INV_temp_max~4_combout\,
	dataf => \lulu|u2|ALT_INV_LessThan3~8_combout\,
	combout => \lulu|u2|temp_max~16_combout\);

-- Location: FF_X84_Y9_N35
\lulu|u2|u_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~16_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[1][4]~q\);

-- Location: FF_X84_Y7_N23
\lulu|u2|u_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~16_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[0][4]~q\);

-- Location: LABCELL_X83_Y7_N0
\lulu|u2|temp_max~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~14_combout\ = ( \lulu|u2|sig_arr[2][2]~q\ & ( \lulu|u2|temp_max~7_combout\ ) ) # ( !\lulu|u2|sig_arr[2][2]~q\ & ( \lulu|u2|temp_max~7_combout\ & ( (!\lulu|u2|LessThan3~10_combout\ & ((!\lulu|u2|LessThan3~9_combout\) # 
-- ((!\lulu|u2|LessThan3~6_combout\ & \lulu|u2|LessThan3~8_combout\)))) ) ) ) # ( \lulu|u2|sig_arr[2][2]~q\ & ( !\lulu|u2|temp_max~7_combout\ & ( ((\lulu|u2|LessThan3~9_combout\ & ((!\lulu|u2|LessThan3~8_combout\) # (\lulu|u2|LessThan3~6_combout\)))) # 
-- (\lulu|u2|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111101111111110000001000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan3~6_combout\,
	datab => \lulu|u2|ALT_INV_LessThan3~8_combout\,
	datac => \lulu|u2|ALT_INV_LessThan3~10_combout\,
	datad => \lulu|u2|ALT_INV_LessThan3~9_combout\,
	datae => \lulu|u2|ALT_INV_sig_arr[2][2]~q\,
	dataf => \lulu|u2|ALT_INV_temp_max~7_combout\,
	combout => \lulu|u2|temp_max~14_combout\);

-- Location: FF_X83_Y7_N37
\lulu|u2|u_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~14_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[0][2]~q\);

-- Location: LABCELL_X83_Y7_N54
\lulu|u2|temp_max~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~15_combout\ = ( \lulu|u2|sig_arr[2][3]~q\ & ( \lulu|u2|temp_max~6_combout\ ) ) # ( !\lulu|u2|sig_arr[2][3]~q\ & ( \lulu|u2|temp_max~6_combout\ & ( (!\lulu|u2|LessThan3~10_combout\ & ((!\lulu|u2|LessThan3~9_combout\) # 
-- ((!\lulu|u2|LessThan3~6_combout\ & \lulu|u2|LessThan3~8_combout\)))) ) ) ) # ( \lulu|u2|sig_arr[2][3]~q\ & ( !\lulu|u2|temp_max~6_combout\ & ( ((\lulu|u2|LessThan3~9_combout\ & ((!\lulu|u2|LessThan3~8_combout\) # (\lulu|u2|LessThan3~6_combout\)))) # 
-- (\lulu|u2|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110101011110001000101010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan3~10_combout\,
	datab => \lulu|u2|ALT_INV_LessThan3~9_combout\,
	datac => \lulu|u2|ALT_INV_LessThan3~6_combout\,
	datad => \lulu|u2|ALT_INV_LessThan3~8_combout\,
	datae => \lulu|u2|ALT_INV_sig_arr[2][3]~q\,
	dataf => \lulu|u2|ALT_INV_temp_max~6_combout\,
	combout => \lulu|u2|temp_max~15_combout\);

-- Location: FF_X83_Y7_N35
\lulu|u2|u_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~15_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[0][3]~q\);

-- Location: MLABCELL_X82_Y7_N3
\lulu|u2|u_arr[1][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|u_arr[1][2]~feeder_combout\ = ( \lulu|u2|temp_max~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|u2|ALT_INV_temp_max~14_combout\,
	combout => \lulu|u2|u_arr[1][2]~feeder_combout\);

-- Location: FF_X82_Y7_N4
\lulu|u2|u_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|u_arr[1][2]~feeder_combout\,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[1][2]~q\);

-- Location: FF_X82_Y9_N2
\lulu|u2|u_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~15_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[1][3]~q\);

-- Location: FF_X84_Y7_N26
\lulu|u2|u_arr[0][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~10_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[0][0]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y7_N3
\lulu|u2|temp_max~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_max~13_combout\ = ( \lulu|u2|sig_arr[2][1]~q\ & ( \lulu|u2|temp_max~5_combout\ ) ) # ( !\lulu|u2|sig_arr[2][1]~q\ & ( \lulu|u2|temp_max~5_combout\ & ( (!\lulu|u2|LessThan3~10_combout\ & ((!\lulu|u2|LessThan3~9_combout\) # 
-- ((!\lulu|u2|LessThan3~6_combout\ & \lulu|u2|LessThan3~8_combout\)))) ) ) ) # ( \lulu|u2|sig_arr[2][1]~q\ & ( !\lulu|u2|temp_max~5_combout\ & ( ((\lulu|u2|LessThan3~9_combout\ & ((!\lulu|u2|LessThan3~8_combout\) # (\lulu|u2|LessThan3~6_combout\)))) # 
-- (\lulu|u2|LessThan3~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011011111111111110010000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan3~6_combout\,
	datab => \lulu|u2|ALT_INV_LessThan3~8_combout\,
	datac => \lulu|u2|ALT_INV_LessThan3~9_combout\,
	datad => \lulu|u2|ALT_INV_LessThan3~10_combout\,
	datae => \lulu|u2|ALT_INV_sig_arr[2][1]~q\,
	dataf => \lulu|u2|ALT_INV_temp_max~5_combout\,
	combout => \lulu|u2|temp_max~13_combout\);

-- Location: FF_X83_Y7_N46
\lulu|u2|u_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~13_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[1][1]~q\);

-- Location: FF_X84_Y7_N47
\lulu|u2|u_arr[1][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~10_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[1][0]~DUPLICATE_q\);

-- Location: FF_X84_Y7_N53
\lulu|u2|u_arr[0][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~13_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[0][1]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y7_N42
\lulu|u2|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan6~1_combout\ = ( \lulu|u2|u_arr[1][0]~DUPLICATE_q\ & ( \lulu|u2|u_arr[0][1]~DUPLICATE_q\ & ( !\lulu|u2|u_arr[1][1]~q\ ) ) ) # ( !\lulu|u2|u_arr[1][0]~DUPLICATE_q\ & ( \lulu|u2|u_arr[0][1]~DUPLICATE_q\ & ( (!\lulu|u2|u_arr[1][1]~q\) # 
-- (\lulu|u2|u_arr[0][0]~DUPLICATE_q\) ) ) ) # ( !\lulu|u2|u_arr[1][0]~DUPLICATE_q\ & ( !\lulu|u2|u_arr[0][1]~DUPLICATE_q\ & ( (\lulu|u2|u_arr[0][0]~DUPLICATE_q\ & !\lulu|u2|u_arr[1][1]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000011110101111101011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[0][0]~DUPLICATE_q\,
	datac => \lulu|u2|ALT_INV_u_arr[1][1]~q\,
	datae => \lulu|u2|ALT_INV_u_arr[1][0]~DUPLICATE_q\,
	dataf => \lulu|u2|ALT_INV_u_arr[0][1]~DUPLICATE_q\,
	combout => \lulu|u2|LessThan6~1_combout\);

-- Location: MLABCELL_X82_Y9_N0
\lulu|u2|LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan6~2_combout\ = ( \lulu|u2|u_arr[1][3]~q\ & ( \lulu|u2|LessThan6~1_combout\ & ( (\lulu|u2|u_arr[0][3]~q\ & ((!\lulu|u2|u_arr[1][2]~q\) # (\lulu|u2|u_arr[0][2]~q\))) ) ) ) # ( !\lulu|u2|u_arr[1][3]~q\ & ( \lulu|u2|LessThan6~1_combout\ & ( 
-- ((!\lulu|u2|u_arr[1][2]~q\) # (\lulu|u2|u_arr[0][3]~q\)) # (\lulu|u2|u_arr[0][2]~q\) ) ) ) # ( \lulu|u2|u_arr[1][3]~q\ & ( !\lulu|u2|LessThan6~1_combout\ & ( (\lulu|u2|u_arr[0][2]~q\ & (\lulu|u2|u_arr[0][3]~q\ & !\lulu|u2|u_arr[1][2]~q\)) ) ) ) # ( 
-- !\lulu|u2|u_arr[1][3]~q\ & ( !\lulu|u2|LessThan6~1_combout\ & ( ((\lulu|u2|u_arr[0][2]~q\ & !\lulu|u2|u_arr[1][2]~q\)) # (\lulu|u2|u_arr[0][3]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011000100000001000011110111111101110011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[0][2]~q\,
	datab => \lulu|u2|ALT_INV_u_arr[0][3]~q\,
	datac => \lulu|u2|ALT_INV_u_arr[1][2]~q\,
	datae => \lulu|u2|ALT_INV_u_arr[1][3]~q\,
	dataf => \lulu|u2|ALT_INV_LessThan6~1_combout\,
	combout => \lulu|u2|LessThan6~2_combout\);

-- Location: LABCELL_X83_Y9_N39
\lulu|u2|LessThan6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan6~5_combout\ = ( \lulu|u2|u_arr[0][4]~q\ & ( \lulu|u2|LessThan6~2_combout\ & ( (!\lulu|u2|LessThan6~3_combout\ & !\lulu|u2|LessThan6~4_combout\) ) ) ) # ( !\lulu|u2|u_arr[0][4]~q\ & ( \lulu|u2|LessThan6~2_combout\ & ( 
-- (!\lulu|u2|LessThan6~4_combout\ & ((!\lulu|u2|LessThan6~3_combout\) # (\lulu|u2|u_arr[1][4]~q\))) ) ) ) # ( \lulu|u2|u_arr[0][4]~q\ & ( !\lulu|u2|LessThan6~2_combout\ & ( (!\lulu|u2|LessThan6~4_combout\ & ((!\lulu|u2|LessThan6~3_combout\) # 
-- (\lulu|u2|u_arr[1][4]~q\))) ) ) ) # ( !\lulu|u2|u_arr[0][4]~q\ & ( !\lulu|u2|LessThan6~2_combout\ & ( !\lulu|u2|LessThan6~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110000001111000011000000111100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u2|ALT_INV_LessThan6~3_combout\,
	datac => \lulu|u2|ALT_INV_LessThan6~4_combout\,
	datad => \lulu|u2|ALT_INV_u_arr[1][4]~q\,
	datae => \lulu|u2|ALT_INV_u_arr[0][4]~q\,
	dataf => \lulu|u2|ALT_INV_LessThan6~2_combout\,
	combout => \lulu|u2|LessThan6~5_combout\);

-- Location: FF_X83_Y9_N29
\lulu|u2|u_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~12_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[1][8]~q\);

-- Location: LABCELL_X83_Y9_N18
\lulu|u2|LessThan6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan6~6_combout\ = ( \lulu|u2|u_arr[0][9]~q\ & ( \lulu|u2|u_arr[1][9]~q\ & ( (!\lulu|u2|u_arr[0][8]~q\ & (!\lulu|u2|LessThan6~5_combout\ & !\lulu|u2|u_arr[1][8]~q\)) # (\lulu|u2|u_arr[0][8]~q\ & ((!\lulu|u2|LessThan6~5_combout\) # 
-- (!\lulu|u2|u_arr[1][8]~q\))) ) ) ) # ( !\lulu|u2|u_arr[0][9]~q\ & ( !\lulu|u2|u_arr[1][9]~q\ & ( (!\lulu|u2|u_arr[0][8]~q\ & (!\lulu|u2|LessThan6~5_combout\ & !\lulu|u2|u_arr[1][8]~q\)) # (\lulu|u2|u_arr[0][8]~q\ & ((!\lulu|u2|LessThan6~5_combout\) # 
-- (!\lulu|u2|u_arr[1][8]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010011010100000000000000000000000000000000001101010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[0][8]~q\,
	datab => \lulu|u2|ALT_INV_LessThan6~5_combout\,
	datac => \lulu|u2|ALT_INV_u_arr[1][8]~q\,
	datae => \lulu|u2|ALT_INV_u_arr[0][9]~q\,
	dataf => \lulu|u2|ALT_INV_u_arr[1][9]~q\,
	combout => \lulu|u2|LessThan6~6_combout\);

-- Location: FF_X84_Y7_N25
\lulu|u2|u_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~10_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[0][0]~q\);

-- Location: FF_X83_Y7_N22
\lulu|u2|u_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~11_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[2][9]~q\);

-- Location: LABCELL_X85_Y9_N0
\lulu|u2|u_arr[2][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|u_arr[2][8]~feeder_combout\ = ( \lulu|u2|temp_max~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \lulu|u2|ALT_INV_temp_max~12_combout\,
	combout => \lulu|u2|u_arr[2][8]~feeder_combout\);

-- Location: FF_X85_Y9_N2
\lulu|u2|u_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|u_arr[2][8]~feeder_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[2][8]~q\);

-- Location: LABCELL_X83_Y9_N27
\lulu|u2|temp_min~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_min~8_combout\ = (!\lulu|u2|LessThan6~0_combout\ & ((!\lulu|u2|LessThan6~6_combout\ & (\lulu|u2|u_arr[0][8]~q\)) # (\lulu|u2|LessThan6~6_combout\ & ((\lulu|u2|u_arr[1][8]~q\))))) # (\lulu|u2|LessThan6~0_combout\ & 
-- (((\lulu|u2|u_arr[1][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001111111010000000111111101000000011111110100000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[0][8]~q\,
	datab => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	datad => \lulu|u2|ALT_INV_u_arr[1][8]~q\,
	combout => \lulu|u2|temp_min~8_combout\);

-- Location: FF_X83_Y7_N26
\lulu|u2|u_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_max~19_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[2][7]~q\);

-- Location: FF_X84_Y7_N37
\lulu|u2|u_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~18_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[2][6]~q\);

-- Location: FF_X83_Y9_N7
\lulu|u2|u_arr[0][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~17_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[0][5]~DUPLICATE_q\);

-- Location: FF_X83_Y7_N59
\lulu|u2|u_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_max~17_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[2][5]~q\);

-- Location: FF_X84_Y7_N41
\lulu|u2|u_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_max~16_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[2][4]~q\);

-- Location: FF_X83_Y7_N56
\lulu|u2|u_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_max~15_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[2][3]~q\);

-- Location: FF_X83_Y7_N2
\lulu|u2|u_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_max~14_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[2][2]~q\);

-- Location: FF_X84_Y7_N52
\lulu|u2|u_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lulu|u2|temp_max~13_combout\,
	sload => VCC,
	ena => \lulu|u2|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[0][1]~q\);

-- Location: FF_X83_Y7_N5
\lulu|u2|u_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_max~13_combout\,
	ena => \lulu|u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_arr[2][1]~q\);

-- Location: MLABCELL_X84_Y9_N0
\lulu|u2|LessThan7~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan7~42_cout\ = CARRY(( (!\lulu|u2|LessThan6~6_combout\ & ((!\lulu|u2|LessThan6~0_combout\ & ((\lulu|u2|u_arr[0][0]~q\))) # (\lulu|u2|LessThan6~0_combout\ & (\lulu|u2|u_arr[1][0]~q\)))) # (\lulu|u2|LessThan6~6_combout\ & 
-- (((\lulu|u2|u_arr[1][0]~q\)))) ) + ( !\lulu|u2|u_arr[2][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u2|ALT_INV_u_arr[1][0]~q\,
	datad => \lulu|u2|ALT_INV_u_arr[0][0]~q\,
	dataf => \lulu|u2|ALT_INV_u_arr[2][0]~q\,
	cin => GND,
	cout => \lulu|u2|LessThan7~42_cout\);

-- Location: MLABCELL_X84_Y9_N3
\lulu|u2|LessThan7~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan7~38_cout\ = CARRY(( (!\lulu|u2|LessThan6~6_combout\ & ((!\lulu|u2|LessThan6~0_combout\ & ((\lulu|u2|u_arr[0][1]~q\))) # (\lulu|u2|LessThan6~0_combout\ & (\lulu|u2|u_arr[1][1]~q\)))) # (\lulu|u2|LessThan6~6_combout\ & 
-- (((\lulu|u2|u_arr[1][1]~q\)))) ) + ( !\lulu|u2|u_arr[2][1]~q\ ) + ( \lulu|u2|LessThan7~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u2|ALT_INV_u_arr[1][1]~q\,
	datad => \lulu|u2|ALT_INV_u_arr[0][1]~q\,
	dataf => \lulu|u2|ALT_INV_u_arr[2][1]~q\,
	cin => \lulu|u2|LessThan7~42_cout\,
	cout => \lulu|u2|LessThan7~38_cout\);

-- Location: MLABCELL_X84_Y9_N6
\lulu|u2|LessThan7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan7~34_cout\ = CARRY(( !\lulu|u2|u_arr[2][2]~q\ ) + ( (!\lulu|u2|LessThan6~6_combout\ & ((!\lulu|u2|LessThan6~0_combout\ & ((\lulu|u2|u_arr[0][2]~q\))) # (\lulu|u2|LessThan6~0_combout\ & (\lulu|u2|u_arr[1][2]~q\)))) # 
-- (\lulu|u2|LessThan6~6_combout\ & (((\lulu|u2|u_arr[1][2]~q\)))) ) + ( \lulu|u2|LessThan7~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u2|ALT_INV_u_arr[1][2]~q\,
	datad => \lulu|u2|ALT_INV_u_arr[2][2]~q\,
	dataf => \lulu|u2|ALT_INV_u_arr[0][2]~q\,
	cin => \lulu|u2|LessThan7~38_cout\,
	cout => \lulu|u2|LessThan7~34_cout\);

-- Location: MLABCELL_X84_Y9_N9
\lulu|u2|LessThan7~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan7~30_cout\ = CARRY(( (!\lulu|u2|LessThan6~6_combout\ & ((!\lulu|u2|LessThan6~0_combout\ & ((\lulu|u2|u_arr[0][3]~q\))) # (\lulu|u2|LessThan6~0_combout\ & (\lulu|u2|u_arr[1][3]~q\)))) # (\lulu|u2|LessThan6~6_combout\ & 
-- (((\lulu|u2|u_arr[1][3]~q\)))) ) + ( !\lulu|u2|u_arr[2][3]~q\ ) + ( \lulu|u2|LessThan7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u2|ALT_INV_u_arr[1][3]~q\,
	datad => \lulu|u2|ALT_INV_u_arr[0][3]~q\,
	dataf => \lulu|u2|ALT_INV_u_arr[2][3]~q\,
	cin => \lulu|u2|LessThan7~34_cout\,
	cout => \lulu|u2|LessThan7~30_cout\);

-- Location: MLABCELL_X84_Y9_N12
\lulu|u2|LessThan7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan7~26_cout\ = CARRY(( (!\lulu|u2|LessThan6~6_combout\ & ((!\lulu|u2|LessThan6~0_combout\ & ((\lulu|u2|u_arr[0][4]~q\))) # (\lulu|u2|LessThan6~0_combout\ & (\lulu|u2|u_arr[1][4]~q\)))) # (\lulu|u2|LessThan6~6_combout\ & 
-- (((\lulu|u2|u_arr[1][4]~q\)))) ) + ( !\lulu|u2|u_arr[2][4]~q\ ) + ( \lulu|u2|LessThan7~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u2|ALT_INV_u_arr[1][4]~q\,
	datad => \lulu|u2|ALT_INV_u_arr[0][4]~q\,
	dataf => \lulu|u2|ALT_INV_u_arr[2][4]~q\,
	cin => \lulu|u2|LessThan7~30_cout\,
	cout => \lulu|u2|LessThan7~26_cout\);

-- Location: MLABCELL_X84_Y9_N15
\lulu|u2|LessThan7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan7~22_cout\ = CARRY(( (!\lulu|u2|LessThan6~6_combout\ & ((!\lulu|u2|LessThan6~0_combout\ & ((\lulu|u2|u_arr[0][5]~DUPLICATE_q\))) # (\lulu|u2|LessThan6~0_combout\ & (\lulu|u2|u_arr[1][5]~q\)))) # (\lulu|u2|LessThan6~6_combout\ & 
-- (((\lulu|u2|u_arr[1][5]~q\)))) ) + ( !\lulu|u2|u_arr[2][5]~q\ ) + ( \lulu|u2|LessThan7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u2|ALT_INV_u_arr[1][5]~q\,
	datad => \lulu|u2|ALT_INV_u_arr[0][5]~DUPLICATE_q\,
	dataf => \lulu|u2|ALT_INV_u_arr[2][5]~q\,
	cin => \lulu|u2|LessThan7~26_cout\,
	cout => \lulu|u2|LessThan7~22_cout\);

-- Location: MLABCELL_X84_Y9_N18
\lulu|u2|LessThan7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan7~18_cout\ = CARRY(( !\lulu|u2|u_arr[2][6]~q\ ) + ( (!\lulu|u2|LessThan6~6_combout\ & ((!\lulu|u2|LessThan6~0_combout\ & ((\lulu|u2|u_arr[0][6]~q\))) # (\lulu|u2|LessThan6~0_combout\ & (\lulu|u2|u_arr[1][6]~q\)))) # 
-- (\lulu|u2|LessThan6~6_combout\ & (((\lulu|u2|u_arr[1][6]~q\)))) ) + ( \lulu|u2|LessThan7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u2|ALT_INV_u_arr[1][6]~q\,
	datad => \lulu|u2|ALT_INV_u_arr[2][6]~q\,
	dataf => \lulu|u2|ALT_INV_u_arr[0][6]~q\,
	cin => \lulu|u2|LessThan7~22_cout\,
	cout => \lulu|u2|LessThan7~18_cout\);

-- Location: MLABCELL_X84_Y9_N21
\lulu|u2|LessThan7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan7~14_cout\ = CARRY(( !\lulu|u2|u_arr[2][7]~q\ ) + ( (!\lulu|u2|LessThan6~6_combout\ & ((!\lulu|u2|LessThan6~0_combout\ & ((\lulu|u2|u_arr[0][7]~q\))) # (\lulu|u2|LessThan6~0_combout\ & (\lulu|u2|u_arr[1][7]~q\)))) # 
-- (\lulu|u2|LessThan6~6_combout\ & (((\lulu|u2|u_arr[1][7]~q\)))) ) + ( \lulu|u2|LessThan7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	datab => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u2|ALT_INV_u_arr[1][7]~q\,
	datad => \lulu|u2|ALT_INV_u_arr[2][7]~q\,
	dataf => \lulu|u2|ALT_INV_u_arr[0][7]~q\,
	cin => \lulu|u2|LessThan7~18_cout\,
	cout => \lulu|u2|LessThan7~14_cout\);

-- Location: MLABCELL_X84_Y9_N24
\lulu|u2|LessThan7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan7~10_cout\ = CARRY(( \lulu|u2|temp_min~8_combout\ ) + ( !\lulu|u2|u_arr[2][8]~q\ ) + ( \lulu|u2|LessThan7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lulu|u2|ALT_INV_u_arr[2][8]~q\,
	datad => \lulu|u2|ALT_INV_temp_min~8_combout\,
	cin => \lulu|u2|LessThan7~14_cout\,
	cout => \lulu|u2|LessThan7~10_cout\);

-- Location: MLABCELL_X84_Y9_N27
\lulu|u2|LessThan7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan7~6_cout\ = CARRY(( !\lulu|u2|u_arr[2][9]~q\ ) + ( (\lulu|u2|u_arr[1][9]~q\ & \lulu|u2|u_arr[0][9]~q\) ) + ( \lulu|u2|LessThan7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[1][9]~q\,
	datac => \lulu|u2|ALT_INV_u_arr[0][9]~q\,
	datad => \lulu|u2|ALT_INV_u_arr[2][9]~q\,
	cin => \lulu|u2|LessThan7~10_cout\,
	cout => \lulu|u2|LessThan7~6_cout\);

-- Location: MLABCELL_X84_Y9_N30
\lulu|u2|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|LessThan7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \lulu|u2|LessThan7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \lulu|u2|LessThan7~6_cout\,
	sumout => \lulu|u2|LessThan7~1_sumout\);

-- Location: MLABCELL_X84_Y9_N48
\lulu|u2|temp_min~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_min~0_combout\ = ( \lulu|u2|u_arr[0][0]~q\ & ( \lulu|u2|LessThan7~1_sumout\ & ( ((!\lulu|u2|LessThan6~0_combout\ & !\lulu|u2|LessThan6~6_combout\)) # (\lulu|u2|u_arr[1][0]~q\) ) ) ) # ( !\lulu|u2|u_arr[0][0]~q\ & ( 
-- \lulu|u2|LessThan7~1_sumout\ & ( (\lulu|u2|u_arr[1][0]~q\ & ((\lulu|u2|LessThan6~6_combout\) # (\lulu|u2|LessThan6~0_combout\))) ) ) ) # ( \lulu|u2|u_arr[0][0]~q\ & ( !\lulu|u2|LessThan7~1_sumout\ & ( \lulu|u2|u_arr[2][0]~q\ ) ) ) # ( 
-- !\lulu|u2|u_arr[0][0]~q\ & ( !\lulu|u2|LessThan7~1_sumout\ & ( \lulu|u2|u_arr[2][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001010101011101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[1][0]~q\,
	datab => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u2|ALT_INV_u_arr[2][0]~q\,
	datad => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	datae => \lulu|u2|ALT_INV_u_arr[0][0]~q\,
	dataf => \lulu|u2|ALT_INV_LessThan7~1_sumout\,
	combout => \lulu|u2|temp_min~0_combout\);

-- Location: FF_X84_Y9_N49
\lulu|u2|u_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_min~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_out\(0));

-- Location: MLABCELL_X84_Y9_N54
\lulu|u2|temp_min~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_min~1_combout\ = ( \lulu|u2|u_arr[1][1]~q\ & ( \lulu|u2|LessThan7~1_sumout\ & ( ((\lulu|u2|LessThan6~6_combout\) # (\lulu|u2|u_arr[0][1]~q\)) # (\lulu|u2|LessThan6~0_combout\) ) ) ) # ( !\lulu|u2|u_arr[1][1]~q\ & ( 
-- \lulu|u2|LessThan7~1_sumout\ & ( (!\lulu|u2|LessThan6~0_combout\ & (\lulu|u2|u_arr[0][1]~q\ & !\lulu|u2|LessThan6~6_combout\)) ) ) ) # ( \lulu|u2|u_arr[1][1]~q\ & ( !\lulu|u2|LessThan7~1_sumout\ & ( \lulu|u2|u_arr[2][1]~q\ ) ) ) # ( 
-- !\lulu|u2|u_arr[1][1]~q\ & ( !\lulu|u2|LessThan7~1_sumout\ & ( \lulu|u2|u_arr[2][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001100000000000011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[2][1]~q\,
	datab => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	datac => \lulu|u2|ALT_INV_u_arr[0][1]~q\,
	datad => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	datae => \lulu|u2|ALT_INV_u_arr[1][1]~q\,
	dataf => \lulu|u2|ALT_INV_LessThan7~1_sumout\,
	combout => \lulu|u2|temp_min~1_combout\);

-- Location: FF_X84_Y9_N55
\lulu|u2|u_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_min~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_out\(1));

-- Location: MLABCELL_X84_Y9_N39
\lulu|u2|temp_min~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_min~2_combout\ = ( \lulu|u2|u_arr[1][2]~q\ & ( \lulu|u2|LessThan7~1_sumout\ & ( ((\lulu|u2|LessThan6~0_combout\) # (\lulu|u2|LessThan6~6_combout\)) # (\lulu|u2|u_arr[0][2]~q\) ) ) ) # ( !\lulu|u2|u_arr[1][2]~q\ & ( 
-- \lulu|u2|LessThan7~1_sumout\ & ( (\lulu|u2|u_arr[0][2]~q\ & (!\lulu|u2|LessThan6~6_combout\ & !\lulu|u2|LessThan6~0_combout\)) ) ) ) # ( \lulu|u2|u_arr[1][2]~q\ & ( !\lulu|u2|LessThan7~1_sumout\ & ( \lulu|u2|u_arr[2][2]~q\ ) ) ) # ( 
-- !\lulu|u2|u_arr[1][2]~q\ & ( !\lulu|u2|LessThan7~1_sumout\ & ( \lulu|u2|u_arr[2][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000000010000000111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[0][2]~q\,
	datab => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	datac => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	datad => \lulu|u2|ALT_INV_u_arr[2][2]~q\,
	datae => \lulu|u2|ALT_INV_u_arr[1][2]~q\,
	dataf => \lulu|u2|ALT_INV_LessThan7~1_sumout\,
	combout => \lulu|u2|temp_min~2_combout\);

-- Location: FF_X84_Y9_N40
\lulu|u2|u_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_min~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_out\(2));

-- Location: LABCELL_X83_Y9_N12
\lulu|u2|temp_min~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_min~3_combout\ = ( \lulu|u2|LessThan6~0_combout\ & ( \lulu|u2|LessThan6~6_combout\ & ( (!\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[2][3]~q\))) # (\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[1][3]~q\)) ) ) ) # ( 
-- !\lulu|u2|LessThan6~0_combout\ & ( \lulu|u2|LessThan6~6_combout\ & ( (!\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[2][3]~q\))) # (\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[1][3]~q\)) ) ) ) # ( \lulu|u2|LessThan6~0_combout\ & ( 
-- !\lulu|u2|LessThan6~6_combout\ & ( (!\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[2][3]~q\))) # (\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[1][3]~q\)) ) ) ) # ( !\lulu|u2|LessThan6~0_combout\ & ( !\lulu|u2|LessThan6~6_combout\ & ( 
-- (!\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[2][3]~q\))) # (\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[0][3]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[1][3]~q\,
	datab => \lulu|u2|ALT_INV_u_arr[0][3]~q\,
	datac => \lulu|u2|ALT_INV_LessThan7~1_sumout\,
	datad => \lulu|u2|ALT_INV_u_arr[2][3]~q\,
	datae => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	dataf => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	combout => \lulu|u2|temp_min~3_combout\);

-- Location: FF_X83_Y9_N13
\lulu|u2|u_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_min~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_out\(3));

-- Location: LABCELL_X83_Y9_N42
\lulu|u2|temp_min~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_min~4_combout\ = ( \lulu|u2|LessThan6~0_combout\ & ( \lulu|u2|LessThan6~6_combout\ & ( (!\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[2][4]~q\)) # (\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[1][4]~q\))) ) ) ) # ( 
-- !\lulu|u2|LessThan6~0_combout\ & ( \lulu|u2|LessThan6~6_combout\ & ( (!\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[2][4]~q\)) # (\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[1][4]~q\))) ) ) ) # ( \lulu|u2|LessThan6~0_combout\ & ( 
-- !\lulu|u2|LessThan6~6_combout\ & ( (!\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[2][4]~q\)) # (\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[1][4]~q\))) ) ) ) # ( !\lulu|u2|LessThan6~0_combout\ & ( !\lulu|u2|LessThan6~6_combout\ & ( 
-- (!\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[2][4]~q\))) # (\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[0][4]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001100000011111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[0][4]~q\,
	datab => \lulu|u2|ALT_INV_u_arr[2][4]~q\,
	datac => \lulu|u2|ALT_INV_LessThan7~1_sumout\,
	datad => \lulu|u2|ALT_INV_u_arr[1][4]~q\,
	datae => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	dataf => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	combout => \lulu|u2|temp_min~4_combout\);

-- Location: FF_X83_Y9_N43
\lulu|u2|u_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_min~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_out\(4));

-- Location: LABCELL_X83_Y9_N48
\lulu|u2|temp_min~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_min~5_combout\ = ( \lulu|u2|u_arr[1][5]~q\ & ( \lulu|u2|LessThan6~6_combout\ & ( (\lulu|u2|LessThan7~1_sumout\) # (\lulu|u2|u_arr[2][5]~q\) ) ) ) # ( !\lulu|u2|u_arr[1][5]~q\ & ( \lulu|u2|LessThan6~6_combout\ & ( (\lulu|u2|u_arr[2][5]~q\ & 
-- !\lulu|u2|LessThan7~1_sumout\) ) ) ) # ( \lulu|u2|u_arr[1][5]~q\ & ( !\lulu|u2|LessThan6~6_combout\ & ( (!\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[2][5]~q\)) # (\lulu|u2|LessThan7~1_sumout\ & (((\lulu|u2|LessThan6~0_combout\) # 
-- (\lulu|u2|u_arr[0][5]~q\)))) ) ) ) # ( !\lulu|u2|u_arr[1][5]~q\ & ( !\lulu|u2|LessThan6~6_combout\ & ( (!\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[2][5]~q\)) # (\lulu|u2|LessThan7~1_sumout\ & (((\lulu|u2|u_arr[0][5]~q\ & 
-- !\lulu|u2|LessThan6~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010000010100110101111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[2][5]~q\,
	datab => \lulu|u2|ALT_INV_u_arr[0][5]~q\,
	datac => \lulu|u2|ALT_INV_LessThan7~1_sumout\,
	datad => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	datae => \lulu|u2|ALT_INV_u_arr[1][5]~q\,
	dataf => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	combout => \lulu|u2|temp_min~5_combout\);

-- Location: FF_X83_Y9_N49
\lulu|u2|u_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_min~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_out\(5));

-- Location: LABCELL_X83_Y9_N30
\lulu|u2|temp_min~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_min~6_combout\ = ( \lulu|u2|LessThan6~0_combout\ & ( \lulu|u2|LessThan6~6_combout\ & ( (!\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[2][6]~q\))) # (\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[1][6]~q\)) ) ) ) # ( 
-- !\lulu|u2|LessThan6~0_combout\ & ( \lulu|u2|LessThan6~6_combout\ & ( (!\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[2][6]~q\))) # (\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[1][6]~q\)) ) ) ) # ( \lulu|u2|LessThan6~0_combout\ & ( 
-- !\lulu|u2|LessThan6~6_combout\ & ( (!\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[2][6]~q\))) # (\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[1][6]~q\)) ) ) ) # ( !\lulu|u2|LessThan6~0_combout\ & ( !\lulu|u2|LessThan6~6_combout\ & ( 
-- (!\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[2][6]~q\))) # (\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[0][6]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[0][6]~q\,
	datab => \lulu|u2|ALT_INV_u_arr[1][6]~q\,
	datac => \lulu|u2|ALT_INV_LessThan7~1_sumout\,
	datad => \lulu|u2|ALT_INV_u_arr[2][6]~q\,
	datae => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	dataf => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	combout => \lulu|u2|temp_min~6_combout\);

-- Location: FF_X83_Y9_N31
\lulu|u2|u_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_min~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_out\(6));

-- Location: LABCELL_X83_Y9_N0
\lulu|u2|temp_min~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_min~7_combout\ = ( \lulu|u2|LessThan6~0_combout\ & ( \lulu|u2|LessThan6~6_combout\ & ( (!\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[2][7]~q\)) # (\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[1][7]~q\))) ) ) ) # ( 
-- !\lulu|u2|LessThan6~0_combout\ & ( \lulu|u2|LessThan6~6_combout\ & ( (!\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[2][7]~q\)) # (\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[1][7]~q\))) ) ) ) # ( \lulu|u2|LessThan6~0_combout\ & ( 
-- !\lulu|u2|LessThan6~6_combout\ & ( (!\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[2][7]~q\)) # (\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[1][7]~q\))) ) ) ) # ( !\lulu|u2|LessThan6~0_combout\ & ( !\lulu|u2|LessThan6~6_combout\ & ( 
-- (!\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[2][7]~q\)) # (\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[0][7]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_LessThan7~1_sumout\,
	datab => \lulu|u2|ALT_INV_u_arr[2][7]~q\,
	datac => \lulu|u2|ALT_INV_u_arr[1][7]~q\,
	datad => \lulu|u2|ALT_INV_u_arr[0][7]~q\,
	datae => \lulu|u2|ALT_INV_LessThan6~0_combout\,
	dataf => \lulu|u2|ALT_INV_LessThan6~6_combout\,
	combout => \lulu|u2|temp_min~7_combout\);

-- Location: FF_X83_Y9_N1
\lulu|u2|u_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_min~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_out\(7));

-- Location: MLABCELL_X84_Y9_N45
\lulu|u2|temp_min~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_min~9_combout\ = (!\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[2][8]~q\))) # (\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|temp_min~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lulu|u2|ALT_INV_LessThan7~1_sumout\,
	datac => \lulu|u2|ALT_INV_temp_min~8_combout\,
	datad => \lulu|u2|ALT_INV_u_arr[2][8]~q\,
	combout => \lulu|u2|temp_min~9_combout\);

-- Location: FF_X84_Y9_N46
\lulu|u2|u_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_min~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_out\(8));

-- Location: MLABCELL_X84_Y9_N42
\lulu|u2|temp_min~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lulu|u2|temp_min~10_combout\ = ( \lulu|u2|u_arr[1][9]~q\ & ( (!\lulu|u2|LessThan7~1_sumout\ & (\lulu|u2|u_arr[2][9]~q\)) # (\lulu|u2|LessThan7~1_sumout\ & ((\lulu|u2|u_arr[0][9]~q\))) ) ) # ( !\lulu|u2|u_arr[1][9]~q\ & ( (\lulu|u2|u_arr[2][9]~q\ & 
-- !\lulu|u2|LessThan7~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lulu|u2|ALT_INV_u_arr[2][9]~q\,
	datab => \lulu|u2|ALT_INV_LessThan7~1_sumout\,
	datad => \lulu|u2|ALT_INV_u_arr[0][9]~q\,
	dataf => \lulu|u2|ALT_INV_u_arr[1][9]~q\,
	combout => \lulu|u2|temp_min~10_combout\);

-- Location: FF_X84_Y9_N43
\lulu|u2|u_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lulu|u2|temp_min~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lulu|u2|u_out\(9));
END structure;


