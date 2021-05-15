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

-- DATE "05/15/2021 21:20:39"

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

ENTITY 	averaging_filter IS
    PORT (
	clk : IN std_logic;
	data_in : IN std_logic_vector(15 DOWNTO 0);
	data_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END averaging_filter;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[8]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[9]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[10]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[11]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[12]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[13]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[14]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[15]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF averaging_filter IS
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
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \count[0]~4_combout\ : std_logic;
SIGNAL \count[0]~feeder_combout\ : std_logic;
SIGNAL \count[3]~2_combout\ : std_logic;
SIGNAL \count[4]~1_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \count[1]~5_combout\ : std_logic;
SIGNAL \count[2]~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \count[5]~0_combout\ : std_logic;
SIGNAL \point[0]~0_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Add4~3_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \point[3]~DUPLICATE_q\ : std_logic;
SIGNAL \point[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \backlog~29_combout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \backlog~31_combout\ : std_logic;
SIGNAL \count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \backlog~30_combout\ : std_logic;
SIGNAL \backlog~24_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \backlog~26_combout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \backlog~27_combout\ : std_logic;
SIGNAL \point[0]~DUPLICATE_q\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[2]~0_combout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \backlog~28_combout\ : std_logic;
SIGNAL \backlog~23_combout\ : std_logic;
SIGNAL \backlog~25_combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_wirecell_combout\ : std_logic;
SIGNAL \point[0]~_wirecell_combout\ : std_logic;
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
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Add2~42_cout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL data_sum : std_logic_vector(15 DOWNTO 0);
SIGNAL count : std_logic_vector(5 DOWNTO 0);
SIGNAL backlog_rtl_0_bypass : std_logic_vector(0 TO 28);
SIGNAL point : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_point[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_point[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_point[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_data_in[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~29_combout\ : std_logic;
SIGNAL ALT_INV_point : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_backlog~26_combout\ : std_logic;
SIGNAL ALT_INV_backlog_rtl_0_bypass : std_logic_vector(22 DOWNTO 0);
SIGNAL \ALT_INV_backlog~25_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~24_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~23_combout\ : std_logic;
SIGNAL \ALT_INV_count[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(5 DOWNTO 0);
SIGNAL ALT_INV_data_sum : std_logic_vector(9 DOWNTO 0);
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\backlog_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\data_in[9]~input_o\ & \data_in[8]~input_o\ & \data_in[7]~input_o\ & \data_in[6]~input_o\ & \data_in[5]~input_o\ & \data_in[4]~input_o\ & \data_in[3]~input_o\ & \data_in[2]~input_o\ & \data_in[1]~input_o\ & \data_in[0]~input_o\);

\backlog_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\backlog~26_combout\ & \backlog~29_combout\ & \backlog~31_combout\ & \backlog~30_combout\ & \backlog~27_combout\ & \backlog~28_combout\);

\backlog_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Add4~0_combout\ & \Add4~2_combout\ & \Add4~4_combout\ & \Add4~3_combout\ & \Add4~1_combout\ & \point[0]~_wirecell_combout\);

\backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\backlog_rtl_0|auto_generated|ram_block1a1\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\backlog_rtl_0|auto_generated|ram_block1a2\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\backlog_rtl_0|auto_generated|ram_block1a3\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\backlog_rtl_0|auto_generated|ram_block1a4\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\backlog_rtl_0|auto_generated|ram_block1a5\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\backlog_rtl_0|auto_generated|ram_block1a6\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\backlog_rtl_0|auto_generated|ram_block1a7\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\backlog_rtl_0|auto_generated|ram_block1a8\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\backlog_rtl_0|auto_generated|ram_block1a9\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\ALT_INV_point[3]~DUPLICATE_q\ <= NOT \point[3]~DUPLICATE_q\;
\ALT_INV_point[1]~DUPLICATE_q\ <= NOT \point[1]~DUPLICATE_q\;
\ALT_INV_point[0]~DUPLICATE_q\ <= NOT \point[0]~DUPLICATE_q\;
\ALT_INV_count[2]~DUPLICATE_q\ <= NOT \count[2]~DUPLICATE_q\;
\ALT_INV_data_in[9]~input_o\ <= NOT \data_in[9]~input_o\;
\ALT_INV_data_in[8]~input_o\ <= NOT \data_in[8]~input_o\;
\ALT_INV_data_in[7]~input_o\ <= NOT \data_in[7]~input_o\;
\ALT_INV_data_in[6]~input_o\ <= NOT \data_in[6]~input_o\;
\ALT_INV_data_in[5]~input_o\ <= NOT \data_in[5]~input_o\;
\ALT_INV_data_in[4]~input_o\ <= NOT \data_in[4]~input_o\;
\ALT_INV_data_in[3]~input_o\ <= NOT \data_in[3]~input_o\;
\ALT_INV_data_in[2]~input_o\ <= NOT \data_in[2]~input_o\;
\ALT_INV_data_in[1]~input_o\ <= NOT \data_in[1]~input_o\;
\ALT_INV_data_in[0]~input_o\ <= NOT \data_in[0]~input_o\;
\ALT_INV_LessThan0~1_wirecell_combout\ <= NOT \LessThan0~1_wirecell_combout\;
\ALT_INV_backlog~29_combout\ <= NOT \backlog~29_combout\;
ALT_INV_point(4) <= NOT point(4);
ALT_INV_point(3) <= NOT point(3);
ALT_INV_point(2) <= NOT point(2);
ALT_INV_point(1) <= NOT point(1);
ALT_INV_point(0) <= NOT point(0);
\ALT_INV_backlog~26_combout\ <= NOT \backlog~26_combout\;
ALT_INV_point(5) <= NOT point(5);
ALT_INV_backlog_rtl_0_bypass(22) <= NOT backlog_rtl_0_bypass(22);
ALT_INV_backlog_rtl_0_bypass(21) <= NOT backlog_rtl_0_bypass(21);
ALT_INV_backlog_rtl_0_bypass(20) <= NOT backlog_rtl_0_bypass(20);
ALT_INV_backlog_rtl_0_bypass(19) <= NOT backlog_rtl_0_bypass(19);
ALT_INV_backlog_rtl_0_bypass(18) <= NOT backlog_rtl_0_bypass(18);
ALT_INV_backlog_rtl_0_bypass(17) <= NOT backlog_rtl_0_bypass(17);
ALT_INV_backlog_rtl_0_bypass(16) <= NOT backlog_rtl_0_bypass(16);
ALT_INV_backlog_rtl_0_bypass(15) <= NOT backlog_rtl_0_bypass(15);
ALT_INV_backlog_rtl_0_bypass(14) <= NOT backlog_rtl_0_bypass(14);
ALT_INV_backlog_rtl_0_bypass(13) <= NOT backlog_rtl_0_bypass(13);
\ALT_INV_backlog~25_combout\ <= NOT \backlog~25_combout\;
\ALT_INV_backlog~24_combout\ <= NOT \backlog~24_combout\;
ALT_INV_backlog_rtl_0_bypass(8) <= NOT backlog_rtl_0_bypass(8);
ALT_INV_backlog_rtl_0_bypass(7) <= NOT backlog_rtl_0_bypass(7);
ALT_INV_backlog_rtl_0_bypass(6) <= NOT backlog_rtl_0_bypass(6);
ALT_INV_backlog_rtl_0_bypass(5) <= NOT backlog_rtl_0_bypass(5);
ALT_INV_backlog_rtl_0_bypass(10) <= NOT backlog_rtl_0_bypass(10);
ALT_INV_backlog_rtl_0_bypass(9) <= NOT backlog_rtl_0_bypass(9);
\ALT_INV_backlog~23_combout\ <= NOT \backlog~23_combout\;
ALT_INV_backlog_rtl_0_bypass(2) <= NOT backlog_rtl_0_bypass(2);
ALT_INV_backlog_rtl_0_bypass(1) <= NOT backlog_rtl_0_bypass(1);
ALT_INV_backlog_rtl_0_bypass(0) <= NOT backlog_rtl_0_bypass(0);
ALT_INV_backlog_rtl_0_bypass(4) <= NOT backlog_rtl_0_bypass(4);
ALT_INV_backlog_rtl_0_bypass(3) <= NOT backlog_rtl_0_bypass(3);
ALT_INV_backlog_rtl_0_bypass(12) <= NOT backlog_rtl_0_bypass(12);
ALT_INV_backlog_rtl_0_bypass(11) <= NOT backlog_rtl_0_bypass(11);
\ALT_INV_count[0]~4_combout\ <= NOT \count[0]~4_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_count(1) <= NOT count(1);
ALT_INV_count(0) <= NOT count(0);
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(3) <= NOT count(3);
ALT_INV_count(4) <= NOT count(4);
ALT_INV_count(5) <= NOT count(5);
ALT_INV_data_sum(9) <= NOT data_sum(9);
ALT_INV_data_sum(8) <= NOT data_sum(8);
ALT_INV_data_sum(7) <= NOT data_sum(7);
ALT_INV_data_sum(6) <= NOT data_sum(6);
ALT_INV_data_sum(5) <= NOT data_sum(5);
ALT_INV_data_sum(4) <= NOT data_sum(4);
ALT_INV_data_sum(3) <= NOT data_sum(3);
ALT_INV_data_sum(2) <= NOT data_sum(2);
ALT_INV_data_sum(1) <= NOT data_sum(1);
ALT_INV_data_sum(0) <= NOT data_sum(0);
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a1\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a2\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a3\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a4\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a5\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a6\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a7\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a8\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a9\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;

-- Location: IOOBUF_X80_Y0_N53
\data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(0),
	devoe => ww_devoe,
	o => ww_data_out(0));

-- Location: IOOBUF_X80_Y0_N2
\data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(1),
	devoe => ww_devoe,
	o => ww_data_out(1));

-- Location: IOOBUF_X82_Y0_N93
\data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(2),
	devoe => ww_devoe,
	o => ww_data_out(2));

-- Location: IOOBUF_X78_Y0_N19
\data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(3),
	devoe => ww_devoe,
	o => ww_data_out(3));

-- Location: IOOBUF_X82_Y0_N42
\data_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(4),
	devoe => ww_devoe,
	o => ww_data_out(4));

-- Location: IOOBUF_X78_Y0_N53
\data_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(5),
	devoe => ww_devoe,
	o => ww_data_out(5));

-- Location: IOOBUF_X80_Y0_N36
\data_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(6),
	devoe => ww_devoe,
	o => ww_data_out(6));

-- Location: IOOBUF_X78_Y0_N36
\data_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(7),
	devoe => ww_devoe,
	o => ww_data_out(7));

-- Location: IOOBUF_X78_Y0_N2
\data_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(8),
	devoe => ww_devoe,
	o => ww_data_out(8));

-- Location: IOOBUF_X82_Y0_N76
\data_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(9),
	devoe => ww_devoe,
	o => ww_data_out(9));

-- Location: IOOBUF_X89_Y11_N45
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

-- Location: IOOBUF_X40_Y0_N53
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

-- Location: IOOBUF_X8_Y81_N53
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

-- Location: IOOBUF_X8_Y81_N36
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

-- Location: IOOBUF_X89_Y16_N39
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

-- Location: IOOBUF_X89_Y13_N56
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

-- Location: MLABCELL_X78_Y4_N54
\count[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[0]~4_combout\ = !count(0) $ (!\LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(0),
	datac => \ALT_INV_LessThan0~1_combout\,
	combout => \count[0]~4_combout\);

-- Location: LABCELL_X79_Y4_N57
\count[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[0]~feeder_combout\ = ( \count[0]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_count[0]~4_combout\,
	combout => \count[0]~feeder_combout\);

-- Location: FF_X79_Y4_N59
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: MLABCELL_X78_Y4_N30
\count[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[3]~2_combout\ = ( count(0) & ( !count(3) $ (((!count(1)) # ((!\LessThan0~1_combout\) # (!count(2))))) ) ) # ( !count(0) & ( count(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(1),
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_count(2),
	datad => ALT_INV_count(3),
	dataf => ALT_INV_count(0),
	combout => \count[3]~2_combout\);

-- Location: FF_X78_Y4_N32
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: MLABCELL_X78_Y4_N48
\count[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[4]~1_combout\ = ( count(1) & ( count(0) & ( (!count(2) & (count(4))) # (count(2) & ((!count(4) & ((count(3)))) # (count(4) & ((!count(3)) # (count(5)))))) ) ) ) # ( !count(1) & ( count(0) & ( count(4) ) ) ) # ( count(1) & ( !count(0) & ( count(4) ) 
-- ) ) # ( !count(1) & ( !count(0) & ( count(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(2),
	datab => ALT_INV_count(4),
	datac => ALT_INV_count(5),
	datad => ALT_INV_count(3),
	datae => ALT_INV_count(1),
	dataf => ALT_INV_count(0),
	combout => \count[4]~1_combout\);

-- Location: FF_X77_Y4_N53
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \count[4]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: MLABCELL_X78_Y4_N42
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( count(4) & ( count(2) & ( (!count(1)) # ((!count(3)) # ((!count(5)) # (!count(0)))) ) ) ) # ( !count(4) & ( count(2) ) ) # ( count(4) & ( !count(2) ) ) # ( !count(4) & ( !count(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(1),
	datab => ALT_INV_count(3),
	datac => ALT_INV_count(5),
	datad => ALT_INV_count(0),
	datae => ALT_INV_count(4),
	dataf => ALT_INV_count(2),
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X78_Y4_N36
\count[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[1]~5_combout\ = ( count(0) & ( !\LessThan0~1_combout\ $ (!count(1)) ) ) # ( !count(0) & ( count(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datad => ALT_INV_count(1),
	dataf => ALT_INV_count(0),
	combout => \count[1]~5_combout\);

-- Location: FF_X78_Y4_N38
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: MLABCELL_X78_Y4_N33
\count[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[2]~3_combout\ = ( \LessThan0~1_combout\ & ( !count(2) $ (((!count(1)) # (!count(0)))) ) ) # ( !\LessThan0~1_combout\ & ( count(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(1),
	datac => ALT_INV_count(0),
	datad => ALT_INV_count(2),
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \count[2]~3_combout\);

-- Location: FF_X78_Y4_N35
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: MLABCELL_X78_Y4_N57
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( count(3) & ( (!count(2)) # ((!count(0)) # ((!count(4)) # (!count(1)))) ) ) # ( !count(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(2),
	datab => ALT_INV_count(0),
	datac => ALT_INV_count(4),
	datad => ALT_INV_count(1),
	dataf => ALT_INV_count(3),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X79_Y4_N48
\count[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[5]~0_combout\ = ( count(5) & ( \LessThan0~0_combout\ ) ) # ( count(5) & ( !\LessThan0~0_combout\ ) ) # ( !count(5) & ( !\LessThan0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_count(5),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \count[5]~0_combout\);

-- Location: FF_X79_Y4_N49
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LABCELL_X75_Y4_N39
\point[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \point[0]~0_combout\ = !point(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_point(0),
	combout => \point[0]~0_combout\);

-- Location: FF_X75_Y4_N41
\point[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \point[0]~0_combout\,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(0));

-- Location: LABCELL_X75_Y4_N42
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = ( point(1) & ( !point(0) ) ) # ( !point(1) & ( point(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_point(0),
	dataf => ALT_INV_point(1),
	combout => \Add4~1_combout\);

-- Location: FF_X75_Y4_N47
\point[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~1_combout\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(1));

-- Location: LABCELL_X75_Y4_N3
\Add4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~3_combout\ = ( point(1) & ( !point(2) $ (!point(0)) ) ) # ( !point(1) & ( point(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_point(2),
	datab => ALT_INV_point(0),
	dataf => ALT_INV_point(1),
	combout => \Add4~3_combout\);

-- Location: FF_X75_Y4_N20
\point[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~3_combout\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(2));

-- Location: FF_X75_Y4_N23
\point[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~4_combout\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(3));

-- Location: LABCELL_X75_Y4_N6
\Add4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ( point(1) & ( !point(3) $ (((!point(2)) # (!point(0)))) ) ) # ( !point(1) & ( point(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_point(2),
	datab => ALT_INV_point(0),
	datac => ALT_INV_point(3),
	dataf => ALT_INV_point(1),
	combout => \Add4~4_combout\);

-- Location: FF_X75_Y4_N22
\point[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~4_combout\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \point[3]~DUPLICATE_q\);

-- Location: FF_X75_Y4_N46
\point[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~1_combout\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \point[1]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y4_N9
\Add4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = ( \point[1]~DUPLICATE_q\ & ( !point(4) $ (((!point(2)) # ((!point(0)) # (!\point[3]~DUPLICATE_q\)))) ) ) # ( !\point[1]~DUPLICATE_q\ & ( point(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_point(2),
	datab => ALT_INV_point(0),
	datac => \ALT_INV_point[3]~DUPLICATE_q\,
	datad => ALT_INV_point(4),
	dataf => \ALT_INV_point[1]~DUPLICATE_q\,
	combout => \Add4~2_combout\);

-- Location: FF_X75_Y4_N11
\point[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~2_combout\,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(4));

-- Location: LABCELL_X77_Y4_N51
\backlog~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~29_combout\ = ( count(4) & ( (point(4)) # (\LessThan0~1_combout\) ) ) # ( !count(4) & ( (!\LessThan0~1_combout\ & point(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_point(4),
	datae => ALT_INV_count(4),
	combout => \backlog~29_combout\);

-- Location: LABCELL_X77_Y4_N54
\backlog_rtl_0_bypass[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[9]~feeder_combout\ = ( \backlog~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_backlog~29_combout\,
	combout => \backlog_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X77_Y4_N56
\backlog_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(9));

-- Location: LABCELL_X75_Y4_N15
\backlog~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~31_combout\ = ( \point[3]~DUPLICATE_q\ & ( (!\LessThan0~1_combout\) # (count(3)) ) ) # ( !\point[3]~DUPLICATE_q\ & ( (count(3) & \LessThan0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datab => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_point[3]~DUPLICATE_q\,
	combout => \backlog~31_combout\);

-- Location: FF_X75_Y4_N17
\backlog_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(7));

-- Location: FF_X75_Y4_N53
\backlog_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~4_combout\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(8));

-- Location: FF_X78_Y4_N34
\count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[2]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y4_N0
\backlog~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~30_combout\ = (!\LessThan0~1_combout\ & (point(2))) # (\LessThan0~1_combout\ & ((\count[2]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_point(2),
	datac => \ALT_INV_count[2]~DUPLICATE_q\,
	datad => \ALT_INV_LessThan0~1_combout\,
	combout => \backlog~30_combout\);

-- Location: FF_X75_Y4_N2
\backlog_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(5));

-- Location: FF_X75_Y4_N44
\backlog_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~3_combout\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(6));

-- Location: LABCELL_X75_Y4_N54
\backlog~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~24_combout\ = ( backlog_rtl_0_bypass(6) & ( (backlog_rtl_0_bypass(5) & (!backlog_rtl_0_bypass(7) $ (backlog_rtl_0_bypass(8)))) ) ) # ( !backlog_rtl_0_bypass(6) & ( (!backlog_rtl_0_bypass(5) & (!backlog_rtl_0_bypass(7) $ 
-- (backlog_rtl_0_bypass(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_backlog_rtl_0_bypass(7),
	datac => ALT_INV_backlog_rtl_0_bypass(8),
	datad => ALT_INV_backlog_rtl_0_bypass(5),
	dataf => ALT_INV_backlog_rtl_0_bypass(6),
	combout => \backlog~24_combout\);

-- Location: FF_X75_Y4_N49
\point[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~0_combout\,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(5));

-- Location: LABCELL_X75_Y4_N48
\Add4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = ( point(5) & ( \point[1]~DUPLICATE_q\ & ( (!point(2)) # ((!point(0)) # ((!point(3)) # (!point(4)))) ) ) ) # ( !point(5) & ( \point[1]~DUPLICATE_q\ & ( (point(2) & (point(0) & (point(3) & point(4)))) ) ) ) # ( point(5) & ( 
-- !\point[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_point(2),
	datab => ALT_INV_point(0),
	datac => ALT_INV_point(3),
	datad => ALT_INV_point(4),
	datae => ALT_INV_point(5),
	dataf => \ALT_INV_point[1]~DUPLICATE_q\,
	combout => \Add4~0_combout\);

-- Location: FF_X77_Y4_N5
\backlog_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~0_combout\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(12));

-- Location: MLABCELL_X78_Y4_N39
\backlog~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~26_combout\ = ( count(5) & ( (point(5)) # (\LessThan0~1_combout\) ) ) # ( !count(5) & ( (!\LessThan0~1_combout\ & point(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_point(5),
	dataf => ALT_INV_count(5),
	combout => \backlog~26_combout\);

-- Location: LABCELL_X77_Y4_N9
\backlog_rtl_0_bypass[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[11]~feeder_combout\ = ( \backlog~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_backlog~26_combout\,
	combout => \backlog_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X77_Y4_N11
\backlog_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(11));

-- Location: FF_X77_Y4_N2
\backlog_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~2_combout\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(10));

-- Location: LABCELL_X75_Y4_N27
\backlog~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~27_combout\ = ( \point[1]~DUPLICATE_q\ & ( (!\LessThan0~1_combout\) # (count(1)) ) ) # ( !\point[1]~DUPLICATE_q\ & ( (\LessThan0~1_combout\ & count(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_count(1),
	dataf => \ALT_INV_point[1]~DUPLICATE_q\,
	combout => \backlog~27_combout\);

-- Location: FF_X75_Y4_N29
\backlog_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(3));

-- Location: FF_X75_Y4_N8
\backlog_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~1_combout\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(4));

-- Location: FF_X75_Y4_N40
\point[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \point[0]~0_combout\,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \point[0]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y4_N36
\backlog_rtl_0_bypass[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[2]~0_combout\ = ( !\point[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_point[0]~DUPLICATE_q\,
	combout => \backlog_rtl_0_bypass[2]~0_combout\);

-- Location: FF_X75_Y4_N38
\backlog_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[2]~0_combout\,
	ena => \ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(2));

-- Location: LABCELL_X75_Y4_N12
\backlog_rtl_0_bypass[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \backlog_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X75_Y4_N14
\backlog_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(0));

-- Location: LABCELL_X75_Y4_N33
\backlog~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~28_combout\ = ( count(0) & ( \point[0]~DUPLICATE_q\ ) ) # ( !count(0) & ( \point[0]~DUPLICATE_q\ & ( !\LessThan0~1_combout\ ) ) ) # ( count(0) & ( !\point[0]~DUPLICATE_q\ & ( \LessThan0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~1_combout\,
	datae => ALT_INV_count(0),
	dataf => \ALT_INV_point[0]~DUPLICATE_q\,
	combout => \backlog~28_combout\);

-- Location: FF_X75_Y4_N35
\backlog_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(1));

-- Location: LABCELL_X75_Y4_N18
\backlog~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~23_combout\ = ( backlog_rtl_0_bypass(1) & ( (backlog_rtl_0_bypass(2) & (backlog_rtl_0_bypass(0) & (!backlog_rtl_0_bypass(3) $ (backlog_rtl_0_bypass(4))))) ) ) # ( !backlog_rtl_0_bypass(1) & ( (!backlog_rtl_0_bypass(2) & (backlog_rtl_0_bypass(0) & 
-- (!backlog_rtl_0_bypass(3) $ (backlog_rtl_0_bypass(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000000000001001000000000000000010010000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(3),
	datab => ALT_INV_backlog_rtl_0_bypass(4),
	datac => ALT_INV_backlog_rtl_0_bypass(2),
	datad => ALT_INV_backlog_rtl_0_bypass(0),
	dataf => ALT_INV_backlog_rtl_0_bypass(1),
	combout => \backlog~23_combout\);

-- Location: LABCELL_X77_Y4_N0
\backlog~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~25_combout\ = ( backlog_rtl_0_bypass(10) & ( \backlog~23_combout\ & ( (backlog_rtl_0_bypass(9) & (\backlog~24_combout\ & (!backlog_rtl_0_bypass(12) $ (backlog_rtl_0_bypass(11))))) ) ) ) # ( !backlog_rtl_0_bypass(10) & ( \backlog~23_combout\ & ( 
-- (!backlog_rtl_0_bypass(9) & (\backlog~24_combout\ & (!backlog_rtl_0_bypass(12) $ (backlog_rtl_0_bypass(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(9),
	datab => \ALT_INV_backlog~24_combout\,
	datac => ALT_INV_backlog_rtl_0_bypass(12),
	datad => ALT_INV_backlog_rtl_0_bypass(11),
	datae => ALT_INV_backlog_rtl_0_bypass(10),
	dataf => \ALT_INV_backlog~23_combout\,
	combout => \backlog~25_combout\);

-- Location: IOIBUF_X76_Y0_N35
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: FF_X77_Y4_N8
\backlog_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(13));

-- Location: LABCELL_X75_Y4_N24
\LessThan0~1_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_wirecell_combout\ = !\LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	combout => \LessThan0~1_wirecell_combout\);

-- Location: LABCELL_X75_Y4_N57
\point[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \point[0]~_wirecell_combout\ = ( !point(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_point(0),
	combout => \point[0]~_wirecell_combout\);

-- Location: LABCELL_X74_Y4_N24
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

-- Location: IOIBUF_X76_Y0_N18
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X74_Y0_N58
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X74_Y0_N41
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

-- Location: IOIBUF_X76_Y0_N52
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X76_Y0_N1
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: IOIBUF_X80_Y0_N18
\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\data_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: M10K_X76_Y4_N0
\backlog_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:backlog_rtl_0|altsyncram_t2k1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	portbaddrstall => \ALT_INV_LessThan0~1_wirecell_combout\,
	clk0 => \clk~inputCLKENA0_outclk\,
	clk1 => \clk~inputCLKENA0_outclk\,
	ena0 => VCC,
	portadatain => \backlog_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \backlog_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \backlog_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X77_Y4_N12
\Add2~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~42_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Add2~42_cout\);

-- Location: LABCELL_X77_Y4_N15
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( data_sum(0) ) + ( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(13))) ) + ( \Add2~42_cout\ ))
-- \Add2~2\ = CARRY(( data_sum(0) ) + ( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(13))) ) + ( \Add2~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110001101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~25_combout\,
	datab => ALT_INV_backlog_rtl_0_bypass(13),
	datac => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datad => ALT_INV_data_sum(0),
	cin => \Add2~42_cout\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: MLABCELL_X78_Y4_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( (!count(5) & (((data_sum(0))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~1_sumout\))) # (\LessThan0~0_combout\ & (data_sum(0))))) ) + ( \data_in[0]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( (!count(5) & (((data_sum(0))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~1_sumout\))) # (\LessThan0~0_combout\ & (data_sum(0))))) ) + ( \data_in[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(5),
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_data_sum(0),
	datad => \ALT_INV_Add2~1_sumout\,
	dataf => \ALT_INV_data_in[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X78_Y4_N2
\data_sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(0));

-- Location: FF_X77_Y4_N17
\backlog_rtl_0_bypass[14]\ : dffeas
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
	q => backlog_rtl_0_bypass(14));

-- Location: LABCELL_X77_Y4_N18
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a1\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(14))) ) + ( data_sum(1) ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a1\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(14))) ) + ( data_sum(1) ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001110111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~25_combout\,
	datab => ALT_INV_backlog_rtl_0_bypass(14),
	datac => ALT_INV_data_sum(1),
	datad => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: MLABCELL_X78_Y4_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( (!count(5) & (((data_sum(1))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~5_sumout\))) # (\LessThan0~0_combout\ & (data_sum(1))))) ) + ( \data_in[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( (!count(5) & (((data_sum(1))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~5_sumout\))) # (\LessThan0~0_combout\ & (data_sum(1))))) ) + ( \data_in[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(5),
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_data_sum(1),
	datad => \ALT_INV_Add2~5_sumout\,
	dataf => \ALT_INV_data_in[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X78_Y4_N5
\data_sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(1));

-- Location: FF_X78_Y4_N56
\backlog_rtl_0_bypass[15]\ : dffeas
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
	q => backlog_rtl_0_bypass(15));

-- Location: LABCELL_X77_Y4_N21
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a2\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(15))) ) + ( data_sum(2) ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a2\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(15))) ) + ( data_sum(2) ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~25_combout\,
	datac => ALT_INV_backlog_rtl_0_bypass(15),
	datad => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => ALT_INV_data_sum(2),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: MLABCELL_X78_Y4_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( (!count(5) & (((data_sum(2))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~9_sumout\))) # (\LessThan0~0_combout\ & (data_sum(2))))) ) + ( \data_in[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( (!count(5) & (((data_sum(2))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~9_sumout\))) # (\LessThan0~0_combout\ & (data_sum(2))))) ) + ( \data_in[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(5),
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_data_sum(2),
	datad => \ALT_INV_Add2~9_sumout\,
	dataf => \ALT_INV_data_in[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X78_Y4_N8
\data_sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(2));

-- Location: FF_X78_Y4_N53
\backlog_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(16));

-- Location: LABCELL_X77_Y4_N24
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a3\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(16))) ) + ( data_sum(3) ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a3\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(16))) ) + ( data_sum(3) ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~25_combout\,
	datac => ALT_INV_backlog_rtl_0_bypass(16),
	datad => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => ALT_INV_data_sum(3),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: MLABCELL_X78_Y4_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( (!count(5) & (((data_sum(3))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~13_sumout\))) # (\LessThan0~0_combout\ & (data_sum(3))))) ) + ( \data_in[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( (!count(5) & (((data_sum(3))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~13_sumout\))) # (\LessThan0~0_combout\ & (data_sum(3))))) ) + ( \data_in[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(5),
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_data_sum(3),
	datad => \ALT_INV_Add2~13_sumout\,
	dataf => \ALT_INV_data_in[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X78_Y4_N11
\data_sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(3));

-- Location: FF_X78_Y4_N58
\backlog_rtl_0_bypass[17]\ : dffeas
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
	q => backlog_rtl_0_bypass(17));

-- Location: LABCELL_X77_Y4_N27
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a4\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(17))) ) + ( data_sum(4) ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a4\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(17))) ) + ( data_sum(4) ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~25_combout\,
	datab => ALT_INV_backlog_rtl_0_bypass(17),
	datac => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	dataf => ALT_INV_data_sum(4),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: MLABCELL_X78_Y4_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( (!count(5) & (((data_sum(4))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~17_sumout\))) # (\LessThan0~0_combout\ & (data_sum(4))))) ) + ( \data_in[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( (!count(5) & (((data_sum(4))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~17_sumout\))) # (\LessThan0~0_combout\ & (data_sum(4))))) ) + ( \data_in[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(5),
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_data_sum(4),
	datad => \ALT_INV_Add2~17_sumout\,
	dataf => \ALT_INV_data_in[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X78_Y4_N14
\data_sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(4));

-- Location: FF_X78_Y4_N46
\backlog_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(18));

-- Location: LABCELL_X77_Y4_N30
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a5\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(18))) ) + ( data_sum(5) ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a5\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(18))) ) + ( data_sum(5) ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001110111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~25_combout\,
	datab => ALT_INV_backlog_rtl_0_bypass(18),
	datac => ALT_INV_data_sum(5),
	datad => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: MLABCELL_X78_Y4_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( (!count(5) & (((data_sum(5))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~21_sumout\))) # (\LessThan0~0_combout\ & (data_sum(5))))) ) + ( \data_in[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( (!count(5) & (((data_sum(5))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~21_sumout\))) # (\LessThan0~0_combout\ & (data_sum(5))))) ) + ( \data_in[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(5),
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_data_sum(5),
	datad => \ALT_INV_Add2~21_sumout\,
	dataf => \ALT_INV_data_in[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X78_Y4_N17
\data_sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(5));

-- Location: FF_X77_Y4_N59
\backlog_rtl_0_bypass[19]\ : dffeas
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
	q => backlog_rtl_0_bypass(19));

-- Location: LABCELL_X77_Y4_N33
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a6\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(19))) ) + ( data_sum(6) ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a6\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(19))) ) + ( data_sum(6) ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~25_combout\,
	datac => ALT_INV_backlog_rtl_0_bypass(19),
	datad => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	dataf => ALT_INV_data_sum(6),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: MLABCELL_X78_Y4_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( (!count(5) & (((data_sum(6))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~25_sumout\))) # (\LessThan0~0_combout\ & (data_sum(6))))) ) + ( \data_in[6]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( (!count(5) & (((data_sum(6))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~25_sumout\))) # (\LessThan0~0_combout\ & (data_sum(6))))) ) + ( \data_in[6]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(5),
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_data_sum(6),
	datad => \ALT_INV_Add2~25_sumout\,
	dataf => \ALT_INV_data_in[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X78_Y4_N20
\data_sum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(6));

-- Location: FF_X78_Y4_N40
\backlog_rtl_0_bypass[20]\ : dffeas
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
	q => backlog_rtl_0_bypass(20));

-- Location: LABCELL_X77_Y4_N36
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a7\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(20))) ) + ( data_sum(7) ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a7\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(20))) ) + ( data_sum(7) ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~25_combout\,
	datab => ALT_INV_backlog_rtl_0_bypass(20),
	datac => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	dataf => ALT_INV_data_sum(7),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: MLABCELL_X78_Y4_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( (!count(5) & (((data_sum(7))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~29_sumout\))) # (\LessThan0~0_combout\ & (data_sum(7))))) ) + ( \data_in[7]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( (!count(5) & (((data_sum(7))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~29_sumout\))) # (\LessThan0~0_combout\ & (data_sum(7))))) ) + ( \data_in[7]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(5),
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_data_sum(7),
	datad => \ALT_INV_Add2~29_sumout\,
	dataf => \ALT_INV_data_in[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X78_Y4_N23
\data_sum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(7));

-- Location: FF_X78_Y4_N50
\backlog_rtl_0_bypass[21]\ : dffeas
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
	q => backlog_rtl_0_bypass(21));

-- Location: LABCELL_X77_Y4_N39
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a8\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(21))) ) + ( data_sum(8) ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a8\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(21))) ) + ( data_sum(8) ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~25_combout\,
	datac => ALT_INV_backlog_rtl_0_bypass(21),
	datad => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	dataf => ALT_INV_data_sum(8),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: MLABCELL_X78_Y4_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( (!count(5) & (((data_sum(8))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~33_sumout\))) # (\LessThan0~0_combout\ & (data_sum(8))))) ) + ( \data_in[8]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( (!count(5) & (((data_sum(8))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~33_sumout\))) # (\LessThan0~0_combout\ & (data_sum(8))))) ) + ( \data_in[8]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(5),
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_data_sum(8),
	datad => \ALT_INV_Add2~33_sumout\,
	dataf => \ALT_INV_data_in[8]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X78_Y4_N26
\data_sum[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(8));

-- Location: FF_X77_Y4_N50
\backlog_rtl_0_bypass[22]\ : dffeas
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
	q => backlog_rtl_0_bypass(22));

-- Location: LABCELL_X77_Y4_N42
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( (!\backlog~25_combout\ & ((!\backlog_rtl_0|auto_generated|ram_block1a9\))) # (\backlog~25_combout\ & (!backlog_rtl_0_bypass(22))) ) + ( data_sum(9) ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~25_combout\,
	datab => ALT_INV_data_sum(9),
	datac => ALT_INV_backlog_rtl_0_bypass(22),
	datad => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\);

-- Location: MLABCELL_X78_Y4_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( (!count(5) & (((data_sum(9))))) # (count(5) & ((!\LessThan0~0_combout\ & ((\Add2~37_sumout\))) # (\LessThan0~0_combout\ & (data_sum(9))))) ) + ( \data_in[9]~input_o\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(5),
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_data_sum(9),
	datad => \ALT_INV_Add2~37_sumout\,
	dataf => \ALT_INV_data_in[9]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\);

-- Location: FF_X78_Y4_N29
\data_sum[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(9));

-- Location: IOIBUF_X66_Y0_N58
\data_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\data_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: IOIBUF_X18_Y81_N92
\data_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: IOIBUF_X82_Y0_N58
\data_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\data_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\data_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);
END structure;


