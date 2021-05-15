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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/15/2021 14:09:30"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mac_asp IS
    PORT (
	clk : IN std_logic;
	initial_index : IN std_logic_vector(8 DOWNTO 0);
	final_index : IN std_logic_vector(8 DOWNTO 0);
	mac_val : OUT std_logic_vector(47 DOWNTO 0)
	);
END mac_asp;

-- Design Ports Information
-- mac_val[0]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[1]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[3]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[4]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[5]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[6]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[7]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[8]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[9]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[10]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[11]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[12]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[13]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[14]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[15]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[16]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[17]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[18]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[19]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[20]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[21]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[22]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[23]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[24]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[25]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[26]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[27]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[28]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[29]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[30]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[31]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[32]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[33]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[34]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[35]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[36]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[37]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[38]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[39]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[40]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[41]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[42]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[43]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[44]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[45]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[46]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_val[47]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initial_index[0]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final_index[8]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final_index[3]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final_index[2]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final_index[1]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final_index[0]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final_index[5]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final_index[7]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final_index[6]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final_index[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initial_index[1]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initial_index[2]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initial_index[3]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initial_index[4]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initial_index[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initial_index[6]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initial_index[7]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initial_index[8]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mac_asp IS
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
SIGNAL ww_initial_index : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_final_index : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_mac_val : std_logic_vector(47 DOWNTO 0);
SIGNAL \mac|Mult0~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mac|Mult0~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \mac|Mult0~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \mac|Mult0~mac_AX_bus\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \mac|Mult0~mac_AY_bus\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \mac|Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \mac|Mult0~8\ : std_logic;
SIGNAL \mac|Mult0~9\ : std_logic;
SIGNAL \mac|Mult0~10\ : std_logic;
SIGNAL \mac|Mult0~11\ : std_logic;
SIGNAL \mac|Mult0~12\ : std_logic;
SIGNAL \mac|Mult0~13\ : std_logic;
SIGNAL \mac|Mult0~14\ : std_logic;
SIGNAL \mac|Mult0~15\ : std_logic;
SIGNAL \mac|Mult0~16\ : std_logic;
SIGNAL \mac|Mult0~17\ : std_logic;
SIGNAL \mac|Mult0~18\ : std_logic;
SIGNAL \mac|Mult0~19\ : std_logic;
SIGNAL \mac|Mult0~20\ : std_logic;
SIGNAL \mac|Mult0~21\ : std_logic;
SIGNAL \mac|Mult0~22\ : std_logic;
SIGNAL \mac|Mult0~23\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \initial_index[0]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \initial_index[1]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \initial_index[2]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \initial_index[3]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \initial_index[4]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \initial_index[5]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \initial_index[6]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \initial_index[7]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \initial_index[8]~input_o\ : std_logic;
SIGNAL \final_index[8]~input_o\ : std_logic;
SIGNAL \final_index[5]~input_o\ : std_logic;
SIGNAL \final_index[4]~input_o\ : std_logic;
SIGNAL \final_index[6]~input_o\ : std_logic;
SIGNAL \final_index[7]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \final_index[2]~input_o\ : std_logic;
SIGNAL \final_index[3]~input_o\ : std_logic;
SIGNAL \final_index[0]~input_o\ : std_logic;
SIGNAL \final_index[1]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \mac_val[0]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[0]~reg0_q\ : std_logic;
SIGNAL \mac_val[1]~reg0_q\ : std_logic;
SIGNAL \mac_val[2]~reg0_q\ : std_logic;
SIGNAL \mac_val[3]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[3]~reg0_q\ : std_logic;
SIGNAL \mac_val[4]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[4]~reg0_q\ : std_logic;
SIGNAL \mac_val[5]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[5]~reg0_q\ : std_logic;
SIGNAL \mac_val[6]~reg0_q\ : std_logic;
SIGNAL \mac_val[7]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[7]~reg0_q\ : std_logic;
SIGNAL \mac_val[8]~reg0_q\ : std_logic;
SIGNAL \mac_val[9]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[9]~reg0_q\ : std_logic;
SIGNAL \mac_val[10]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[10]~reg0_q\ : std_logic;
SIGNAL \mac_val[11]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[11]~reg0_q\ : std_logic;
SIGNAL \mac_val[12]~reg0_q\ : std_logic;
SIGNAL \mac_val[13]~reg0_q\ : std_logic;
SIGNAL \mac_val[14]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[14]~reg0_q\ : std_logic;
SIGNAL \mac_val[15]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[15]~reg0_q\ : std_logic;
SIGNAL \mac_val[16]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[16]~reg0_q\ : std_logic;
SIGNAL \mac_val[17]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[17]~reg0_q\ : std_logic;
SIGNAL \mac_val[18]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[18]~reg0_q\ : std_logic;
SIGNAL \mac_val[19]~reg0_q\ : std_logic;
SIGNAL \mac_val[20]~reg0_q\ : std_logic;
SIGNAL \mac_val[21]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[21]~reg0_q\ : std_logic;
SIGNAL \mac_val[22]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[22]~reg0_q\ : std_logic;
SIGNAL \mac_val[23]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[23]~reg0_q\ : std_logic;
SIGNAL \mac_val[24]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[24]~reg0_q\ : std_logic;
SIGNAL \mac_val[25]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[25]~reg0_q\ : std_logic;
SIGNAL \mac_val[26]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[26]~reg0_q\ : std_logic;
SIGNAL \mac_val[27]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[27]~reg0_q\ : std_logic;
SIGNAL \mac_val[28]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[28]~reg0_q\ : std_logic;
SIGNAL \mac_val[29]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[29]~reg0_q\ : std_logic;
SIGNAL \mac_val[30]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[30]~reg0_q\ : std_logic;
SIGNAL \mac_val[31]~reg0_q\ : std_logic;
SIGNAL \mac_val[32]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[32]~reg0_q\ : std_logic;
SIGNAL \mac_val[33]~reg0_q\ : std_logic;
SIGNAL \mac_val[34]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[34]~reg0_q\ : std_logic;
SIGNAL \mac_val[35]~reg0_q\ : std_logic;
SIGNAL \mac_val[36]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[36]~reg0_q\ : std_logic;
SIGNAL \mac_val[37]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[37]~reg0_q\ : std_logic;
SIGNAL \mac_val[38]~reg0_q\ : std_logic;
SIGNAL \mac_val[39]~reg0_q\ : std_logic;
SIGNAL \mac_val[40]~reg0_q\ : std_logic;
SIGNAL \mac_val[41]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[41]~reg0_q\ : std_logic;
SIGNAL \mac_val[42]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[42]~reg0_q\ : std_logic;
SIGNAL \mac_val[43]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[43]~reg0_q\ : std_logic;
SIGNAL \mac_val[44]~reg0_q\ : std_logic;
SIGNAL \mac_val[45]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[45]~reg0_q\ : std_logic;
SIGNAL \mac_val[46]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[46]~reg0_q\ : std_logic;
SIGNAL \mac_val[47]~reg0feeder_combout\ : std_logic;
SIGNAL \mac_val[47]~reg0_q\ : std_logic;
SIGNAL \mac|prev_val\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \reg_a|altsyncram_component|auto_generated|q_a\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \reg_b|altsyncram_component|auto_generated|q_a\ : std_logic_vector(23 DOWNTO 0);
SIGNAL index_val : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_final_index[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_final_index[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_final_index[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_final_index[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_final_index[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_final_index[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_final_index[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_final_index[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_final_index[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL ALT_INV_index_val : std_logic_vector(8 DOWNTO 0);
SIGNAL \mac|ALT_INV_prev_val\ : std_logic_vector(47 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_initial_index <= initial_index;
ww_final_index <= final_index;
mac_val <= ww_mac_val;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mac|Mult0~mac_ACLR_bus\ <= (gnd & gnd);

\mac|Mult0~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\mac|Mult0~mac_ENA_bus\ <= (vcc & vcc & vcc);

\mac|Mult0~mac_AX_bus\ <= (\reg_a|altsyncram_component|auto_generated|q_a\(23) & \reg_a|altsyncram_component|auto_generated|q_a\(22) & \reg_a|altsyncram_component|auto_generated|q_a\(21) & \reg_a|altsyncram_component|auto_generated|q_a\(20) & 
\reg_a|altsyncram_component|auto_generated|q_a\(19) & \reg_a|altsyncram_component|auto_generated|q_a\(18) & \reg_a|altsyncram_component|auto_generated|q_a\(17) & \reg_a|altsyncram_component|auto_generated|q_a\(16) & 
\reg_a|altsyncram_component|auto_generated|q_a\(15) & \reg_a|altsyncram_component|auto_generated|q_a\(14) & \reg_a|altsyncram_component|auto_generated|q_a\(13) & \reg_a|altsyncram_component|auto_generated|q_a\(12) & 
\reg_a|altsyncram_component|auto_generated|q_a\(11) & \reg_a|altsyncram_component|auto_generated|q_a\(10) & \reg_a|altsyncram_component|auto_generated|q_a\(9) & \reg_a|altsyncram_component|auto_generated|q_a\(8) & 
\reg_a|altsyncram_component|auto_generated|q_a\(7) & \reg_a|altsyncram_component|auto_generated|q_a\(6) & \reg_a|altsyncram_component|auto_generated|q_a\(5) & \reg_a|altsyncram_component|auto_generated|q_a\(4) & 
\reg_a|altsyncram_component|auto_generated|q_a\(3) & \reg_a|altsyncram_component|auto_generated|q_a\(2) & \reg_a|altsyncram_component|auto_generated|q_a\(1) & \reg_a|altsyncram_component|auto_generated|q_a\(0));

\mac|Mult0~mac_AY_bus\ <= (\reg_b|altsyncram_component|auto_generated|q_a\(23) & \reg_b|altsyncram_component|auto_generated|q_a\(22) & \reg_b|altsyncram_component|auto_generated|q_a\(21) & \reg_b|altsyncram_component|auto_generated|q_a\(20) & 
\reg_b|altsyncram_component|auto_generated|q_a\(19) & \reg_b|altsyncram_component|auto_generated|q_a\(18) & \reg_b|altsyncram_component|auto_generated|q_a\(17) & \reg_b|altsyncram_component|auto_generated|q_a\(16) & 
\reg_b|altsyncram_component|auto_generated|q_a\(15) & \reg_b|altsyncram_component|auto_generated|q_a\(14) & \reg_b|altsyncram_component|auto_generated|q_a\(13) & \reg_b|altsyncram_component|auto_generated|q_a\(12) & 
\reg_b|altsyncram_component|auto_generated|q_a\(11) & \reg_b|altsyncram_component|auto_generated|q_a\(10) & \reg_b|altsyncram_component|auto_generated|q_a\(9) & \reg_b|altsyncram_component|auto_generated|q_a\(8) & 
\reg_b|altsyncram_component|auto_generated|q_a\(7) & \reg_b|altsyncram_component|auto_generated|q_a\(6) & \reg_b|altsyncram_component|auto_generated|q_a\(5) & \reg_b|altsyncram_component|auto_generated|q_a\(4) & 
\reg_b|altsyncram_component|auto_generated|q_a\(3) & \reg_b|altsyncram_component|auto_generated|q_a\(2) & \reg_b|altsyncram_component|auto_generated|q_a\(1) & \reg_b|altsyncram_component|auto_generated|q_a\(0));

\mac|prev_val\(0) <= \mac|Mult0~mac_RESULTA_bus\(0);
\mac|prev_val\(1) <= \mac|Mult0~mac_RESULTA_bus\(1);
\mac|prev_val\(2) <= \mac|Mult0~mac_RESULTA_bus\(2);
\mac|prev_val\(3) <= \mac|Mult0~mac_RESULTA_bus\(3);
\mac|prev_val\(4) <= \mac|Mult0~mac_RESULTA_bus\(4);
\mac|prev_val\(5) <= \mac|Mult0~mac_RESULTA_bus\(5);
\mac|prev_val\(6) <= \mac|Mult0~mac_RESULTA_bus\(6);
\mac|prev_val\(7) <= \mac|Mult0~mac_RESULTA_bus\(7);
\mac|prev_val\(8) <= \mac|Mult0~mac_RESULTA_bus\(8);
\mac|prev_val\(9) <= \mac|Mult0~mac_RESULTA_bus\(9);
\mac|prev_val\(10) <= \mac|Mult0~mac_RESULTA_bus\(10);
\mac|prev_val\(11) <= \mac|Mult0~mac_RESULTA_bus\(11);
\mac|prev_val\(12) <= \mac|Mult0~mac_RESULTA_bus\(12);
\mac|prev_val\(13) <= \mac|Mult0~mac_RESULTA_bus\(13);
\mac|prev_val\(14) <= \mac|Mult0~mac_RESULTA_bus\(14);
\mac|prev_val\(15) <= \mac|Mult0~mac_RESULTA_bus\(15);
\mac|prev_val\(16) <= \mac|Mult0~mac_RESULTA_bus\(16);
\mac|prev_val\(17) <= \mac|Mult0~mac_RESULTA_bus\(17);
\mac|prev_val\(18) <= \mac|Mult0~mac_RESULTA_bus\(18);
\mac|prev_val\(19) <= \mac|Mult0~mac_RESULTA_bus\(19);
\mac|prev_val\(20) <= \mac|Mult0~mac_RESULTA_bus\(20);
\mac|prev_val\(21) <= \mac|Mult0~mac_RESULTA_bus\(21);
\mac|prev_val\(22) <= \mac|Mult0~mac_RESULTA_bus\(22);
\mac|prev_val\(23) <= \mac|Mult0~mac_RESULTA_bus\(23);
\mac|prev_val\(24) <= \mac|Mult0~mac_RESULTA_bus\(24);
\mac|prev_val\(25) <= \mac|Mult0~mac_RESULTA_bus\(25);
\mac|prev_val\(26) <= \mac|Mult0~mac_RESULTA_bus\(26);
\mac|prev_val\(27) <= \mac|Mult0~mac_RESULTA_bus\(27);
\mac|prev_val\(28) <= \mac|Mult0~mac_RESULTA_bus\(28);
\mac|prev_val\(29) <= \mac|Mult0~mac_RESULTA_bus\(29);
\mac|prev_val\(30) <= \mac|Mult0~mac_RESULTA_bus\(30);
\mac|prev_val\(31) <= \mac|Mult0~mac_RESULTA_bus\(31);
\mac|prev_val\(32) <= \mac|Mult0~mac_RESULTA_bus\(32);
\mac|prev_val\(33) <= \mac|Mult0~mac_RESULTA_bus\(33);
\mac|prev_val\(34) <= \mac|Mult0~mac_RESULTA_bus\(34);
\mac|prev_val\(35) <= \mac|Mult0~mac_RESULTA_bus\(35);
\mac|prev_val\(36) <= \mac|Mult0~mac_RESULTA_bus\(36);
\mac|prev_val\(37) <= \mac|Mult0~mac_RESULTA_bus\(37);
\mac|prev_val\(38) <= \mac|Mult0~mac_RESULTA_bus\(38);
\mac|prev_val\(39) <= \mac|Mult0~mac_RESULTA_bus\(39);
\mac|prev_val\(40) <= \mac|Mult0~mac_RESULTA_bus\(40);
\mac|prev_val\(41) <= \mac|Mult0~mac_RESULTA_bus\(41);
\mac|prev_val\(42) <= \mac|Mult0~mac_RESULTA_bus\(42);
\mac|prev_val\(43) <= \mac|Mult0~mac_RESULTA_bus\(43);
\mac|prev_val\(44) <= \mac|Mult0~mac_RESULTA_bus\(44);
\mac|prev_val\(45) <= \mac|Mult0~mac_RESULTA_bus\(45);
\mac|prev_val\(46) <= \mac|Mult0~mac_RESULTA_bus\(46);
\mac|prev_val\(47) <= \mac|Mult0~mac_RESULTA_bus\(47);
\mac|Mult0~8\ <= \mac|Mult0~mac_RESULTA_bus\(48);
\mac|Mult0~9\ <= \mac|Mult0~mac_RESULTA_bus\(49);
\mac|Mult0~10\ <= \mac|Mult0~mac_RESULTA_bus\(50);
\mac|Mult0~11\ <= \mac|Mult0~mac_RESULTA_bus\(51);
\mac|Mult0~12\ <= \mac|Mult0~mac_RESULTA_bus\(52);
\mac|Mult0~13\ <= \mac|Mult0~mac_RESULTA_bus\(53);
\mac|Mult0~14\ <= \mac|Mult0~mac_RESULTA_bus\(54);
\mac|Mult0~15\ <= \mac|Mult0~mac_RESULTA_bus\(55);
\mac|Mult0~16\ <= \mac|Mult0~mac_RESULTA_bus\(56);
\mac|Mult0~17\ <= \mac|Mult0~mac_RESULTA_bus\(57);
\mac|Mult0~18\ <= \mac|Mult0~mac_RESULTA_bus\(58);
\mac|Mult0~19\ <= \mac|Mult0~mac_RESULTA_bus\(59);
\mac|Mult0~20\ <= \mac|Mult0~mac_RESULTA_bus\(60);
\mac|Mult0~21\ <= \mac|Mult0~mac_RESULTA_bus\(61);
\mac|Mult0~22\ <= \mac|Mult0~mac_RESULTA_bus\(62);
\mac|Mult0~23\ <= \mac|Mult0~mac_RESULTA_bus\(63);

\reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (index_val(8) & index_val(7) & index_val(6) & index_val(5) & index_val(4) & index_val(3) & index_val(2) & index_val(1) & index_val(0));

\reg_a|altsyncram_component|auto_generated|q_a\(0) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\reg_a|altsyncram_component|auto_generated|q_a\(1) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\reg_a|altsyncram_component|auto_generated|q_a\(2) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\reg_a|altsyncram_component|auto_generated|q_a\(3) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\reg_a|altsyncram_component|auto_generated|q_a\(4) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\reg_a|altsyncram_component|auto_generated|q_a\(5) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\reg_a|altsyncram_component|auto_generated|q_a\(6) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\reg_a|altsyncram_component|auto_generated|q_a\(7) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\reg_a|altsyncram_component|auto_generated|q_a\(8) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\reg_a|altsyncram_component|auto_generated|q_a\(9) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\reg_a|altsyncram_component|auto_generated|q_a\(10) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\reg_a|altsyncram_component|auto_generated|q_a\(11) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\reg_a|altsyncram_component|auto_generated|q_a\(12) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\reg_a|altsyncram_component|auto_generated|q_a\(13) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\reg_a|altsyncram_component|auto_generated|q_a\(14) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\reg_a|altsyncram_component|auto_generated|q_a\(15) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\reg_a|altsyncram_component|auto_generated|q_a\(16) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\reg_a|altsyncram_component|auto_generated|q_a\(17) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\reg_a|altsyncram_component|auto_generated|q_a\(18) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\reg_a|altsyncram_component|auto_generated|q_a\(19) <= \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);

\reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (index_val(8) & index_val(7) & index_val(6) & index_val(5) & index_val(4) & index_val(3) & index_val(2) & index_val(1) & index_val(0));

\reg_a|altsyncram_component|auto_generated|q_a\(20) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);
\reg_a|altsyncram_component|auto_generated|q_a\(21) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(1);
\reg_a|altsyncram_component|auto_generated|q_a\(22) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(2);
\reg_a|altsyncram_component|auto_generated|q_a\(23) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(3);
\reg_b|altsyncram_component|auto_generated|q_a\(0) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(4);
\reg_b|altsyncram_component|auto_generated|q_a\(1) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(5);
\reg_b|altsyncram_component|auto_generated|q_a\(2) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(6);
\reg_b|altsyncram_component|auto_generated|q_a\(3) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(7);
\reg_b|altsyncram_component|auto_generated|q_a\(4) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(8);
\reg_b|altsyncram_component|auto_generated|q_a\(5) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(9);
\reg_b|altsyncram_component|auto_generated|q_a\(6) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(10);
\reg_b|altsyncram_component|auto_generated|q_a\(7) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(11);
\reg_b|altsyncram_component|auto_generated|q_a\(8) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(12);
\reg_b|altsyncram_component|auto_generated|q_a\(9) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(13);
\reg_b|altsyncram_component|auto_generated|q_a\(10) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(14);
\reg_b|altsyncram_component|auto_generated|q_a\(11) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(15);
\reg_b|altsyncram_component|auto_generated|q_a\(12) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(16);
\reg_b|altsyncram_component|auto_generated|q_a\(13) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(17);
\reg_b|altsyncram_component|auto_generated|q_a\(14) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(18);
\reg_b|altsyncram_component|auto_generated|q_a\(15) <= \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(19);

\reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\);

\reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (index_val(8) & index_val(7) & index_val(6) & index_val(5) & index_val(4) & index_val(3) & index_val(2) & index_val(1) & index_val(0));

\reg_b|altsyncram_component|auto_generated|q_a\(16) <= \reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\reg_b|altsyncram_component|auto_generated|q_a\(17) <= \reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);
\reg_b|altsyncram_component|auto_generated|q_a\(18) <= \reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(2);
\reg_b|altsyncram_component|auto_generated|q_a\(19) <= \reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(3);
\reg_b|altsyncram_component|auto_generated|q_a\(20) <= \reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(4);
\reg_b|altsyncram_component|auto_generated|q_a\(21) <= \reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(5);
\reg_b|altsyncram_component|auto_generated|q_a\(22) <= \reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(6);
\reg_b|altsyncram_component|auto_generated|q_a\(23) <= \reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(7);
\ALT_INV_final_index[4]~input_o\ <= NOT \final_index[4]~input_o\;
\ALT_INV_final_index[6]~input_o\ <= NOT \final_index[6]~input_o\;
\ALT_INV_final_index[7]~input_o\ <= NOT \final_index[7]~input_o\;
\ALT_INV_final_index[5]~input_o\ <= NOT \final_index[5]~input_o\;
\ALT_INV_final_index[0]~input_o\ <= NOT \final_index[0]~input_o\;
\ALT_INV_final_index[1]~input_o\ <= NOT \final_index[1]~input_o\;
\ALT_INV_final_index[2]~input_o\ <= NOT \final_index[2]~input_o\;
\ALT_INV_final_index[3]~input_o\ <= NOT \final_index[3]~input_o\;
\ALT_INV_final_index[8]~input_o\ <= NOT \final_index[8]~input_o\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_index_val(8) <= NOT index_val(8);
ALT_INV_index_val(7) <= NOT index_val(7);
ALT_INV_index_val(6) <= NOT index_val(6);
ALT_INV_index_val(5) <= NOT index_val(5);
ALT_INV_index_val(4) <= NOT index_val(4);
ALT_INV_index_val(3) <= NOT index_val(3);
ALT_INV_index_val(2) <= NOT index_val(2);
ALT_INV_index_val(1) <= NOT index_val(1);
ALT_INV_index_val(0) <= NOT index_val(0);
\mac|ALT_INV_prev_val\(47) <= NOT \mac|prev_val\(47);
\mac|ALT_INV_prev_val\(46) <= NOT \mac|prev_val\(46);
\mac|ALT_INV_prev_val\(45) <= NOT \mac|prev_val\(45);
\mac|ALT_INV_prev_val\(43) <= NOT \mac|prev_val\(43);
\mac|ALT_INV_prev_val\(42) <= NOT \mac|prev_val\(42);
\mac|ALT_INV_prev_val\(41) <= NOT \mac|prev_val\(41);
\mac|ALT_INV_prev_val\(37) <= NOT \mac|prev_val\(37);
\mac|ALT_INV_prev_val\(36) <= NOT \mac|prev_val\(36);
\mac|ALT_INV_prev_val\(34) <= NOT \mac|prev_val\(34);
\mac|ALT_INV_prev_val\(32) <= NOT \mac|prev_val\(32);
\mac|ALT_INV_prev_val\(30) <= NOT \mac|prev_val\(30);
\mac|ALT_INV_prev_val\(29) <= NOT \mac|prev_val\(29);
\mac|ALT_INV_prev_val\(28) <= NOT \mac|prev_val\(28);
\mac|ALT_INV_prev_val\(27) <= NOT \mac|prev_val\(27);
\mac|ALT_INV_prev_val\(26) <= NOT \mac|prev_val\(26);
\mac|ALT_INV_prev_val\(25) <= NOT \mac|prev_val\(25);
\mac|ALT_INV_prev_val\(24) <= NOT \mac|prev_val\(24);
\mac|ALT_INV_prev_val\(23) <= NOT \mac|prev_val\(23);
\mac|ALT_INV_prev_val\(22) <= NOT \mac|prev_val\(22);
\mac|ALT_INV_prev_val\(21) <= NOT \mac|prev_val\(21);
\mac|ALT_INV_prev_val\(18) <= NOT \mac|prev_val\(18);
\mac|ALT_INV_prev_val\(17) <= NOT \mac|prev_val\(17);
\mac|ALT_INV_prev_val\(16) <= NOT \mac|prev_val\(16);
\mac|ALT_INV_prev_val\(15) <= NOT \mac|prev_val\(15);
\mac|ALT_INV_prev_val\(14) <= NOT \mac|prev_val\(14);
\mac|ALT_INV_prev_val\(11) <= NOT \mac|prev_val\(11);
\mac|ALT_INV_prev_val\(10) <= NOT \mac|prev_val\(10);
\mac|ALT_INV_prev_val\(9) <= NOT \mac|prev_val\(9);
\mac|ALT_INV_prev_val\(7) <= NOT \mac|prev_val\(7);
\mac|ALT_INV_prev_val\(5) <= NOT \mac|prev_val\(5);
\mac|ALT_INV_prev_val\(4) <= NOT \mac|prev_val\(4);
\mac|ALT_INV_prev_val\(3) <= NOT \mac|prev_val\(3);
\mac|ALT_INV_prev_val\(0) <= NOT \mac|prev_val\(0);

-- Location: IOOBUF_X58_Y0_N93
\mac_val[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(0));

-- Location: IOOBUF_X38_Y0_N2
\mac_val[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(1));

-- Location: IOOBUF_X36_Y0_N2
\mac_val[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(2));

-- Location: IOOBUF_X70_Y0_N19
\mac_val[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(3));

-- Location: IOOBUF_X54_Y0_N36
\mac_val[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(4));

-- Location: IOOBUF_X30_Y0_N53
\mac_val[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(5));

-- Location: IOOBUF_X66_Y0_N76
\mac_val[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(6));

-- Location: IOOBUF_X70_Y0_N36
\mac_val[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(7));

-- Location: IOOBUF_X54_Y0_N2
\mac_val[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(8));

-- Location: IOOBUF_X38_Y0_N36
\mac_val[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(9));

-- Location: IOOBUF_X68_Y0_N2
\mac_val[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(10));

-- Location: IOOBUF_X64_Y0_N19
\mac_val[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(11));

-- Location: IOOBUF_X68_Y0_N19
\mac_val[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(12));

-- Location: IOOBUF_X66_Y0_N59
\mac_val[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(13));

-- Location: IOOBUF_X32_Y0_N2
\mac_val[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(14));

-- Location: IOOBUF_X56_Y0_N19
\mac_val[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(15));

-- Location: IOOBUF_X68_Y0_N36
\mac_val[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(16));

-- Location: IOOBUF_X66_Y0_N42
\mac_val[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[17]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(17));

-- Location: IOOBUF_X62_Y0_N36
\mac_val[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[18]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(18));

-- Location: IOOBUF_X50_Y0_N76
\mac_val[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[19]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(19));

-- Location: IOOBUF_X36_Y0_N53
\mac_val[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[20]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(20));

-- Location: IOOBUF_X68_Y0_N53
\mac_val[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[21]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(21));

-- Location: IOOBUF_X62_Y0_N2
\mac_val[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[22]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(22));

-- Location: IOOBUF_X60_Y0_N53
\mac_val[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[23]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(23));

-- Location: IOOBUF_X58_Y0_N42
\mac_val[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[24]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(24));

-- Location: IOOBUF_X64_Y0_N53
\mac_val[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[25]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(25));

-- Location: IOOBUF_X62_Y0_N19
\mac_val[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[26]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(26));

-- Location: IOOBUF_X62_Y0_N53
\mac_val[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[27]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(27));

-- Location: IOOBUF_X60_Y0_N36
\mac_val[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[28]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(28));

-- Location: IOOBUF_X36_Y0_N36
\mac_val[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[29]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(29));

-- Location: IOOBUF_X28_Y0_N19
\mac_val[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[30]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(30));

-- Location: IOOBUF_X64_Y0_N2
\mac_val[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[31]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(31));

-- Location: IOOBUF_X32_Y0_N53
\mac_val[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[32]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(32));

-- Location: IOOBUF_X64_Y0_N36
\mac_val[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[33]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(33));

-- Location: IOOBUF_X60_Y0_N2
\mac_val[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[34]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(34));

-- Location: IOOBUF_X54_Y0_N19
\mac_val[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[35]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(35));

-- Location: IOOBUF_X66_Y0_N93
\mac_val[36]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[36]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(36));

-- Location: IOOBUF_X36_Y0_N19
\mac_val[37]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[37]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(37));

-- Location: IOOBUF_X38_Y0_N19
\mac_val[38]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[38]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(38));

-- Location: IOOBUF_X56_Y0_N53
\mac_val[39]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[39]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(39));

-- Location: IOOBUF_X56_Y0_N2
\mac_val[40]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[40]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(40));

-- Location: IOOBUF_X58_Y0_N59
\mac_val[41]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[41]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(41));

-- Location: IOOBUF_X38_Y0_N53
\mac_val[42]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[42]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(42));

-- Location: IOOBUF_X50_Y0_N42
\mac_val[43]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[43]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(43));

-- Location: IOOBUF_X56_Y0_N36
\mac_val[44]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[44]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(44));

-- Location: IOOBUF_X58_Y0_N76
\mac_val[45]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[45]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(45));

-- Location: IOOBUF_X60_Y0_N19
\mac_val[46]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[46]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(46));

-- Location: IOOBUF_X54_Y0_N53
\mac_val[47]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_val[47]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mac_val(47));

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

-- Location: LABCELL_X55_Y3_N12
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

-- Location: MLABCELL_X52_Y3_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( index_val(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( index_val(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index_val(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: IOIBUF_X52_Y0_N35
\initial_index[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initial_index(0),
	o => \initial_index[0]~input_o\);

-- Location: MLABCELL_X52_Y3_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( index_val(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( index_val(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index_val(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: IOIBUF_X30_Y0_N1
\initial_index[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initial_index(1),
	o => \initial_index[1]~input_o\);

-- Location: FF_X52_Y3_N35
\index_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	asdata => \initial_index[1]~input_o\,
	sload => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index_val(1));

-- Location: MLABCELL_X52_Y3_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( index_val(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( index_val(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index_val(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: IOIBUF_X40_Y0_N35
\initial_index[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initial_index(2),
	o => \initial_index[2]~input_o\);

-- Location: FF_X52_Y3_N38
\index_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	asdata => \initial_index[2]~input_o\,
	sload => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index_val(2));

-- Location: MLABCELL_X52_Y3_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( index_val(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( index_val(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index_val(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: IOIBUF_X40_Y0_N1
\initial_index[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initial_index(3),
	o => \initial_index[3]~input_o\);

-- Location: FF_X52_Y3_N41
\index_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	asdata => \initial_index[3]~input_o\,
	sload => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index_val(3));

-- Location: MLABCELL_X52_Y3_N42
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( index_val(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( index_val(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index_val(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: IOIBUF_X50_Y0_N92
\initial_index[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initial_index(4),
	o => \initial_index[4]~input_o\);

-- Location: FF_X52_Y3_N44
\index_val[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	asdata => \initial_index[4]~input_o\,
	sload => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index_val(4));

-- Location: MLABCELL_X52_Y3_N45
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( index_val(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( index_val(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index_val(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: IOIBUF_X40_Y0_N18
\initial_index[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initial_index(5),
	o => \initial_index[5]~input_o\);

-- Location: FF_X52_Y3_N47
\index_val[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	asdata => \initial_index[5]~input_o\,
	sload => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index_val(5));

-- Location: MLABCELL_X52_Y3_N48
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( index_val(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( index_val(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index_val(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: IOIBUF_X30_Y0_N35
\initial_index[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initial_index(6),
	o => \initial_index[6]~input_o\);

-- Location: FF_X52_Y3_N50
\index_val[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	asdata => \initial_index[6]~input_o\,
	sload => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index_val(6));

-- Location: MLABCELL_X52_Y3_N51
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( index_val(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( index_val(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index_val(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: IOIBUF_X50_Y0_N58
\initial_index[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initial_index(7),
	o => \initial_index[7]~input_o\);

-- Location: FF_X52_Y3_N53
\index_val[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	asdata => \initial_index[7]~input_o\,
	sload => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index_val(7));

-- Location: MLABCELL_X52_Y3_N54
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( index_val(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index_val(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\);

-- Location: IOIBUF_X40_Y0_N52
\initial_index[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initial_index(8),
	o => \initial_index[8]~input_o\);

-- Location: FF_X52_Y3_N56
\index_val[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	asdata => \initial_index[8]~input_o\,
	sload => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index_val(8));

-- Location: IOIBUF_X34_Y0_N75
\final_index[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_final_index(8),
	o => \final_index[8]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\final_index[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_final_index(5),
	o => \final_index[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\final_index[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_final_index(4),
	o => \final_index[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\final_index[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_final_index(6),
	o => \final_index[6]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\final_index[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_final_index(7),
	o => \final_index[7]~input_o\);

-- Location: MLABCELL_X52_Y3_N9
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \final_index[7]~input_o\ & ( index_val(6) & ( (\final_index[6]~input_o\ & index_val(7)) ) ) ) # ( !\final_index[7]~input_o\ & ( index_val(6) & ( (\final_index[6]~input_o\ & !index_val(7)) ) ) ) # ( \final_index[7]~input_o\ & ( 
-- !index_val(6) & ( (!\final_index[6]~input_o\ & index_val(7)) ) ) ) # ( !\final_index[7]~input_o\ & ( !index_val(6) & ( (!\final_index[6]~input_o\ & !index_val(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000001111000000001111000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_final_index[6]~input_o\,
	datad => ALT_INV_index_val(7),
	datae => \ALT_INV_final_index[7]~input_o\,
	dataf => ALT_INV_index_val(6),
	combout => \LessThan0~2_combout\);

-- Location: MLABCELL_X52_Y3_N12
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \final_index[7]~input_o\ & ( index_val(7) & ( (\final_index[6]~input_o\ & !index_val(6)) ) ) ) # ( \final_index[7]~input_o\ & ( !index_val(7) ) ) # ( !\final_index[7]~input_o\ & ( !index_val(7) & ( (\final_index[6]~input_o\ & 
-- !index_val(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111111111111111100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_final_index[6]~input_o\,
	datac => ALT_INV_index_val(6),
	datae => \ALT_INV_final_index[7]~input_o\,
	dataf => ALT_INV_index_val(7),
	combout => \LessThan0~4_combout\);

-- Location: MLABCELL_X52_Y3_N18
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( index_val(5) & ( !\LessThan0~4_combout\ & ( (!\final_index[5]~input_o\) # (((!\final_index[4]~input_o\) # (!\LessThan0~2_combout\)) # (index_val(4))) ) ) ) # ( !index_val(5) & ( !\LessThan0~4_combout\ & ( (!\LessThan0~2_combout\) 
-- # ((!\final_index[5]~input_o\ & ((!\final_index[4]~input_o\) # (index_val(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100010111111111111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_final_index[5]~input_o\,
	datab => ALT_INV_index_val(4),
	datac => \ALT_INV_final_index[4]~input_o\,
	datad => \ALT_INV_LessThan0~2_combout\,
	datae => ALT_INV_index_val(5),
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: MLABCELL_X52_Y3_N0
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( index_val(5) & ( \LessThan0~2_combout\ & ( (\final_index[5]~input_o\ & (!\final_index[4]~input_o\ $ (index_val(4)))) ) ) ) # ( !index_val(5) & ( \LessThan0~2_combout\ & ( (!\final_index[5]~input_o\ & (!\final_index[4]~input_o\ $ 
-- (index_val(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000011000011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_final_index[5]~input_o\,
	datac => \ALT_INV_final_index[4]~input_o\,
	datad => ALT_INV_index_val(4),
	datae => ALT_INV_index_val(5),
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: IOIBUF_X34_Y0_N58
\final_index[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_final_index(2),
	o => \final_index[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\final_index[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_final_index(3),
	o => \final_index[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\final_index[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_final_index(0),
	o => \final_index[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\final_index[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_final_index(1),
	o => \final_index[1]~input_o\);

-- Location: LABCELL_X51_Y3_N51
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !index_val(0) & ( index_val(1) & ( (\final_index[0]~input_o\ & \final_index[1]~input_o\) ) ) ) # ( index_val(0) & ( !index_val(1) & ( \final_index[1]~input_o\ ) ) ) # ( !index_val(0) & ( !index_val(1) & ( 
-- (\final_index[1]~input_o\) # (\final_index[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000011110000111100000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_final_index[0]~input_o\,
	datac => \ALT_INV_final_index[1]~input_o\,
	datae => ALT_INV_index_val(0),
	dataf => ALT_INV_index_val(1),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X51_Y3_N18
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( index_val(2) & ( \LessThan0~0_combout\ & ( (!\final_index[2]~input_o\ & (\final_index[3]~input_o\ & !index_val(3))) # (\final_index[2]~input_o\ & ((!index_val(3)) # (\final_index[3]~input_o\))) ) ) ) # ( !index_val(2) & ( 
-- \LessThan0~0_combout\ & ( (!index_val(3)) # (\final_index[3]~input_o\) ) ) ) # ( index_val(2) & ( !\LessThan0~0_combout\ & ( (\final_index[3]~input_o\ & !index_val(3)) ) ) ) # ( !index_val(2) & ( !\LessThan0~0_combout\ & ( (!\final_index[2]~input_o\ & 
-- (\final_index[3]~input_o\ & !index_val(3))) # (\final_index[2]~input_o\ & ((!index_val(3)) # (\final_index[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001001100000011000011110011111100110111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_final_index[2]~input_o\,
	datab => \ALT_INV_final_index[3]~input_o\,
	datac => ALT_INV_index_val(3),
	datae => ALT_INV_index_val(2),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X52_Y3_N24
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~3_combout\ & ( \LessThan0~1_combout\ & ( (index_val(8) & !\final_index[8]~input_o\) ) ) ) # ( !\LessThan0~3_combout\ & ( \LessThan0~1_combout\ & ( (!index_val(8) & (!\final_index[8]~input_o\ & \LessThan0~5_combout\)) # 
-- (index_val(8) & ((!\final_index[8]~input_o\) # (\LessThan0~5_combout\))) ) ) ) # ( \LessThan0~3_combout\ & ( !\LessThan0~1_combout\ & ( (!index_val(8) & (!\final_index[8]~input_o\ & \LessThan0~5_combout\)) # (index_val(8) & ((!\final_index[8]~input_o\) # 
-- (\LessThan0~5_combout\))) ) ) ) # ( !\LessThan0~3_combout\ & ( !\LessThan0~1_combout\ & ( (!index_val(8) & (!\final_index[8]~input_o\ & \LessThan0~5_combout\)) # (index_val(8) & ((!\final_index[8]~input_o\) # (\LessThan0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110101001101010011010100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index_val(8),
	datab => \ALT_INV_final_index[8]~input_o\,
	datac => \ALT_INV_LessThan0~5_combout\,
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \LessThan0~6_combout\);

-- Location: FF_X52_Y3_N32
\index_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	asdata => \initial_index[0]~input_o\,
	sload => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index_val(0));

-- Location: M10K_X58_Y3_N0
\reg_a|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500004000030000200001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mac_reg.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mac_reg:reg_a|altsyncram:altsyncram_component|altsyncram_hk14:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 9,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \reg_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M10K_X58_Y4_N0
\reg_a|altsyncram_component|auto_generated|ram_block1a20\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200001000020000100002000010",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mac_reg.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mac_reg:reg_a|altsyncram:altsyncram_component|altsyncram_hk14:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 9,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \reg_a|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: M10K_X49_Y4_N0
\reg_b|altsyncram_component|auto_generated|ram_block1a16\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mac_reg_2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mac_reg_2:reg_b|altsyncram:altsyncram_component|altsyncram_2p14:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 9,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \reg_b|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: DSP_X54_Y4_N0
\mac|Mult0~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 24,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 24,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m27x27",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	accumulate => VCC,
	loadconst => GND,
	aclr => \mac|Mult0~mac_ACLR_bus\,
	clk => \mac|Mult0~mac_CLK_bus\,
	ena => \mac|Mult0~mac_ENA_bus\,
	ax => \mac|Mult0~mac_AX_bus\,
	ay => \mac|Mult0~mac_AY_bus\,
	resulta => \mac|Mult0~mac_RESULTA_bus\);

-- Location: LABCELL_X55_Y4_N51
\mac_val[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[0]~reg0feeder_combout\ = ( \mac|prev_val\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(0),
	combout => \mac_val[0]~reg0feeder_combout\);

-- Location: FF_X55_Y4_N52
\mac_val[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[0]~reg0_q\);

-- Location: FF_X48_Y4_N37
\mac_val[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[1]~reg0_q\);

-- Location: FF_X48_Y4_N46
\mac_val[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[2]~reg0_q\);

-- Location: MLABCELL_X59_Y4_N15
\mac_val[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[3]~reg0feeder_combout\ = ( \mac|prev_val\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(3),
	combout => \mac_val[3]~reg0feeder_combout\);

-- Location: FF_X59_Y4_N16
\mac_val[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[3]~reg0_q\);

-- Location: LABCELL_X53_Y4_N24
\mac_val[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[4]~reg0feeder_combout\ = ( \mac|prev_val\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(4),
	combout => \mac_val[4]~reg0feeder_combout\);

-- Location: FF_X53_Y4_N25
\mac_val[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[4]~reg0_q\);

-- Location: LABCELL_X53_Y4_N21
\mac_val[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[5]~reg0feeder_combout\ = ( \mac|prev_val\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(5),
	combout => \mac_val[5]~reg0feeder_combout\);

-- Location: FF_X53_Y4_N22
\mac_val[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[5]~reg0_q\);

-- Location: FF_X55_Y4_N58
\mac_val[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[6]~reg0_q\);

-- Location: MLABCELL_X65_Y4_N0
\mac_val[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[7]~reg0feeder_combout\ = ( \mac|prev_val\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(7),
	combout => \mac_val[7]~reg0feeder_combout\);

-- Location: FF_X65_Y4_N1
\mac_val[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[7]~reg0_q\);

-- Location: FF_X53_Y4_N37
\mac_val[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[8]~reg0_q\);

-- Location: LABCELL_X48_Y4_N24
\mac_val[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[9]~reg0feeder_combout\ = ( \mac|prev_val\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(9),
	combout => \mac_val[9]~reg0feeder_combout\);

-- Location: FF_X48_Y4_N25
\mac_val[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[9]~reg0_q\);

-- Location: MLABCELL_X59_Y4_N33
\mac_val[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[10]~reg0feeder_combout\ = ( \mac|prev_val\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(10),
	combout => \mac_val[10]~reg0feeder_combout\);

-- Location: FF_X59_Y4_N34
\mac_val[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[10]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[10]~reg0_q\);

-- Location: LABCELL_X55_Y4_N3
\mac_val[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[11]~reg0feeder_combout\ = ( \mac|prev_val\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(11),
	combout => \mac_val[11]~reg0feeder_combout\);

-- Location: FF_X55_Y4_N4
\mac_val[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[11]~reg0_q\);

-- Location: FF_X59_Y4_N37
\mac_val[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[12]~reg0_q\);

-- Location: FF_X60_Y4_N13
\mac_val[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[13]~reg0_q\);

-- Location: LABCELL_X43_Y4_N12
\mac_val[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[14]~reg0feeder_combout\ = ( \mac|prev_val\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(14),
	combout => \mac_val[14]~reg0feeder_combout\);

-- Location: FF_X43_Y4_N14
\mac_val[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[14]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[14]~reg0_q\);

-- Location: LABCELL_X53_Y4_N45
\mac_val[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[15]~reg0feeder_combout\ = ( \mac|prev_val\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(15),
	combout => \mac_val[15]~reg0feeder_combout\);

-- Location: FF_X53_Y4_N46
\mac_val[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[15]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[15]~reg0_q\);

-- Location: MLABCELL_X59_Y4_N9
\mac_val[16]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[16]~reg0feeder_combout\ = ( \mac|prev_val\(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(16),
	combout => \mac_val[16]~reg0feeder_combout\);

-- Location: FF_X59_Y4_N10
\mac_val[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[16]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[16]~reg0_q\);

-- Location: LABCELL_X55_Y4_N6
\mac_val[17]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[17]~reg0feeder_combout\ = ( \mac|prev_val\(17) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(17),
	combout => \mac_val[17]~reg0feeder_combout\);

-- Location: FF_X55_Y4_N7
\mac_val[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[17]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[17]~reg0_q\);

-- Location: LABCELL_X55_Y4_N12
\mac_val[18]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[18]~reg0feeder_combout\ = ( \mac|prev_val\(18) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(18),
	combout => \mac_val[18]~reg0feeder_combout\);

-- Location: FF_X55_Y4_N13
\mac_val[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[18]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[18]~reg0_q\);

-- Location: FF_X53_Y4_N13
\mac_val[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[19]~reg0_q\);

-- Location: FF_X53_Y4_N34
\mac_val[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[20]~reg0_q\);

-- Location: MLABCELL_X59_Y4_N48
\mac_val[21]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[21]~reg0feeder_combout\ = ( \mac|prev_val\(21) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(21),
	combout => \mac_val[21]~reg0feeder_combout\);

-- Location: FF_X59_Y4_N49
\mac_val[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[21]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[21]~reg0_q\);

-- Location: LABCELL_X57_Y4_N27
\mac_val[22]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[22]~reg0feeder_combout\ = ( \mac|prev_val\(22) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(22),
	combout => \mac_val[22]~reg0feeder_combout\);

-- Location: FF_X57_Y4_N28
\mac_val[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[22]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[22]~reg0_q\);

-- Location: LABCELL_X55_Y4_N33
\mac_val[23]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[23]~reg0feeder_combout\ = ( \mac|prev_val\(23) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(23),
	combout => \mac_val[23]~reg0feeder_combout\);

-- Location: FF_X55_Y4_N34
\mac_val[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[23]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[23]~reg0_q\);

-- Location: LABCELL_X55_Y4_N39
\mac_val[24]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[24]~reg0feeder_combout\ = ( \mac|prev_val\(24) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(24),
	combout => \mac_val[24]~reg0feeder_combout\);

-- Location: FF_X55_Y4_N41
\mac_val[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[24]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[24]~reg0_q\);

-- Location: MLABCELL_X59_Y4_N45
\mac_val[25]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[25]~reg0feeder_combout\ = ( \mac|prev_val\(25) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(25),
	combout => \mac_val[25]~reg0feeder_combout\);

-- Location: FF_X59_Y4_N46
\mac_val[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[25]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[25]~reg0_q\);

-- Location: LABCELL_X55_Y4_N36
\mac_val[26]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[26]~reg0feeder_combout\ = ( \mac|prev_val\(26) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(26),
	combout => \mac_val[26]~reg0feeder_combout\);

-- Location: FF_X55_Y4_N37
\mac_val[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[26]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[26]~reg0_q\);

-- Location: LABCELL_X55_Y4_N15
\mac_val[27]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[27]~reg0feeder_combout\ = ( \mac|prev_val\(27) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(27),
	combout => \mac_val[27]~reg0feeder_combout\);

-- Location: FF_X55_Y4_N16
\mac_val[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[27]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[27]~reg0_q\);

-- Location: LABCELL_X55_Y4_N45
\mac_val[28]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[28]~reg0feeder_combout\ = ( \mac|prev_val\(28) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(28),
	combout => \mac_val[28]~reg0feeder_combout\);

-- Location: FF_X55_Y4_N46
\mac_val[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[28]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[28]~reg0_q\);

-- Location: LABCELL_X48_Y4_N18
\mac_val[29]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[29]~reg0feeder_combout\ = ( \mac|prev_val\(29) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(29),
	combout => \mac_val[29]~reg0feeder_combout\);

-- Location: FF_X48_Y4_N19
\mac_val[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[29]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[29]~reg0_q\);

-- Location: LABCELL_X48_Y4_N15
\mac_val[30]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[30]~reg0feeder_combout\ = ( \mac|prev_val\(30) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(30),
	combout => \mac_val[30]~reg0feeder_combout\);

-- Location: FF_X48_Y4_N17
\mac_val[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[30]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[30]~reg0_q\);

-- Location: FF_X55_Y4_N25
\mac_val[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[31]~reg0_q\);

-- Location: LABCELL_X43_Y4_N54
\mac_val[32]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[32]~reg0feeder_combout\ = ( \mac|prev_val\(32) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(32),
	combout => \mac_val[32]~reg0feeder_combout\);

-- Location: FF_X43_Y4_N55
\mac_val[32]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[32]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[32]~reg0_q\);

-- Location: FF_X55_Y4_N31
\mac_val[33]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(33),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[33]~reg0_q\);

-- Location: LABCELL_X55_Y4_N42
\mac_val[34]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[34]~reg0feeder_combout\ = ( \mac|prev_val\(34) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(34),
	combout => \mac_val[34]~reg0feeder_combout\);

-- Location: FF_X55_Y4_N43
\mac_val[34]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[34]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[34]~reg0_q\);

-- Location: FF_X53_Y4_N1
\mac_val[35]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(35),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[35]~reg0_q\);

-- Location: LABCELL_X60_Y4_N57
\mac_val[36]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[36]~reg0feeder_combout\ = ( \mac|prev_val\(36) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(36),
	combout => \mac_val[36]~reg0feeder_combout\);

-- Location: FF_X60_Y4_N58
\mac_val[36]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[36]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[36]~reg0_q\);

-- Location: LABCELL_X53_Y4_N54
\mac_val[37]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[37]~reg0feeder_combout\ = ( \mac|prev_val\(37) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(37),
	combout => \mac_val[37]~reg0feeder_combout\);

-- Location: FF_X53_Y4_N55
\mac_val[37]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[37]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[37]~reg0_q\);

-- Location: FF_X48_Y4_N11
\mac_val[38]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(38),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[38]~reg0_q\);

-- Location: FF_X55_Y4_N19
\mac_val[39]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(39),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[39]~reg0_q\);

-- Location: FF_X55_Y4_N49
\mac_val[40]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(40),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[40]~reg0_q\);

-- Location: LABCELL_X55_Y4_N27
\mac_val[41]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[41]~reg0feeder_combout\ = ( \mac|prev_val\(41) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(41),
	combout => \mac_val[41]~reg0feeder_combout\);

-- Location: FF_X55_Y4_N28
\mac_val[41]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[41]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[41]~reg0_q\);

-- Location: LABCELL_X43_Y4_N51
\mac_val[42]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[42]~reg0feeder_combout\ = ( \mac|prev_val\(42) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(42),
	combout => \mac_val[42]~reg0feeder_combout\);

-- Location: FF_X43_Y4_N52
\mac_val[42]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[42]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[42]~reg0_q\);

-- Location: LABCELL_X53_Y4_N51
\mac_val[43]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[43]~reg0feeder_combout\ = ( \mac|prev_val\(43) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(43),
	combout => \mac_val[43]~reg0feeder_combout\);

-- Location: FF_X53_Y4_N53
\mac_val[43]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[43]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[43]~reg0_q\);

-- Location: FF_X55_Y4_N55
\mac_val[44]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mac|prev_val\(44),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[44]~reg0_q\);

-- Location: LABCELL_X55_Y4_N21
\mac_val[45]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[45]~reg0feeder_combout\ = ( \mac|prev_val\(45) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(45),
	combout => \mac_val[45]~reg0feeder_combout\);

-- Location: FF_X55_Y4_N22
\mac_val[45]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[45]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[45]~reg0_q\);

-- Location: LABCELL_X55_Y4_N0
\mac_val[46]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[46]~reg0feeder_combout\ = ( \mac|prev_val\(46) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(46),
	combout => \mac_val[46]~reg0feeder_combout\);

-- Location: FF_X55_Y4_N1
\mac_val[46]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[46]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[46]~reg0_q\);

-- Location: LABCELL_X53_Y4_N6
\mac_val[47]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mac_val[47]~reg0feeder_combout\ = ( \mac|prev_val\(47) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mac|ALT_INV_prev_val\(47),
	combout => \mac_val[47]~reg0feeder_combout\);

-- Location: FF_X53_Y4_N7
\mac_val[47]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mac_val[47]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_val[47]~reg0_q\);
END structure;


