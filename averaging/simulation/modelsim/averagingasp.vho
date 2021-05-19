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

-- DATE "05/19/2021 20:22:18"

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
	div_sel : IN std_logic_vector(1 DOWNTO 0);
	data_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END averaging_filter;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[8]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[9]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[10]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[11]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[12]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[13]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[14]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[15]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_sel[0]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_sel[1]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_div_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \div_sel[0]~input_o\ : std_logic;
SIGNAL \div_sel[1]~input_o\ : std_logic;
SIGNAL \count[0]~1_combout\ : std_logic;
SIGNAL \count[2]~3_combout\ : std_logic;
SIGNAL \count[1]~2_combout\ : std_logic;
SIGNAL \count[3]~0_combout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \point[4]~7_combout\ : std_logic;
SIGNAL \point[0]~11_combout\ : std_logic;
SIGNAL \point[1]~10_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \point[5]~6_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \point[2]~9_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add5~3_combout\ : std_logic;
SIGNAL \point[3]~8_combout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[6]~4_combout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[8]~5_combout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[10]~3_combout\ : std_logic;
SIGNAL \backlog~24_combout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[2]~2_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[4]~1_combout\ : std_logic;
SIGNAL \backlog~23_combout\ : std_logic;
SIGNAL \LessThan0~0_wirecell_combout\ : std_logic;
SIGNAL \backlog~36_combout\ : std_logic;
SIGNAL \backlog~37_combout\ : std_logic;
SIGNAL \backlog~38_combout\ : std_logic;
SIGNAL \backlog~39_combout\ : std_logic;
SIGNAL \backlog~40_combout\ : std_logic;
SIGNAL \backlog~35_combout\ : std_logic;
SIGNAL \point~0_combout\ : std_logic;
SIGNAL \point~1_combout\ : std_logic;
SIGNAL \point~2_combout\ : std_logic;
SIGNAL \point~3_combout\ : std_logic;
SIGNAL \point~4_combout\ : std_logic;
SIGNAL \point~5_combout\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \backlog_rtl_0_bypass[12]~0_combout\ : std_logic;
SIGNAL \backlog~46_combout\ : std_logic;
SIGNAL \Add4~66_cout\ : std_logic;
SIGNAL \Add4~67\ : std_logic;
SIGNAL \Add4~61_sumout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \backlog~45_combout\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~63\ : std_logic;
SIGNAL \Add4~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \backlog~44_combout\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \backlog~43_combout\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \backlog~42_combout\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \backlog~41_combout\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \backlog~25_combout\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \backlog~26_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \backlog~27_combout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \backlog~28_combout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \data_sum[10]~feeder_combout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \backlog~29_combout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \data_sum[11]~feeder_combout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \backlog~30_combout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \data_sum[12]~feeder_combout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \backlog~31_combout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \backlog~32_combout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \backlog~33_combout\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \data_sum[15]~feeder_combout\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \backlog~34_combout\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL data_sum : std_logic_vector(15 DOWNTO 0);
SIGNAL backlog_rtl_0_bypass : std_logic_vector(0 TO 28);
SIGNAL count : std_logic_vector(5 DOWNTO 0);
SIGNAL point : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_data_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_div_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_div_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_~GND~combout\ : std_logic;
SIGNAL \ALT_INV_backlog~46_combout\ : std_logic;
SIGNAL ALT_INV_backlog_rtl_0_bypass : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_backlog~45_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~44_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~43_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~42_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~41_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~0_combout\ : std_logic;
SIGNAL ALT_INV_point : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~34_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~33_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~32_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~31_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~30_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~29_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~28_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~27_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~26_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~25_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~24_combout\ : std_logic;
SIGNAL \ALT_INV_backlog~23_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL ALT_INV_data_sum : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_data_in <= data_in;
ww_div_sel <= div_sel;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\backlog_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data_in[15]~input_o\ & \data_in[14]~input_o\
& \data_in[13]~input_o\ & \data_in[12]~input_o\ & \data_in[11]~input_o\ & \data_in[10]~input_o\ & \data_in[9]~input_o\ & \data_in[8]~input_o\ & \data_in[7]~input_o\ & \data_in[6]~input_o\ & \data_in[5]~input_o\ & \data_in[4]~input_o\ & 
\data_in[3]~input_o\ & \data_in[2]~input_o\ & \data_in[1]~input_o\ & \data_in[0]~input_o\);

\backlog_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\backlog~35_combout\ & \backlog~40_combout\ & \backlog~39_combout\ & \backlog~38_combout\ & \backlog~37_combout\ & \backlog~36_combout\);

\backlog_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\point~5_combout\ & \point~4_combout\ & \point~3_combout\ & \point~2_combout\ & \point~1_combout\ & \point~0_combout\);

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
\backlog_rtl_0|auto_generated|ram_block1a10\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\backlog_rtl_0|auto_generated|ram_block1a11\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\backlog_rtl_0|auto_generated|ram_block1a12\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\backlog_rtl_0|auto_generated|ram_block1a13\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\backlog_rtl_0|auto_generated|ram_block1a14\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\backlog_rtl_0|auto_generated|ram_block1a15\ <= \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\ALT_INV_data_in[0]~input_o\ <= NOT \data_in[0]~input_o\;
\ALT_INV_data_in[1]~input_o\ <= NOT \data_in[1]~input_o\;
\ALT_INV_data_in[2]~input_o\ <= NOT \data_in[2]~input_o\;
\ALT_INV_data_in[3]~input_o\ <= NOT \data_in[3]~input_o\;
\ALT_INV_data_in[4]~input_o\ <= NOT \data_in[4]~input_o\;
\ALT_INV_data_in[5]~input_o\ <= NOT \data_in[5]~input_o\;
\ALT_INV_data_in[15]~input_o\ <= NOT \data_in[15]~input_o\;
\ALT_INV_data_in[14]~input_o\ <= NOT \data_in[14]~input_o\;
\ALT_INV_data_in[13]~input_o\ <= NOT \data_in[13]~input_o\;
\ALT_INV_data_in[12]~input_o\ <= NOT \data_in[12]~input_o\;
\ALT_INV_data_in[11]~input_o\ <= NOT \data_in[11]~input_o\;
\ALT_INV_data_in[10]~input_o\ <= NOT \data_in[10]~input_o\;
\ALT_INV_data_in[9]~input_o\ <= NOT \data_in[9]~input_o\;
\ALT_INV_data_in[8]~input_o\ <= NOT \data_in[8]~input_o\;
\ALT_INV_data_in[7]~input_o\ <= NOT \data_in[7]~input_o\;
\ALT_INV_data_in[6]~input_o\ <= NOT \data_in[6]~input_o\;
\ALT_INV_div_sel[1]~input_o\ <= NOT \div_sel[1]~input_o\;
\ALT_INV_div_sel[0]~input_o\ <= NOT \div_sel[0]~input_o\;
\ALT_INV_LessThan0~0_wirecell_combout\ <= NOT \LessThan0~0_wirecell_combout\;
\ALT_INV_~GND~combout\ <= NOT \~GND~combout\;
\ALT_INV_backlog~46_combout\ <= NOT \backlog~46_combout\;
ALT_INV_backlog_rtl_0_bypass(13) <= NOT backlog_rtl_0_bypass(13);
\ALT_INV_backlog~45_combout\ <= NOT \backlog~45_combout\;
ALT_INV_backlog_rtl_0_bypass(14) <= NOT backlog_rtl_0_bypass(14);
\ALT_INV_backlog~44_combout\ <= NOT \backlog~44_combout\;
ALT_INV_backlog_rtl_0_bypass(15) <= NOT backlog_rtl_0_bypass(15);
\ALT_INV_backlog~43_combout\ <= NOT \backlog~43_combout\;
ALT_INV_backlog_rtl_0_bypass(16) <= NOT backlog_rtl_0_bypass(16);
\ALT_INV_backlog~42_combout\ <= NOT \backlog~42_combout\;
ALT_INV_backlog_rtl_0_bypass(17) <= NOT backlog_rtl_0_bypass(17);
\ALT_INV_backlog~41_combout\ <= NOT \backlog~41_combout\;
ALT_INV_backlog_rtl_0_bypass(18) <= NOT backlog_rtl_0_bypass(18);
\ALT_INV_Add5~3_combout\ <= NOT \Add5~3_combout\;
\ALT_INV_Add5~2_combout\ <= NOT \Add5~2_combout\;
\ALT_INV_Add5~1_combout\ <= NOT \Add5~1_combout\;
\ALT_INV_Add5~0_combout\ <= NOT \Add5~0_combout\;
ALT_INV_point(0) <= NOT point(0);
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
ALT_INV_point(1) <= NOT point(1);
ALT_INV_point(2) <= NOT point(2);
ALT_INV_point(3) <= NOT point(3);
ALT_INV_point(4) <= NOT point(4);
ALT_INV_point(5) <= NOT point(5);
\ALT_INV_backlog~34_combout\ <= NOT \backlog~34_combout\;
ALT_INV_backlog_rtl_0_bypass(28) <= NOT backlog_rtl_0_bypass(28);
\ALT_INV_backlog~33_combout\ <= NOT \backlog~33_combout\;
ALT_INV_backlog_rtl_0_bypass(27) <= NOT backlog_rtl_0_bypass(27);
\ALT_INV_backlog~32_combout\ <= NOT \backlog~32_combout\;
ALT_INV_backlog_rtl_0_bypass(26) <= NOT backlog_rtl_0_bypass(26);
\ALT_INV_backlog~31_combout\ <= NOT \backlog~31_combout\;
ALT_INV_backlog_rtl_0_bypass(25) <= NOT backlog_rtl_0_bypass(25);
\ALT_INV_backlog~30_combout\ <= NOT \backlog~30_combout\;
ALT_INV_backlog_rtl_0_bypass(24) <= NOT backlog_rtl_0_bypass(24);
\ALT_INV_backlog~29_combout\ <= NOT \backlog~29_combout\;
ALT_INV_backlog_rtl_0_bypass(23) <= NOT backlog_rtl_0_bypass(23);
\ALT_INV_backlog~28_combout\ <= NOT \backlog~28_combout\;
ALT_INV_backlog_rtl_0_bypass(22) <= NOT backlog_rtl_0_bypass(22);
\ALT_INV_backlog~27_combout\ <= NOT \backlog~27_combout\;
ALT_INV_backlog_rtl_0_bypass(21) <= NOT backlog_rtl_0_bypass(21);
\ALT_INV_backlog~26_combout\ <= NOT \backlog~26_combout\;
ALT_INV_backlog_rtl_0_bypass(20) <= NOT backlog_rtl_0_bypass(20);
\ALT_INV_backlog~25_combout\ <= NOT \backlog~25_combout\;
\ALT_INV_backlog~24_combout\ <= NOT \backlog~24_combout\;
ALT_INV_backlog_rtl_0_bypass(8) <= NOT backlog_rtl_0_bypass(8);
ALT_INV_backlog_rtl_0_bypass(6) <= NOT backlog_rtl_0_bypass(6);
ALT_INV_backlog_rtl_0_bypass(10) <= NOT backlog_rtl_0_bypass(10);
\ALT_INV_backlog~23_combout\ <= NOT \backlog~23_combout\;
ALT_INV_backlog_rtl_0_bypass(2) <= NOT backlog_rtl_0_bypass(2);
ALT_INV_backlog_rtl_0_bypass(0) <= NOT backlog_rtl_0_bypass(0);
ALT_INV_backlog_rtl_0_bypass(4) <= NOT backlog_rtl_0_bypass(4);
ALT_INV_backlog_rtl_0_bypass(12) <= NOT backlog_rtl_0_bypass(12);
ALT_INV_backlog_rtl_0_bypass(11) <= NOT backlog_rtl_0_bypass(11);
ALT_INV_backlog_rtl_0_bypass(19) <= NOT backlog_rtl_0_bypass(19);
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(1) <= NOT count(1);
ALT_INV_count(0) <= NOT count(0);
ALT_INV_count(3) <= NOT count(3);
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a1\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a2\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a3\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a4\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a5\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a6\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a7\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a8\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a9\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a10\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a11\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a12\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a12\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a13\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a14\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a14\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a15\;
\backlog_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\;
ALT_INV_data_sum(0) <= NOT data_sum(0);
ALT_INV_data_sum(1) <= NOT data_sum(1);
ALT_INV_data_sum(2) <= NOT data_sum(2);
ALT_INV_data_sum(3) <= NOT data_sum(3);
ALT_INV_data_sum(4) <= NOT data_sum(4);
ALT_INV_data_sum(5) <= NOT data_sum(5);
ALT_INV_backlog_rtl_0_bypass(7) <= NOT backlog_rtl_0_bypass(7);
ALT_INV_backlog_rtl_0_bypass(5) <= NOT backlog_rtl_0_bypass(5);
ALT_INV_backlog_rtl_0_bypass(9) <= NOT backlog_rtl_0_bypass(9);
ALT_INV_backlog_rtl_0_bypass(1) <= NOT backlog_rtl_0_bypass(1);
ALT_INV_backlog_rtl_0_bypass(3) <= NOT backlog_rtl_0_bypass(3);
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
ALT_INV_data_sum(15) <= NOT data_sum(15);
ALT_INV_data_sum(14) <= NOT data_sum(14);
ALT_INV_data_sum(13) <= NOT data_sum(13);
ALT_INV_data_sum(12) <= NOT data_sum(12);
ALT_INV_data_sum(11) <= NOT data_sum(11);
ALT_INV_data_sum(10) <= NOT data_sum(10);
ALT_INV_data_sum(9) <= NOT data_sum(9);
ALT_INV_data_sum(8) <= NOT data_sum(8);
ALT_INV_data_sum(7) <= NOT data_sum(7);
ALT_INV_data_sum(6) <= NOT data_sum(6);

-- Location: IOOBUF_X56_Y0_N53
\data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(6),
	devoe => ww_devoe,
	o => ww_data_out(0));

-- Location: IOOBUF_X52_Y0_N36
\data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(7),
	devoe => ww_devoe,
	o => ww_data_out(1));

-- Location: IOOBUF_X50_Y0_N93
\data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(8),
	devoe => ww_devoe,
	o => ww_data_out(2));

-- Location: IOOBUF_X52_Y0_N19
\data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(9),
	devoe => ww_devoe,
	o => ww_data_out(3));

-- Location: IOOBUF_X52_Y0_N2
\data_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(10),
	devoe => ww_devoe,
	o => ww_data_out(4));

-- Location: IOOBUF_X54_Y0_N19
\data_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(11),
	devoe => ww_devoe,
	o => ww_data_out(5));

-- Location: IOOBUF_X54_Y0_N53
\data_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(12),
	devoe => ww_devoe,
	o => ww_data_out(6));

-- Location: IOOBUF_X54_Y0_N36
\data_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(13),
	devoe => ww_devoe,
	o => ww_data_out(7));

-- Location: IOOBUF_X52_Y0_N53
\data_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(14),
	devoe => ww_devoe,
	o => ww_data_out(8));

-- Location: IOOBUF_X54_Y0_N2
\data_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_sum(15),
	devoe => ww_devoe,
	o => ww_data_out(9));

-- Location: IOOBUF_X16_Y0_N19
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

-- Location: IOOBUF_X26_Y81_N42
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

-- Location: IOOBUF_X20_Y81_N19
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X89_Y9_N56
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

-- Location: IOOBUF_X86_Y0_N2
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

-- Location: IOIBUF_X60_Y0_N35
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LABCELL_X56_Y1_N0
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \data_in[0]~input_o\ ) + ( data_sum(0) ) + ( !VCC ))
-- \Add1~62\ = CARRY(( \data_in[0]~input_o\ ) + ( data_sum(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_in[0]~input_o\,
	datac => ALT_INV_data_sum(0),
	cin => GND,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: IOIBUF_X64_Y0_N35
\div_sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_sel(0),
	o => \div_sel[0]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\div_sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_sel(1),
	o => \div_sel[1]~input_o\);

-- Location: MLABCELL_X59_Y2_N6
\count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[0]~1_combout\ = ( count(0) & ( count(3) & ( (!\div_sel[1]~input_o\) # ((!\div_sel[0]~input_o\) # ((count(1) & count(2)))) ) ) ) # ( !count(0) & ( count(3) & ( (\div_sel[1]~input_o\ & \div_sel[0]~input_o\) ) ) ) # ( count(0) & ( !count(3) & ( 
-- (!count(1) & (!\div_sel[1]~input_o\ & ((!\div_sel[0]~input_o\) # (count(2))))) # (count(1) & ((!\div_sel[1]~input_o\) # ((!\div_sel[0]~input_o\ & count(2))))) ) ) ) # ( !count(0) & ( !count(3) & ( ((!count(2) & ((!count(1)) # (\div_sel[0]~input_o\)))) # 
-- (\div_sel[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100110011110001001101110000000011000000111111110011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(1),
	datab => \ALT_INV_div_sel[1]~input_o\,
	datac => \ALT_INV_div_sel[0]~input_o\,
	datad => ALT_INV_count(2),
	datae => ALT_INV_count(0),
	dataf => ALT_INV_count(3),
	combout => \count[0]~1_combout\);

-- Location: FF_X59_Y2_N8
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: MLABCELL_X59_Y2_N54
\count[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[2]~3_combout\ = ( count(2) & ( count(0) & ( (!\div_sel[0]~input_o\) # ((!\div_sel[1]~input_o\) # ((!count(1)) # (count(3)))) ) ) ) # ( !count(2) & ( count(0) & ( (\div_sel[1]~input_o\ & (count(1) & ((!count(3)) # (\div_sel[0]~input_o\)))) ) ) ) # ( 
-- count(2) & ( !count(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000011111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_div_sel[0]~input_o\,
	datab => \ALT_INV_div_sel[1]~input_o\,
	datac => ALT_INV_count(1),
	datad => ALT_INV_count(3),
	datae => ALT_INV_count(2),
	dataf => ALT_INV_count(0),
	combout => \count[2]~3_combout\);

-- Location: FF_X59_Y2_N56
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

-- Location: MLABCELL_X59_Y2_N24
\count[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[1]~2_combout\ = ( count(1) & ( count(0) & ( (!\div_sel[1]~input_o\) # ((!\div_sel[0]~input_o\ & ((count(3)) # (count(2)))) # (\div_sel[0]~input_o\ & (count(2) & count(3)))) ) ) ) # ( !count(1) & ( count(0) & ( (!\div_sel[0]~input_o\ & 
-- (\div_sel[1]~input_o\ & ((!count(3))))) # (\div_sel[0]~input_o\ & (((!count(2) & !count(3))) # (\div_sel[1]~input_o\))) ) ) ) # ( count(1) & ( !count(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101110011000100011100111011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_div_sel[0]~input_o\,
	datab => \ALT_INV_div_sel[1]~input_o\,
	datac => ALT_INV_count(2),
	datad => ALT_INV_count(3),
	datae => ALT_INV_count(1),
	dataf => ALT_INV_count(0),
	combout => \count[1]~2_combout\);

-- Location: FF_X59_Y2_N26
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: MLABCELL_X59_Y2_N12
\count[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[3]~0_combout\ = ( count(3) & ( count(0) ) ) # ( !count(3) & ( count(0) & ( (count(1) & (\div_sel[1]~input_o\ & (\div_sel[0]~input_o\ & count(2)))) ) ) ) # ( count(3) & ( !count(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(1),
	datab => \ALT_INV_div_sel[1]~input_o\,
	datac => \ALT_INV_div_sel[0]~input_o\,
	datad => ALT_INV_count(2),
	datae => ALT_INV_count(3),
	dataf => ALT_INV_count(0),
	combout => \count[3]~0_combout\);

-- Location: FF_X59_Y2_N14
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LABCELL_X56_Y2_N27
\backlog_rtl_0_bypass[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[7]~feeder_combout\ = ( count(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_count(3),
	combout => \backlog_rtl_0_bypass[7]~feeder_combout\);

-- Location: MLABCELL_X59_Y2_N0
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \div_sel[0]~input_o\ & ( count(0) & ( (!count(1) & (((!count(2) & !count(3))) # (\div_sel[1]~input_o\))) # (count(1) & (\div_sel[1]~input_o\ & ((!count(2)) # (!count(3))))) ) ) ) # ( !\div_sel[0]~input_o\ & ( count(0) & ( 
-- (\div_sel[1]~input_o\ & (!count(3) & ((!count(1)) # (!count(2))))) ) ) ) # ( \div_sel[0]~input_o\ & ( !count(0) & ( ((!count(2) & !count(3))) # (\div_sel[1]~input_o\) ) ) ) # ( !\div_sel[0]~input_o\ & ( !count(0) & ( (!count(3) & (((!count(1) & 
-- !count(2))) # (\div_sel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001100000000111100110011001100110010000000001011001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(1),
	datab => \ALT_INV_div_sel[1]~input_o\,
	datac => ALT_INV_count(2),
	datad => ALT_INV_count(3),
	datae => \ALT_INV_div_sel[0]~input_o\,
	dataf => ALT_INV_count(0),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X55_Y2_N9
\point[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \point[4]~7_combout\ = ( point(4) & ( point(5) & ( (!\Add5~0_combout\) # (\LessThan0~0_combout\) ) ) ) # ( !point(4) & ( point(5) & ( (\Add5~0_combout\ & !\LessThan0~0_combout\) ) ) ) # ( point(4) & ( !point(5) & ( \LessThan0~0_combout\ ) ) ) # ( 
-- !point(4) & ( !point(5) & ( (\Add5~0_combout\ & (\LessThan1~0_combout\ & !\LessThan0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000001111111100110011000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add5~0_combout\,
	datac => \ALT_INV_LessThan1~0_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => ALT_INV_point(4),
	dataf => ALT_INV_point(5),
	combout => \point[4]~7_combout\);

-- Location: FF_X55_Y2_N11
\point[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \point[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(4));

-- Location: LABCELL_X55_Y2_N27
\point[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \point[0]~11_combout\ = ( point(5) & ( !\LessThan0~0_combout\ $ (point(0)) ) ) # ( !point(5) & ( (!\LessThan0~0_combout\ & (!point(4) & (\LessThan1~0_combout\ & !point(0)))) # (\LessThan0~0_combout\ & (((point(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001010101000010000101010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => ALT_INV_point(4),
	datac => \ALT_INV_LessThan1~0_combout\,
	datad => ALT_INV_point(0),
	dataf => ALT_INV_point(5),
	combout => \point[0]~11_combout\);

-- Location: FF_X55_Y2_N29
\point[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \point[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(0));

-- Location: LABCELL_X55_Y2_N0
\point[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \point[1]~10_combout\ = ( point(1) & ( point(4) & ( ((point(5) & !point(0))) # (\LessThan0~0_combout\) ) ) ) # ( !point(1) & ( point(4) & ( (point(5) & (point(0) & !\LessThan0~0_combout\)) ) ) ) # ( point(1) & ( !point(4) & ( ((!point(0) & 
-- ((\LessThan1~0_combout\) # (point(5))))) # (\LessThan0~0_combout\) ) ) ) # ( !point(1) & ( !point(4) & ( (point(0) & (!\LessThan0~0_combout\ & ((\LessThan1~0_combout\) # (point(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000011100001111111100000101000000000101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_point(5),
	datab => \ALT_INV_LessThan1~0_combout\,
	datac => ALT_INV_point(0),
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => ALT_INV_point(1),
	dataf => ALT_INV_point(4),
	combout => \point[1]~10_combout\);

-- Location: FF_X55_Y2_N2
\point[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \point[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(1));

-- Location: LABCELL_X56_Y2_N57
\Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = ( point(3) & ( (point(2) & (point(0) & point(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_point(2),
	datab => ALT_INV_point(0),
	datac => ALT_INV_point(1),
	dataf => ALT_INV_point(3),
	combout => \Add5~0_combout\);

-- Location: LABCELL_X55_Y2_N48
\point[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \point[5]~6_combout\ = ( point(4) & ( (point(5) & ((!\Add5~0_combout\) # (\LessThan0~0_combout\))) ) ) # ( !point(4) & ( point(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_Add5~0_combout\,
	datad => ALT_INV_point(5),
	dataf => ALT_INV_point(4),
	combout => \point[5]~6_combout\);

-- Location: FF_X55_Y2_N50
\point[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \point[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(5));

-- Location: LABCELL_X56_Y2_N48
\Add5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = ( point(0) & ( !point(1) $ (!point(2)) ) ) # ( !point(0) & ( point(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_point(1),
	datad => ALT_INV_point(2),
	dataf => ALT_INV_point(0),
	combout => \Add5~2_combout\);

-- Location: LABCELL_X56_Y2_N36
\point[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \point[2]~9_combout\ = ( point(2) & ( \Add5~2_combout\ & ( (((\LessThan1~0_combout\ & !point(4))) # (point(5))) # (\LessThan0~0_combout\) ) ) ) # ( !point(2) & ( \Add5~2_combout\ & ( (!\LessThan0~0_combout\ & (((\LessThan1~0_combout\ & !point(4))) # 
-- (point(5)))) ) ) ) # ( point(2) & ( !\Add5~2_combout\ & ( \LessThan0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001101001100000011000111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_point(5),
	datad => ALT_INV_point(4),
	datae => ALT_INV_point(2),
	dataf => \ALT_INV_Add5~2_combout\,
	combout => \point[2]~9_combout\);

-- Location: FF_X56_Y2_N38
\point[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \point[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(2));

-- Location: MLABCELL_X59_Y2_N33
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( point(1) & ( point(3) & ( (\div_sel[0]~input_o\ & \div_sel[1]~input_o\) ) ) ) # ( !point(1) & ( point(3) & ( (\div_sel[0]~input_o\ & \div_sel[1]~input_o\) ) ) ) # ( point(1) & ( !point(3) & ( ((\div_sel[0]~input_o\ & !point(2))) 
-- # (\div_sel[1]~input_o\) ) ) ) # ( !point(1) & ( !point(3) & ( (!point(2)) # (\div_sel[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111010111110000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_div_sel[0]~input_o\,
	datac => \ALT_INV_div_sel[1]~input_o\,
	datad => ALT_INV_point(2),
	datae => ALT_INV_point(1),
	dataf => ALT_INV_point(3),
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X56_Y2_N24
\Add5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~3_combout\ = ( point(3) & ( (!point(2)) # ((!point(0)) # (!point(1))) ) ) # ( !point(3) & ( (point(2) & (point(0) & point(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_point(2),
	datab => ALT_INV_point(0),
	datac => ALT_INV_point(1),
	dataf => ALT_INV_point(3),
	combout => \Add5~3_combout\);

-- Location: LABCELL_X56_Y2_N18
\point[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \point[3]~8_combout\ = ( point(3) & ( \Add5~3_combout\ & ( (((\LessThan1~0_combout\ & !point(4))) # (point(5))) # (\LessThan0~0_combout\) ) ) ) # ( !point(3) & ( \Add5~3_combout\ & ( (!\LessThan0~0_combout\ & (((\LessThan1~0_combout\ & !point(4))) # 
-- (point(5)))) ) ) ) # ( point(3) & ( !\Add5~3_combout\ & ( \LessThan0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001101001100000011000111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_point(5),
	datad => ALT_INV_point(4),
	datae => ALT_INV_point(3),
	dataf => \ALT_INV_Add5~3_combout\,
	combout => \point[3]~8_combout\);

-- Location: FF_X56_Y2_N20
\point[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \point[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => point(3));

-- Location: FF_X56_Y2_N29
\backlog_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[7]~feeder_combout\,
	asdata => point(3),
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(7));

-- Location: LABCELL_X56_Y2_N39
\backlog_rtl_0_bypass[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[6]~4_combout\ = ( backlog_rtl_0_bypass(6) & ( \Add5~2_combout\ & ( (((\LessThan1~0_combout\ & !point(4))) # (point(5))) # (\LessThan0~0_combout\) ) ) ) # ( !backlog_rtl_0_bypass(6) & ( \Add5~2_combout\ & ( (!\LessThan0~0_combout\ & 
-- (((\LessThan1~0_combout\ & !point(4))) # (point(5)))) ) ) ) # ( backlog_rtl_0_bypass(6) & ( !\Add5~2_combout\ & ( \LessThan0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001101000000110011000111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_point(4),
	datad => ALT_INV_point(5),
	datae => ALT_INV_backlog_rtl_0_bypass(6),
	dataf => \ALT_INV_Add5~2_combout\,
	combout => \backlog_rtl_0_bypass[6]~4_combout\);

-- Location: FF_X56_Y2_N41
\backlog_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(6));

-- Location: LABCELL_X56_Y2_N33
\backlog_rtl_0_bypass[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[5]~feeder_combout\ = count(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(2),
	combout => \backlog_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X56_Y2_N35
\backlog_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[5]~feeder_combout\,
	asdata => point(2),
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(5));

-- Location: MLABCELL_X59_Y2_N36
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X56_Y2_N15
\backlog_rtl_0_bypass[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[9]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \backlog_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X56_Y2_N17
\backlog_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[9]~feeder_combout\,
	asdata => point(4),
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(9));

-- Location: LABCELL_X56_Y2_N21
\backlog_rtl_0_bypass[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[8]~5_combout\ = ( backlog_rtl_0_bypass(8) & ( \Add5~3_combout\ & ( (((\LessThan1~0_combout\ & !point(4))) # (point(5))) # (\LessThan0~0_combout\) ) ) ) # ( !backlog_rtl_0_bypass(8) & ( \Add5~3_combout\ & ( (!\LessThan0~0_combout\ & 
-- (((\LessThan1~0_combout\ & !point(4))) # (point(5)))) ) ) ) # ( backlog_rtl_0_bypass(8) & ( !\Add5~3_combout\ & ( \LessThan0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001101000000110011000111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_point(4),
	datad => ALT_INV_point(5),
	datae => ALT_INV_backlog_rtl_0_bypass(8),
	dataf => \ALT_INV_Add5~3_combout\,
	combout => \backlog_rtl_0_bypass[8]~5_combout\);

-- Location: FF_X56_Y2_N23
\backlog_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(8));

-- Location: LABCELL_X56_Y2_N42
\backlog_rtl_0_bypass[10]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[10]~3_combout\ = ( backlog_rtl_0_bypass(10) & ( \LessThan0~0_combout\ ) ) # ( backlog_rtl_0_bypass(10) & ( !\LessThan0~0_combout\ & ( (!\Add5~0_combout\ & (((point(5) & point(4))))) # (\Add5~0_combout\ & (!point(4) & ((point(5)) # 
-- (\LessThan1~0_combout\)))) ) ) ) # ( !backlog_rtl_0_bypass(10) & ( !\LessThan0~0_combout\ & ( (!\Add5~0_combout\ & (((point(5) & point(4))))) # (\Add5~0_combout\ & (!point(4) & ((point(5)) # (\LessThan1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100001100000100110000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \ALT_INV_Add5~0_combout\,
	datac => ALT_INV_point(5),
	datad => ALT_INV_point(4),
	datae => ALT_INV_backlog_rtl_0_bypass(10),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \backlog_rtl_0_bypass[10]~3_combout\);

-- Location: FF_X56_Y2_N44
\backlog_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(10));

-- Location: LABCELL_X56_Y2_N0
\backlog~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~24_combout\ = ( backlog_rtl_0_bypass(8) & ( backlog_rtl_0_bypass(10) & ( (backlog_rtl_0_bypass(7) & (backlog_rtl_0_bypass(9) & (!backlog_rtl_0_bypass(6) $ (backlog_rtl_0_bypass(5))))) ) ) ) # ( !backlog_rtl_0_bypass(8) & ( 
-- backlog_rtl_0_bypass(10) & ( (!backlog_rtl_0_bypass(7) & (backlog_rtl_0_bypass(9) & (!backlog_rtl_0_bypass(6) $ (backlog_rtl_0_bypass(5))))) ) ) ) # ( backlog_rtl_0_bypass(8) & ( !backlog_rtl_0_bypass(10) & ( (backlog_rtl_0_bypass(7) & 
-- (!backlog_rtl_0_bypass(9) & (!backlog_rtl_0_bypass(6) $ (backlog_rtl_0_bypass(5))))) ) ) ) # ( !backlog_rtl_0_bypass(8) & ( !backlog_rtl_0_bypass(10) & ( (!backlog_rtl_0_bypass(7) & (!backlog_rtl_0_bypass(9) & (!backlog_rtl_0_bypass(6) $ 
-- (backlog_rtl_0_bypass(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(7),
	datab => ALT_INV_backlog_rtl_0_bypass(6),
	datac => ALT_INV_backlog_rtl_0_bypass(5),
	datad => ALT_INV_backlog_rtl_0_bypass(9),
	datae => ALT_INV_backlog_rtl_0_bypass(8),
	dataf => ALT_INV_backlog_rtl_0_bypass(10),
	combout => \backlog~24_combout\);

-- Location: LABCELL_X55_Y2_N24
\backlog_rtl_0_bypass[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[3]~feeder_combout\ = ( count(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_count(1),
	combout => \backlog_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X55_Y2_N26
\backlog_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[3]~feeder_combout\,
	asdata => point(1),
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(3));

-- Location: LABCELL_X55_Y2_N30
\backlog_rtl_0_bypass[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[1]~feeder_combout\ = ( count(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_count(0),
	combout => \backlog_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X55_Y2_N32
\backlog_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[1]~feeder_combout\,
	asdata => point(0),
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(1));

-- Location: LABCELL_X55_Y2_N42
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

-- Location: FF_X55_Y2_N44
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

-- Location: LABCELL_X55_Y2_N36
\backlog_rtl_0_bypass[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[2]~2_combout\ = ( backlog_rtl_0_bypass(2) & ( point(5) & ( (!point(0)) # (\LessThan0~0_combout\) ) ) ) # ( !backlog_rtl_0_bypass(2) & ( point(5) & ( (!\LessThan0~0_combout\ & !point(0)) ) ) ) # ( backlog_rtl_0_bypass(2) & ( !point(5) 
-- & ( ((\LessThan1~0_combout\ & (!point(0) & !point(4)))) # (\LessThan0~0_combout\) ) ) ) # ( !backlog_rtl_0_bypass(2) & ( !point(5) & ( (!\LessThan0~0_combout\ & (\LessThan1~0_combout\ & (!point(0) & !point(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000011101010101010110100000101000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_LessThan1~0_combout\,
	datac => ALT_INV_point(0),
	datad => ALT_INV_point(4),
	datae => ALT_INV_backlog_rtl_0_bypass(2),
	dataf => ALT_INV_point(5),
	combout => \backlog_rtl_0_bypass[2]~2_combout\);

-- Location: FF_X55_Y2_N38
\backlog_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(2));

-- Location: LABCELL_X55_Y2_N33
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = !point(0) $ (!point(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_point(0),
	datad => ALT_INV_point(1),
	combout => \Add5~1_combout\);

-- Location: LABCELL_X55_Y2_N12
\backlog_rtl_0_bypass[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[4]~1_combout\ = ( backlog_rtl_0_bypass(4) & ( point(4) & ( ((\Add5~1_combout\ & point(5))) # (\LessThan0~0_combout\) ) ) ) # ( !backlog_rtl_0_bypass(4) & ( point(4) & ( (\Add5~1_combout\ & (point(5) & !\LessThan0~0_combout\)) ) ) ) # 
-- ( backlog_rtl_0_bypass(4) & ( !point(4) & ( ((\Add5~1_combout\ & ((point(5)) # (\LessThan1~0_combout\)))) # (\LessThan0~0_combout\) ) ) ) # ( !backlog_rtl_0_bypass(4) & ( !point(4) & ( (\Add5~1_combout\ & (!\LessThan0~0_combout\ & ((point(5)) # 
-- (\LessThan1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000000000101011111111100000101000000000000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~1_combout\,
	datab => \ALT_INV_LessThan1~0_combout\,
	datac => ALT_INV_point(5),
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => ALT_INV_backlog_rtl_0_bypass(4),
	dataf => ALT_INV_point(4),
	combout => \backlog_rtl_0_bypass[4]~1_combout\);

-- Location: FF_X55_Y2_N14
\backlog_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(4));

-- Location: LABCELL_X55_Y2_N57
\backlog~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~23_combout\ = ( backlog_rtl_0_bypass(4) & ( (backlog_rtl_0_bypass(3) & (backlog_rtl_0_bypass(0) & (!backlog_rtl_0_bypass(1) $ (backlog_rtl_0_bypass(2))))) ) ) # ( !backlog_rtl_0_bypass(4) & ( (!backlog_rtl_0_bypass(3) & (backlog_rtl_0_bypass(0) & 
-- (!backlog_rtl_0_bypass(1) $ (backlog_rtl_0_bypass(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000010000010000000001000000100000000010000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(3),
	datab => ALT_INV_backlog_rtl_0_bypass(1),
	datac => ALT_INV_backlog_rtl_0_bypass(0),
	datad => ALT_INV_backlog_rtl_0_bypass(2),
	dataf => ALT_INV_backlog_rtl_0_bypass(4),
	combout => \backlog~23_combout\);

-- Location: MLABCELL_X59_Y2_N45
\LessThan0~0_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_wirecell_combout\ = ( !\LessThan0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~0_wirecell_combout\);

-- Location: LABCELL_X55_Y2_N51
\backlog~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~36_combout\ = ( count(0) & ( (point(0)) # (\LessThan0~0_combout\) ) ) # ( !count(0) & ( (!\LessThan0~0_combout\ & point(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datad => ALT_INV_point(0),
	dataf => ALT_INV_count(0),
	combout => \backlog~36_combout\);

-- Location: MLABCELL_X59_Y2_N48
\backlog~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~37_combout\ = ( point(1) & ( count(1) ) ) # ( !point(1) & ( count(1) & ( \LessThan0~0_combout\ ) ) ) # ( point(1) & ( !count(1) & ( !\LessThan0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~0_combout\,
	datae => ALT_INV_point(1),
	dataf => ALT_INV_count(1),
	combout => \backlog~37_combout\);

-- Location: MLABCELL_X59_Y2_N18
\backlog~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~38_combout\ = (!\LessThan0~0_combout\ & (point(2))) # (\LessThan0~0_combout\ & ((count(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_point(2),
	datad => ALT_INV_count(2),
	combout => \backlog~38_combout\);

-- Location: MLABCELL_X59_Y2_N21
\backlog~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~39_combout\ = ( count(3) & ( (point(3)) # (\LessThan0~0_combout\) ) ) # ( !count(3) & ( (!\LessThan0~0_combout\ & point(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_point(3),
	dataf => ALT_INV_count(3),
	combout => \backlog~39_combout\);

-- Location: LABCELL_X55_Y2_N54
\backlog~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~40_combout\ = ( point(4) & ( !\LessThan0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~0_combout\,
	dataf => ALT_INV_point(4),
	combout => \backlog~40_combout\);

-- Location: LABCELL_X56_Y2_N54
\backlog~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~35_combout\ = ( !\LessThan0~0_combout\ & ( point(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_point(5),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \backlog~35_combout\);

-- Location: LABCELL_X56_Y2_N30
\point~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \point~0_combout\ = ( \LessThan1~0_combout\ & ( (!point(0) & ((!point(4)) # (point(5)))) ) ) # ( !\LessThan1~0_combout\ & ( (!point(0) & point(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_point(0),
	datac => ALT_INV_point(5),
	datad => ALT_INV_point(4),
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \point~0_combout\);

-- Location: LABCELL_X55_Y2_N45
\point~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \point~1_combout\ = ( \LessThan1~0_combout\ & ( (\Add5~1_combout\ & ((!point(4)) # (point(5)))) ) ) # ( !\LessThan1~0_combout\ & ( (\Add5~1_combout\ & point(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~1_combout\,
	datab => ALT_INV_point(5),
	datac => ALT_INV_point(4),
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \point~1_combout\);

-- Location: LABCELL_X56_Y2_N12
\point~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \point~2_combout\ = ( point(4) & ( (\Add5~2_combout\ & point(5)) ) ) # ( !point(4) & ( (\Add5~2_combout\ & ((\LessThan1~0_combout\) # (point(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~2_combout\,
	datab => ALT_INV_point(5),
	datac => \ALT_INV_LessThan1~0_combout\,
	dataf => ALT_INV_point(4),
	combout => \point~2_combout\);

-- Location: LABCELL_X56_Y2_N6
\point~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \point~3_combout\ = ( \LessThan1~0_combout\ & ( (\Add5~3_combout\ & ((!point(4)) # (point(5)))) ) ) # ( !\LessThan1~0_combout\ & ( (point(5) & \Add5~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_point(5),
	datab => ALT_INV_point(4),
	datac => \ALT_INV_Add5~3_combout\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \point~3_combout\);

-- Location: LABCELL_X56_Y2_N9
\point~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \point~4_combout\ = ( \LessThan1~0_combout\ & ( (!point(4) & ((\Add5~0_combout\))) # (point(4) & (point(5) & !\Add5~0_combout\)) ) ) # ( !\LessThan1~0_combout\ & ( (point(5) & (!point(4) $ (!\Add5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000011100000111000001110000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_point(5),
	datab => ALT_INV_point(4),
	datac => \ALT_INV_Add5~0_combout\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \point~4_combout\);

-- Location: LABCELL_X55_Y2_N18
\point~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \point~5_combout\ = ( !\Add5~0_combout\ & ( point(4) & ( point(5) ) ) ) # ( \Add5~0_combout\ & ( !point(4) & ( point(5) ) ) ) # ( !\Add5~0_combout\ & ( !point(4) & ( point(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_point(5),
	datae => \ALT_INV_Add5~0_combout\,
	dataf => ALT_INV_point(4),
	combout => \point~5_combout\);

-- Location: IOIBUF_X60_Y0_N18
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\data_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\data_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\data_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\data_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\data_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\data_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\data_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: M10K_X58_Y2_N0
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
	portbaddrstall => \ALT_INV_LessThan0~0_wirecell_combout\,
	clk0 => \clk~inputCLKENA0_outclk\,
	clk1 => \clk~inputCLKENA0_outclk\,
	ena0 => VCC,
	portadatain => \backlog_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \backlog_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \backlog_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \backlog_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X56_Y2_N51
\backlog_rtl_0_bypass[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog_rtl_0_bypass[12]~0_combout\ = ( \LessThan0~0_combout\ & ( backlog_rtl_0_bypass(12) ) ) # ( !\LessThan0~0_combout\ & ( (point(5) & ((!\Add5~0_combout\) # (!point(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_point(5),
	datab => \ALT_INV_Add5~0_combout\,
	datac => ALT_INV_point(4),
	datad => ALT_INV_backlog_rtl_0_bypass(12),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \backlog_rtl_0_bypass[12]~0_combout\);

-- Location: FF_X56_Y2_N53
\backlog_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog_rtl_0_bypass[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(12));

-- Location: FF_X57_Y2_N2
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

-- Location: FF_X56_Y2_N56
\backlog_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \backlog~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(11));

-- Location: LABCELL_X57_Y2_N0
\backlog~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~46_combout\ = ( backlog_rtl_0_bypass(13) & ( backlog_rtl_0_bypass(11) & ( ((\backlog~24_combout\ & (\backlog~23_combout\ & backlog_rtl_0_bypass(12)))) # (\backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\) ) ) ) # ( 
-- !backlog_rtl_0_bypass(13) & ( backlog_rtl_0_bypass(11) & ( (\backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((!\backlog~24_combout\) # ((!\backlog~23_combout\) # (!backlog_rtl_0_bypass(12))))) ) ) ) # ( backlog_rtl_0_bypass(13) & ( 
-- !backlog_rtl_0_bypass(11) & ( ((\backlog~24_combout\ & (\backlog~23_combout\ & !backlog_rtl_0_bypass(12)))) # (\backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\) ) ) ) # ( !backlog_rtl_0_bypass(13) & ( !backlog_rtl_0_bypass(11) & ( 
-- (\backlog_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((!\backlog~24_combout\) # ((!\backlog~23_combout\) # (backlog_rtl_0_bypass(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000111110000111100001111000011100000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~24_combout\,
	datab => \ALT_INV_backlog~23_combout\,
	datac => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datad => ALT_INV_backlog_rtl_0_bypass(12),
	datae => ALT_INV_backlog_rtl_0_bypass(13),
	dataf => ALT_INV_backlog_rtl_0_bypass(11),
	combout => \backlog~46_combout\);

-- Location: LABCELL_X57_Y2_N30
\Add4~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~66_cout\ = CARRY(( GND ) + ( !VCC ) + ( !VCC ))
-- \Add4~67\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => GND,
	sharein => GND,
	cout => \Add4~66_cout\,
	shareout => \Add4~67\);

-- Location: LABCELL_X57_Y2_N33
\Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~61_sumout\ = SUM(( !\data_in[0]~input_o\ $ (!data_sum(0) $ (!\backlog~46_combout\)) ) + ( \Add4~67\ ) + ( \Add4~66_cout\ ))
-- \Add4~62\ = CARRY(( !\data_in[0]~input_o\ $ (!data_sum(0) $ (!\backlog~46_combout\)) ) + ( \Add4~67\ ) + ( \Add4~66_cout\ ))
-- \Add4~63\ = SHARE((!\data_in[0]~input_o\ & (data_sum(0) & !\backlog~46_combout\)) # (\data_in[0]~input_o\ & ((!\backlog~46_combout\) # (data_sum(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_in[0]~input_o\,
	datac => ALT_INV_data_sum(0),
	datad => \ALT_INV_backlog~46_combout\,
	cin => \Add4~66_cout\,
	sharein => \Add4~67\,
	sumout => \Add4~61_sumout\,
	cout => \Add4~62\,
	shareout => \Add4~63\);

-- Location: FF_X56_Y1_N2
\data_sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	asdata => \Add4~61_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(0));

-- Location: LABCELL_X56_Y1_N3
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( data_sum(1) ) + ( \data_in[1]~input_o\ ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( data_sum(1) ) + ( \data_in[1]~input_o\ ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_data_sum(1),
	dataf => \ALT_INV_data_in[1]~input_o\,
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X57_Y2_N29
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

-- Location: LABCELL_X57_Y2_N27
\backlog~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~45_combout\ = ( backlog_rtl_0_bypass(14) & ( \backlog_rtl_0|auto_generated|ram_block1a1\ ) ) # ( !backlog_rtl_0_bypass(14) & ( \backlog_rtl_0|auto_generated|ram_block1a1\ & ( (!\backlog~23_combout\) # ((!\backlog~24_combout\) # 
-- (!backlog_rtl_0_bypass(11) $ (!backlog_rtl_0_bypass(12)))) ) ) ) # ( backlog_rtl_0_bypass(14) & ( !\backlog_rtl_0|auto_generated|ram_block1a1\ & ( (\backlog~23_combout\ & (\backlog~24_combout\ & (!backlog_rtl_0_bypass(11) $ (backlog_rtl_0_bypass(12))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000111111111110111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(11),
	datab => \ALT_INV_backlog~23_combout\,
	datac => ALT_INV_backlog_rtl_0_bypass(12),
	datad => \ALT_INV_backlog~24_combout\,
	datae => ALT_INV_backlog_rtl_0_bypass(14),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \backlog~45_combout\);

-- Location: LABCELL_X57_Y2_N36
\Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~57_sumout\ = SUM(( !\data_in[1]~input_o\ $ (!data_sum(1) $ (!\backlog~45_combout\)) ) + ( \Add4~63\ ) + ( \Add4~62\ ))
-- \Add4~58\ = CARRY(( !\data_in[1]~input_o\ $ (!data_sum(1) $ (!\backlog~45_combout\)) ) + ( \Add4~63\ ) + ( \Add4~62\ ))
-- \Add4~59\ = SHARE((!\data_in[1]~input_o\ & (data_sum(1) & !\backlog~45_combout\)) # (\data_in[1]~input_o\ & ((!\backlog~45_combout\) # (data_sum(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[1]~input_o\,
	datac => ALT_INV_data_sum(1),
	datad => \ALT_INV_backlog~45_combout\,
	cin => \Add4~62\,
	sharein => \Add4~63\,
	sumout => \Add4~57_sumout\,
	cout => \Add4~58\,
	shareout => \Add4~59\);

-- Location: FF_X56_Y1_N5
\data_sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	asdata => \Add4~57_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(1));

-- Location: LABCELL_X56_Y1_N6
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \data_in[2]~input_o\ ) + ( data_sum(2) ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( \data_in[2]~input_o\ ) + ( data_sum(2) ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_data_sum(2),
	datac => \ALT_INV_data_in[2]~input_o\,
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X57_Y2_N14
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

-- Location: LABCELL_X57_Y2_N12
\backlog~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~44_combout\ = ( backlog_rtl_0_bypass(15) & ( \backlog_rtl_0|auto_generated|ram_block1a2\ ) ) # ( !backlog_rtl_0_bypass(15) & ( \backlog_rtl_0|auto_generated|ram_block1a2\ & ( (!\backlog~24_combout\) # ((!\backlog~23_combout\) # 
-- (!backlog_rtl_0_bypass(12) $ (!backlog_rtl_0_bypass(11)))) ) ) ) # ( backlog_rtl_0_bypass(15) & ( !\backlog_rtl_0|auto_generated|ram_block1a2\ & ( (\backlog~24_combout\ & (\backlog~23_combout\ & (!backlog_rtl_0_bypass(12) $ (backlog_rtl_0_bypass(11))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000111111111101111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~24_combout\,
	datab => ALT_INV_backlog_rtl_0_bypass(12),
	datac => ALT_INV_backlog_rtl_0_bypass(11),
	datad => \ALT_INV_backlog~23_combout\,
	datae => ALT_INV_backlog_rtl_0_bypass(15),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	combout => \backlog~44_combout\);

-- Location: LABCELL_X57_Y2_N39
\Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~53_sumout\ = SUM(( !\data_in[2]~input_o\ $ (!\backlog~44_combout\ $ (!data_sum(2))) ) + ( \Add4~59\ ) + ( \Add4~58\ ))
-- \Add4~54\ = CARRY(( !\data_in[2]~input_o\ $ (!\backlog~44_combout\ $ (!data_sum(2))) ) + ( \Add4~59\ ) + ( \Add4~58\ ))
-- \Add4~55\ = SHARE((!\data_in[2]~input_o\ & (!\backlog~44_combout\ & data_sum(2))) # (\data_in[2]~input_o\ & ((!\backlog~44_combout\) # (data_sum(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_in[2]~input_o\,
	datac => \ALT_INV_backlog~44_combout\,
	datad => ALT_INV_data_sum(2),
	cin => \Add4~58\,
	sharein => \Add4~59\,
	sumout => \Add4~53_sumout\,
	cout => \Add4~54\,
	shareout => \Add4~55\);

-- Location: FF_X56_Y1_N8
\data_sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	asdata => \Add4~53_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(2));

-- Location: LABCELL_X56_Y1_N9
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \data_in[3]~input_o\ ) + ( data_sum(3) ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( \data_in[3]~input_o\ ) + ( data_sum(3) ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_data_sum(3),
	datad => \ALT_INV_data_in[3]~input_o\,
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X57_Y2_N23
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

-- Location: LABCELL_X57_Y2_N21
\backlog~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~43_combout\ = ( backlog_rtl_0_bypass(16) & ( \backlog_rtl_0|auto_generated|ram_block1a3\ ) ) # ( !backlog_rtl_0_bypass(16) & ( \backlog_rtl_0|auto_generated|ram_block1a3\ & ( (!\backlog~23_combout\) # ((!\backlog~24_combout\) # 
-- (!backlog_rtl_0_bypass(11) $ (!backlog_rtl_0_bypass(12)))) ) ) ) # ( backlog_rtl_0_bypass(16) & ( !\backlog_rtl_0|auto_generated|ram_block1a3\ & ( (\backlog~23_combout\ & (\backlog~24_combout\ & (!backlog_rtl_0_bypass(11) $ (backlog_rtl_0_bypass(12))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000111111111110111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(11),
	datab => \ALT_INV_backlog~23_combout\,
	datac => ALT_INV_backlog_rtl_0_bypass(12),
	datad => \ALT_INV_backlog~24_combout\,
	datae => ALT_INV_backlog_rtl_0_bypass(16),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \backlog~43_combout\);

-- Location: LABCELL_X57_Y2_N42
\Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( !\data_in[3]~input_o\ $ (!data_sum(3) $ (!\backlog~43_combout\)) ) + ( \Add4~55\ ) + ( \Add4~54\ ))
-- \Add4~50\ = CARRY(( !\data_in[3]~input_o\ $ (!data_sum(3) $ (!\backlog~43_combout\)) ) + ( \Add4~55\ ) + ( \Add4~54\ ))
-- \Add4~51\ = SHARE((!\data_in[3]~input_o\ & (data_sum(3) & !\backlog~43_combout\)) # (\data_in[3]~input_o\ & ((!\backlog~43_combout\) # (data_sum(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_in[3]~input_o\,
	datac => ALT_INV_data_sum(3),
	datad => \ALT_INV_backlog~43_combout\,
	cin => \Add4~54\,
	sharein => \Add4~55\,
	sumout => \Add4~49_sumout\,
	cout => \Add4~50\,
	shareout => \Add4~51\);

-- Location: FF_X56_Y1_N11
\data_sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	asdata => \Add4~49_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(3));

-- Location: LABCELL_X56_Y1_N12
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( data_sum(4) ) + ( \data_in[4]~input_o\ ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( data_sum(4) ) + ( \data_in[4]~input_o\ ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_data_sum(4),
	dataf => \ALT_INV_data_in[4]~input_o\,
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X57_Y2_N8
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

-- Location: LABCELL_X57_Y2_N6
\backlog~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~42_combout\ = ( backlog_rtl_0_bypass(17) & ( \backlog_rtl_0|auto_generated|ram_block1a4\ ) ) # ( !backlog_rtl_0_bypass(17) & ( \backlog_rtl_0|auto_generated|ram_block1a4\ & ( (!\backlog~24_combout\) # ((!\backlog~23_combout\) # 
-- (!backlog_rtl_0_bypass(11) $ (!backlog_rtl_0_bypass(12)))) ) ) ) # ( backlog_rtl_0_bypass(17) & ( !\backlog_rtl_0|auto_generated|ram_block1a4\ & ( (\backlog~24_combout\ & (\backlog~23_combout\ & (!backlog_rtl_0_bypass(11) $ (backlog_rtl_0_bypass(12))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100111111111111101101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(11),
	datab => ALT_INV_backlog_rtl_0_bypass(12),
	datac => \ALT_INV_backlog~24_combout\,
	datad => \ALT_INV_backlog~23_combout\,
	datae => ALT_INV_backlog_rtl_0_bypass(17),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \backlog~42_combout\);

-- Location: LABCELL_X57_Y2_N45
\Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( !data_sum(4) $ (!\backlog~42_combout\ $ (!\data_in[4]~input_o\)) ) + ( \Add4~51\ ) + ( \Add4~50\ ))
-- \Add4~46\ = CARRY(( !data_sum(4) $ (!\backlog~42_combout\ $ (!\data_in[4]~input_o\)) ) + ( \Add4~51\ ) + ( \Add4~50\ ))
-- \Add4~47\ = SHARE((!data_sum(4) & (!\backlog~42_combout\ & \data_in[4]~input_o\)) # (data_sum(4) & ((!\backlog~42_combout\) # (\data_in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001111010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_data_sum(4),
	datac => \ALT_INV_backlog~42_combout\,
	datad => \ALT_INV_data_in[4]~input_o\,
	cin => \Add4~50\,
	sharein => \Add4~51\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\,
	shareout => \Add4~47\);

-- Location: FF_X56_Y1_N14
\data_sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	asdata => \Add4~45_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(4));

-- Location: LABCELL_X56_Y1_N15
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \data_in[5]~input_o\ ) + ( data_sum(5) ) + ( \Add1~46\ ))
-- \Add1~42\ = CARRY(( \data_in[5]~input_o\ ) + ( data_sum(5) ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data_in[5]~input_o\,
	dataf => ALT_INV_data_sum(5),
	cin => \Add1~46\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X57_Y2_N11
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

-- Location: LABCELL_X57_Y2_N9
\backlog~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~41_combout\ = ( backlog_rtl_0_bypass(18) & ( \backlog_rtl_0|auto_generated|ram_block1a5\ ) ) # ( !backlog_rtl_0_bypass(18) & ( \backlog_rtl_0|auto_generated|ram_block1a5\ & ( (!\backlog~23_combout\) # ((!\backlog~24_combout\) # 
-- (!backlog_rtl_0_bypass(11) $ (!backlog_rtl_0_bypass(12)))) ) ) ) # ( backlog_rtl_0_bypass(18) & ( !\backlog_rtl_0|auto_generated|ram_block1a5\ & ( (\backlog~23_combout\ & (\backlog~24_combout\ & (!backlog_rtl_0_bypass(11) $ (backlog_rtl_0_bypass(12))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100111111111111101101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(11),
	datab => ALT_INV_backlog_rtl_0_bypass(12),
	datac => \ALT_INV_backlog~23_combout\,
	datad => \ALT_INV_backlog~24_combout\,
	datae => ALT_INV_backlog_rtl_0_bypass(18),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \backlog~41_combout\);

-- Location: LABCELL_X57_Y2_N48
\Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( !data_sum(5) $ (!\data_in[5]~input_o\ $ (!\backlog~41_combout\)) ) + ( \Add4~47\ ) + ( \Add4~46\ ))
-- \Add4~42\ = CARRY(( !data_sum(5) $ (!\data_in[5]~input_o\ $ (!\backlog~41_combout\)) ) + ( \Add4~47\ ) + ( \Add4~46\ ))
-- \Add4~43\ = SHARE((!data_sum(5) & (\data_in[5]~input_o\ & !\backlog~41_combout\)) # (data_sum(5) & ((!\backlog~41_combout\) # (\data_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_data_sum(5),
	datac => \ALT_INV_data_in[5]~input_o\,
	datad => \ALT_INV_backlog~41_combout\,
	cin => \Add4~46\,
	sharein => \Add4~47\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\,
	shareout => \Add4~43\);

-- Location: FF_X56_Y1_N17
\data_sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	asdata => \Add4~41_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(5));

-- Location: LABCELL_X56_Y1_N18
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \data_in[6]~input_o\ ) + ( data_sum(6) ) + ( \Add1~42\ ))
-- \Add1~2\ = CARRY(( \data_in[6]~input_o\ ) + ( data_sum(6) ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[6]~input_o\,
	datac => ALT_INV_data_sum(6),
	cin => \Add1~42\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X57_Y2_N26
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

-- Location: LABCELL_X57_Y2_N24
\backlog~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~25_combout\ = ( backlog_rtl_0_bypass(19) & ( \backlog_rtl_0|auto_generated|ram_block1a6\ ) ) # ( !backlog_rtl_0_bypass(19) & ( \backlog_rtl_0|auto_generated|ram_block1a6\ & ( (!\backlog~23_combout\) # ((!\backlog~24_combout\) # 
-- (!backlog_rtl_0_bypass(11) $ (!backlog_rtl_0_bypass(12)))) ) ) ) # ( backlog_rtl_0_bypass(19) & ( !\backlog_rtl_0|auto_generated|ram_block1a6\ & ( (\backlog~23_combout\ & (\backlog~24_combout\ & (!backlog_rtl_0_bypass(11) $ (backlog_rtl_0_bypass(12))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000111111101111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(11),
	datab => \ALT_INV_backlog~23_combout\,
	datac => \ALT_INV_backlog~24_combout\,
	datad => ALT_INV_backlog_rtl_0_bypass(12),
	datae => ALT_INV_backlog_rtl_0_bypass(19),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \backlog~25_combout\);

-- Location: LABCELL_X57_Y2_N51
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( !\backlog~25_combout\ $ (!data_sum(6) $ (!\data_in[6]~input_o\)) ) + ( \Add4~43\ ) + ( \Add4~42\ ))
-- \Add4~2\ = CARRY(( !\backlog~25_combout\ $ (!data_sum(6) $ (!\data_in[6]~input_o\)) ) + ( \Add4~43\ ) + ( \Add4~42\ ))
-- \Add4~3\ = SHARE((!\backlog~25_combout\ & ((\data_in[6]~input_o\) # (data_sum(6)))) # (\backlog~25_combout\ & (data_sum(6) & \data_in[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010111100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~25_combout\,
	datac => ALT_INV_data_sum(6),
	datad => \ALT_INV_data_in[6]~input_o\,
	cin => \Add4~42\,
	sharein => \Add4~43\,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\,
	shareout => \Add4~3\);

-- Location: FF_X56_Y1_N20
\data_sum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	asdata => \Add4~1_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(6));

-- Location: LABCELL_X56_Y1_N21
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( data_sum(7) ) + ( \data_in[7]~input_o\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( data_sum(7) ) + ( \data_in[7]~input_o\ ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data_in[7]~input_o\,
	datad => ALT_INV_data_sum(7),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X57_Y2_N17
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

-- Location: LABCELL_X57_Y2_N15
\backlog~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~26_combout\ = ( backlog_rtl_0_bypass(20) & ( \backlog_rtl_0|auto_generated|ram_block1a7\ ) ) # ( !backlog_rtl_0_bypass(20) & ( \backlog_rtl_0|auto_generated|ram_block1a7\ & ( (!\backlog~24_combout\) # ((!\backlog~23_combout\) # 
-- (!backlog_rtl_0_bypass(12) $ (!backlog_rtl_0_bypass(11)))) ) ) ) # ( backlog_rtl_0_bypass(20) & ( !\backlog_rtl_0|auto_generated|ram_block1a7\ & ( (\backlog~24_combout\ & (\backlog~23_combout\ & (!backlog_rtl_0_bypass(12) $ (backlog_rtl_0_bypass(11))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000111111011111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~24_combout\,
	datab => ALT_INV_backlog_rtl_0_bypass(12),
	datac => \ALT_INV_backlog~23_combout\,
	datad => ALT_INV_backlog_rtl_0_bypass(11),
	datae => ALT_INV_backlog_rtl_0_bypass(20),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \backlog~26_combout\);

-- Location: LABCELL_X57_Y2_N54
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( !\backlog~26_combout\ $ (!data_sum(7) $ (!\data_in[7]~input_o\)) ) + ( \Add4~3\ ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( !\backlog~26_combout\ $ (!data_sum(7) $ (!\data_in[7]~input_o\)) ) + ( \Add4~3\ ) + ( \Add4~2\ ))
-- \Add4~7\ = SHARE((!\backlog~26_combout\ & ((\data_in[7]~input_o\) # (data_sum(7)))) # (\backlog~26_combout\ & (data_sum(7) & \data_in[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001100111100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_backlog~26_combout\,
	datac => ALT_INV_data_sum(7),
	datad => \ALT_INV_data_in[7]~input_o\,
	cin => \Add4~2\,
	sharein => \Add4~3\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\,
	shareout => \Add4~7\);

-- Location: FF_X56_Y1_N23
\data_sum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	asdata => \Add4~5_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(7));

-- Location: LABCELL_X56_Y1_N24
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \data_in[8]~input_o\ ) + ( data_sum(8) ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( \data_in[8]~input_o\ ) + ( data_sum(8) ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[8]~input_o\,
	datac => ALT_INV_data_sum(8),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X57_Y2_N20
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

-- Location: LABCELL_X57_Y2_N18
\backlog~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~27_combout\ = ( backlog_rtl_0_bypass(21) & ( \backlog_rtl_0|auto_generated|ram_block1a8\ ) ) # ( !backlog_rtl_0_bypass(21) & ( \backlog_rtl_0|auto_generated|ram_block1a8\ & ( (!\backlog~23_combout\) # ((!\backlog~24_combout\) # 
-- (!backlog_rtl_0_bypass(11) $ (!backlog_rtl_0_bypass(12)))) ) ) ) # ( backlog_rtl_0_bypass(21) & ( !\backlog_rtl_0|auto_generated|ram_block1a8\ & ( (\backlog~23_combout\ & (\backlog~24_combout\ & (!backlog_rtl_0_bypass(11) $ (backlog_rtl_0_bypass(12))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000111111101111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(11),
	datab => \ALT_INV_backlog~23_combout\,
	datac => \ALT_INV_backlog~24_combout\,
	datad => ALT_INV_backlog_rtl_0_bypass(12),
	datae => ALT_INV_backlog_rtl_0_bypass(21),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	combout => \backlog~27_combout\);

-- Location: LABCELL_X57_Y2_N57
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( !\backlog~27_combout\ $ (!data_sum(8) $ (!\data_in[8]~input_o\)) ) + ( \Add4~7\ ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( !\backlog~27_combout\ $ (!data_sum(8) $ (!\data_in[8]~input_o\)) ) + ( \Add4~7\ ) + ( \Add4~6\ ))
-- \Add4~11\ = SHARE((!\backlog~27_combout\ & ((\data_in[8]~input_o\) # (data_sum(8)))) # (\backlog~27_combout\ & (data_sum(8) & \data_in[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010111100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backlog~27_combout\,
	datac => ALT_INV_data_sum(8),
	datad => \ALT_INV_data_in[8]~input_o\,
	cin => \Add4~6\,
	sharein => \Add4~7\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\,
	shareout => \Add4~11\);

-- Location: FF_X56_Y1_N26
\data_sum[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	asdata => \Add4~9_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(8));

-- Location: LABCELL_X56_Y1_N27
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( data_sum(9) ) + ( \data_in[9]~input_o\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( data_sum(9) ) + ( \data_in[9]~input_o\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data_in[9]~input_o\,
	datad => ALT_INV_data_sum(9),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X57_Y1_N29
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

-- Location: LABCELL_X57_Y1_N27
\backlog~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~28_combout\ = ( backlog_rtl_0_bypass(22) & ( \backlog_rtl_0|auto_generated|ram_block1a9\ ) ) # ( !backlog_rtl_0_bypass(22) & ( \backlog_rtl_0|auto_generated|ram_block1a9\ & ( (!\backlog~23_combout\) # ((!\backlog~24_combout\) # 
-- (!backlog_rtl_0_bypass(11) $ (!backlog_rtl_0_bypass(12)))) ) ) ) # ( backlog_rtl_0_bypass(22) & ( !\backlog_rtl_0|auto_generated|ram_block1a9\ & ( (\backlog~23_combout\ & (\backlog~24_combout\ & (!backlog_rtl_0_bypass(11) $ (backlog_rtl_0_bypass(12))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000111111101111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(11),
	datab => \ALT_INV_backlog~23_combout\,
	datac => \ALT_INV_backlog~24_combout\,
	datad => ALT_INV_backlog_rtl_0_bypass(12),
	datae => ALT_INV_backlog_rtl_0_bypass(22),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	combout => \backlog~28_combout\);

-- Location: LABCELL_X57_Y1_N30
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( !\data_in[9]~input_o\ $ (!\backlog~28_combout\ $ (!data_sum(9))) ) + ( \Add4~11\ ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( !\data_in[9]~input_o\ $ (!\backlog~28_combout\ $ (!data_sum(9))) ) + ( \Add4~11\ ) + ( \Add4~10\ ))
-- \Add4~15\ = SHARE((!\data_in[9]~input_o\ & (!\backlog~28_combout\ & data_sum(9))) # (\data_in[9]~input_o\ & ((!\backlog~28_combout\) # (data_sum(9)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_in[9]~input_o\,
	datac => \ALT_INV_backlog~28_combout\,
	datad => ALT_INV_data_sum(9),
	cin => \Add4~10\,
	sharein => \Add4~11\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\,
	shareout => \Add4~15\);

-- Location: FF_X56_Y1_N29
\data_sum[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	asdata => \Add4~13_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(9));

-- Location: LABCELL_X56_Y1_N30
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( data_sum(10) ) + ( \data_in[10]~input_o\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( data_sum(10) ) + ( \data_in[10]~input_o\ ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_in[10]~input_o\,
	datad => ALT_INV_data_sum(10),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X57_Y1_N15
\data_sum[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_sum[10]~feeder_combout\ = \Add1~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~17_sumout\,
	combout => \data_sum[10]~feeder_combout\);

-- Location: FF_X57_Y1_N2
\backlog_rtl_0_bypass[23]\ : dffeas
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
	q => backlog_rtl_0_bypass(23));

-- Location: LABCELL_X57_Y1_N0
\backlog~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~29_combout\ = ( backlog_rtl_0_bypass(23) & ( \backlog_rtl_0|auto_generated|ram_block1a10\ ) ) # ( !backlog_rtl_0_bypass(23) & ( \backlog_rtl_0|auto_generated|ram_block1a10\ & ( (!\backlog~24_combout\) # ((!\backlog~23_combout\) # 
-- (!backlog_rtl_0_bypass(12) $ (!backlog_rtl_0_bypass(11)))) ) ) ) # ( backlog_rtl_0_bypass(23) & ( !\backlog_rtl_0|auto_generated|ram_block1a10\ & ( (\backlog~24_combout\ & (\backlog~23_combout\ & (!backlog_rtl_0_bypass(12) $ (backlog_rtl_0_bypass(11))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000111111111110111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(12),
	datab => \ALT_INV_backlog~24_combout\,
	datac => ALT_INV_backlog_rtl_0_bypass(11),
	datad => \ALT_INV_backlog~23_combout\,
	datae => ALT_INV_backlog_rtl_0_bypass(23),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	combout => \backlog~29_combout\);

-- Location: LABCELL_X57_Y1_N33
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( !\data_in[10]~input_o\ $ (!data_sum(10) $ (!\backlog~29_combout\)) ) + ( \Add4~15\ ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( !\data_in[10]~input_o\ $ (!data_sum(10) $ (!\backlog~29_combout\)) ) + ( \Add4~15\ ) + ( \Add4~14\ ))
-- \Add4~19\ = SHARE((!\data_in[10]~input_o\ & (data_sum(10) & !\backlog~29_combout\)) # (\data_in[10]~input_o\ & ((!\backlog~29_combout\) # (data_sum(10)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[10]~input_o\,
	datac => ALT_INV_data_sum(10),
	datad => \ALT_INV_backlog~29_combout\,
	cin => \Add4~14\,
	sharein => \Add4~15\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\,
	shareout => \Add4~19\);

-- Location: FF_X57_Y1_N17
\data_sum[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \data_sum[10]~feeder_combout\,
	asdata => \Add4~17_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(10));

-- Location: LABCELL_X56_Y1_N33
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \data_in[11]~input_o\ ) + ( data_sum(11) ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \data_in[11]~input_o\ ) + ( data_sum(11) ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[11]~input_o\,
	datac => ALT_INV_data_sum(11),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: LABCELL_X57_Y1_N18
\data_sum[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_sum[11]~feeder_combout\ = \Add1~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~21_sumout\,
	combout => \data_sum[11]~feeder_combout\);

-- Location: FF_X57_Y1_N11
\backlog_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backlog_rtl_0_bypass(24));

-- Location: LABCELL_X57_Y1_N9
\backlog~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~30_combout\ = ( backlog_rtl_0_bypass(24) & ( \backlog_rtl_0|auto_generated|ram_block1a11\ ) ) # ( !backlog_rtl_0_bypass(24) & ( \backlog_rtl_0|auto_generated|ram_block1a11\ & ( (!\backlog~23_combout\) # ((!\backlog~24_combout\) # 
-- (!backlog_rtl_0_bypass(12) $ (!backlog_rtl_0_bypass(11)))) ) ) ) # ( backlog_rtl_0_bypass(24) & ( !\backlog_rtl_0|auto_generated|ram_block1a11\ & ( (\backlog~23_combout\ & (\backlog~24_combout\ & (!backlog_rtl_0_bypass(12) $ (backlog_rtl_0_bypass(11))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000111111101111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(12),
	datab => \ALT_INV_backlog~23_combout\,
	datac => \ALT_INV_backlog~24_combout\,
	datad => ALT_INV_backlog_rtl_0_bypass(11),
	datae => ALT_INV_backlog_rtl_0_bypass(24),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \backlog~30_combout\);

-- Location: LABCELL_X57_Y1_N36
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( !\data_in[11]~input_o\ $ (!data_sum(11) $ (!\backlog~30_combout\)) ) + ( \Add4~19\ ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( !\data_in[11]~input_o\ $ (!data_sum(11) $ (!\backlog~30_combout\)) ) + ( \Add4~19\ ) + ( \Add4~18\ ))
-- \Add4~23\ = SHARE((!\data_in[11]~input_o\ & (data_sum(11) & !\backlog~30_combout\)) # (\data_in[11]~input_o\ & ((!\backlog~30_combout\) # (data_sum(11)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_in[11]~input_o\,
	datac => ALT_INV_data_sum(11),
	datad => \ALT_INV_backlog~30_combout\,
	cin => \Add4~18\,
	sharein => \Add4~19\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\,
	shareout => \Add4~23\);

-- Location: FF_X57_Y1_N20
\data_sum[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \data_sum[11]~feeder_combout\,
	asdata => \Add4~21_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(11));

-- Location: LABCELL_X56_Y1_N36
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \data_in[12]~input_o\ ) + ( data_sum(12) ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( \data_in[12]~input_o\ ) + ( data_sum(12) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_data_sum(12),
	datad => \ALT_INV_data_in[12]~input_o\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X57_Y1_N12
\data_sum[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_sum[12]~feeder_combout\ = \Add1~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~25_sumout\,
	combout => \data_sum[12]~feeder_combout\);

-- Location: FF_X57_Y1_N56
\backlog_rtl_0_bypass[25]\ : dffeas
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
	q => backlog_rtl_0_bypass(25));

-- Location: LABCELL_X57_Y1_N54
\backlog~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~31_combout\ = ( backlog_rtl_0_bypass(25) & ( \backlog_rtl_0|auto_generated|ram_block1a12\ ) ) # ( !backlog_rtl_0_bypass(25) & ( \backlog_rtl_0|auto_generated|ram_block1a12\ & ( (!\backlog~24_combout\) # ((!\backlog~23_combout\) # 
-- (!backlog_rtl_0_bypass(12) $ (!backlog_rtl_0_bypass(11)))) ) ) ) # ( backlog_rtl_0_bypass(25) & ( !\backlog_rtl_0|auto_generated|ram_block1a12\ & ( (\backlog~24_combout\ & (\backlog~23_combout\ & (!backlog_rtl_0_bypass(12) $ (backlog_rtl_0_bypass(11))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000111111111110111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(12),
	datab => \ALT_INV_backlog~24_combout\,
	datac => ALT_INV_backlog_rtl_0_bypass(11),
	datad => \ALT_INV_backlog~23_combout\,
	datae => ALT_INV_backlog_rtl_0_bypass(25),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	combout => \backlog~31_combout\);

-- Location: LABCELL_X57_Y1_N39
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( !\data_in[12]~input_o\ $ (!data_sum(12) $ (!\backlog~31_combout\)) ) + ( \Add4~23\ ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( !\data_in[12]~input_o\ $ (!data_sum(12) $ (!\backlog~31_combout\)) ) + ( \Add4~23\ ) + ( \Add4~22\ ))
-- \Add4~27\ = SHARE((!\data_in[12]~input_o\ & (data_sum(12) & !\backlog~31_combout\)) # (\data_in[12]~input_o\ & ((!\backlog~31_combout\) # (data_sum(12)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[12]~input_o\,
	datac => ALT_INV_data_sum(12),
	datad => \ALT_INV_backlog~31_combout\,
	cin => \Add4~22\,
	sharein => \Add4~23\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\,
	shareout => \Add4~27\);

-- Location: FF_X57_Y1_N14
\data_sum[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \data_sum[12]~feeder_combout\,
	asdata => \Add4~25_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(12));

-- Location: LABCELL_X56_Y1_N39
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \data_in[13]~input_o\ ) + ( data_sum(13) ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( \data_in[13]~input_o\ ) + ( data_sum(13) ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[13]~input_o\,
	datac => ALT_INV_data_sum(13),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X57_Y1_N59
\backlog_rtl_0_bypass[26]\ : dffeas
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
	q => backlog_rtl_0_bypass(26));

-- Location: LABCELL_X57_Y1_N57
\backlog~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~32_combout\ = ( backlog_rtl_0_bypass(26) & ( \backlog_rtl_0|auto_generated|ram_block1a13\ ) ) # ( !backlog_rtl_0_bypass(26) & ( \backlog_rtl_0|auto_generated|ram_block1a13\ & ( (!\backlog~24_combout\) # ((!\backlog~23_combout\) # 
-- (!backlog_rtl_0_bypass(12) $ (!backlog_rtl_0_bypass(11)))) ) ) ) # ( backlog_rtl_0_bypass(26) & ( !\backlog_rtl_0|auto_generated|ram_block1a13\ & ( (\backlog~24_combout\ & (\backlog~23_combout\ & (!backlog_rtl_0_bypass(12) $ (backlog_rtl_0_bypass(11))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000111111101111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(12),
	datab => \ALT_INV_backlog~24_combout\,
	datac => \ALT_INV_backlog~23_combout\,
	datad => ALT_INV_backlog_rtl_0_bypass(11),
	datae => ALT_INV_backlog_rtl_0_bypass(26),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \backlog~32_combout\);

-- Location: LABCELL_X57_Y1_N42
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( !\data_in[13]~input_o\ $ (!data_sum(13) $ (!\backlog~32_combout\)) ) + ( \Add4~27\ ) + ( \Add4~26\ ))
-- \Add4~30\ = CARRY(( !\data_in[13]~input_o\ $ (!data_sum(13) $ (!\backlog~32_combout\)) ) + ( \Add4~27\ ) + ( \Add4~26\ ))
-- \Add4~31\ = SHARE((!\data_in[13]~input_o\ & (data_sum(13) & !\backlog~32_combout\)) # (\data_in[13]~input_o\ & ((!\backlog~32_combout\) # (data_sum(13)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[13]~input_o\,
	datac => ALT_INV_data_sum(13),
	datad => \ALT_INV_backlog~32_combout\,
	cin => \Add4~26\,
	sharein => \Add4~27\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\,
	shareout => \Add4~31\);

-- Location: FF_X56_Y1_N41
\data_sum[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	asdata => \Add4~29_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(13));

-- Location: LABCELL_X56_Y1_N42
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \data_in[14]~input_o\ ) + ( data_sum(14) ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \data_in[14]~input_o\ ) + ( data_sum(14) ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_data_sum(14),
	datac => \ALT_INV_data_in[14]~input_o\,
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X57_Y1_N8
\backlog_rtl_0_bypass[27]\ : dffeas
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
	q => backlog_rtl_0_bypass(27));

-- Location: LABCELL_X57_Y1_N6
\backlog~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~33_combout\ = ( backlog_rtl_0_bypass(27) & ( \backlog_rtl_0|auto_generated|ram_block1a14\ ) ) # ( !backlog_rtl_0_bypass(27) & ( \backlog_rtl_0|auto_generated|ram_block1a14\ & ( (!\backlog~23_combout\) # ((!\backlog~24_combout\) # 
-- (!backlog_rtl_0_bypass(12) $ (!backlog_rtl_0_bypass(11)))) ) ) ) # ( backlog_rtl_0_bypass(27) & ( !\backlog_rtl_0|auto_generated|ram_block1a14\ & ( (\backlog~23_combout\ & (\backlog~24_combout\ & (!backlog_rtl_0_bypass(12) $ (backlog_rtl_0_bypass(11))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000111111111110111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(12),
	datab => \ALT_INV_backlog~23_combout\,
	datac => ALT_INV_backlog_rtl_0_bypass(11),
	datad => \ALT_INV_backlog~24_combout\,
	datae => ALT_INV_backlog_rtl_0_bypass(27),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	combout => \backlog~33_combout\);

-- Location: LABCELL_X57_Y1_N45
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( !\data_in[14]~input_o\ $ (!\backlog~33_combout\ $ (!data_sum(14))) ) + ( \Add4~31\ ) + ( \Add4~30\ ))
-- \Add4~34\ = CARRY(( !\data_in[14]~input_o\ $ (!\backlog~33_combout\ $ (!data_sum(14))) ) + ( \Add4~31\ ) + ( \Add4~30\ ))
-- \Add4~35\ = SHARE((!\data_in[14]~input_o\ & (!\backlog~33_combout\ & data_sum(14))) # (\data_in[14]~input_o\ & ((!\backlog~33_combout\) # (data_sum(14)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_in[14]~input_o\,
	datac => \ALT_INV_backlog~33_combout\,
	datad => ALT_INV_data_sum(14),
	cin => \Add4~30\,
	sharein => \Add4~31\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\,
	shareout => \Add4~35\);

-- Location: FF_X56_Y1_N44
\data_sum[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	asdata => \Add4~33_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(14));

-- Location: LABCELL_X56_Y1_N45
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( data_sum(15) ) + ( \data_in[15]~input_o\ ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[15]~input_o\,
	datad => ALT_INV_data_sum(15),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\);

-- Location: LABCELL_X57_Y1_N21
\data_sum[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_sum[15]~feeder_combout\ = ( \Add1~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~37_sumout\,
	combout => \data_sum[15]~feeder_combout\);

-- Location: FF_X57_Y1_N5
\backlog_rtl_0_bypass[28]\ : dffeas
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
	q => backlog_rtl_0_bypass(28));

-- Location: LABCELL_X57_Y1_N3
\backlog~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \backlog~34_combout\ = ( backlog_rtl_0_bypass(28) & ( \backlog_rtl_0|auto_generated|ram_block1a15\ ) ) # ( !backlog_rtl_0_bypass(28) & ( \backlog_rtl_0|auto_generated|ram_block1a15\ & ( (!\backlog~24_combout\) # ((!\backlog~23_combout\) # 
-- (!backlog_rtl_0_bypass(12) $ (!backlog_rtl_0_bypass(11)))) ) ) ) # ( backlog_rtl_0_bypass(28) & ( !\backlog_rtl_0|auto_generated|ram_block1a15\ & ( (\backlog~24_combout\ & (\backlog~23_combout\ & (!backlog_rtl_0_bypass(12) $ (backlog_rtl_0_bypass(11))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000111111101111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_backlog_rtl_0_bypass(12),
	datab => \ALT_INV_backlog~24_combout\,
	datac => \ALT_INV_backlog~23_combout\,
	datad => ALT_INV_backlog_rtl_0_bypass(11),
	datae => ALT_INV_backlog_rtl_0_bypass(28),
	dataf => \backlog_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \backlog~34_combout\);

-- Location: LABCELL_X57_Y1_N48
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( !\data_in[15]~input_o\ $ (!data_sum(15) $ (!\backlog~34_combout\)) ) + ( \Add4~35\ ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_in[15]~input_o\,
	datac => ALT_INV_data_sum(15),
	datad => \ALT_INV_backlog~34_combout\,
	cin => \Add4~34\,
	sharein => \Add4~35\,
	sumout => \Add4~37_sumout\);

-- Location: FF_X57_Y1_N23
\data_sum[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \data_sum[15]~feeder_combout\,
	asdata => \Add4~37_sumout\,
	sload => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sum(15));
END structure;


