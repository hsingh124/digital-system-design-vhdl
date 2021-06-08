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

-- DATE "06/08/2021 16:34:41"

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

ENTITY 	peak_detection IS
    PORT (
	clock : IN std_logic;
	signal_input : IN std_logic_vector(15 DOWNTO 0);
	cycle_num : IN std_logic_vector(15 DOWNTO 0);
	max_val : OUT std_logic_vector(15 DOWNTO 0);
	min_val : OUT std_logic_vector(15 DOWNTO 0)
	);
END peak_detection;

-- Design Ports Information
-- max_val[0]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[2]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[3]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[4]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[5]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[6]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[7]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[8]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[9]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[10]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[11]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[12]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[13]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[14]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[15]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[0]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[1]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[2]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[4]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[6]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[7]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[8]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[9]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[10]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[11]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[12]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[13]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[14]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[15]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[15]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[7]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[6]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[5]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[4]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[0]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[3]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[14]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[13]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[12]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[11]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[9]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[10]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[8]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[15]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[11]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[14]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[13]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[12]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[10]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[9]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[8]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[3]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[2]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[1]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[6]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[4]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF peak_detection IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_signal_input : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cycle_num : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_max_val : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_min_val : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \signal_input[0]~input_o\ : std_logic;
SIGNAL \signal_input[15]~input_o\ : std_logic;
SIGNAL \signal_input[3]~input_o\ : std_logic;
SIGNAL \signal_input[2]~input_o\ : std_logic;
SIGNAL \signal_input[1]~input_o\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \signal_input[9]~input_o\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \signal_input[8]~input_o\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \signal_input[4]~input_o\ : std_logic;
SIGNAL \signal_input[5]~input_o\ : std_logic;
SIGNAL \signal_input[6]~input_o\ : std_logic;
SIGNAL \signal_input[7]~input_o\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \signal_input[11]~input_o\ : std_logic;
SIGNAL \signal_input[10]~input_o\ : std_logic;
SIGNAL \signal_input[13]~input_o\ : std_logic;
SIGNAL \signal_input[14]~input_o\ : std_logic;
SIGNAL \prev_max[14]~feeder_combout\ : std_logic;
SIGNAL \signal_input[12]~input_o\ : std_logic;
SIGNAL \prev_max[12]~feeder_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \cycle_num[15]~input_o\ : std_logic;
SIGNAL \count[0]~0_combout\ : std_logic;
SIGNAL \cycle_num[5]~input_o\ : std_logic;
SIGNAL \cycle_num[4]~input_o\ : std_logic;
SIGNAL \cycle_num[7]~input_o\ : std_logic;
SIGNAL \cycle_num[6]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \cycle_num[11]~input_o\ : std_logic;
SIGNAL \cycle_num[10]~input_o\ : std_logic;
SIGNAL \cycle_num[14]~input_o\ : std_logic;
SIGNAL \cycle_num[12]~input_o\ : std_logic;
SIGNAL \cycle_num[13]~input_o\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \cycle_num[9]~input_o\ : std_logic;
SIGNAL \LessThan0~21_combout\ : std_logic;
SIGNAL \cycle_num[8]~input_o\ : std_logic;
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \cycle_num[0]~input_o\ : std_logic;
SIGNAL \cycle_num[1]~input_o\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \LessThan0~19_combout\ : std_logic;
SIGNAL \cycle_num[2]~input_o\ : std_logic;
SIGNAL \cycle_num[3]~input_o\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan1~11_combout\ : std_logic;
SIGNAL \LessThan1~12_combout\ : std_logic;
SIGNAL \LessThan1~13_combout\ : std_logic;
SIGNAL \prev_max[0]~0_combout\ : std_logic;
SIGNAL \prev_min[0]~1_combout\ : std_logic;
SIGNAL \prev_min[9]~10_combout\ : std_logic;
SIGNAL \prev_min[8]~9_combout\ : std_logic;
SIGNAL \prev_min[11]~12_combout\ : std_logic;
SIGNAL \prev_min[10]~11_combout\ : std_logic;
SIGNAL \prev_min[14]~15_combout\ : std_logic;
SIGNAL \prev_min[13]~14_combout\ : std_logic;
SIGNAL \prev_min[12]~13_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~11_combout\ : std_logic;
SIGNAL \LessThan2~12_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~13_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \prev_min[5]~6_combout\ : std_logic;
SIGNAL \prev_min[4]~5_combout\ : std_logic;
SIGNAL \prev_min[7]~8_combout\ : std_logic;
SIGNAL \prev_min[6]~7_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \prev_min[3]~4_combout\ : std_logic;
SIGNAL \prev_min[2]~3_combout\ : std_logic;
SIGNAL \prev_min[1]~2_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
SIGNAL \prev_min[15]~16_combout\ : std_logic;
SIGNAL \prev_min[0]~0_combout\ : std_logic;
SIGNAL prev_max : std_logic_vector(15 DOWNTO 0);
SIGNAL prev_min : std_logic_vector(15 DOWNTO 0);
SIGNAL count : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_signal_input[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_cycle_num[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_input[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan0~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL ALT_INV_prev_min : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_prev_max : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_signal_input <= signal_input;
ww_cycle_num <= cycle_num;
max_val <= ww_max_val;
min_val <= ww_min_val;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_signal_input[4]~input_o\ <= NOT \signal_input[4]~input_o\;
\ALT_INV_signal_input[6]~input_o\ <= NOT \signal_input[6]~input_o\;
\ALT_INV_signal_input[7]~input_o\ <= NOT \signal_input[7]~input_o\;
\ALT_INV_signal_input[5]~input_o\ <= NOT \signal_input[5]~input_o\;
\ALT_INV_signal_input[1]~input_o\ <= NOT \signal_input[1]~input_o\;
\ALT_INV_signal_input[2]~input_o\ <= NOT \signal_input[2]~input_o\;
\ALT_INV_signal_input[3]~input_o\ <= NOT \signal_input[3]~input_o\;
\ALT_INV_signal_input[8]~input_o\ <= NOT \signal_input[8]~input_o\;
\ALT_INV_signal_input[9]~input_o\ <= NOT \signal_input[9]~input_o\;
\ALT_INV_signal_input[10]~input_o\ <= NOT \signal_input[10]~input_o\;
\ALT_INV_signal_input[12]~input_o\ <= NOT \signal_input[12]~input_o\;
\ALT_INV_signal_input[13]~input_o\ <= NOT \signal_input[13]~input_o\;
\ALT_INV_signal_input[14]~input_o\ <= NOT \signal_input[14]~input_o\;
\ALT_INV_signal_input[11]~input_o\ <= NOT \signal_input[11]~input_o\;
\ALT_INV_signal_input[15]~input_o\ <= NOT \signal_input[15]~input_o\;
\ALT_INV_cycle_num[8]~input_o\ <= NOT \cycle_num[8]~input_o\;
\ALT_INV_cycle_num[10]~input_o\ <= NOT \cycle_num[10]~input_o\;
\ALT_INV_cycle_num[9]~input_o\ <= NOT \cycle_num[9]~input_o\;
\ALT_INV_cycle_num[11]~input_o\ <= NOT \cycle_num[11]~input_o\;
\ALT_INV_cycle_num[12]~input_o\ <= NOT \cycle_num[12]~input_o\;
\ALT_INV_cycle_num[13]~input_o\ <= NOT \cycle_num[13]~input_o\;
\ALT_INV_cycle_num[14]~input_o\ <= NOT \cycle_num[14]~input_o\;
\ALT_INV_cycle_num[2]~input_o\ <= NOT \cycle_num[2]~input_o\;
\ALT_INV_cycle_num[3]~input_o\ <= NOT \cycle_num[3]~input_o\;
\ALT_INV_cycle_num[0]~input_o\ <= NOT \cycle_num[0]~input_o\;
\ALT_INV_cycle_num[1]~input_o\ <= NOT \cycle_num[1]~input_o\;
\ALT_INV_cycle_num[4]~input_o\ <= NOT \cycle_num[4]~input_o\;
\ALT_INV_cycle_num[5]~input_o\ <= NOT \cycle_num[5]~input_o\;
\ALT_INV_cycle_num[6]~input_o\ <= NOT \cycle_num[6]~input_o\;
\ALT_INV_cycle_num[7]~input_o\ <= NOT \cycle_num[7]~input_o\;
\ALT_INV_cycle_num[15]~input_o\ <= NOT \cycle_num[15]~input_o\;
\ALT_INV_signal_input[0]~input_o\ <= NOT \signal_input[0]~input_o\;
\ALT_INV_LessThan0~21_combout\ <= NOT \LessThan0~21_combout\;
\ALT_INV_LessThan0~20_combout\ <= NOT \LessThan0~20_combout\;
\ALT_INV_LessThan0~19_combout\ <= NOT \LessThan0~19_combout\;
\ALT_INV_LessThan0~18_combout\ <= NOT \LessThan0~18_combout\;
\ALT_INV_LessThan2~13_combout\ <= NOT \LessThan2~13_combout\;
\ALT_INV_LessThan2~12_combout\ <= NOT \LessThan2~12_combout\;
\ALT_INV_LessThan2~11_combout\ <= NOT \LessThan2~11_combout\;
\ALT_INV_LessThan2~10_combout\ <= NOT \LessThan2~10_combout\;
\ALT_INV_LessThan2~9_combout\ <= NOT \LessThan2~9_combout\;
\ALT_INV_LessThan2~8_combout\ <= NOT \LessThan2~8_combout\;
\ALT_INV_LessThan2~7_combout\ <= NOT \LessThan2~7_combout\;
\ALT_INV_LessThan2~6_combout\ <= NOT \LessThan2~6_combout\;
\ALT_INV_LessThan2~5_combout\ <= NOT \LessThan2~5_combout\;
\ALT_INV_LessThan2~4_combout\ <= NOT \LessThan2~4_combout\;
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_LessThan1~13_combout\ <= NOT \LessThan1~13_combout\;
\ALT_INV_LessThan1~12_combout\ <= NOT \LessThan1~12_combout\;
\ALT_INV_LessThan1~11_combout\ <= NOT \LessThan1~11_combout\;
\ALT_INV_LessThan1~10_combout\ <= NOT \LessThan1~10_combout\;
\ALT_INV_LessThan1~9_combout\ <= NOT \LessThan1~9_combout\;
\ALT_INV_LessThan1~8_combout\ <= NOT \LessThan1~8_combout\;
\ALT_INV_LessThan1~7_combout\ <= NOT \LessThan1~7_combout\;
\ALT_INV_LessThan1~6_combout\ <= NOT \LessThan1~6_combout\;
\ALT_INV_LessThan1~5_combout\ <= NOT \LessThan1~5_combout\;
\ALT_INV_LessThan1~4_combout\ <= NOT \LessThan1~4_combout\;
\ALT_INV_LessThan1~3_combout\ <= NOT \LessThan1~3_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_LessThan0~16_combout\ <= NOT \LessThan0~16_combout\;
\ALT_INV_LessThan0~15_combout\ <= NOT \LessThan0~15_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;
\ALT_INV_LessThan0~13_combout\ <= NOT \LessThan0~13_combout\;
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
ALT_INV_count(8) <= NOT count(8);
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
ALT_INV_count(10) <= NOT count(10);
ALT_INV_count(9) <= NOT count(9);
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
ALT_INV_count(11) <= NOT count(11);
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
ALT_INV_count(12) <= NOT count(12);
ALT_INV_count(13) <= NOT count(13);
ALT_INV_count(14) <= NOT count(14);
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(3) <= NOT count(3);
ALT_INV_count(0) <= NOT count(0);
ALT_INV_count(1) <= NOT count(1);
ALT_INV_count(4) <= NOT count(4);
ALT_INV_count(5) <= NOT count(5);
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
ALT_INV_count(6) <= NOT count(6);
ALT_INV_count(7) <= NOT count(7);
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_count(15) <= NOT count(15);
ALT_INV_prev_min(15) <= NOT prev_min(15);
ALT_INV_prev_min(14) <= NOT prev_min(14);
ALT_INV_prev_min(13) <= NOT prev_min(13);
ALT_INV_prev_min(12) <= NOT prev_min(12);
ALT_INV_prev_min(11) <= NOT prev_min(11);
ALT_INV_prev_min(10) <= NOT prev_min(10);
ALT_INV_prev_min(9) <= NOT prev_min(9);
ALT_INV_prev_min(8) <= NOT prev_min(8);
ALT_INV_prev_min(7) <= NOT prev_min(7);
ALT_INV_prev_min(6) <= NOT prev_min(6);
ALT_INV_prev_min(5) <= NOT prev_min(5);
ALT_INV_prev_min(4) <= NOT prev_min(4);
ALT_INV_prev_min(3) <= NOT prev_min(3);
ALT_INV_prev_min(2) <= NOT prev_min(2);
ALT_INV_prev_min(1) <= NOT prev_min(1);
ALT_INV_prev_min(0) <= NOT prev_min(0);
ALT_INV_prev_max(15) <= NOT prev_max(15);
ALT_INV_prev_max(14) <= NOT prev_max(14);
ALT_INV_prev_max(13) <= NOT prev_max(13);
ALT_INV_prev_max(12) <= NOT prev_max(12);
ALT_INV_prev_max(11) <= NOT prev_max(11);
ALT_INV_prev_max(10) <= NOT prev_max(10);
ALT_INV_prev_max(9) <= NOT prev_max(9);
ALT_INV_prev_max(8) <= NOT prev_max(8);
ALT_INV_prev_max(7) <= NOT prev_max(7);
ALT_INV_prev_max(6) <= NOT prev_max(6);
ALT_INV_prev_max(5) <= NOT prev_max(5);
ALT_INV_prev_max(4) <= NOT prev_max(4);
ALT_INV_prev_max(3) <= NOT prev_max(3);
ALT_INV_prev_max(2) <= NOT prev_max(2);
ALT_INV_prev_max(1) <= NOT prev_max(1);
ALT_INV_prev_max(0) <= NOT prev_max(0);

-- Location: IOOBUF_X24_Y0_N53
\max_val[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(0),
	devoe => ww_devoe,
	o => ww_max_val(0));

-- Location: IOOBUF_X28_Y0_N2
\max_val[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(1),
	devoe => ww_devoe,
	o => ww_max_val(1));

-- Location: IOOBUF_X22_Y0_N2
\max_val[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(2),
	devoe => ww_devoe,
	o => ww_max_val(2));

-- Location: IOOBUF_X22_Y0_N19
\max_val[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(3),
	devoe => ww_devoe,
	o => ww_max_val(3));

-- Location: IOOBUF_X24_Y0_N19
\max_val[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(4),
	devoe => ww_devoe,
	o => ww_max_val(4));

-- Location: IOOBUF_X20_Y0_N36
\max_val[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(5),
	devoe => ww_devoe,
	o => ww_max_val(5));

-- Location: IOOBUF_X24_Y0_N2
\max_val[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(6),
	devoe => ww_devoe,
	o => ww_max_val(6));

-- Location: IOOBUF_X30_Y0_N53
\max_val[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(7),
	devoe => ww_devoe,
	o => ww_max_val(7));

-- Location: IOOBUF_X26_Y0_N93
\max_val[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(8),
	devoe => ww_devoe,
	o => ww_max_val(8));

-- Location: IOOBUF_X22_Y0_N36
\max_val[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(9),
	devoe => ww_devoe,
	o => ww_max_val(9));

-- Location: IOOBUF_X28_Y0_N19
\max_val[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(10),
	devoe => ww_devoe,
	o => ww_max_val(10));

-- Location: IOOBUF_X22_Y0_N53
\max_val[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(11),
	devoe => ww_devoe,
	o => ww_max_val(11));

-- Location: IOOBUF_X28_Y0_N36
\max_val[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(12),
	devoe => ww_devoe,
	o => ww_max_val(12));

-- Location: IOOBUF_X12_Y81_N19
\max_val[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(13),
	devoe => ww_devoe,
	o => ww_max_val(13));

-- Location: IOOBUF_X8_Y0_N36
\max_val[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(14),
	devoe => ww_devoe,
	o => ww_max_val(14));

-- Location: IOOBUF_X26_Y0_N76
\max_val[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => prev_max(15),
	devoe => ww_devoe,
	o => ww_max_val(15));

-- Location: IOOBUF_X18_Y0_N59
\min_val[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(0),
	devoe => ww_devoe,
	o => ww_min_val(0));

-- Location: IOOBUF_X30_Y0_N19
\min_val[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(1),
	devoe => ww_devoe,
	o => ww_min_val(1));

-- Location: IOOBUF_X30_Y0_N2
\min_val[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(2),
	devoe => ww_devoe,
	o => ww_min_val(2));

-- Location: IOOBUF_X12_Y81_N36
\min_val[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(3),
	devoe => ww_devoe,
	o => ww_min_val(3));

-- Location: IOOBUF_X8_Y0_N19
\min_val[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(4),
	devoe => ww_devoe,
	o => ww_min_val(4));

-- Location: IOOBUF_X12_Y0_N53
\min_val[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(5),
	devoe => ww_devoe,
	o => ww_min_val(5));

-- Location: IOOBUF_X8_Y0_N53
\min_val[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(6),
	devoe => ww_devoe,
	o => ww_min_val(6));

-- Location: IOOBUF_X28_Y0_N53
\min_val[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(7),
	devoe => ww_devoe,
	o => ww_min_val(7));

-- Location: IOOBUF_X16_Y0_N2
\min_val[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(8),
	devoe => ww_devoe,
	o => ww_min_val(8));

-- Location: IOOBUF_X12_Y0_N36
\min_val[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(9),
	devoe => ww_devoe,
	o => ww_min_val(9));

-- Location: IOOBUF_X18_Y0_N76
\min_val[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(10),
	devoe => ww_devoe,
	o => ww_min_val(10));

-- Location: IOOBUF_X12_Y81_N2
\min_val[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(11),
	devoe => ww_devoe,
	o => ww_min_val(11));

-- Location: IOOBUF_X30_Y0_N36
\min_val[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(12),
	devoe => ww_devoe,
	o => ww_min_val(12));

-- Location: IOOBUF_X24_Y0_N36
\min_val[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(13),
	devoe => ww_devoe,
	o => ww_min_val(13));

-- Location: IOOBUF_X18_Y0_N42
\min_val[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(14),
	devoe => ww_devoe,
	o => ww_min_val(14));

-- Location: IOOBUF_X18_Y0_N93
\min_val[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_min(15),
	devoe => ww_devoe,
	o => ww_min_val(15));

-- Location: IOIBUF_X89_Y25_N21
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X20_Y0_N18
\signal_input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(0),
	o => \signal_input[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\signal_input[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(15),
	o => \signal_input[15]~input_o\);

-- Location: FF_X12_Y4_N8
\prev_max[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \signal_input[15]~input_o\,
	sload => VCC,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(15));

-- Location: IOIBUF_X16_Y0_N52
\signal_input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(3),
	o => \signal_input[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N52
\signal_input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(2),
	o => \signal_input[2]~input_o\);

-- Location: FF_X12_Y4_N26
\prev_max[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \signal_input[2]~input_o\,
	sload => VCC,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(2));

-- Location: FF_X12_Y4_N35
\prev_max[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \signal_input[3]~input_o\,
	sload => VCC,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(3));

-- Location: IOIBUF_X16_Y0_N35
\signal_input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(1),
	o => \signal_input[1]~input_o\);

-- Location: FF_X12_Y4_N59
\prev_max[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \signal_input[1]~input_o\,
	sload => VCC,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(1));

-- Location: LABCELL_X12_Y4_N48
\LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = ( prev_max(1) & ( (\signal_input[0]~input_o\ & (\signal_input[1]~input_o\ & !prev_max(0))) ) ) # ( !prev_max(1) & ( ((\signal_input[0]~input_o\ & !prev_max(0))) # (\signal_input[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001111001111110000111100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_signal_input[0]~input_o\,
	datac => \ALT_INV_signal_input[1]~input_o\,
	datad => ALT_INV_prev_max(0),
	dataf => ALT_INV_prev_max(1),
	combout => \LessThan1~4_combout\);

-- Location: LABCELL_X12_Y4_N18
\LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = ( prev_max(3) & ( \LessThan1~4_combout\ & ( (\signal_input[3]~input_o\ & ((!prev_max(2)) # (\signal_input[2]~input_o\))) ) ) ) # ( !prev_max(3) & ( \LessThan1~4_combout\ & ( ((!prev_max(2)) # (\signal_input[2]~input_o\)) # 
-- (\signal_input[3]~input_o\) ) ) ) # ( prev_max(3) & ( !\LessThan1~4_combout\ & ( (\signal_input[3]~input_o\ & (\signal_input[2]~input_o\ & !prev_max(2))) ) ) ) # ( !prev_max(3) & ( !\LessThan1~4_combout\ & ( ((\signal_input[2]~input_o\ & !prev_max(2))) # 
-- (\signal_input[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101000100000001000011110111111101110101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[3]~input_o\,
	datab => \ALT_INV_signal_input[2]~input_o\,
	datac => ALT_INV_prev_max(2),
	datae => ALT_INV_prev_max(3),
	dataf => \ALT_INV_LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: IOIBUF_X14_Y0_N35
\signal_input[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(9),
	o => \signal_input[9]~input_o\);

-- Location: FF_X12_Y4_N41
\prev_max[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \signal_input[9]~input_o\,
	sload => VCC,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(9));

-- Location: LABCELL_X12_Y4_N30
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = !\signal_input[9]~input_o\ $ (!prev_max(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_signal_input[9]~input_o\,
	datad => ALT_INV_prev_max(9),
	combout => \LessThan1~2_combout\);

-- Location: IOIBUF_X20_Y0_N1
\signal_input[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(8),
	o => \signal_input[8]~input_o\);

-- Location: FF_X12_Y4_N29
\prev_max[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \signal_input[8]~input_o\,
	sload => VCC,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(8));

-- Location: LABCELL_X12_Y4_N24
\LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ( \signal_input[8]~input_o\ & ( !prev_max(8) ) ) # ( !\signal_input[8]~input_o\ & ( prev_max(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_prev_max(8),
	dataf => \ALT_INV_signal_input[8]~input_o\,
	combout => \LessThan1~3_combout\);

-- Location: IOIBUF_X14_Y0_N1
\signal_input[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(4),
	o => \signal_input[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\signal_input[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(5),
	o => \signal_input[5]~input_o\);

-- Location: FF_X12_Y4_N14
\prev_max[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \signal_input[5]~input_o\,
	sload => VCC,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(5));

-- Location: FF_X12_Y4_N44
\prev_max[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \signal_input[4]~input_o\,
	sload => VCC,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(4));

-- Location: IOIBUF_X26_Y0_N41
\signal_input[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(6),
	o => \signal_input[6]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\signal_input[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(7),
	o => \signal_input[7]~input_o\);

-- Location: FF_X12_Y4_N5
\prev_max[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \signal_input[7]~input_o\,
	sload => VCC,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(7));

-- Location: FF_X12_Y4_N20
\prev_max[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \signal_input[6]~input_o\,
	sload => VCC,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(6));

-- Location: LABCELL_X12_Y4_N51
\LessThan1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = ( prev_max(6) & ( (\signal_input[7]~input_o\ & !prev_max(7)) ) ) # ( !prev_max(6) & ( (!\signal_input[6]~input_o\ & (\signal_input[7]~input_o\ & !prev_max(7))) # (\signal_input[6]~input_o\ & ((!prev_max(7)) # 
-- (\signal_input[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[6]~input_o\,
	datac => \ALT_INV_signal_input[7]~input_o\,
	datad => ALT_INV_prev_max(7),
	dataf => ALT_INV_prev_max(6),
	combout => \LessThan1~8_combout\);

-- Location: LABCELL_X12_Y4_N27
\LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = ( prev_max(6) & ( (\signal_input[6]~input_o\ & (!\signal_input[7]~input_o\ $ (prev_max(7)))) ) ) # ( !prev_max(6) & ( (!\signal_input[6]~input_o\ & (!\signal_input[7]~input_o\ $ (prev_max(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[6]~input_o\,
	datac => \ALT_INV_signal_input[7]~input_o\,
	datad => ALT_INV_prev_max(7),
	dataf => ALT_INV_prev_max(6),
	combout => \LessThan1~6_combout\);

-- Location: LABCELL_X12_Y4_N15
\LessThan1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = ( !\LessThan1~8_combout\ & ( \LessThan1~6_combout\ & ( (!prev_max(5) & (!\signal_input[5]~input_o\ & ((!\signal_input[4]~input_o\) # (prev_max(4))))) # (prev_max(5) & ((!\signal_input[4]~input_o\) # ((!\signal_input[5]~input_o\) # 
-- (prev_max(4))))) ) ) ) # ( !\LessThan1~8_combout\ & ( !\LessThan1~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010111111001000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[4]~input_o\,
	datab => ALT_INV_prev_max(5),
	datac => ALT_INV_prev_max(4),
	datad => \ALT_INV_signal_input[5]~input_o\,
	datae => \ALT_INV_LessThan1~8_combout\,
	dataf => \ALT_INV_LessThan1~6_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LABCELL_X12_Y4_N45
\LessThan1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = ( \LessThan1~6_combout\ & ( (!\signal_input[5]~input_o\ & (!prev_max(5) & (!prev_max(4) $ (\signal_input[4]~input_o\)))) # (\signal_input[5]~input_o\ & (prev_max(5) & (!prev_max(4) $ (\signal_input[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[5]~input_o\,
	datab => ALT_INV_prev_max(5),
	datac => ALT_INV_prev_max(4),
	datad => \ALT_INV_signal_input[4]~input_o\,
	dataf => \ALT_INV_LessThan1~6_combout\,
	combout => \LessThan1~7_combout\);

-- Location: IOIBUF_X10_Y0_N41
\signal_input[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(11),
	o => \signal_input[11]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\signal_input[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(10),
	o => \signal_input[10]~input_o\);

-- Location: FF_X12_Y4_N11
\prev_max[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \signal_input[10]~input_o\,
	sload => VCC,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(10));

-- Location: FF_X12_Y4_N23
\prev_max[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \signal_input[11]~input_o\,
	sload => VCC,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(11));

-- Location: IOIBUF_X16_Y0_N18
\signal_input[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(13),
	o => \signal_input[13]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\signal_input[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(14),
	o => \signal_input[14]~input_o\);

-- Location: LABCELL_X11_Y4_N6
\prev_max[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_max[14]~feeder_combout\ = ( \signal_input[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_input[14]~input_o\,
	combout => \prev_max[14]~feeder_combout\);

-- Location: FF_X11_Y4_N8
\prev_max[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \prev_max[14]~feeder_combout\,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(14));

-- Location: IOIBUF_X10_Y0_N58
\signal_input[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(12),
	o => \signal_input[12]~input_o\);

-- Location: FF_X11_Y4_N23
\prev_max[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \signal_input[13]~input_o\,
	sload => VCC,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(13));

-- Location: LABCELL_X11_Y4_N9
\prev_max[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_max[12]~feeder_combout\ = ( \signal_input[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_input[12]~input_o\,
	combout => \prev_max[12]~feeder_combout\);

-- Location: FF_X11_Y4_N11
\prev_max[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \prev_max[12]~feeder_combout\,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(12));

-- Location: LABCELL_X11_Y4_N57
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( prev_max(13) & ( prev_max(12) & ( (\signal_input[13]~input_o\ & (\signal_input[12]~input_o\ & (!\signal_input[14]~input_o\ $ (prev_max(14))))) ) ) ) # ( !prev_max(13) & ( prev_max(12) & ( (!\signal_input[13]~input_o\ & 
-- (\signal_input[12]~input_o\ & (!\signal_input[14]~input_o\ $ (prev_max(14))))) ) ) ) # ( prev_max(13) & ( !prev_max(12) & ( (\signal_input[13]~input_o\ & (!\signal_input[12]~input_o\ & (!\signal_input[14]~input_o\ $ (prev_max(14))))) ) ) ) # ( 
-- !prev_max(13) & ( !prev_max(12) & ( (!\signal_input[13]~input_o\ & (!\signal_input[12]~input_o\ & (!\signal_input[14]~input_o\ $ (prev_max(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[13]~input_o\,
	datab => \ALT_INV_signal_input[14]~input_o\,
	datac => ALT_INV_prev_max(14),
	datad => \ALT_INV_signal_input[12]~input_o\,
	datae => ALT_INV_prev_max(13),
	dataf => ALT_INV_prev_max(12),
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X12_Y4_N33
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \LessThan1~0_combout\ & ( (!\signal_input[11]~input_o\ & (!prev_max(11) & (!prev_max(10) $ (\signal_input[10]~input_o\)))) # (\signal_input[11]~input_o\ & (prev_max(11) & (!prev_max(10) $ (\signal_input[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000010010000011000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[11]~input_o\,
	datab => ALT_INV_prev_max(10),
	datac => \ALT_INV_signal_input[10]~input_o\,
	datad => ALT_INV_prev_max(11),
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X12_Y4_N54
\LessThan1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = ( \LessThan1~7_combout\ & ( \LessThan1~1_combout\ & ( (!\LessThan1~2_combout\ & (!\LessThan1~3_combout\ & ((!\LessThan1~9_combout\) # (\LessThan1~5_combout\)))) ) ) ) # ( !\LessThan1~7_combout\ & ( \LessThan1~1_combout\ & ( 
-- (!\LessThan1~2_combout\ & (!\LessThan1~3_combout\ & !\LessThan1~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~5_combout\,
	datab => \ALT_INV_LessThan1~2_combout\,
	datac => \ALT_INV_LessThan1~3_combout\,
	datad => \ALT_INV_LessThan1~9_combout\,
	datae => \ALT_INV_LessThan1~7_combout\,
	dataf => \ALT_INV_LessThan1~1_combout\,
	combout => \LessThan1~10_combout\);

-- Location: IOIBUF_X6_Y0_N52
\cycle_num[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(15),
	o => \cycle_num[15]~input_o\);

-- Location: LABCELL_X11_Y4_N27
\count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[0]~0_combout\ = ( !count(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_count(0),
	combout => \count[0]~0_combout\);

-- Location: IOIBUF_X10_Y0_N92
\cycle_num[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(5),
	o => \cycle_num[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\cycle_num[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(4),
	o => \cycle_num[4]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\cycle_num[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(7),
	o => \cycle_num[7]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\cycle_num[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(6),
	o => \cycle_num[6]~input_o\);

-- Location: LABCELL_X9_Y4_N48
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( count(7) & ( (\cycle_num[7]~input_o\ & (!count(6) $ (\cycle_num[6]~input_o\))) ) ) # ( !count(7) & ( (!\cycle_num[7]~input_o\ & (!count(6) $ (\cycle_num[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cycle_num[7]~input_o\,
	datab => ALT_INV_count(6),
	datac => \ALT_INV_cycle_num[6]~input_o\,
	dataf => ALT_INV_count(7),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X9_Y4_N51
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( count(7) & ( (!\cycle_num[7]~input_o\) # ((count(6) & !\cycle_num[6]~input_o\)) ) ) # ( !count(7) & ( (!\cycle_num[7]~input_o\ & (count(6) & !\cycle_num[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010101111101010101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cycle_num[7]~input_o\,
	datac => ALT_INV_count(6),
	datad => \ALT_INV_cycle_num[6]~input_o\,
	dataf => ALT_INV_count(7),
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X10_Y4_N6
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( \LessThan0~2_combout\ & ( !\LessThan0~6_combout\ & ( (!\cycle_num[5]~input_o\ & (!count(5) & ((!count(4)) # (\cycle_num[4]~input_o\)))) # (\cycle_num[5]~input_o\ & (((!count(5)) # (!count(4))) # (\cycle_num[4]~input_o\))) ) ) ) # 
-- ( !\LessThan0~2_combout\ & ( !\LessThan0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101010111000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cycle_num[5]~input_o\,
	datab => \ALT_INV_cycle_num[4]~input_o\,
	datac => ALT_INV_count(5),
	datad => ALT_INV_count(4),
	datae => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X10_Y4_N21
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( count(15) & ( !\cycle_num[15]~input_o\ ) ) # ( !count(15) & ( \cycle_num[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cycle_num[15]~input_o\,
	dataf => ALT_INV_count(15),
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X2_Y0_N75
\cycle_num[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(11),
	o => \cycle_num[11]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\cycle_num[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(10),
	o => \cycle_num[10]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\cycle_num[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(14),
	o => \cycle_num[14]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\cycle_num[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(12),
	o => \cycle_num[12]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\cycle_num[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(13),
	o => \cycle_num[13]~input_o\);

-- Location: LABCELL_X10_Y4_N57
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( \cycle_num[13]~input_o\ & ( count(14) & ( (\cycle_num[14]~input_o\ & (count(13) & (!\cycle_num[12]~input_o\ $ (count(12))))) ) ) ) # ( !\cycle_num[13]~input_o\ & ( count(14) & ( (\cycle_num[14]~input_o\ & (!count(13) & 
-- (!\cycle_num[12]~input_o\ $ (count(12))))) ) ) ) # ( \cycle_num[13]~input_o\ & ( !count(14) & ( (!\cycle_num[14]~input_o\ & (count(13) & (!\cycle_num[12]~input_o\ $ (count(12))))) ) ) ) # ( !\cycle_num[13]~input_o\ & ( !count(14) & ( 
-- (!\cycle_num[14]~input_o\ & (!count(13) & (!\cycle_num[12]~input_o\ $ (count(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cycle_num[14]~input_o\,
	datab => \ALT_INV_cycle_num[12]~input_o\,
	datac => ALT_INV_count(13),
	datad => ALT_INV_count(12),
	datae => \ALT_INV_cycle_num[13]~input_o\,
	dataf => ALT_INV_count(14),
	combout => \LessThan0~8_combout\);

-- Location: LABCELL_X10_Y4_N30
\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( \cycle_num[13]~input_o\ & ( count(14) & ( (!\cycle_num[14]~input_o\) # ((!\cycle_num[12]~input_o\ & (count(12) & count(13)))) ) ) ) # ( !\cycle_num[13]~input_o\ & ( count(14) & ( (!\cycle_num[14]~input_o\) # 
-- (((!\cycle_num[12]~input_o\ & count(12))) # (count(13))) ) ) ) # ( \cycle_num[13]~input_o\ & ( !count(14) & ( (!\cycle_num[14]~input_o\ & (!\cycle_num[12]~input_o\ & (count(12) & count(13)))) ) ) ) # ( !\cycle_num[13]~input_o\ & ( !count(14) & ( 
-- (!\cycle_num[14]~input_o\ & (((!\cycle_num[12]~input_o\ & count(12))) # (count(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101010000000000000100010101110111111111010101010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cycle_num[14]~input_o\,
	datab => \ALT_INV_cycle_num[12]~input_o\,
	datac => ALT_INV_count(12),
	datad => ALT_INV_count(13),
	datae => \ALT_INV_cycle_num[13]~input_o\,
	dataf => ALT_INV_count(14),
	combout => \LessThan0~12_combout\);

-- Location: LABCELL_X10_Y4_N27
\LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = ( \LessThan0~8_combout\ & ( !\LessThan0~12_combout\ & ( (!\cycle_num[11]~input_o\ & (!count(11) & ((!count(10)) # (\cycle_num[10]~input_o\)))) # (\cycle_num[11]~input_o\ & ((!count(10)) # ((!count(11)) # 
-- (\cycle_num[10]~input_o\)))) ) ) ) # ( !\LessThan0~8_combout\ & ( !\LessThan0~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101111110010001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(10),
	datab => \ALT_INV_cycle_num[11]~input_o\,
	datac => \ALT_INV_cycle_num[10]~input_o\,
	datad => ALT_INV_count(11),
	datae => \ALT_INV_LessThan0~8_combout\,
	dataf => \ALT_INV_LessThan0~12_combout\,
	combout => \LessThan0~13_combout\);

-- Location: IOIBUF_X10_Y0_N75
\cycle_num[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(9),
	o => \cycle_num[9]~input_o\);

-- Location: LABCELL_X10_Y4_N36
\LessThan0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~21_combout\ = ( count(13) & ( (\cycle_num[13]~input_o\ & (!\cycle_num[12]~input_o\ $ (count(12)))) ) ) # ( !count(13) & ( (!\cycle_num[13]~input_o\ & (!\cycle_num[12]~input_o\ $ (count(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cycle_num[12]~input_o\,
	datac => ALT_INV_count(12),
	datad => \ALT_INV_cycle_num[13]~input_o\,
	dataf => ALT_INV_count(13),
	combout => \LessThan0~21_combout\);

-- Location: IOIBUF_X2_Y0_N92
\cycle_num[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(8),
	o => \cycle_num[8]~input_o\);

-- Location: LABCELL_X9_Y4_N54
\LessThan0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = ( count(10) & ( count(11) & ( (\cycle_num[10]~input_o\ & (\cycle_num[11]~input_o\ & (!\cycle_num[8]~input_o\ $ (count(8))))) ) ) ) # ( !count(10) & ( count(11) & ( (!\cycle_num[10]~input_o\ & (\cycle_num[11]~input_o\ & 
-- (!\cycle_num[8]~input_o\ $ (count(8))))) ) ) ) # ( count(10) & ( !count(11) & ( (\cycle_num[10]~input_o\ & (!\cycle_num[11]~input_o\ & (!\cycle_num[8]~input_o\ $ (count(8))))) ) ) ) # ( !count(10) & ( !count(11) & ( (!\cycle_num[10]~input_o\ & 
-- (!\cycle_num[11]~input_o\ & (!\cycle_num[8]~input_o\ $ (count(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cycle_num[10]~input_o\,
	datab => \ALT_INV_cycle_num[8]~input_o\,
	datac => ALT_INV_count(8),
	datad => \ALT_INV_cycle_num[11]~input_o\,
	datae => ALT_INV_count(10),
	dataf => ALT_INV_count(11),
	combout => \LessThan0~20_combout\);

-- Location: LABCELL_X10_Y4_N42
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( \LessThan0~21_combout\ & ( \LessThan0~20_combout\ & ( (!\cycle_num[14]~input_o\ & (!count(14) & (!\cycle_num[9]~input_o\ $ (count(9))))) # (\cycle_num[14]~input_o\ & (count(14) & (!\cycle_num[9]~input_o\ $ (count(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cycle_num[14]~input_o\,
	datab => \ALT_INV_cycle_num[9]~input_o\,
	datac => ALT_INV_count(14),
	datad => ALT_INV_count(9),
	datae => \ALT_INV_LessThan0~21_combout\,
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \LessThan0~11_combout\);

-- Location: LABCELL_X10_Y4_N12
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = !\cycle_num[10]~input_o\ $ (!count(10))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cycle_num[10]~input_o\,
	datad => ALT_INV_count(10),
	combout => \LessThan0~10_combout\);

-- Location: LABCELL_X10_Y4_N3
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( count(11) & ( !\cycle_num[11]~input_o\ ) ) # ( !count(11) & ( \cycle_num[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cycle_num[11]~input_o\,
	dataf => ALT_INV_count(11),
	combout => \LessThan0~9_combout\);

-- Location: LABCELL_X10_Y4_N18
\LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = ( count(8) & ( !\cycle_num[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cycle_num[8]~input_o\,
	dataf => ALT_INV_count(8),
	combout => \LessThan0~14_combout\);

-- Location: LABCELL_X11_Y4_N36
\LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = ( \LessThan0~8_combout\ & ( \LessThan0~14_combout\ & ( (!\LessThan0~10_combout\ & (!\LessThan0~9_combout\ & ((!\cycle_num[9]~input_o\) # (count(9))))) ) ) ) # ( \LessThan0~8_combout\ & ( !\LessThan0~14_combout\ & ( 
-- (!\cycle_num[9]~input_o\ & (count(9) & (!\LessThan0~10_combout\ & !\LessThan0~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000001011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cycle_num[9]~input_o\,
	datab => ALT_INV_count(9),
	datac => \ALT_INV_LessThan0~10_combout\,
	datad => \ALT_INV_LessThan0~9_combout\,
	datae => \ALT_INV_LessThan0~8_combout\,
	dataf => \ALT_INV_LessThan0~14_combout\,
	combout => \LessThan0~15_combout\);

-- Location: IOIBUF_X6_Y0_N35
\cycle_num[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(0),
	o => \cycle_num[0]~input_o\);

-- Location: IOIBUF_X12_Y81_N52
\cycle_num[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(1),
	o => \cycle_num[1]~input_o\);

-- Location: LABCELL_X9_Y4_N0
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( count(1) ) + ( count(0) ) + ( !VCC ))
-- \Add0~22\ = CARRY(( count(1) ) + ( count(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(0),
	datad => ALT_INV_count(1),
	cin => GND,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X11_Y4_N29
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Add0~21_sumout\,
	sload => VCC,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LABCELL_X11_Y4_N42
\LessThan0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~19_combout\ = ( count(1) & ( count(0) & ( (!\cycle_num[0]~input_o\) # (!\cycle_num[1]~input_o\) ) ) ) # ( !count(1) & ( count(0) & ( (!\cycle_num[0]~input_o\ & !\cycle_num[1]~input_o\) ) ) ) # ( count(1) & ( !count(0) & ( 
-- !\cycle_num[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011000000110000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cycle_num[0]~input_o\,
	datac => \ALT_INV_cycle_num[1]~input_o\,
	datae => ALT_INV_count(1),
	dataf => ALT_INV_count(0),
	combout => \LessThan0~19_combout\);

-- Location: IOIBUF_X2_Y0_N41
\cycle_num[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(2),
	o => \cycle_num[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\cycle_num[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(3),
	o => \cycle_num[3]~input_o\);

-- Location: LABCELL_X10_Y4_N39
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( count(3) & ( (!\cycle_num[3]~input_o\) # ((count(2) & !\cycle_num[2]~input_o\)) ) ) # ( !count(3) & ( (count(2) & (!\cycle_num[2]~input_o\ & !\cycle_num[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011111111010100001111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(2),
	datac => \ALT_INV_cycle_num[2]~input_o\,
	datad => \ALT_INV_cycle_num[3]~input_o\,
	dataf => ALT_INV_count(3),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X10_Y4_N48
\LessThan0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = ( count(6) & ( count(4) & ( (\cycle_num[6]~input_o\ & (\cycle_num[4]~input_o\ & (!\cycle_num[5]~input_o\ $ (count(5))))) ) ) ) # ( !count(6) & ( count(4) & ( (!\cycle_num[6]~input_o\ & (\cycle_num[4]~input_o\ & 
-- (!\cycle_num[5]~input_o\ $ (count(5))))) ) ) ) # ( count(6) & ( !count(4) & ( (\cycle_num[6]~input_o\ & (!\cycle_num[4]~input_o\ & (!\cycle_num[5]~input_o\ $ (count(5))))) ) ) ) # ( !count(6) & ( !count(4) & ( (!\cycle_num[6]~input_o\ & 
-- (!\cycle_num[4]~input_o\ & (!\cycle_num[5]~input_o\ $ (count(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cycle_num[5]~input_o\,
	datab => \ALT_INV_cycle_num[6]~input_o\,
	datac => ALT_INV_count(5),
	datad => \ALT_INV_cycle_num[4]~input_o\,
	datae => ALT_INV_count(6),
	dataf => ALT_INV_count(4),
	combout => \LessThan0~18_combout\);

-- Location: LABCELL_X10_Y4_N0
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( count(3) & ( (\cycle_num[3]~input_o\ & (!\cycle_num[2]~input_o\ $ (count(2)))) ) ) # ( !count(3) & ( (!\cycle_num[3]~input_o\ & (!\cycle_num[2]~input_o\ $ (count(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cycle_num[3]~input_o\,
	datab => \ALT_INV_cycle_num[2]~input_o\,
	datac => ALT_INV_count(2),
	dataf => ALT_INV_count(3),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X11_Y4_N30
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~18_combout\ & ( \LessThan0~3_combout\ & ( (!\LessThan0~19_combout\ & (\LessThan0~4_combout\ & (!\cycle_num[7]~input_o\ $ (count(7))))) # (\LessThan0~19_combout\ & (!\cycle_num[7]~input_o\ $ (((count(7)))))) ) ) ) # ( 
-- \LessThan0~18_combout\ & ( !\LessThan0~3_combout\ & ( (\LessThan0~4_combout\ & (!\cycle_num[7]~input_o\ $ (count(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000010100000000000000000010101000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cycle_num[7]~input_o\,
	datab => \ALT_INV_LessThan0~19_combout\,
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => ALT_INV_count(7),
	datae => \ALT_INV_LessThan0~18_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X11_Y4_N48
\LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = ( \LessThan0~15_combout\ & ( \LessThan0~5_combout\ & ( !\LessThan0~1_combout\ ) ) ) # ( !\LessThan0~15_combout\ & ( \LessThan0~5_combout\ & ( (!\LessThan0~1_combout\ & ((!\LessThan0~13_combout\) # (\LessThan0~11_combout\))) ) ) ) 
-- # ( \LessThan0~15_combout\ & ( !\LessThan0~5_combout\ & ( !\LessThan0~1_combout\ ) ) ) # ( !\LessThan0~15_combout\ & ( !\LessThan0~5_combout\ & ( (!\LessThan0~1_combout\ & ((!\LessThan0~13_combout\) # ((!\LessThan0~7_combout\ & \LessThan0~11_combout\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001000110011001100110011000000110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~7_combout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~13_combout\,
	datad => \ALT_INV_LessThan0~11_combout\,
	datae => \ALT_INV_LessThan0~15_combout\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \LessThan0~16_combout\);

-- Location: LABCELL_X11_Y4_N12
\LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = ( !\LessThan0~0_combout\ & ( !\LessThan0~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_LessThan0~16_combout\,
	combout => \LessThan0~17_combout\);

-- Location: FF_X10_Y4_N11
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \count[0]~0_combout\,
	sload => VCC,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LABCELL_X9_Y4_N3
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( count(2) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~30\ = CARRY(( count(2) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(2),
	cin => \Add0~22\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X10_Y4_N35
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Add0~29_sumout\,
	sload => VCC,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LABCELL_X9_Y4_N6
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( count(3) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( count(3) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(3),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X9_Y4_N8
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LABCELL_X9_Y4_N9
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( count(4) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~18\ = CARRY(( count(4) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(4),
	cin => \Add0~26\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X9_Y4_N11
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LABCELL_X9_Y4_N12
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( count(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( count(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(5),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X9_Y4_N14
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LABCELL_X9_Y4_N15
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( count(6) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( count(6) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(6),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X9_Y4_N17
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LABCELL_X9_Y4_N18
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( count(7) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( count(7) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(7),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X9_Y4_N20
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LABCELL_X9_Y4_N21
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( count(8) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~58\ = CARRY(( count(8) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(8),
	cin => \Add0~6\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X9_Y4_N23
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LABCELL_X9_Y4_N24
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( count(9) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~50\ = CARRY(( count(9) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(9),
	cin => \Add0~58\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X9_Y4_N26
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LABCELL_X9_Y4_N27
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( count(10) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( count(10) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(10),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X9_Y4_N29
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LABCELL_X9_Y4_N30
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( count(11) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~46\ = CARRY(( count(11) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(11),
	cin => \Add0~54\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X9_Y4_N32
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LABCELL_X9_Y4_N33
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( count(12) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( count(12) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(12),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X10_Y4_N53
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Add0~41_sumout\,
	sload => VCC,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LABCELL_X9_Y4_N36
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( count(13) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( count(13) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(13),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X10_Y4_N17
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Add0~37_sumout\,
	sload => VCC,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LABCELL_X9_Y4_N39
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( count(14) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( count(14) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(14),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X9_Y4_N41
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LABCELL_X9_Y4_N42
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( count(15) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(15),
	cin => \Add0~34\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X9_Y4_N44
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	ena => \LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LABCELL_X10_Y4_N15
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( count(15) & ( !\cycle_num[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cycle_num[15]~input_o\,
	dataf => ALT_INV_count(15),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X11_Y4_N0
\LessThan1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~11_combout\ = ( prev_max(13) & ( prev_max(12) & ( (\signal_input[14]~input_o\ & !prev_max(14)) ) ) ) # ( !prev_max(13) & ( prev_max(12) & ( (!\signal_input[13]~input_o\ & (\signal_input[14]~input_o\ & !prev_max(14))) # 
-- (\signal_input[13]~input_o\ & ((!prev_max(14)) # (\signal_input[14]~input_o\))) ) ) ) # ( prev_max(13) & ( !prev_max(12) & ( (!\signal_input[14]~input_o\ & (\signal_input[13]~input_o\ & (\signal_input[12]~input_o\ & !prev_max(14)))) # 
-- (\signal_input[14]~input_o\ & ((!prev_max(14)) # ((\signal_input[13]~input_o\ & \signal_input[12]~input_o\)))) ) ) ) # ( !prev_max(13) & ( !prev_max(12) & ( (!\signal_input[14]~input_o\ & (!prev_max(14) & ((\signal_input[12]~input_o\) # 
-- (\signal_input[13]~input_o\)))) # (\signal_input[14]~input_o\ & (((!prev_max(14)) # (\signal_input[12]~input_o\)) # (\signal_input[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100010011001101110000000101110111000100010011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[13]~input_o\,
	datab => \ALT_INV_signal_input[14]~input_o\,
	datac => \ALT_INV_signal_input[12]~input_o\,
	datad => ALT_INV_prev_max(14),
	datae => ALT_INV_prev_max(13),
	dataf => ALT_INV_prev_max(12),
	combout => \LessThan1~11_combout\);

-- Location: LABCELL_X12_Y4_N0
\LessThan1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~12_combout\ = ( \LessThan1~0_combout\ & ( !\LessThan1~11_combout\ & ( (!prev_max(11) & (!\signal_input[11]~input_o\ & ((!\signal_input[10]~input_o\) # (prev_max(10))))) # (prev_max(11) & ((!\signal_input[10]~input_o\) # 
-- ((!\signal_input[11]~input_o\) # (prev_max(10))))) ) ) ) # ( !\LessThan1~0_combout\ & ( !\LessThan1~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110101001111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_max(11),
	datab => \ALT_INV_signal_input[10]~input_o\,
	datac => \ALT_INV_signal_input[11]~input_o\,
	datad => ALT_INV_prev_max(10),
	datae => \ALT_INV_LessThan1~0_combout\,
	dataf => \ALT_INV_LessThan1~11_combout\,
	combout => \LessThan1~12_combout\);

-- Location: LABCELL_X12_Y4_N36
\LessThan1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~13_combout\ = ( \LessThan1~12_combout\ & ( \LessThan1~1_combout\ & ( (!prev_max(9) & (!\signal_input[9]~input_o\ & ((!\signal_input[8]~input_o\) # (prev_max(8))))) # (prev_max(9) & ((!\signal_input[8]~input_o\) # ((!\signal_input[9]~input_o\) # 
-- (prev_max(8))))) ) ) ) # ( \LessThan1~12_combout\ & ( !\LessThan1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001011111100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[8]~input_o\,
	datab => ALT_INV_prev_max(9),
	datac => ALT_INV_prev_max(8),
	datad => \ALT_INV_signal_input[9]~input_o\,
	datae => \ALT_INV_LessThan1~12_combout\,
	dataf => \ALT_INV_LessThan1~1_combout\,
	combout => \LessThan1~13_combout\);

-- Location: LABCELL_X12_Y4_N6
\prev_max[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_max[0]~0_combout\ = ( \LessThan1~13_combout\ & ( !\LessThan0~16_combout\ & ( (!\LessThan0~0_combout\ & ((!\signal_input[15]~input_o\ & (!prev_max(15) & \LessThan1~10_combout\)) # (\signal_input[15]~input_o\ & ((!prev_max(15)) # 
-- (\LessThan1~10_combout\))))) ) ) ) # ( !\LessThan1~13_combout\ & ( !\LessThan0~16_combout\ & ( (!\LessThan0~0_combout\ & ((!prev_max(15)) # (\signal_input[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100000000010011010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[15]~input_o\,
	datab => ALT_INV_prev_max(15),
	datac => \ALT_INV_LessThan1~10_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => \ALT_INV_LessThan1~13_combout\,
	dataf => \ALT_INV_LessThan0~16_combout\,
	combout => \prev_max[0]~0_combout\);

-- Location: FF_X12_Y4_N47
\prev_max[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \signal_input[0]~input_o\,
	sload => VCC,
	ena => \prev_max[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_max(0));

-- Location: LABCELL_X13_Y3_N33
\prev_min[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[0]~1_combout\ = ( !\signal_input[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_signal_input[0]~input_o\,
	combout => \prev_min[0]~1_combout\);

-- Location: LABCELL_X13_Y3_N36
\prev_min[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[9]~10_combout\ = ( !\signal_input[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_signal_input[9]~input_o\,
	combout => \prev_min[9]~10_combout\);

-- Location: FF_X12_Y3_N29
\prev_min[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \prev_min[9]~10_combout\,
	sload => VCC,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(9));

-- Location: LABCELL_X13_Y3_N42
\prev_min[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[8]~9_combout\ = ( !\signal_input[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_input[8]~input_o\,
	combout => \prev_min[8]~9_combout\);

-- Location: FF_X12_Y3_N20
\prev_min[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \prev_min[8]~9_combout\,
	sload => VCC,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(8));

-- Location: LABCELL_X11_Y3_N57
\prev_min[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[11]~12_combout\ = !\signal_input[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[11]~input_o\,
	combout => \prev_min[11]~12_combout\);

-- Location: FF_X12_Y3_N11
\prev_min[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \prev_min[11]~12_combout\,
	sload => VCC,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(11));

-- Location: LABCELL_X12_Y3_N39
\prev_min[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[10]~11_combout\ = ( !\signal_input[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_input[10]~input_o\,
	combout => \prev_min[10]~11_combout\);

-- Location: FF_X12_Y3_N41
\prev_min[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \prev_min[10]~11_combout\,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(10));

-- Location: LABCELL_X13_Y3_N9
\prev_min[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[14]~15_combout\ = ( !\signal_input[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_input[14]~input_o\,
	combout => \prev_min[14]~15_combout\);

-- Location: FF_X12_Y3_N14
\prev_min[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \prev_min[14]~15_combout\,
	sload => VCC,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(14));

-- Location: LABCELL_X11_Y3_N42
\prev_min[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[13]~14_combout\ = ( !\signal_input[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_signal_input[13]~input_o\,
	combout => \prev_min[13]~14_combout\);

-- Location: FF_X12_Y3_N5
\prev_min[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \prev_min[13]~14_combout\,
	sload => VCC,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(13));

-- Location: LABCELL_X11_Y3_N12
\prev_min[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[12]~13_combout\ = ( !\signal_input[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_input[12]~input_o\,
	combout => \prev_min[12]~13_combout\);

-- Location: FF_X12_Y3_N32
\prev_min[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \prev_min[12]~13_combout\,
	sload => VCC,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(12));

-- Location: LABCELL_X12_Y3_N54
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( prev_min(13) & ( prev_min(12) & ( (!\signal_input[13]~input_o\ & (!\signal_input[12]~input_o\ & (!\signal_input[14]~input_o\ $ (!prev_min(14))))) ) ) ) # ( !prev_min(13) & ( prev_min(12) & ( (\signal_input[13]~input_o\ & 
-- (!\signal_input[12]~input_o\ & (!\signal_input[14]~input_o\ $ (!prev_min(14))))) ) ) ) # ( prev_min(13) & ( !prev_min(12) & ( (!\signal_input[13]~input_o\ & (\signal_input[12]~input_o\ & (!\signal_input[14]~input_o\ $ (!prev_min(14))))) ) ) ) # ( 
-- !prev_min(13) & ( !prev_min(12) & ( (\signal_input[13]~input_o\ & (\signal_input[12]~input_o\ & (!\signal_input[14]~input_o\ $ (!prev_min(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000100000100000010000010000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[13]~input_o\,
	datab => \ALT_INV_signal_input[14]~input_o\,
	datac => \ALT_INV_signal_input[12]~input_o\,
	datad => ALT_INV_prev_min(14),
	datae => ALT_INV_prev_min(13),
	dataf => ALT_INV_prev_min(12),
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X12_Y3_N33
\LessThan2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~11_combout\ = ( prev_min(13) & ( prev_min(12) & ( (!\signal_input[14]~input_o\ & !prev_min(14)) ) ) ) # ( !prev_min(13) & ( prev_min(12) & ( (!\signal_input[13]~input_o\ & ((!\signal_input[14]~input_o\) # (!prev_min(14)))) # 
-- (\signal_input[13]~input_o\ & (!\signal_input[14]~input_o\ & !prev_min(14))) ) ) ) # ( prev_min(13) & ( !prev_min(12) & ( (!\signal_input[14]~input_o\ & ((!prev_min(14)) # ((!\signal_input[13]~input_o\ & !\signal_input[12]~input_o\)))) # 
-- (\signal_input[14]~input_o\ & (!\signal_input[13]~input_o\ & (!prev_min(14) & !\signal_input[12]~input_o\))) ) ) ) # ( !prev_min(13) & ( !prev_min(12) & ( (!\signal_input[14]~input_o\ & ((!\signal_input[13]~input_o\) # ((!prev_min(14)) # 
-- (!\signal_input[12]~input_o\)))) # (\signal_input[14]~input_o\ & (!prev_min(14) & ((!\signal_input[13]~input_o\) # (!\signal_input[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011101000111010001100000011101000111010001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[13]~input_o\,
	datab => \ALT_INV_signal_input[14]~input_o\,
	datac => ALT_INV_prev_min(14),
	datad => \ALT_INV_signal_input[12]~input_o\,
	datae => ALT_INV_prev_min(13),
	dataf => ALT_INV_prev_min(12),
	combout => \LessThan2~11_combout\);

-- Location: LABCELL_X12_Y3_N45
\LessThan2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~12_combout\ = ( \LessThan2~0_combout\ & ( !\LessThan2~11_combout\ & ( (!\signal_input[11]~input_o\ & (prev_min(11) & ((\signal_input[10]~input_o\) # (prev_min(10))))) # (\signal_input[11]~input_o\ & (((\signal_input[10]~input_o\) # 
-- (prev_min(10))) # (prev_min(11)))) ) ) ) # ( !\LessThan2~0_combout\ & ( !\LessThan2~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000101110111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[11]~input_o\,
	datab => ALT_INV_prev_min(11),
	datac => ALT_INV_prev_min(10),
	datad => \ALT_INV_signal_input[10]~input_o\,
	datae => \ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_LessThan2~11_combout\,
	combout => \LessThan2~12_combout\);

-- Location: LABCELL_X12_Y3_N24
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( prev_min(11) & ( (!\signal_input[11]~input_o\ & (\LessThan2~0_combout\ & (!prev_min(10) $ (!\signal_input[10]~input_o\)))) ) ) # ( !prev_min(11) & ( (\signal_input[11]~input_o\ & (\LessThan2~0_combout\ & (!prev_min(10) $ 
-- (!\signal_input[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000001010000000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[11]~input_o\,
	datab => ALT_INV_prev_min(10),
	datac => \ALT_INV_signal_input[10]~input_o\,
	datad => \ALT_INV_LessThan2~0_combout\,
	dataf => ALT_INV_prev_min(11),
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X12_Y3_N48
\LessThan2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~13_combout\ = ( \LessThan2~12_combout\ & ( \LessThan2~1_combout\ & ( (!prev_min(9) & (\signal_input[9]~input_o\ & ((prev_min(8)) # (\signal_input[8]~input_o\)))) # (prev_min(9) & (((\signal_input[9]~input_o\) # (prev_min(8))) # 
-- (\signal_input[8]~input_o\))) ) ) ) # ( \LessThan2~12_combout\ & ( !\LessThan2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_min(9),
	datab => \ALT_INV_signal_input[8]~input_o\,
	datac => ALT_INV_prev_min(8),
	datad => \ALT_INV_signal_input[9]~input_o\,
	datae => \ALT_INV_LessThan2~12_combout\,
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \LessThan2~13_combout\);

-- Location: LABCELL_X13_Y3_N0
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( \signal_input[9]~input_o\ & ( prev_min(9) ) ) # ( !\signal_input[9]~input_o\ & ( !prev_min(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_signal_input[9]~input_o\,
	dataf => ALT_INV_prev_min(9),
	combout => \LessThan2~2_combout\);

-- Location: LABCELL_X12_Y3_N12
\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ( prev_min(8) & ( \signal_input[8]~input_o\ ) ) # ( !prev_min(8) & ( !\signal_input[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_signal_input[8]~input_o\,
	dataf => ALT_INV_prev_min(8),
	combout => \LessThan2~3_combout\);

-- Location: LABCELL_X11_Y3_N18
\prev_min[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[5]~6_combout\ = ( !\signal_input[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_input[5]~input_o\,
	combout => \prev_min[5]~6_combout\);

-- Location: FF_X12_Y3_N23
\prev_min[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \prev_min[5]~6_combout\,
	sload => VCC,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(5));

-- Location: LABCELL_X12_Y3_N27
\prev_min[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[4]~5_combout\ = ( !\signal_input[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_input[4]~input_o\,
	combout => \prev_min[4]~5_combout\);

-- Location: FF_X12_Y3_N59
\prev_min[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \prev_min[4]~5_combout\,
	sload => VCC,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(4));

-- Location: LABCELL_X11_Y3_N54
\prev_min[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[7]~8_combout\ = ( !\signal_input[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_input[7]~input_o\,
	combout => \prev_min[7]~8_combout\);

-- Location: FF_X11_Y3_N56
\prev_min[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \prev_min[7]~8_combout\,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(7));

-- Location: LABCELL_X11_Y3_N51
\prev_min[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[6]~7_combout\ = ( !\signal_input[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_input[6]~input_o\,
	combout => \prev_min[6]~7_combout\);

-- Location: FF_X11_Y3_N53
\prev_min[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \prev_min[6]~7_combout\,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(6));

-- Location: LABCELL_X11_Y3_N24
\LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ( prev_min(7) & ( prev_min(6) & ( (!\signal_input[7]~input_o\ & !\signal_input[6]~input_o\) ) ) ) # ( !prev_min(7) & ( prev_min(6) & ( (\signal_input[7]~input_o\ & !\signal_input[6]~input_o\) ) ) ) # ( prev_min(7) & ( !prev_min(6) 
-- & ( (!\signal_input[7]~input_o\ & \signal_input[6]~input_o\) ) ) ) # ( !prev_min(7) & ( !prev_min(6) & ( (\signal_input[7]~input_o\ & \signal_input[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000110000001100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_signal_input[7]~input_o\,
	datac => \ALT_INV_signal_input[6]~input_o\,
	datae => ALT_INV_prev_min(7),
	dataf => ALT_INV_prev_min(6),
	combout => \LessThan2~6_combout\);

-- Location: LABCELL_X12_Y3_N18
\LessThan2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = ( \LessThan2~6_combout\ & ( (!\signal_input[5]~input_o\ & (prev_min(5) & (!\signal_input[4]~input_o\ $ (!prev_min(4))))) # (\signal_input[5]~input_o\ & (!prev_min(5) & (!\signal_input[4]~input_o\ $ (!prev_min(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[5]~input_o\,
	datab => \ALT_INV_signal_input[4]~input_o\,
	datac => ALT_INV_prev_min(5),
	datad => ALT_INV_prev_min(4),
	dataf => \ALT_INV_LessThan2~6_combout\,
	combout => \LessThan2~7_combout\);

-- Location: LABCELL_X13_Y3_N15
\prev_min[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[3]~4_combout\ = ( !\signal_input[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_input[3]~input_o\,
	combout => \prev_min[3]~4_combout\);

-- Location: FF_X12_Y3_N35
\prev_min[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \prev_min[3]~4_combout\,
	sload => VCC,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(3));

-- Location: LABCELL_X12_Y3_N21
\prev_min[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[2]~3_combout\ = !\signal_input[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_signal_input[2]~input_o\,
	combout => \prev_min[2]~3_combout\);

-- Location: FF_X12_Y3_N53
\prev_min[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \prev_min[2]~3_combout\,
	sload => VCC,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(2));

-- Location: LABCELL_X11_Y3_N6
\prev_min[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[1]~2_combout\ = ( !\signal_input[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_input[1]~input_o\,
	combout => \prev_min[1]~2_combout\);

-- Location: FF_X12_Y3_N44
\prev_min[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \prev_min[1]~2_combout\,
	sload => VCC,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(1));

-- Location: LABCELL_X12_Y3_N15
\LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ( prev_min(1) & ( (!\signal_input[0]~input_o\ & (!\signal_input[1]~input_o\ & !prev_min(0))) ) ) # ( !prev_min(1) & ( (!\signal_input[1]~input_o\) # ((!\signal_input[0]~input_o\ & !prev_min(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011110000111110101111000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[0]~input_o\,
	datac => \ALT_INV_signal_input[1]~input_o\,
	datad => ALT_INV_prev_min(0),
	dataf => ALT_INV_prev_min(1),
	combout => \LessThan2~4_combout\);

-- Location: LABCELL_X12_Y3_N36
\LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ( \LessThan2~4_combout\ & ( (!prev_min(3) & ((!\signal_input[3]~input_o\) # ((!prev_min(2)) # (!\signal_input[2]~input_o\)))) # (prev_min(3) & (!\signal_input[3]~input_o\ & ((!prev_min(2)) # (!\signal_input[2]~input_o\)))) ) ) # ( 
-- !\LessThan2~4_combout\ & ( (!prev_min(3) & ((!\signal_input[3]~input_o\) # ((!prev_min(2) & !\signal_input[2]~input_o\)))) # (prev_min(3) & (!\signal_input[3]~input_o\ & (!prev_min(2) & !\signal_input[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111010001000100011101110111010001110111011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_min(3),
	datab => \ALT_INV_signal_input[3]~input_o\,
	datac => ALT_INV_prev_min(2),
	datad => \ALT_INV_signal_input[2]~input_o\,
	dataf => \ALT_INV_LessThan2~4_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LABCELL_X11_Y3_N21
\LessThan2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = ( prev_min(6) & ( (!\signal_input[7]~input_o\ & !prev_min(7)) ) ) # ( !prev_min(6) & ( (!\signal_input[6]~input_o\ & ((!\signal_input[7]~input_o\) # (!prev_min(7)))) # (\signal_input[6]~input_o\ & (!\signal_input[7]~input_o\ & 
-- !prev_min(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_input[6]~input_o\,
	datac => \ALT_INV_signal_input[7]~input_o\,
	datad => ALT_INV_prev_min(7),
	dataf => ALT_INV_prev_min(6),
	combout => \LessThan2~8_combout\);

-- Location: LABCELL_X11_Y3_N36
\LessThan2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = ( !\LessThan2~8_combout\ & ( \LessThan2~6_combout\ & ( (!prev_min(5) & (\signal_input[5]~input_o\ & ((prev_min(4)) # (\signal_input[4]~input_o\)))) # (prev_min(5) & (((prev_min(4)) # (\signal_input[5]~input_o\)) # 
-- (\signal_input[4]~input_o\))) ) ) ) # ( !\LessThan2~8_combout\ & ( !\LessThan2~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000010111010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_min(5),
	datab => \ALT_INV_signal_input[4]~input_o\,
	datac => \ALT_INV_signal_input[5]~input_o\,
	datad => ALT_INV_prev_min(4),
	datae => \ALT_INV_LessThan2~8_combout\,
	dataf => \ALT_INV_LessThan2~6_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LABCELL_X12_Y3_N6
\LessThan2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~10_combout\ = ( \LessThan2~5_combout\ & ( \LessThan2~9_combout\ & ( (!\LessThan2~2_combout\ & (!\LessThan2~3_combout\ & (\LessThan2~1_combout\ & \LessThan2~7_combout\))) ) ) ) # ( \LessThan2~5_combout\ & ( !\LessThan2~9_combout\ & ( 
-- (!\LessThan2~2_combout\ & (!\LessThan2~3_combout\ & \LessThan2~1_combout\)) ) ) ) # ( !\LessThan2~5_combout\ & ( !\LessThan2~9_combout\ & ( (!\LessThan2~2_combout\ & (!\LessThan2~3_combout\ & \LessThan2~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~2_combout\,
	datab => \ALT_INV_LessThan2~3_combout\,
	datac => \ALT_INV_LessThan2~1_combout\,
	datad => \ALT_INV_LessThan2~7_combout\,
	datae => \ALT_INV_LessThan2~5_combout\,
	dataf => \ALT_INV_LessThan2~9_combout\,
	combout => \LessThan2~10_combout\);

-- Location: LABCELL_X11_Y3_N3
\prev_min[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[15]~16_combout\ = ( !\signal_input[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_signal_input[15]~input_o\,
	combout => \prev_min[15]~16_combout\);

-- Location: FF_X12_Y3_N1
\prev_min[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \prev_min[15]~16_combout\,
	sload => VCC,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(15));

-- Location: LABCELL_X12_Y3_N0
\prev_min[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_min[0]~0_combout\ = ( prev_min(15) & ( !\LessThan0~16_combout\ & ( (!\LessThan0~0_combout\ & (!\signal_input[15]~input_o\ & ((!\LessThan2~13_combout\) # (\LessThan2~10_combout\)))) ) ) ) # ( !prev_min(15) & ( !\LessThan0~16_combout\ & ( 
-- (!\LessThan0~0_combout\ & ((!\signal_input[15]~input_o\) # ((!\LessThan2~13_combout\) # (\LessThan2~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101010100000001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_signal_input[15]~input_o\,
	datac => \ALT_INV_LessThan2~13_combout\,
	datad => \ALT_INV_LessThan2~10_combout\,
	datae => ALT_INV_prev_min(15),
	dataf => \ALT_INV_LessThan0~16_combout\,
	combout => \prev_min[0]~0_combout\);

-- Location: FF_X12_Y3_N47
\prev_min[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \prev_min[0]~1_combout\,
	sload => VCC,
	ena => \prev_min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_min(0));

-- Location: LABCELL_X17_Y67_N3
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


