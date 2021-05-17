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

-- DATE "05/17/2021 19:23:23"

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

ENTITY 	fir IS
    PORT (
	clk : IN std_logic;
	sample_in : IN std_logic_vector(15 DOWNTO 0);
	acc_val : OUT std_logic_vector(15 DOWNTO 0)
	);
END fir;

-- Design Ports Information
-- acc_val[0]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[1]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[3]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[4]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[5]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[6]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[7]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[8]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[9]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[10]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[11]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[12]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[13]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[14]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[15]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[2]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[3]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[4]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[5]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[6]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[7]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[8]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[9]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[10]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[11]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[12]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[13]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[14]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[15]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fir IS
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
SIGNAL ww_sample_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_acc_val : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sample_in[0]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][0]~q\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \sample_in[1]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][1]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[0][1]~q\ : std_logic;
SIGNAL \prev_val_2[1]~feeder_combout\ : std_logic;
SIGNAL \prev_val_2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \sum[1]~feeder_combout\ : std_logic;
SIGNAL \sum[2]~DUPLICATE_q\ : std_logic;
SIGNAL \sample_in[2]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][2]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[1][2]~q\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \accumulate_sample[0][2]~q\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \prev_val_3[0]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][2]~q\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \sum[2]~feeder_combout\ : std_logic;
SIGNAL \prev_val_3[1]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][3]~q\ : std_logic;
SIGNAL \sample_in[3]~input_o\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \accumulate_sample[0][3]~q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][3]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[1][3]~q\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \prev_val_3[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \sum[3]~feeder_combout\ : std_logic;
SIGNAL \sample_in[4]~input_o\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \accumulate_sample[0][4]~q\ : std_logic;
SIGNAL \prev_val_1[4]~feeder_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][4]~q\ : std_logic;
SIGNAL \sum[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \prev_val_3[2]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][4]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][4]~q\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \prev_val_3[3]~feeder_combout\ : std_logic;
SIGNAL \prev_val_3[3]~DUPLICATE_q\ : std_logic;
SIGNAL \accumulate_sample[3][5]~q\ : std_logic;
SIGNAL \sample_in[5]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][5]~q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \accumulate_sample[0][5]~q\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \sample_in[6]~input_o\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \accumulate_sample[0][6]~q\ : std_logic;
SIGNAL \sum[6]~DUPLICATE_q\ : std_logic;
SIGNAL \prev_val_1[6]~feeder_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][6]~q\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \accumulate_sample[3][6]~q\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \accumulate_sample[3][7]~q\ : std_logic;
SIGNAL \sample_in[7]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][7]~q\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \accumulate_sample[0][7]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[0][7]~q\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \prev_val_3[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \sample_in[8]~input_o\ : std_logic;
SIGNAL \prev_val_1[8]~feeder_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][8]~q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \accumulate_sample[0][8]~q\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \accumulate_sample[3][8]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][8]~q\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \accumulate_sample[3][9]~q\ : std_logic;
SIGNAL \sample_in[9]~input_o\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \accumulate_sample[0][9]~q\ : std_logic;
SIGNAL \prev_val_1[9]~feeder_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][9]~q\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \accumulate_sample[3][10]~q\ : std_logic;
SIGNAL \sample_in[10]~input_o\ : std_logic;
SIGNAL \prev_val_1[10]~feeder_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][10]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[1][10]~q\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \accumulate_sample[0][10]~q\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \prev_val_2[9]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][11]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][11]~q\ : std_logic;
SIGNAL \sample_in[11]~input_o\ : std_logic;
SIGNAL \prev_val_1[11]~feeder_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][11]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[1][11]~q\ : std_logic;
SIGNAL \sum[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \accumulate_sample[0][11]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[0][11]~q\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \accumulate_sample[3][12]~q\ : std_logic;
SIGNAL \sample_in[12]~input_o\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \accumulate_sample[0][12]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[0][12]~q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][12]~q\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \sample_in[13]~input_o\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][13]~q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \accumulate_sample[0][13]~q\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \accumulate_sample[3][13]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][13]~q\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \accumulate_sample[3][14]~q\ : std_logic;
SIGNAL \sample_in[14]~input_o\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \accumulate_sample[0][14]~q\ : std_logic;
SIGNAL \prev_val_1[14]~feeder_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][14]~q\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~49_sumout\ : std_logic;
SIGNAL \accumulate_sample[3][15]~q\ : std_logic;
SIGNAL \sample_in[15]~input_o\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \accumulate_sample[0][15]~q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][15]~q\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~53_sumout\ : std_logic;
SIGNAL sum : std_logic_vector(15 DOWNTO 0);
SIGNAL prev_val_2 : std_logic_vector(15 DOWNTO 0);
SIGNAL prev_val_3 : std_logic_vector(15 DOWNTO 0);
SIGNAL prev_val_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_prev_val_3[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_prev_val_3[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_prev_val_2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sum[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sum[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sum[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sum[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sample_in[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[0]~input_o\ : std_logic;
SIGNAL ALT_INV_prev_val_1 : std_logic_vector(15 DOWNTO 2);
SIGNAL \ALT_INV_accumulate_sample[0][15]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][15]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][14]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][14]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][13]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][13]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][12]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][12]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][11]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][11]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][10]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][8]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][5]~q\ : std_logic;
SIGNAL ALT_INV_prev_val_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_accumulate_sample[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][3]~q\ : std_logic;
SIGNAL ALT_INV_prev_val_3 : std_logic_vector(12 DOWNTO 1);
SIGNAL \ALT_INV_accumulate_sample[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[3][15]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[3][14]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[3][13]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[3][12]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[3][11]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][0]~q\ : std_logic;
SIGNAL ALT_INV_sum : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_sample_in <= sample_in;
acc_val <= ww_acc_val;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_prev_val_3[4]~DUPLICATE_q\ <= NOT \prev_val_3[4]~DUPLICATE_q\;
\ALT_INV_prev_val_3[0]~DUPLICATE_q\ <= NOT \prev_val_3[0]~DUPLICATE_q\;
\ALT_INV_prev_val_2[1]~DUPLICATE_q\ <= NOT \prev_val_2[1]~DUPLICATE_q\;
\ALT_INV_sum[11]~DUPLICATE_q\ <= NOT \sum[11]~DUPLICATE_q\;
\ALT_INV_sum[6]~DUPLICATE_q\ <= NOT \sum[6]~DUPLICATE_q\;
\ALT_INV_sum[4]~DUPLICATE_q\ <= NOT \sum[4]~DUPLICATE_q\;
\ALT_INV_sum[2]~DUPLICATE_q\ <= NOT \sum[2]~DUPLICATE_q\;
\ALT_INV_sample_in[15]~input_o\ <= NOT \sample_in[15]~input_o\;
\ALT_INV_sample_in[14]~input_o\ <= NOT \sample_in[14]~input_o\;
\ALT_INV_sample_in[13]~input_o\ <= NOT \sample_in[13]~input_o\;
\ALT_INV_sample_in[12]~input_o\ <= NOT \sample_in[12]~input_o\;
\ALT_INV_sample_in[11]~input_o\ <= NOT \sample_in[11]~input_o\;
\ALT_INV_sample_in[10]~input_o\ <= NOT \sample_in[10]~input_o\;
\ALT_INV_sample_in[9]~input_o\ <= NOT \sample_in[9]~input_o\;
\ALT_INV_sample_in[8]~input_o\ <= NOT \sample_in[8]~input_o\;
\ALT_INV_sample_in[7]~input_o\ <= NOT \sample_in[7]~input_o\;
\ALT_INV_sample_in[6]~input_o\ <= NOT \sample_in[6]~input_o\;
\ALT_INV_sample_in[5]~input_o\ <= NOT \sample_in[5]~input_o\;
\ALT_INV_sample_in[4]~input_o\ <= NOT \sample_in[4]~input_o\;
\ALT_INV_sample_in[3]~input_o\ <= NOT \sample_in[3]~input_o\;
\ALT_INV_sample_in[2]~input_o\ <= NOT \sample_in[2]~input_o\;
\ALT_INV_sample_in[1]~input_o\ <= NOT \sample_in[1]~input_o\;
\ALT_INV_sample_in[0]~input_o\ <= NOT \sample_in[0]~input_o\;
ALT_INV_prev_val_1(15) <= NOT prev_val_1(15);
ALT_INV_prev_val_1(14) <= NOT prev_val_1(14);
ALT_INV_prev_val_1(13) <= NOT prev_val_1(13);
ALT_INV_prev_val_1(12) <= NOT prev_val_1(12);
ALT_INV_prev_val_1(11) <= NOT prev_val_1(11);
ALT_INV_prev_val_1(10) <= NOT prev_val_1(10);
ALT_INV_prev_val_1(9) <= NOT prev_val_1(9);
ALT_INV_prev_val_1(8) <= NOT prev_val_1(8);
ALT_INV_prev_val_1(7) <= NOT prev_val_1(7);
ALT_INV_prev_val_1(6) <= NOT prev_val_1(6);
ALT_INV_prev_val_1(5) <= NOT prev_val_1(5);
ALT_INV_prev_val_1(4) <= NOT prev_val_1(4);
ALT_INV_prev_val_1(3) <= NOT prev_val_1(3);
ALT_INV_prev_val_1(2) <= NOT prev_val_1(2);
\ALT_INV_accumulate_sample[0][15]~q\ <= NOT \accumulate_sample[0][15]~q\;
\ALT_INV_accumulate_sample[1][15]~q\ <= NOT \accumulate_sample[1][15]~q\;
\ALT_INV_accumulate_sample[0][14]~q\ <= NOT \accumulate_sample[0][14]~q\;
\ALT_INV_accumulate_sample[1][14]~q\ <= NOT \accumulate_sample[1][14]~q\;
\ALT_INV_accumulate_sample[0][13]~q\ <= NOT \accumulate_sample[0][13]~q\;
\ALT_INV_accumulate_sample[1][13]~q\ <= NOT \accumulate_sample[1][13]~q\;
\ALT_INV_accumulate_sample[0][12]~q\ <= NOT \accumulate_sample[0][12]~q\;
\ALT_INV_accumulate_sample[1][12]~q\ <= NOT \accumulate_sample[1][12]~q\;
\ALT_INV_accumulate_sample[0][11]~q\ <= NOT \accumulate_sample[0][11]~q\;
\ALT_INV_accumulate_sample[1][11]~q\ <= NOT \accumulate_sample[1][11]~q\;
\ALT_INV_accumulate_sample[0][10]~q\ <= NOT \accumulate_sample[0][10]~q\;
\ALT_INV_accumulate_sample[1][10]~q\ <= NOT \accumulate_sample[1][10]~q\;
\ALT_INV_accumulate_sample[0][9]~q\ <= NOT \accumulate_sample[0][9]~q\;
\ALT_INV_accumulate_sample[1][9]~q\ <= NOT \accumulate_sample[1][9]~q\;
\ALT_INV_accumulate_sample[0][8]~q\ <= NOT \accumulate_sample[0][8]~q\;
\ALT_INV_accumulate_sample[1][8]~q\ <= NOT \accumulate_sample[1][8]~q\;
\ALT_INV_accumulate_sample[0][7]~q\ <= NOT \accumulate_sample[0][7]~q\;
\ALT_INV_accumulate_sample[1][7]~q\ <= NOT \accumulate_sample[1][7]~q\;
\ALT_INV_accumulate_sample[0][6]~q\ <= NOT \accumulate_sample[0][6]~q\;
\ALT_INV_accumulate_sample[1][6]~q\ <= NOT \accumulate_sample[1][6]~q\;
\ALT_INV_accumulate_sample[0][5]~q\ <= NOT \accumulate_sample[0][5]~q\;
\ALT_INV_accumulate_sample[1][5]~q\ <= NOT \accumulate_sample[1][5]~q\;
ALT_INV_prev_val_2(3) <= NOT prev_val_2(3);
\ALT_INV_accumulate_sample[0][4]~q\ <= NOT \accumulate_sample[0][4]~q\;
\ALT_INV_accumulate_sample[1][4]~q\ <= NOT \accumulate_sample[1][4]~q\;
ALT_INV_prev_val_2(2) <= NOT prev_val_2(2);
\ALT_INV_accumulate_sample[0][3]~q\ <= NOT \accumulate_sample[0][3]~q\;
\ALT_INV_accumulate_sample[1][3]~q\ <= NOT \accumulate_sample[1][3]~q\;
ALT_INV_prev_val_3(12) <= NOT prev_val_3(12);
ALT_INV_prev_val_3(11) <= NOT prev_val_3(11);
ALT_INV_prev_val_3(10) <= NOT prev_val_3(10);
ALT_INV_prev_val_3(9) <= NOT prev_val_3(9);
ALT_INV_prev_val_3(8) <= NOT prev_val_3(8);
ALT_INV_prev_val_3(7) <= NOT prev_val_3(7);
ALT_INV_prev_val_3(6) <= NOT prev_val_3(6);
ALT_INV_prev_val_3(5) <= NOT prev_val_3(5);
ALT_INV_prev_val_3(3) <= NOT prev_val_3(3);
ALT_INV_prev_val_3(2) <= NOT prev_val_3(2);
ALT_INV_prev_val_3(1) <= NOT prev_val_3(1);
\ALT_INV_accumulate_sample[0][2]~q\ <= NOT \accumulate_sample[0][2]~q\;
\ALT_INV_accumulate_sample[1][2]~q\ <= NOT \accumulate_sample[1][2]~q\;
\ALT_INV_accumulate_sample[3][15]~q\ <= NOT \accumulate_sample[3][15]~q\;
\ALT_INV_accumulate_sample[3][14]~q\ <= NOT \accumulate_sample[3][14]~q\;
\ALT_INV_accumulate_sample[3][13]~q\ <= NOT \accumulate_sample[3][13]~q\;
\ALT_INV_accumulate_sample[3][12]~q\ <= NOT \accumulate_sample[3][12]~q\;
\ALT_INV_accumulate_sample[3][11]~q\ <= NOT \accumulate_sample[3][11]~q\;
\ALT_INV_accumulate_sample[3][10]~q\ <= NOT \accumulate_sample[3][10]~q\;
\ALT_INV_accumulate_sample[3][9]~q\ <= NOT \accumulate_sample[3][9]~q\;
\ALT_INV_accumulate_sample[3][8]~q\ <= NOT \accumulate_sample[3][8]~q\;
\ALT_INV_accumulate_sample[3][7]~q\ <= NOT \accumulate_sample[3][7]~q\;
\ALT_INV_accumulate_sample[3][6]~q\ <= NOT \accumulate_sample[3][6]~q\;
\ALT_INV_accumulate_sample[3][5]~q\ <= NOT \accumulate_sample[3][5]~q\;
\ALT_INV_accumulate_sample[3][4]~q\ <= NOT \accumulate_sample[3][4]~q\;
\ALT_INV_accumulate_sample[3][3]~q\ <= NOT \accumulate_sample[3][3]~q\;
\ALT_INV_accumulate_sample[3][2]~q\ <= NOT \accumulate_sample[3][2]~q\;
\ALT_INV_accumulate_sample[0][1]~q\ <= NOT \accumulate_sample[0][1]~q\;
ALT_INV_prev_val_2(1) <= NOT prev_val_2(1);
\ALT_INV_accumulate_sample[0][0]~q\ <= NOT \accumulate_sample[0][0]~q\;
ALT_INV_prev_val_2(0) <= NOT prev_val_2(0);
ALT_INV_sum(15) <= NOT sum(15);
ALT_INV_sum(14) <= NOT sum(14);
ALT_INV_sum(13) <= NOT sum(13);
ALT_INV_sum(12) <= NOT sum(12);
ALT_INV_sum(10) <= NOT sum(10);
ALT_INV_sum(9) <= NOT sum(9);
ALT_INV_sum(8) <= NOT sum(8);
ALT_INV_sum(7) <= NOT sum(7);
ALT_INV_sum(5) <= NOT sum(5);
ALT_INV_sum(3) <= NOT sum(3);
ALT_INV_sum(1) <= NOT sum(1);
ALT_INV_sum(0) <= NOT sum(0);
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add3~61_sumout\ <= NOT \Add3~61_sumout\;
\ALT_INV_Add3~57_sumout\ <= NOT \Add3~57_sumout\;
\ALT_INV_Add3~53_sumout\ <= NOT \Add3~53_sumout\;
\ALT_INV_Add3~49_sumout\ <= NOT \Add3~49_sumout\;
\ALT_INV_Add3~45_sumout\ <= NOT \Add3~45_sumout\;
\ALT_INV_Add3~41_sumout\ <= NOT \Add3~41_sumout\;
\ALT_INV_Add3~37_sumout\ <= NOT \Add3~37_sumout\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add4~49_sumout\ <= NOT \Add4~49_sumout\;
\ALT_INV_Add4~45_sumout\ <= NOT \Add4~45_sumout\;
\ALT_INV_Add4~41_sumout\ <= NOT \Add4~41_sumout\;
\ALT_INV_Add4~37_sumout\ <= NOT \Add4~37_sumout\;
\ALT_INV_Add4~33_sumout\ <= NOT \Add4~33_sumout\;
\ALT_INV_Add4~29_sumout\ <= NOT \Add4~29_sumout\;
\ALT_INV_Add4~25_sumout\ <= NOT \Add4~25_sumout\;
\ALT_INV_Add4~21_sumout\ <= NOT \Add4~21_sumout\;
\ALT_INV_Add4~17_sumout\ <= NOT \Add4~17_sumout\;
\ALT_INV_Add4~13_sumout\ <= NOT \Add4~13_sumout\;
\ALT_INV_Add4~9_sumout\ <= NOT \Add4~9_sumout\;
\ALT_INV_Add4~5_sumout\ <= NOT \Add4~5_sumout\;
\ALT_INV_Add4~1_sumout\ <= NOT \Add4~1_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;

-- Location: IOOBUF_X82_Y0_N42
\acc_val[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(0),
	devoe => ww_devoe,
	o => ww_acc_val(0));

-- Location: IOOBUF_X84_Y0_N53
\acc_val[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(1),
	devoe => ww_devoe,
	o => ww_acc_val(1));

-- Location: IOOBUF_X89_Y6_N22
\acc_val[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(2),
	devoe => ww_devoe,
	o => ww_acc_val(2));

-- Location: IOOBUF_X89_Y6_N39
\acc_val[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(3),
	devoe => ww_devoe,
	o => ww_acc_val(3));

-- Location: IOOBUF_X89_Y4_N79
\acc_val[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(4),
	devoe => ww_devoe,
	o => ww_acc_val(4));

-- Location: IOOBUF_X89_Y4_N62
\acc_val[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(5),
	devoe => ww_devoe,
	o => ww_acc_val(5));

-- Location: IOOBUF_X86_Y0_N36
\acc_val[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(6),
	devoe => ww_devoe,
	o => ww_acc_val(6));

-- Location: IOOBUF_X89_Y4_N45
\acc_val[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(7),
	devoe => ww_devoe,
	o => ww_acc_val(7));

-- Location: IOOBUF_X89_Y4_N96
\acc_val[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(8),
	devoe => ww_devoe,
	o => ww_acc_val(8));

-- Location: IOOBUF_X89_Y6_N5
\acc_val[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(9),
	devoe => ww_devoe,
	o => ww_acc_val(9));

-- Location: IOOBUF_X86_Y0_N2
\acc_val[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(10),
	devoe => ww_devoe,
	o => ww_acc_val(10));

-- Location: IOOBUF_X89_Y6_N56
\acc_val[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(11),
	devoe => ww_devoe,
	o => ww_acc_val(11));

-- Location: IOOBUF_X84_Y0_N36
\acc_val[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(12),
	devoe => ww_devoe,
	o => ww_acc_val(12));

-- Location: IOOBUF_X88_Y0_N54
\acc_val[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(13),
	devoe => ww_devoe,
	o => ww_acc_val(13));

-- Location: IOOBUF_X86_Y0_N19
\acc_val[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(14),
	devoe => ww_devoe,
	o => ww_acc_val(14));

-- Location: IOOBUF_X86_Y0_N53
\acc_val[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(15),
	devoe => ww_devoe,
	o => ww_acc_val(15));

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

-- Location: IOIBUF_X84_Y0_N18
\sample_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(0),
	o => \sample_in[0]~input_o\);

-- Location: FF_X83_Y3_N38
\accumulate_sample[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][0]~q\);

-- Location: FF_X83_Y3_N47
\prev_val_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \accumulate_sample[0][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_2(0));

-- Location: LABCELL_X83_Y3_N30
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( !prev_val_2(0) $ (!sum(0) $ (\accumulate_sample[0][0]~q\)) ) + ( !VCC ) + ( !VCC ))
-- \Add3~2\ = CARRY(( !prev_val_2(0) $ (!sum(0) $ (\accumulate_sample[0][0]~q\)) ) + ( !VCC ) + ( !VCC ))
-- \Add3~3\ = SHARE((!prev_val_2(0) & (sum(0) & \accumulate_sample[0][0]~q\)) # (prev_val_2(0) & ((\accumulate_sample[0][0]~q\) # (sum(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_prev_val_2(0),
	datac => ALT_INV_sum(0),
	datad => \ALT_INV_accumulate_sample[0][0]~q\,
	cin => GND,
	sharein => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\,
	shareout => \Add3~3\);

-- Location: FF_X83_Y3_N31
\sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(0));

-- Location: IOIBUF_X84_Y0_N1
\sample_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(1),
	o => \sample_in[1]~input_o\);

-- Location: LABCELL_X83_Y3_N18
\accumulate_sample[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[0][1]~feeder_combout\ = ( \sample_in[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sample_in[1]~input_o\,
	combout => \accumulate_sample[0][1]~feeder_combout\);

-- Location: FF_X83_Y3_N20
\accumulate_sample[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[0][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][1]~q\);

-- Location: LABCELL_X83_Y3_N12
\prev_val_2[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_2[1]~feeder_combout\ = \accumulate_sample[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[0][1]~q\,
	combout => \prev_val_2[1]~feeder_combout\);

-- Location: FF_X83_Y3_N14
\prev_val_2[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[1]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y3_N33
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( !\accumulate_sample[0][1]~q\ $ (!\prev_val_2[1]~DUPLICATE_q\ $ (sum(1))) ) + ( \Add3~3\ ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( !\accumulate_sample[0][1]~q\ $ (!\prev_val_2[1]~DUPLICATE_q\ $ (sum(1))) ) + ( \Add3~3\ ) + ( \Add3~2\ ))
-- \Add3~7\ = SHARE((!\accumulate_sample[0][1]~q\ & (\prev_val_2[1]~DUPLICATE_q\ & sum(1))) # (\accumulate_sample[0][1]~q\ & ((sum(1)) # (\prev_val_2[1]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[0][1]~q\,
	datac => \ALT_INV_prev_val_2[1]~DUPLICATE_q\,
	datad => ALT_INV_sum(1),
	cin => \Add3~2\,
	sharein => \Add3~3\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\,
	shareout => \Add3~7\);

-- Location: LABCELL_X83_Y3_N3
\sum[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum[1]~feeder_combout\ = ( \Add3~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add3~5_sumout\,
	combout => \sum[1]~feeder_combout\);

-- Location: FF_X83_Y3_N5
\sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \sum[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(1));

-- Location: FF_X83_Y3_N17
\sum[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \sum[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum[2]~DUPLICATE_q\);

-- Location: IOIBUF_X78_Y0_N18
\sample_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(2),
	o => \sample_in[2]~input_o\);

-- Location: FF_X81_Y3_N32
\prev_val_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_1(2));

-- Location: MLABCELL_X82_Y3_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \accumulate_sample[0][0]~q\ ) + ( prev_val_1(2) ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \accumulate_sample[0][0]~q\ ) + ( prev_val_1(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_prev_val_1(2),
	datad => \ALT_INV_accumulate_sample[0][0]~q\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X83_Y3_N27
\accumulate_sample[1][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[1][2]~feeder_combout\ = ( \Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \accumulate_sample[1][2]~feeder_combout\);

-- Location: FF_X83_Y3_N29
\accumulate_sample[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[1][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[1][2]~q\);

-- Location: LABCELL_X81_Y3_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \sample_in[2]~input_o\ ) + ( \sample_in[0]~input_o\ ) + ( !VCC ))
-- \Add1~2\ = CARRY(( \sample_in[2]~input_o\ ) + ( \sample_in[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sample_in[0]~input_o\,
	datac => \ALT_INV_sample_in[2]~input_o\,
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X83_Y3_N2
\accumulate_sample[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][2]~q\);

-- Location: LABCELL_X83_Y3_N36
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( !\sum[2]~DUPLICATE_q\ $ (!\accumulate_sample[1][2]~q\ $ (\accumulate_sample[0][2]~q\)) ) + ( \Add3~7\ ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( !\sum[2]~DUPLICATE_q\ $ (!\accumulate_sample[1][2]~q\ $ (\accumulate_sample[0][2]~q\)) ) + ( \Add3~7\ ) + ( \Add3~6\ ))
-- \Add3~11\ = SHARE((!\sum[2]~DUPLICATE_q\ & (\accumulate_sample[1][2]~q\ & \accumulate_sample[0][2]~q\)) # (\sum[2]~DUPLICATE_q\ & ((\accumulate_sample[0][2]~q\) # (\accumulate_sample[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sum[2]~DUPLICATE_q\,
	datac => \ALT_INV_accumulate_sample[1][2]~q\,
	datad => \ALT_INV_accumulate_sample[0][2]~q\,
	cin => \Add3~6\,
	sharein => \Add3~7\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\,
	shareout => \Add3~11\);

-- Location: MLABCELL_X84_Y3_N54
\prev_val_3[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_3[0]~feeder_combout\ = ( prev_val_2(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_val_2(0),
	combout => \prev_val_3[0]~feeder_combout\);

-- Location: FF_X84_Y3_N55
\prev_val_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_3[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(0));

-- Location: FF_X85_Y3_N5
\accumulate_sample[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_3(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][2]~q\);

-- Location: LABCELL_X85_Y3_N0
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( \accumulate_sample[3][2]~q\ ) + ( \Add3~9_sumout\ ) + ( !VCC ))
-- \Add5~2\ = CARRY(( \accumulate_sample[3][2]~q\ ) + ( \Add3~9_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_accumulate_sample[3][2]~q\,
	cin => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: LABCELL_X83_Y3_N15
\sum[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum[2]~feeder_combout\ = ( \Add5~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~1_sumout\,
	combout => \sum[2]~feeder_combout\);

-- Location: FF_X83_Y3_N16
\sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \sum[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(2));

-- Location: FF_X83_Y3_N13
\prev_val_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_2(1));

-- Location: MLABCELL_X84_Y3_N48
\prev_val_3[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_3[1]~feeder_combout\ = ( prev_val_2(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_val_2(1),
	combout => \prev_val_3[1]~feeder_combout\);

-- Location: FF_X84_Y3_N50
\prev_val_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_3[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(1));

-- Location: FF_X84_Y3_N26
\accumulate_sample[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_3(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][3]~q\);

-- Location: IOIBUF_X78_Y0_N52
\sample_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(3),
	o => \sample_in[3]~input_o\);

-- Location: LABCELL_X81_Y3_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \sample_in[3]~input_o\ ) + ( \sample_in[1]~input_o\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( \sample_in[3]~input_o\ ) + ( \sample_in[1]~input_o\ ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sample_in[3]~input_o\,
	datac => \ALT_INV_sample_in[1]~input_o\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X83_Y3_N35
\accumulate_sample[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][3]~q\);

-- Location: FF_X81_Y3_N41
\prev_val_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_1(3));

-- Location: MLABCELL_X82_Y3_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( prev_val_1(3) ) + ( \accumulate_sample[0][1]~q\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( prev_val_1(3) ) + ( \accumulate_sample[0][1]~q\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[0][1]~q\,
	datad => ALT_INV_prev_val_1(3),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X83_Y3_N9
\accumulate_sample[1][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[1][3]~feeder_combout\ = ( \Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \accumulate_sample[1][3]~feeder_combout\);

-- Location: FF_X83_Y3_N10
\accumulate_sample[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[1][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[1][3]~q\);

-- Location: LABCELL_X83_Y3_N39
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( !\accumulate_sample[0][3]~q\ $ (!sum(3) $ (\accumulate_sample[1][3]~q\)) ) + ( \Add3~11\ ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( !\accumulate_sample[0][3]~q\ $ (!sum(3) $ (\accumulate_sample[1][3]~q\)) ) + ( \Add3~11\ ) + ( \Add3~10\ ))
-- \Add3~15\ = SHARE((!\accumulate_sample[0][3]~q\ & (sum(3) & \accumulate_sample[1][3]~q\)) # (\accumulate_sample[0][3]~q\ & ((\accumulate_sample[1][3]~q\) # (sum(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[0][3]~q\,
	datac => ALT_INV_sum(3),
	datad => \ALT_INV_accumulate_sample[1][3]~q\,
	cin => \Add3~10\,
	sharein => \Add3~11\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\,
	shareout => \Add3~15\);

-- Location: FF_X84_Y3_N56
\prev_val_3[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_3[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_3[0]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y3_N0
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( \prev_val_3[0]~DUPLICATE_q\ ) + ( \Add3~13_sumout\ ) + ( !VCC ))
-- \Add4~2\ = CARRY(( \prev_val_3[0]~DUPLICATE_q\ ) + ( \Add3~13_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_prev_val_3[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: LABCELL_X85_Y3_N3
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( \accumulate_sample[3][3]~q\ ) + ( \Add4~1_sumout\ ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( \accumulate_sample[3][3]~q\ ) + ( \Add4~1_sumout\ ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[3][3]~q\,
	datac => \ALT_INV_Add4~1_sumout\,
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: LABCELL_X83_Y3_N6
\sum[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum[3]~feeder_combout\ = ( \Add5~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~5_sumout\,
	combout => \sum[3]~feeder_combout\);

-- Location: FF_X83_Y3_N8
\sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \sum[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(3));

-- Location: IOIBUF_X78_Y0_N35
\sample_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(4),
	o => \sample_in[4]~input_o\);

-- Location: LABCELL_X81_Y3_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \sample_in[4]~input_o\ ) + ( \sample_in[2]~input_o\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( \sample_in[4]~input_o\ ) + ( \sample_in[2]~input_o\ ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sample_in[4]~input_o\,
	datac => \ALT_INV_sample_in[2]~input_o\,
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X83_Y3_N41
\accumulate_sample[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][4]~q\);

-- Location: LABCELL_X81_Y3_N57
\prev_val_1[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_1[4]~feeder_combout\ = ( \sample_in[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sample_in[4]~input_o\,
	combout => \prev_val_1[4]~feeder_combout\);

-- Location: FF_X81_Y3_N59
\prev_val_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_1[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_1(4));

-- Location: MLABCELL_X82_Y3_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( prev_val_1(4) ) + ( prev_val_1(2) ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( prev_val_1(4) ) + ( prev_val_1(2) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_prev_val_1(2),
	datad => ALT_INV_prev_val_1(4),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X83_Y3_N23
\accumulate_sample[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[1][4]~q\);

-- Location: FF_X85_Y3_N7
\sum[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum[4]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y3_N42
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( !\accumulate_sample[0][4]~q\ $ (!\accumulate_sample[1][4]~q\ $ (\sum[4]~DUPLICATE_q\)) ) + ( \Add3~15\ ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( !\accumulate_sample[0][4]~q\ $ (!\accumulate_sample[1][4]~q\ $ (\sum[4]~DUPLICATE_q\)) ) + ( \Add3~15\ ) + ( \Add3~14\ ))
-- \Add3~19\ = SHARE((!\accumulate_sample[0][4]~q\ & (\accumulate_sample[1][4]~q\ & \sum[4]~DUPLICATE_q\)) # (\accumulate_sample[0][4]~q\ & ((\sum[4]~DUPLICATE_q\) # (\accumulate_sample[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[0][4]~q\,
	datac => \ALT_INV_accumulate_sample[1][4]~q\,
	datad => \ALT_INV_sum[4]~DUPLICATE_q\,
	cin => \Add3~14\,
	sharein => \Add3~15\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\,
	shareout => \Add3~19\);

-- Location: MLABCELL_X84_Y3_N3
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( \Add3~17_sumout\ ) + ( prev_val_3(1) ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( \Add3~17_sumout\ ) + ( prev_val_3(1) ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_val_3(1),
	datad => \ALT_INV_Add3~17_sumout\,
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: FF_X82_Y3_N5
\prev_val_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_1(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_2(2));

-- Location: MLABCELL_X84_Y3_N45
\prev_val_3[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_3[2]~feeder_combout\ = ( prev_val_2(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_val_2(2),
	combout => \prev_val_3[2]~feeder_combout\);

-- Location: FF_X84_Y3_N46
\prev_val_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_3[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(2));

-- Location: LABCELL_X85_Y3_N54
\accumulate_sample[3][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[3][4]~feeder_combout\ = ( prev_val_3(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_val_3(2),
	combout => \accumulate_sample[3][4]~feeder_combout\);

-- Location: FF_X85_Y3_N56
\accumulate_sample[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[3][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][4]~q\);

-- Location: LABCELL_X85_Y3_N6
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( \accumulate_sample[3][4]~q\ ) + ( \Add4~5_sumout\ ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( \accumulate_sample[3][4]~q\ ) + ( \Add4~5_sumout\ ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~5_sumout\,
	datac => \ALT_INV_accumulate_sample[3][4]~q\,
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: FF_X85_Y3_N8
\sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(4));

-- Location: FF_X81_Y3_N22
\prev_val_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_1(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_2(3));

-- Location: MLABCELL_X84_Y3_N42
\prev_val_3[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_3[3]~feeder_combout\ = ( prev_val_2(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_val_2(3),
	combout => \prev_val_3[3]~feeder_combout\);

-- Location: FF_X84_Y3_N43
\prev_val_3[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_3[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_3[3]~DUPLICATE_q\);

-- Location: FF_X85_Y3_N52
\accumulate_sample[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \prev_val_3[3]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][5]~q\);

-- Location: IOIBUF_X76_Y0_N1
\sample_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(5),
	o => \sample_in[5]~input_o\);

-- Location: FF_X81_Y3_N38
\prev_val_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_1(5));

-- Location: MLABCELL_X82_Y3_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( prev_val_1(3) ) + ( prev_val_1(5) ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( prev_val_1(3) ) + ( prev_val_1(5) ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_prev_val_1(3),
	datac => ALT_INV_prev_val_1(5),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X83_Y3_N26
\accumulate_sample[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[1][5]~q\);

-- Location: LABCELL_X81_Y3_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \sample_in[3]~input_o\ ) + ( \sample_in[5]~input_o\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( \sample_in[3]~input_o\ ) + ( \sample_in[5]~input_o\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sample_in[5]~input_o\,
	datad => \ALT_INV_sample_in[3]~input_o\,
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X83_Y3_N56
\accumulate_sample[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][5]~q\);

-- Location: LABCELL_X83_Y3_N45
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( !\accumulate_sample[1][5]~q\ $ (!sum(5) $ (\accumulate_sample[0][5]~q\)) ) + ( \Add3~19\ ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( !\accumulate_sample[1][5]~q\ $ (!sum(5) $ (\accumulate_sample[0][5]~q\)) ) + ( \Add3~19\ ) + ( \Add3~18\ ))
-- \Add3~23\ = SHARE((!\accumulate_sample[1][5]~q\ & (sum(5) & \accumulate_sample[0][5]~q\)) # (\accumulate_sample[1][5]~q\ & ((\accumulate_sample[0][5]~q\) # (sum(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[1][5]~q\,
	datac => ALT_INV_sum(5),
	datad => \ALT_INV_accumulate_sample[0][5]~q\,
	cin => \Add3~18\,
	sharein => \Add3~19\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\,
	shareout => \Add3~23\);

-- Location: MLABCELL_X84_Y3_N6
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( \Add3~21_sumout\ ) + ( prev_val_3(2) ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( \Add3~21_sumout\ ) + ( prev_val_3(2) ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_prev_val_3(2),
	datac => \ALT_INV_Add3~21_sumout\,
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: LABCELL_X85_Y3_N9
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( \Add4~9_sumout\ ) + ( \accumulate_sample[3][5]~q\ ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( \Add4~9_sumout\ ) + ( \accumulate_sample[3][5]~q\ ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[3][5]~q\,
	datad => \ALT_INV_Add4~9_sumout\,
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X85_Y3_N11
\sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(5));

-- Location: FF_X84_Y3_N44
\prev_val_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_3[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(3));

-- Location: IOIBUF_X80_Y0_N52
\sample_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(6),
	o => \sample_in[6]~input_o\);

-- Location: LABCELL_X81_Y3_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \sample_in[6]~input_o\ ) + ( \sample_in[4]~input_o\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \sample_in[6]~input_o\ ) + ( \sample_in[4]~input_o\ ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sample_in[4]~input_o\,
	datac => \ALT_INV_sample_in[6]~input_o\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X83_Y3_N44
\accumulate_sample[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][6]~q\);

-- Location: FF_X85_Y3_N13
\sum[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum[6]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y3_N48
\prev_val_1[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_1[6]~feeder_combout\ = ( \sample_in[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sample_in[6]~input_o\,
	combout => \prev_val_1[6]~feeder_combout\);

-- Location: FF_X81_Y3_N50
\prev_val_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_1[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_1(6));

-- Location: MLABCELL_X82_Y3_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( prev_val_1(4) ) + ( prev_val_1(6) ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( prev_val_1(4) ) + ( prev_val_1(6) ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_prev_val_1(4),
	datac => ALT_INV_prev_val_1(6),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X83_Y3_N59
\accumulate_sample[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[1][6]~q\);

-- Location: LABCELL_X83_Y3_N48
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( !\accumulate_sample[0][6]~q\ $ (!\sum[6]~DUPLICATE_q\ $ (\accumulate_sample[1][6]~q\)) ) + ( \Add3~23\ ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( !\accumulate_sample[0][6]~q\ $ (!\sum[6]~DUPLICATE_q\ $ (\accumulate_sample[1][6]~q\)) ) + ( \Add3~23\ ) + ( \Add3~22\ ))
-- \Add3~27\ = SHARE((!\accumulate_sample[0][6]~q\ & (\sum[6]~DUPLICATE_q\ & \accumulate_sample[1][6]~q\)) # (\accumulate_sample[0][6]~q\ & ((\accumulate_sample[1][6]~q\) # (\sum[6]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[0][6]~q\,
	datac => \ALT_INV_sum[6]~DUPLICATE_q\,
	datad => \ALT_INV_accumulate_sample[1][6]~q\,
	cin => \Add3~22\,
	sharein => \Add3~23\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\,
	shareout => \Add3~27\);

-- Location: MLABCELL_X84_Y3_N9
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( \Add3~25_sumout\ ) + ( prev_val_3(3) ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( \Add3~25_sumout\ ) + ( prev_val_3(3) ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_prev_val_3(3),
	datad => \ALT_INV_Add3~25_sumout\,
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: FF_X82_Y3_N59
\prev_val_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_1(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_2(4));

-- Location: FF_X84_Y3_N58
\prev_val_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_2(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(4));

-- Location: FF_X85_Y3_N50
\accumulate_sample[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_3(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][6]~q\);

-- Location: LABCELL_X85_Y3_N12
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( \accumulate_sample[3][6]~q\ ) + ( \Add4~13_sumout\ ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( \accumulate_sample[3][6]~q\ ) + ( \Add4~13_sumout\ ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~13_sumout\,
	datac => \ALT_INV_accumulate_sample[3][6]~q\,
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X85_Y3_N14
\sum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(6));

-- Location: FF_X82_Y3_N52
\prev_val_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_1(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_2(5));

-- Location: FF_X84_Y3_N53
\prev_val_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_2(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(5));

-- Location: FF_X84_Y3_N40
\accumulate_sample[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_3(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][7]~q\);

-- Location: IOIBUF_X76_Y0_N35
\sample_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(7),
	o => \sample_in[7]~input_o\);

-- Location: FF_X81_Y3_N17
\prev_val_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_1(7));

-- Location: MLABCELL_X82_Y3_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( prev_val_1(5) ) + ( prev_val_1(7) ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( prev_val_1(5) ) + ( prev_val_1(7) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_prev_val_1(7),
	datad => ALT_INV_prev_val_1(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X82_Y3_N16
\accumulate_sample[1][7]\ : dffeas
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
	q => \accumulate_sample[1][7]~q\);

-- Location: LABCELL_X81_Y3_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \sample_in[7]~input_o\ ) + ( \sample_in[5]~input_o\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \sample_in[7]~input_o\ ) + ( \sample_in[5]~input_o\ ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_sample_in[7]~input_o\,
	dataf => \ALT_INV_sample_in[5]~input_o\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: MLABCELL_X82_Y3_N48
\accumulate_sample[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[0][7]~feeder_combout\ = ( \Add1~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~21_sumout\,
	combout => \accumulate_sample[0][7]~feeder_combout\);

-- Location: FF_X82_Y3_N49
\accumulate_sample[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[0][7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][7]~q\);

-- Location: LABCELL_X83_Y3_N51
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( !sum(7) $ (!\accumulate_sample[1][7]~q\ $ (\accumulate_sample[0][7]~q\)) ) + ( \Add3~27\ ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( !sum(7) $ (!\accumulate_sample[1][7]~q\ $ (\accumulate_sample[0][7]~q\)) ) + ( \Add3~27\ ) + ( \Add3~26\ ))
-- \Add3~31\ = SHARE((!sum(7) & (\accumulate_sample[1][7]~q\ & \accumulate_sample[0][7]~q\)) # (sum(7) & ((\accumulate_sample[0][7]~q\) # (\accumulate_sample[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sum(7),
	datac => \ALT_INV_accumulate_sample[1][7]~q\,
	datad => \ALT_INV_accumulate_sample[0][7]~q\,
	cin => \Add3~26\,
	sharein => \Add3~27\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\,
	shareout => \Add3~31\);

-- Location: FF_X84_Y3_N59
\prev_val_3[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_2(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_3[4]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y3_N12
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( \prev_val_3[4]~DUPLICATE_q\ ) + ( \Add3~29_sumout\ ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( \prev_val_3[4]~DUPLICATE_q\ ) + ( \Add3~29_sumout\ ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_prev_val_3[4]~DUPLICATE_q\,
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: LABCELL_X85_Y3_N15
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( \Add4~17_sumout\ ) + ( \accumulate_sample[3][7]~q\ ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( \Add4~17_sumout\ ) + ( \accumulate_sample[3][7]~q\ ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[3][7]~q\,
	datad => \ALT_INV_Add4~17_sumout\,
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: FF_X85_Y3_N17
\sum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(7));

-- Location: IOIBUF_X80_Y0_N18
\sample_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(8),
	o => \sample_in[8]~input_o\);

-- Location: LABCELL_X81_Y3_N51
\prev_val_1[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_1[8]~feeder_combout\ = ( \sample_in[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sample_in[8]~input_o\,
	combout => \prev_val_1[8]~feeder_combout\);

-- Location: FF_X81_Y3_N53
\prev_val_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_1[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_1(8));

-- Location: MLABCELL_X82_Y3_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( prev_val_1(6) ) + ( prev_val_1(8) ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( prev_val_1(6) ) + ( prev_val_1(8) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_prev_val_1(8),
	datad => ALT_INV_prev_val_1(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X82_Y3_N19
\accumulate_sample[1][8]\ : dffeas
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
	q => \accumulate_sample[1][8]~q\);

-- Location: LABCELL_X81_Y3_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \sample_in[8]~input_o\ ) + ( \sample_in[6]~input_o\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( \sample_in[8]~input_o\ ) + ( \sample_in[6]~input_o\ ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sample_in[8]~input_o\,
	datac => \ALT_INV_sample_in[6]~input_o\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X83_Y3_N50
\accumulate_sample[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][8]~q\);

-- Location: LABCELL_X83_Y3_N54
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( !\accumulate_sample[1][8]~q\ $ (!\accumulate_sample[0][8]~q\ $ (sum(8))) ) + ( \Add3~31\ ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( !\accumulate_sample[1][8]~q\ $ (!\accumulate_sample[0][8]~q\ $ (sum(8))) ) + ( \Add3~31\ ) + ( \Add3~30\ ))
-- \Add3~35\ = SHARE((!\accumulate_sample[1][8]~q\ & (\accumulate_sample[0][8]~q\ & sum(8))) # (\accumulate_sample[1][8]~q\ & ((sum(8)) # (\accumulate_sample[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[1][8]~q\,
	datac => \ALT_INV_accumulate_sample[0][8]~q\,
	datad => ALT_INV_sum(8),
	cin => \Add3~30\,
	sharein => \Add3~31\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\,
	shareout => \Add3~35\);

-- Location: MLABCELL_X84_Y3_N15
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( \Add3~33_sumout\ ) + ( prev_val_3(5) ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( \Add3~33_sumout\ ) + ( prev_val_3(5) ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_val_3(5),
	datad => \ALT_INV_Add3~33_sumout\,
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: FF_X82_Y3_N56
\prev_val_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_1(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_2(6));

-- Location: FF_X84_Y3_N5
\prev_val_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_2(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(6));

-- Location: LABCELL_X85_Y3_N42
\accumulate_sample[3][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[3][8]~feeder_combout\ = ( prev_val_3(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_val_3(6),
	combout => \accumulate_sample[3][8]~feeder_combout\);

-- Location: FF_X85_Y3_N44
\accumulate_sample[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[3][8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][8]~q\);

-- Location: LABCELL_X85_Y3_N18
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( \Add4~21_sumout\ ) + ( \accumulate_sample[3][8]~q\ ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( \Add4~21_sumout\ ) + ( \accumulate_sample[3][8]~q\ ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~21_sumout\,
	dataf => \ALT_INV_accumulate_sample[3][8]~q\,
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: FF_X85_Y3_N19
\sum[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(8));

-- Location: FF_X82_Y3_N7
\prev_val_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_1(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_2(7));

-- Location: FF_X84_Y3_N23
\prev_val_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_2(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(7));

-- Location: FF_X84_Y3_N38
\accumulate_sample[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_3(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][9]~q\);

-- Location: IOIBUF_X82_Y0_N92
\sample_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(9),
	o => \sample_in[9]~input_o\);

-- Location: LABCELL_X81_Y3_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \sample_in[7]~input_o\ ) + ( \sample_in[9]~input_o\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( \sample_in[7]~input_o\ ) + ( \sample_in[9]~input_o\ ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sample_in[7]~input_o\,
	dataf => \ALT_INV_sample_in[9]~input_o\,
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X83_Y3_N53
\accumulate_sample[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][9]~q\);

-- Location: LABCELL_X81_Y3_N54
\prev_val_1[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_1[9]~feeder_combout\ = ( \sample_in[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sample_in[9]~input_o\,
	combout => \prev_val_1[9]~feeder_combout\);

-- Location: FF_X81_Y3_N56
\prev_val_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_1[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_1(9));

-- Location: MLABCELL_X82_Y3_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( prev_val_1(9) ) + ( prev_val_1(7) ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( prev_val_1(9) ) + ( prev_val_1(7) ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_prev_val_1(9),
	datac => ALT_INV_prev_val_1(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X82_Y3_N22
\accumulate_sample[1][9]\ : dffeas
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
	q => \accumulate_sample[1][9]~q\);

-- Location: LABCELL_X83_Y3_N57
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( !\accumulate_sample[0][9]~q\ $ (!sum(9) $ (\accumulate_sample[1][9]~q\)) ) + ( \Add3~35\ ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( !\accumulate_sample[0][9]~q\ $ (!sum(9) $ (\accumulate_sample[1][9]~q\)) ) + ( \Add3~35\ ) + ( \Add3~34\ ))
-- \Add3~39\ = SHARE((!\accumulate_sample[0][9]~q\ & (sum(9) & \accumulate_sample[1][9]~q\)) # (\accumulate_sample[0][9]~q\ & ((\accumulate_sample[1][9]~q\) # (sum(9)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[0][9]~q\,
	datac => ALT_INV_sum(9),
	datad => \ALT_INV_accumulate_sample[1][9]~q\,
	cin => \Add3~34\,
	sharein => \Add3~35\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\,
	shareout => \Add3~39\);

-- Location: MLABCELL_X84_Y3_N18
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( \Add3~37_sumout\ ) + ( prev_val_3(6) ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( \Add3~37_sumout\ ) + ( prev_val_3(6) ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_prev_val_3(6),
	datad => \ALT_INV_Add3~37_sumout\,
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: LABCELL_X85_Y3_N21
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( \accumulate_sample[3][9]~q\ ) + ( \Add4~25_sumout\ ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( \accumulate_sample[3][9]~q\ ) + ( \Add4~25_sumout\ ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[3][9]~q\,
	datac => \ALT_INV_Add4~25_sumout\,
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X85_Y3_N22
\sum[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(9));

-- Location: FF_X82_Y3_N25
\prev_val_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_1(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_2(8));

-- Location: FF_X84_Y3_N17
\prev_val_3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_2(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(8));

-- Location: FF_X84_Y3_N14
\accumulate_sample[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_3(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][10]~q\);

-- Location: IOIBUF_X78_Y0_N1
\sample_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(10),
	o => \sample_in[10]~input_o\);

-- Location: LABCELL_X81_Y3_N45
\prev_val_1[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_1[10]~feeder_combout\ = ( \sample_in[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sample_in[10]~input_o\,
	combout => \prev_val_1[10]~feeder_combout\);

-- Location: FF_X81_Y3_N47
\prev_val_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_1[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_1(10));

-- Location: MLABCELL_X82_Y3_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( prev_val_1(10) ) + ( prev_val_1(8) ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( prev_val_1(10) ) + ( prev_val_1(8) ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_val_1(8),
	datac => ALT_INV_prev_val_1(10),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X83_Y2_N33
\accumulate_sample[1][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[1][10]~feeder_combout\ = ( \Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \accumulate_sample[1][10]~feeder_combout\);

-- Location: FF_X83_Y2_N35
\accumulate_sample[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[1][10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[1][10]~q\);

-- Location: LABCELL_X81_Y3_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \sample_in[8]~input_o\ ) + ( \sample_in[10]~input_o\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \sample_in[8]~input_o\ ) + ( \sample_in[10]~input_o\ ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sample_in[8]~input_o\,
	dataf => \ALT_INV_sample_in[10]~input_o\,
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X83_Y2_N50
\accumulate_sample[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][10]~q\);

-- Location: LABCELL_X83_Y2_N0
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( !\accumulate_sample[1][10]~q\ $ (!\accumulate_sample[0][10]~q\ $ (sum(10))) ) + ( \Add3~39\ ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( !\accumulate_sample[1][10]~q\ $ (!\accumulate_sample[0][10]~q\ $ (sum(10))) ) + ( \Add3~39\ ) + ( \Add3~38\ ))
-- \Add3~43\ = SHARE((!\accumulate_sample[1][10]~q\ & (\accumulate_sample[0][10]~q\ & sum(10))) # (\accumulate_sample[1][10]~q\ & ((sum(10)) # (\accumulate_sample[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[1][10]~q\,
	datac => \ALT_INV_accumulate_sample[0][10]~q\,
	datad => ALT_INV_sum(10),
	cin => \Add3~38\,
	sharein => \Add3~39\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\,
	shareout => \Add3~43\);

-- Location: MLABCELL_X84_Y3_N21
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( \Add3~41_sumout\ ) + ( prev_val_3(7) ) + ( \Add4~26\ ))
-- \Add4~30\ = CARRY(( \Add3~41_sumout\ ) + ( prev_val_3(7) ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_val_3(7),
	datad => \ALT_INV_Add3~41_sumout\,
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: LABCELL_X85_Y3_N24
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( \Add4~29_sumout\ ) + ( \accumulate_sample[3][10]~q\ ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( \Add4~29_sumout\ ) + ( \accumulate_sample[3][10]~q\ ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[3][10]~q\,
	datad => \ALT_INV_Add4~29_sumout\,
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: FF_X85_Y3_N25
\sum[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(10));

-- Location: MLABCELL_X82_Y3_N42
\prev_val_2[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_2[9]~feeder_combout\ = ( prev_val_1(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_val_1(9),
	combout => \prev_val_2[9]~feeder_combout\);

-- Location: FF_X82_Y3_N43
\prev_val_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_2[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_2(9));

-- Location: FF_X84_Y3_N11
\prev_val_3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_2(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(9));

-- Location: LABCELL_X85_Y3_N45
\accumulate_sample[3][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[3][11]~feeder_combout\ = ( prev_val_3(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_val_3(9),
	combout => \accumulate_sample[3][11]~feeder_combout\);

-- Location: FF_X85_Y3_N47
\accumulate_sample[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[3][11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][11]~q\);

-- Location: IOIBUF_X80_Y0_N35
\sample_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(11),
	o => \sample_in[11]~input_o\);

-- Location: LABCELL_X80_Y3_N24
\prev_val_1[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_1[11]~feeder_combout\ = ( \sample_in[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sample_in[11]~input_o\,
	combout => \prev_val_1[11]~feeder_combout\);

-- Location: FF_X80_Y3_N26
\prev_val_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_1[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_1(11));

-- Location: MLABCELL_X82_Y3_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( prev_val_1(11) ) + ( prev_val_1(9) ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( prev_val_1(11) ) + ( prev_val_1(9) ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_prev_val_1(9),
	datad => ALT_INV_prev_val_1(11),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X83_Y2_N45
\accumulate_sample[1][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[1][11]~feeder_combout\ = ( \Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \accumulate_sample[1][11]~feeder_combout\);

-- Location: FF_X83_Y2_N47
\accumulate_sample[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[1][11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[1][11]~q\);

-- Location: FF_X85_Y3_N29
\sum[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum[11]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y3_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \sample_in[11]~input_o\ ) + ( \sample_in[9]~input_o\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( \sample_in[11]~input_o\ ) + ( \sample_in[9]~input_o\ ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sample_in[11]~input_o\,
	dataf => \ALT_INV_sample_in[9]~input_o\,
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: LABCELL_X83_Y2_N36
\accumulate_sample[0][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[0][11]~feeder_combout\ = ( \Add1~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~37_sumout\,
	combout => \accumulate_sample[0][11]~feeder_combout\);

-- Location: FF_X83_Y2_N38
\accumulate_sample[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[0][11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][11]~q\);

-- Location: LABCELL_X83_Y2_N3
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( !\accumulate_sample[1][11]~q\ $ (!\sum[11]~DUPLICATE_q\ $ (\accumulate_sample[0][11]~q\)) ) + ( \Add3~43\ ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( !\accumulate_sample[1][11]~q\ $ (!\sum[11]~DUPLICATE_q\ $ (\accumulate_sample[0][11]~q\)) ) + ( \Add3~43\ ) + ( \Add3~42\ ))
-- \Add3~47\ = SHARE((!\accumulate_sample[1][11]~q\ & (\sum[11]~DUPLICATE_q\ & \accumulate_sample[0][11]~q\)) # (\accumulate_sample[1][11]~q\ & ((\accumulate_sample[0][11]~q\) # (\sum[11]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[1][11]~q\,
	datac => \ALT_INV_sum[11]~DUPLICATE_q\,
	datad => \ALT_INV_accumulate_sample[0][11]~q\,
	cin => \Add3~42\,
	sharein => \Add3~43\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\,
	shareout => \Add3~47\);

-- Location: MLABCELL_X84_Y3_N24
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( \Add3~45_sumout\ ) + ( prev_val_3(8) ) + ( \Add4~30\ ))
-- \Add4~34\ = CARRY(( \Add3~45_sumout\ ) + ( prev_val_3(8) ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add3~45_sumout\,
	dataf => ALT_INV_prev_val_3(8),
	cin => \Add4~30\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: LABCELL_X85_Y3_N27
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( \accumulate_sample[3][11]~q\ ) + ( \Add4~33_sumout\ ) + ( \Add5~34\ ))
-- \Add5~38\ = CARRY(( \accumulate_sample[3][11]~q\ ) + ( \Add4~33_sumout\ ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[3][11]~q\,
	datac => \ALT_INV_Add4~33_sumout\,
	cin => \Add5~34\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: FF_X85_Y3_N28
\sum[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(11));

-- Location: FF_X84_Y3_N20
\prev_val_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_1(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_2(10));

-- Location: FF_X84_Y3_N32
\prev_val_3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_2(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(10));

-- Location: FF_X85_Y3_N2
\accumulate_sample[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_3(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][12]~q\);

-- Location: IOIBUF_X80_Y0_N1
\sample_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(12),
	o => \sample_in[12]~input_o\);

-- Location: LABCELL_X81_Y3_N30
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \sample_in[12]~input_o\ ) + ( \sample_in[10]~input_o\ ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( \sample_in[12]~input_o\ ) + ( \sample_in[10]~input_o\ ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sample_in[10]~input_o\,
	datac => \ALT_INV_sample_in[12]~input_o\,
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: LABCELL_X83_Y2_N54
\accumulate_sample[0][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[0][12]~feeder_combout\ = ( \Add1~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~41_sumout\,
	combout => \accumulate_sample[0][12]~feeder_combout\);

-- Location: FF_X83_Y2_N56
\accumulate_sample[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[0][12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][12]~q\);

-- Location: FF_X81_Y3_N5
\prev_val_1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_1(12));

-- Location: MLABCELL_X82_Y3_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( prev_val_1(12) ) + ( prev_val_1(10) ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( prev_val_1(12) ) + ( prev_val_1(10) ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_prev_val_1(10),
	datad => ALT_INV_prev_val_1(12),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X82_Y3_N31
\accumulate_sample[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[1][12]~q\);

-- Location: LABCELL_X83_Y2_N6
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( !\accumulate_sample[0][12]~q\ $ (!\accumulate_sample[1][12]~q\ $ (sum(12))) ) + ( \Add3~47\ ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( !\accumulate_sample[0][12]~q\ $ (!\accumulate_sample[1][12]~q\ $ (sum(12))) ) + ( \Add3~47\ ) + ( \Add3~46\ ))
-- \Add3~51\ = SHARE((!\accumulate_sample[0][12]~q\ & (\accumulate_sample[1][12]~q\ & sum(12))) # (\accumulate_sample[0][12]~q\ & ((sum(12)) # (\accumulate_sample[1][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[0][12]~q\,
	datac => \ALT_INV_accumulate_sample[1][12]~q\,
	datad => ALT_INV_sum(12),
	cin => \Add3~46\,
	sharein => \Add3~47\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\,
	shareout => \Add3~51\);

-- Location: MLABCELL_X84_Y3_N27
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( \Add3~49_sumout\ ) + ( prev_val_3(9) ) + ( \Add4~34\ ))
-- \Add4~38\ = CARRY(( \Add3~49_sumout\ ) + ( prev_val_3(9) ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_prev_val_3(9),
	datac => \ALT_INV_Add3~49_sumout\,
	cin => \Add4~34\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: LABCELL_X85_Y3_N30
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( \Add4~37_sumout\ ) + ( \accumulate_sample[3][12]~q\ ) + ( \Add5~38\ ))
-- \Add5~42\ = CARRY(( \Add4~37_sumout\ ) + ( \accumulate_sample[3][12]~q\ ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[3][12]~q\,
	datad => \ALT_INV_Add4~37_sumout\,
	cin => \Add5~38\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\);

-- Location: FF_X85_Y3_N32
\sum[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(12));

-- Location: IOIBUF_X76_Y0_N18
\sample_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(13),
	o => \sample_in[13]~input_o\);

-- Location: FF_X81_Y3_N20
\prev_val_1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_1(13));

-- Location: MLABCELL_X82_Y3_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( prev_val_1(13) ) + ( prev_val_1(11) ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( prev_val_1(13) ) + ( prev_val_1(11) ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_val_1(13),
	datac => ALT_INV_prev_val_1(11),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X82_Y3_N35
\accumulate_sample[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[1][13]~q\);

-- Location: LABCELL_X81_Y3_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \sample_in[13]~input_o\ ) + ( \sample_in[11]~input_o\ ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( \sample_in[13]~input_o\ ) + ( \sample_in[11]~input_o\ ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sample_in[11]~input_o\,
	datad => \ALT_INV_sample_in[13]~input_o\,
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X83_Y2_N29
\accumulate_sample[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~45_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][13]~q\);

-- Location: LABCELL_X83_Y2_N9
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( !sum(13) $ (!\accumulate_sample[1][13]~q\ $ (\accumulate_sample[0][13]~q\)) ) + ( \Add3~51\ ) + ( \Add3~50\ ))
-- \Add3~54\ = CARRY(( !sum(13) $ (!\accumulate_sample[1][13]~q\ $ (\accumulate_sample[0][13]~q\)) ) + ( \Add3~51\ ) + ( \Add3~50\ ))
-- \Add3~55\ = SHARE((!sum(13) & (\accumulate_sample[1][13]~q\ & \accumulate_sample[0][13]~q\)) # (sum(13) & ((\accumulate_sample[0][13]~q\) # (\accumulate_sample[1][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_sum(13),
	datac => \ALT_INV_accumulate_sample[1][13]~q\,
	datad => \ALT_INV_accumulate_sample[0][13]~q\,
	cin => \Add3~50\,
	sharein => \Add3~51\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\,
	shareout => \Add3~55\);

-- Location: MLABCELL_X84_Y3_N30
\Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( \Add3~53_sumout\ ) + ( prev_val_3(10) ) + ( \Add4~38\ ))
-- \Add4~42\ = CARRY(( \Add3~53_sumout\ ) + ( prev_val_3(10) ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_prev_val_3(10),
	datac => \ALT_INV_Add3~53_sumout\,
	cin => \Add4~38\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\);

-- Location: FF_X81_Y3_N28
\prev_val_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_1(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_2(11));

-- Location: FF_X84_Y3_N35
\prev_val_3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_2(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(11));

-- Location: LABCELL_X85_Y3_N57
\accumulate_sample[3][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[3][13]~feeder_combout\ = ( prev_val_3(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_val_3(11),
	combout => \accumulate_sample[3][13]~feeder_combout\);

-- Location: FF_X85_Y3_N59
\accumulate_sample[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[3][13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][13]~q\);

-- Location: LABCELL_X85_Y3_N33
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( \accumulate_sample[3][13]~q\ ) + ( \Add4~41_sumout\ ) + ( \Add5~42\ ))
-- \Add5~46\ = CARRY(( \accumulate_sample[3][13]~q\ ) + ( \Add4~41_sumout\ ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~41_sumout\,
	datac => \ALT_INV_accumulate_sample[3][13]~q\,
	cin => \Add5~42\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\);

-- Location: FF_X85_Y3_N34
\sum[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(13));

-- Location: FF_X82_Y3_N47
\prev_val_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_1(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_2(12));

-- Location: FF_X82_Y3_N14
\prev_val_3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_2(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(12));

-- Location: FF_X87_Y3_N1
\accumulate_sample[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_3(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][14]~q\);

-- Location: IOIBUF_X82_Y0_N58
\sample_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(14),
	o => \sample_in[14]~input_o\);

-- Location: LABCELL_X81_Y3_N36
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \sample_in[14]~input_o\ ) + ( \sample_in[12]~input_o\ ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( \sample_in[14]~input_o\ ) + ( \sample_in[12]~input_o\ ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sample_in[14]~input_o\,
	dataf => \ALT_INV_sample_in[12]~input_o\,
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X83_Y2_N20
\accumulate_sample[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~49_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][14]~q\);

-- Location: LABCELL_X81_Y3_N42
\prev_val_1[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_1[14]~feeder_combout\ = ( \sample_in[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sample_in[14]~input_o\,
	combout => \prev_val_1[14]~feeder_combout\);

-- Location: FF_X81_Y3_N43
\prev_val_1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_1[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_1(14));

-- Location: MLABCELL_X82_Y3_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( prev_val_1(14) ) + ( prev_val_1(12) ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( prev_val_1(14) ) + ( prev_val_1(12) ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_prev_val_1(14),
	datac => ALT_INV_prev_val_1(12),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X82_Y3_N37
\accumulate_sample[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[1][14]~q\);

-- Location: LABCELL_X83_Y2_N12
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( !\accumulate_sample[0][14]~q\ $ (!\accumulate_sample[1][14]~q\ $ (sum(14))) ) + ( \Add3~55\ ) + ( \Add3~54\ ))
-- \Add3~58\ = CARRY(( !\accumulate_sample[0][14]~q\ $ (!\accumulate_sample[1][14]~q\ $ (sum(14))) ) + ( \Add3~55\ ) + ( \Add3~54\ ))
-- \Add3~59\ = SHARE((!\accumulate_sample[0][14]~q\ & (\accumulate_sample[1][14]~q\ & sum(14))) # (\accumulate_sample[0][14]~q\ & ((sum(14)) # (\accumulate_sample[1][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[0][14]~q\,
	datac => \ALT_INV_accumulate_sample[1][14]~q\,
	datad => ALT_INV_sum(14),
	cin => \Add3~54\,
	sharein => \Add3~55\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\,
	shareout => \Add3~59\);

-- Location: MLABCELL_X84_Y3_N33
\Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( \Add3~57_sumout\ ) + ( prev_val_3(11) ) + ( \Add4~42\ ))
-- \Add4~46\ = CARRY(( \Add3~57_sumout\ ) + ( prev_val_3(11) ) + ( \Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_val_3(11),
	datac => \ALT_INV_Add3~57_sumout\,
	cin => \Add4~42\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\);

-- Location: LABCELL_X85_Y3_N36
\Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~49_sumout\ = SUM(( \Add4~45_sumout\ ) + ( \accumulate_sample[3][14]~q\ ) + ( \Add5~46\ ))
-- \Add5~50\ = CARRY(( \Add4~45_sumout\ ) + ( \accumulate_sample[3][14]~q\ ) + ( \Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[3][14]~q\,
	datad => \ALT_INV_Add4~45_sumout\,
	cin => \Add5~46\,
	sumout => \Add5~49_sumout\,
	cout => \Add5~50\);

-- Location: FF_X85_Y3_N38
\sum[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(14));

-- Location: FF_X82_Y3_N10
\prev_val_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_1(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_2(13));

-- Location: FF_X84_Y3_N8
\prev_val_3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_2(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(13));

-- Location: FF_X84_Y3_N2
\accumulate_sample[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_3(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][15]~q\);

-- Location: IOIBUF_X82_Y0_N75
\sample_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(15),
	o => \sample_in[15]~input_o\);

-- Location: LABCELL_X81_Y3_N39
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \sample_in[15]~input_o\ ) + ( \sample_in[13]~input_o\ ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sample_in[15]~input_o\,
	datab => \ALT_INV_sample_in[13]~input_o\,
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\);

-- Location: FF_X83_Y2_N11
\accumulate_sample[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~53_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][15]~q\);

-- Location: FF_X82_Y3_N2
\prev_val_1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_1(15));

-- Location: MLABCELL_X82_Y3_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( prev_val_1(15) ) + ( prev_val_1(13) ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_val_1(13),
	datad => ALT_INV_prev_val_1(15),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\);

-- Location: FF_X82_Y3_N40
\accumulate_sample[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[1][15]~q\);

-- Location: LABCELL_X83_Y2_N15
\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( !\accumulate_sample[0][15]~q\ $ (!\accumulate_sample[1][15]~q\ $ (sum(15))) ) + ( \Add3~59\ ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[0][15]~q\,
	datac => \ALT_INV_accumulate_sample[1][15]~q\,
	datad => ALT_INV_sum(15),
	cin => \Add3~58\,
	sharein => \Add3~59\,
	sumout => \Add3~61_sumout\);

-- Location: MLABCELL_X84_Y3_N36
\Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( \Add3~61_sumout\ ) + ( prev_val_3(12) ) + ( \Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_prev_val_3(12),
	datac => \ALT_INV_Add3~61_sumout\,
	cin => \Add4~46\,
	sumout => \Add4~49_sumout\);

-- Location: LABCELL_X85_Y3_N39
\Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~53_sumout\ = SUM(( \Add4~49_sumout\ ) + ( \accumulate_sample[3][15]~q\ ) + ( \Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[3][15]~q\,
	datad => \ALT_INV_Add4~49_sumout\,
	cin => \Add5~50\,
	sumout => \Add5~53_sumout\);

-- Location: FF_X85_Y3_N40
\sum[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(15));

-- Location: LABCELL_X16_Y66_N0
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


