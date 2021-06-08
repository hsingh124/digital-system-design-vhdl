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

-- DATE "05/19/2021 22:46:21"

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
-- acc_val[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[2]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[4]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[5]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[6]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[7]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[8]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[9]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[10]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[11]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[12]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[13]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[14]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_val[15]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[0]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[2]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[3]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[4]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[5]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[6]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[7]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[8]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[9]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[10]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[11]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[12]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[13]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[14]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[15]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~63\ : std_logic;
SIGNAL \Mult0~64\ : std_logic;
SIGNAL \Mult0~65\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~67\ : std_logic;
SIGNAL \Mult0~68\ : std_logic;
SIGNAL \Mult0~69\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sample_in[0]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][1]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[0][1]~q\ : std_logic;
SIGNAL \prev_val_2[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \prev_val_2[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \sample_in[1]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][2]~q\ : std_logic;
SIGNAL \sample_in[2]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][3]~q\ : std_logic;
SIGNAL \sample_in[3]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][4]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[0][4]~q\ : std_logic;
SIGNAL \sample_in[4]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][5]~q\ : std_logic;
SIGNAL \sample_in[5]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][6]~q\ : std_logic;
SIGNAL \sample_in[6]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][7]~q\ : std_logic;
SIGNAL \sample_in[7]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][8]~q\ : std_logic;
SIGNAL \sample_in[8]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][9]~q\ : std_logic;
SIGNAL \sample_in[9]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][10]~q\ : std_logic;
SIGNAL \sample_in[10]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][11]~q\ : std_logic;
SIGNAL \sample_in[11]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][12]~q\ : std_logic;
SIGNAL \sample_in[12]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][13]~q\ : std_logic;
SIGNAL \sample_in[13]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][14]~q\ : std_logic;
SIGNAL \sample_in[14]~input_o\ : std_logic;
SIGNAL \accumulate_sample[0][15]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[0][15]~q\ : std_logic;
SIGNAL \sample_in[15]~input_o\ : std_logic;
SIGNAL \accumulate_sample[2][0]\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add0~62_cout\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][1]~q\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \accumulate_sample[2][1]\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \accumulate_sample[3][1]~q\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \prev_val_2[1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \prev_val_2[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \prev_val_3[1]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][2]~q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][2]~q\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \accumulate_sample[2][2]\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \accumulate_sample[2][3]\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][3]~q\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \prev_val_2[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \accumulate_sample[3][3]~q\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \prev_val_2[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \accumulate_sample[3][4]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][4]~q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][4]~q\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \accumulate_sample[2][4]\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \accumulate_sample[2][5]\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][5]~q\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \prev_val_2[4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \prev_val_2[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \accumulate_sample[3][5]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][5]~q\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][6]~q\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \accumulate_sample[2][6]\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \prev_val_2[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \accumulate_sample[3][6]~q\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \prev_val_2[6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \prev_val_2[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \accumulate_sample[3][7]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][7]~q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][7]~q\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \accumulate_sample[2][7]\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \accumulate_sample[2][8]\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][8]~q\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \prev_val_2[7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \prev_val_2[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \accumulate_sample[3][8]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][8]~q\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \prev_val_2[8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \prev_val_2[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \prev_val_3[8]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][9]~q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][9]~q\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \accumulate_sample[2][9]\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \accumulate_sample[2][10]\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][10]~q\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \prev_val_2[9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \prev_val_2[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \accumulate_sample[3][10]~q\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \prev_val_2[10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \prev_val_2[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \accumulate_sample[3][11]~q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][11]~q\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \accumulate_sample[2][11]\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \accumulate_sample[2][12]\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][12]~q\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \prev_val_2[11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \prev_val_2[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \prev_val_3[11]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][12]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][12]~q\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \prev_val_2[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \accumulate_sample[3][13]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][13]~q\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][13]~q\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \accumulate_sample[2][13]\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~53_sumout\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~49_sumout\ : std_logic;
SIGNAL \prev_val_2[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \prev_val_3[13]~feeder_combout\ : std_logic;
SIGNAL \accumulate_sample[3][14]~q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][14]~q\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \accumulate_sample[2][14]\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~57_sumout\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~53_sumout\ : std_logic;
SIGNAL \prev_val_2[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \accumulate_sample[3][15]~q\ : std_logic;
SIGNAL \accumulate_sample[2][15]\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \accumulate_sample[1][15]~q\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~61_sumout\ : std_logic;
SIGNAL \Add5~54\ : std_logic;
SIGNAL \Add5~57_sumout\ : std_logic;
SIGNAL sum_2 : std_logic_vector(15 DOWNTO 0);
SIGNAL prev_val_3 : std_logic_vector(15 DOWNTO 0);
SIGNAL prev_val_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_sample_in[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sample_in[0]~input_o\ : std_logic;
SIGNAL ALT_INV_prev_val_1 : std_logic_vector(15 DOWNTO 15);
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
SIGNAL \ALT_INV_accumulate_sample[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_prev_val_2[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_prev_val_2[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_prev_val_2[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_prev_val_2[1]~_Duplicate_1_q\ : std_logic;
SIGNAL ALT_INV_prev_val_3 : std_logic_vector(12 DOWNTO 3);
SIGNAL \ALT_INV_accumulate_sample[2][15]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][14]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][13]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][12]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][11]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][10]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][9]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][8]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][7]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][6]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][5]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][4]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][3]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][2]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][1]\ : std_logic;
SIGNAL \ALT_INV_accumulate_sample[2][0]\ : std_logic;
SIGNAL \ALT_INV_Add4~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~53_sumout\ : std_logic;
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
SIGNAL \ALT_INV_accumulate_sample[0][1]~q\ : std_logic;
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
SIGNAL \ALT_INV_accumulate_sample[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_prev_val_2[0]~_Duplicate_1_q\ : std_logic;
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
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_sample_in <= sample_in;
acc_val <= ww_acc_val;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Mult0~8_ENA_bus\ <= (vcc & vcc & vcc);

\Mult0~8_AX_bus\ <= (vcc & gnd & gnd & vcc & gnd & vcc & vcc);

\Mult0~8_AY_bus\ <= (prev_val_1(15) & \accumulate_sample[0][15]~q\ & \accumulate_sample[0][14]~q\ & \accumulate_sample[0][13]~q\ & \accumulate_sample[0][12]~q\ & \accumulate_sample[0][11]~q\ & \accumulate_sample[0][10]~q\ & \accumulate_sample[0][9]~q\ & 
\accumulate_sample[0][8]~q\ & \accumulate_sample[0][7]~q\ & \accumulate_sample[0][6]~q\ & \accumulate_sample[0][5]~q\ & \accumulate_sample[0][4]~q\ & \accumulate_sample[0][3]~q\ & \accumulate_sample[0][2]~q\ & \accumulate_sample[0][1]~q\);

\accumulate_sample[2][0]\ <= \Mult0~8_RESULTA_bus\(0);
\accumulate_sample[2][1]\ <= \Mult0~8_RESULTA_bus\(1);
\accumulate_sample[2][2]\ <= \Mult0~8_RESULTA_bus\(2);
\accumulate_sample[2][3]\ <= \Mult0~8_RESULTA_bus\(3);
\accumulate_sample[2][4]\ <= \Mult0~8_RESULTA_bus\(4);
\accumulate_sample[2][5]\ <= \Mult0~8_RESULTA_bus\(5);
\accumulate_sample[2][6]\ <= \Mult0~8_RESULTA_bus\(6);
\accumulate_sample[2][7]\ <= \Mult0~8_RESULTA_bus\(7);
\accumulate_sample[2][8]\ <= \Mult0~8_RESULTA_bus\(8);
\accumulate_sample[2][9]\ <= \Mult0~8_RESULTA_bus\(9);
\accumulate_sample[2][10]\ <= \Mult0~8_RESULTA_bus\(10);
\accumulate_sample[2][11]\ <= \Mult0~8_RESULTA_bus\(11);
\accumulate_sample[2][12]\ <= \Mult0~8_RESULTA_bus\(12);
\accumulate_sample[2][13]\ <= \Mult0~8_RESULTA_bus\(13);
\accumulate_sample[2][14]\ <= \Mult0~8_RESULTA_bus\(14);
\accumulate_sample[2][15]\ <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(30);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(31);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(32);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(33);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(34);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(35);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(36);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(37);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(38);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~63\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~64\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~65\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~66\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~67\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~68\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~69\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~70\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~71\ <= \Mult0~8_RESULTA_bus\(63);
\ALT_INV_sample_in[14]~input_o\ <= NOT \sample_in[14]~input_o\;
\ALT_INV_sample_in[3]~input_o\ <= NOT \sample_in[3]~input_o\;
\ALT_INV_sample_in[0]~input_o\ <= NOT \sample_in[0]~input_o\;
ALT_INV_prev_val_1(15) <= NOT prev_val_1(15);
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
\ALT_INV_accumulate_sample[0][4]~q\ <= NOT \accumulate_sample[0][4]~q\;
\ALT_INV_accumulate_sample[1][4]~q\ <= NOT \accumulate_sample[1][4]~q\;
\ALT_INV_accumulate_sample[0][3]~q\ <= NOT \accumulate_sample[0][3]~q\;
\ALT_INV_accumulate_sample[1][3]~q\ <= NOT \accumulate_sample[1][3]~q\;
\ALT_INV_accumulate_sample[0][2]~q\ <= NOT \accumulate_sample[0][2]~q\;
\ALT_INV_accumulate_sample[1][2]~q\ <= NOT \accumulate_sample[1][2]~q\;
\ALT_INV_accumulate_sample[1][1]~q\ <= NOT \accumulate_sample[1][1]~q\;
\ALT_INV_prev_val_2[13]~_Duplicate_1_q\ <= NOT \prev_val_2[13]~_Duplicate_1_q\;
\ALT_INV_prev_val_2[11]~_Duplicate_1_q\ <= NOT \prev_val_2[11]~_Duplicate_1_q\;
\ALT_INV_prev_val_2[8]~_Duplicate_1_q\ <= NOT \prev_val_2[8]~_Duplicate_1_q\;
\ALT_INV_prev_val_2[1]~_Duplicate_1_q\ <= NOT \prev_val_2[1]~_Duplicate_1_q\;
ALT_INV_prev_val_3(12) <= NOT prev_val_3(12);
ALT_INV_prev_val_3(11) <= NOT prev_val_3(11);
\ALT_INV_accumulate_sample[2][15]\ <= NOT \accumulate_sample[2][15]\;
\ALT_INV_accumulate_sample[2][14]\ <= NOT \accumulate_sample[2][14]\;
\ALT_INV_accumulate_sample[2][13]\ <= NOT \accumulate_sample[2][13]\;
\ALT_INV_accumulate_sample[2][12]\ <= NOT \accumulate_sample[2][12]\;
\ALT_INV_accumulate_sample[2][11]\ <= NOT \accumulate_sample[2][11]\;
\ALT_INV_accumulate_sample[2][10]\ <= NOT \accumulate_sample[2][10]\;
\ALT_INV_accumulate_sample[2][9]\ <= NOT \accumulate_sample[2][9]\;
\ALT_INV_accumulate_sample[2][8]\ <= NOT \accumulate_sample[2][8]\;
\ALT_INV_accumulate_sample[2][7]\ <= NOT \accumulate_sample[2][7]\;
\ALT_INV_accumulate_sample[2][6]\ <= NOT \accumulate_sample[2][6]\;
\ALT_INV_accumulate_sample[2][5]\ <= NOT \accumulate_sample[2][5]\;
\ALT_INV_accumulate_sample[2][4]\ <= NOT \accumulate_sample[2][4]\;
\ALT_INV_accumulate_sample[2][3]\ <= NOT \accumulate_sample[2][3]\;
\ALT_INV_accumulate_sample[2][2]\ <= NOT \accumulate_sample[2][2]\;
\ALT_INV_accumulate_sample[2][1]\ <= NOT \accumulate_sample[2][1]\;
\ALT_INV_accumulate_sample[2][0]\ <= NOT \accumulate_sample[2][0]\;
\ALT_INV_Add4~61_sumout\ <= NOT \Add4~61_sumout\;
\ALT_INV_Add4~57_sumout\ <= NOT \Add4~57_sumout\;
\ALT_INV_Add4~53_sumout\ <= NOT \Add4~53_sumout\;
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
ALT_INV_prev_val_3(7) <= NOT prev_val_3(7);
ALT_INV_prev_val_3(6) <= NOT prev_val_3(6);
ALT_INV_prev_val_3(4) <= NOT prev_val_3(4);
ALT_INV_prev_val_3(3) <= NOT prev_val_3(3);
\ALT_INV_accumulate_sample[0][1]~q\ <= NOT \accumulate_sample[0][1]~q\;
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
\ALT_INV_accumulate_sample[3][1]~q\ <= NOT \accumulate_sample[3][1]~q\;
\ALT_INV_prev_val_2[0]~_Duplicate_1_q\ <= NOT \prev_val_2[0]~_Duplicate_1_q\;
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
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;

-- Location: IOOBUF_X84_Y0_N2
\acc_val[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(0),
	devoe => ww_devoe,
	o => ww_acc_val(0));

-- Location: IOOBUF_X89_Y8_N5
\acc_val[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(1),
	devoe => ww_devoe,
	o => ww_acc_val(1));

-- Location: IOOBUF_X86_Y0_N36
\acc_val[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(2),
	devoe => ww_devoe,
	o => ww_acc_val(2));

-- Location: IOOBUF_X88_Y0_N3
\acc_val[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(3),
	devoe => ww_devoe,
	o => ww_acc_val(3));

-- Location: IOOBUF_X89_Y4_N62
\acc_val[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(4),
	devoe => ww_devoe,
	o => ww_acc_val(4));

-- Location: IOOBUF_X89_Y6_N39
\acc_val[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(5),
	devoe => ww_devoe,
	o => ww_acc_val(5));

-- Location: IOOBUF_X86_Y0_N53
\acc_val[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(6),
	devoe => ww_devoe,
	o => ww_acc_val(6));

-- Location: IOOBUF_X88_Y0_N54
\acc_val[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(7),
	devoe => ww_devoe,
	o => ww_acc_val(7));

-- Location: IOOBUF_X88_Y0_N20
\acc_val[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(8),
	devoe => ww_devoe,
	o => ww_acc_val(8));

-- Location: IOOBUF_X88_Y0_N37
\acc_val[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(9),
	devoe => ww_devoe,
	o => ww_acc_val(9));

-- Location: IOOBUF_X86_Y0_N19
\acc_val[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(10),
	devoe => ww_devoe,
	o => ww_acc_val(10));

-- Location: IOOBUF_X89_Y4_N79
\acc_val[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(11),
	devoe => ww_devoe,
	o => ww_acc_val(11));

-- Location: IOOBUF_X89_Y6_N5
\acc_val[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(12),
	devoe => ww_devoe,
	o => ww_acc_val(12));

-- Location: IOOBUF_X89_Y4_N96
\acc_val[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(13),
	devoe => ww_devoe,
	o => ww_acc_val(13));

-- Location: IOOBUF_X89_Y4_N45
\acc_val[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(14),
	devoe => ww_devoe,
	o => ww_acc_val(14));

-- Location: IOOBUF_X89_Y8_N56
\acc_val[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum_2(15),
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

-- Location: IOIBUF_X82_Y0_N92
\sample_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(0),
	o => \sample_in[0]~input_o\);

-- Location: LABCELL_X83_Y3_N48
\accumulate_sample[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[0][1]~feeder_combout\ = ( \sample_in[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sample_in[0]~input_o\,
	combout => \accumulate_sample[0][1]~feeder_combout\);

-- Location: FF_X83_Y3_N50
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

-- Location: MLABCELL_X84_Y3_N48
\prev_val_2[0]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_2[0]~_Duplicate_1feeder_combout\ = ( \accumulate_sample[0][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_accumulate_sample[0][1]~q\,
	combout => \prev_val_2[0]~_Duplicate_1feeder_combout\);

-- Location: FF_X84_Y3_N50
\prev_val_2[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_2[0]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[0]~_Duplicate_1_q\);

-- Location: IOIBUF_X84_Y0_N18
\sample_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(1),
	o => \sample_in[1]~input_o\);

-- Location: FF_X83_Y3_N56
\accumulate_sample[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][2]~q\);

-- Location: IOIBUF_X84_Y0_N52
\sample_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(2),
	o => \sample_in[2]~input_o\);

-- Location: FF_X83_Y3_N5
\accumulate_sample[0][3]\ : dffeas
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
	q => \accumulate_sample[0][3]~q\);

-- Location: IOIBUF_X80_Y0_N52
\sample_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(3),
	o => \sample_in[3]~input_o\);

-- Location: LABCELL_X83_Y3_N51
\accumulate_sample[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[0][4]~feeder_combout\ = ( \sample_in[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sample_in[3]~input_o\,
	combout => \accumulate_sample[0][4]~feeder_combout\);

-- Location: FF_X83_Y3_N53
\accumulate_sample[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[0][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][4]~q\);

-- Location: IOIBUF_X84_Y0_N35
\sample_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(4),
	o => \sample_in[4]~input_o\);

-- Location: FF_X83_Y3_N59
\accumulate_sample[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][5]~q\);

-- Location: IOIBUF_X86_Y0_N1
\sample_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(5),
	o => \sample_in[5]~input_o\);

-- Location: FF_X83_Y3_N17
\accumulate_sample[0][6]\ : dffeas
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
	q => \accumulate_sample[0][6]~q\);

-- Location: IOIBUF_X78_Y0_N52
\sample_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(6),
	o => \sample_in[6]~input_o\);

-- Location: FF_X83_Y3_N11
\accumulate_sample[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][7]~q\);

-- Location: IOIBUF_X80_Y0_N1
\sample_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(7),
	o => \sample_in[7]~input_o\);

-- Location: FF_X83_Y3_N23
\accumulate_sample[0][8]\ : dffeas
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
	q => \accumulate_sample[0][8]~q\);

-- Location: IOIBUF_X78_Y0_N1
\sample_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(8),
	o => \sample_in[8]~input_o\);

-- Location: FF_X83_Y3_N26
\accumulate_sample[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][9]~q\);

-- Location: IOIBUF_X78_Y0_N18
\sample_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(9),
	o => \sample_in[9]~input_o\);

-- Location: FF_X83_Y3_N29
\accumulate_sample[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][10]~q\);

-- Location: IOIBUF_X82_Y0_N75
\sample_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(10),
	o => \sample_in[10]~input_o\);

-- Location: FF_X83_Y3_N32
\accumulate_sample[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][11]~q\);

-- Location: IOIBUF_X82_Y0_N41
\sample_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(11),
	o => \sample_in[11]~input_o\);

-- Location: FF_X83_Y3_N44
\accumulate_sample[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sample_in[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][12]~q\);

-- Location: IOIBUF_X80_Y0_N35
\sample_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(12),
	o => \sample_in[12]~input_o\);

-- Location: FF_X83_Y3_N38
\accumulate_sample[0][13]\ : dffeas
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
	q => \accumulate_sample[0][13]~q\);

-- Location: IOIBUF_X80_Y0_N18
\sample_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(13),
	o => \sample_in[13]~input_o\);

-- Location: FF_X83_Y3_N41
\accumulate_sample[0][14]\ : dffeas
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
	q => \accumulate_sample[0][14]~q\);

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

-- Location: MLABCELL_X82_Y3_N54
\accumulate_sample[0][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[0][15]~feeder_combout\ = ( \sample_in[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sample_in[14]~input_o\,
	combout => \accumulate_sample[0][15]~feeder_combout\);

-- Location: FF_X82_Y3_N56
\accumulate_sample[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[0][15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[0][15]~q\);

-- Location: IOIBUF_X89_Y6_N55
\sample_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(15),
	o => \sample_in[15]~input_o\);

-- Location: FF_X88_Y6_N26
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

-- Location: DSP_X86_Y4_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 7,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 16,
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
	operation_mode => "m18x18_full",
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
	aclr => \Mult0~8_ACLR_bus\,
	clk => \Mult0~8_CLK_bus\,
	ena => \Mult0~8_ENA_bus\,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: MLABCELL_X84_Y3_N0
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( \accumulate_sample[2][0]\ ) + ( \prev_val_2[0]~_Duplicate_1_q\ ) + ( !VCC ))
-- \Add4~2\ = CARRY(( \accumulate_sample[2][0]\ ) + ( \prev_val_2[0]~_Duplicate_1_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_prev_val_2[0]~_Duplicate_1_q\,
	datad => \ALT_INV_accumulate_sample[2][0]\,
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: FF_X84_Y3_N1
\sum_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_2(0));

-- Location: MLABCELL_X82_Y3_N0
\Add0~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~62_cout\ = CARRY(( \accumulate_sample[0][1]~q\ ) + ( !VCC ) + ( !VCC ))
-- \Add0~63\ = SHARE(!\accumulate_sample[0][1]~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_accumulate_sample[0][1]~q\,
	cin => GND,
	sharein => GND,
	cout => \Add0~62_cout\,
	shareout => \Add0~63\);

-- Location: MLABCELL_X82_Y3_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\accumulate_sample[0][2]~q\ ) + ( \Add0~63\ ) + ( \Add0~62_cout\ ))
-- \Add0~2\ = CARRY(( !\accumulate_sample[0][2]~q\ ) + ( \Add0~63\ ) + ( \Add0~62_cout\ ))
-- \Add0~3\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[0][2]~q\,
	cin => \Add0~62_cout\,
	sharein => \Add0~63\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\,
	shareout => \Add0~3\);

-- Location: FF_X83_Y3_N47
\accumulate_sample[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[1][1]~q\);

-- Location: LABCELL_X83_Y3_N0
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( \accumulate_sample[1][1]~q\ ) + ( \accumulate_sample[0][1]~q\ ) + ( !VCC ))
-- \Add3~2\ = CARRY(( \accumulate_sample[1][1]~q\ ) + ( \accumulate_sample[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[0][1]~q\,
	datad => \ALT_INV_accumulate_sample[1][1]~q\,
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: MLABCELL_X84_Y3_N3
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( \accumulate_sample[2][1]\ ) + ( \Add3~1_sumout\ ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( \accumulate_sample[2][1]\ ) + ( \Add3~1_sumout\ ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~1_sumout\,
	datad => \ALT_INV_accumulate_sample[2][1]\,
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: FF_X84_Y3_N23
\prev_val_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \prev_val_2[0]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(0));

-- Location: FF_X85_Y3_N47
\accumulate_sample[3][1]\ : dffeas
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
	q => \accumulate_sample[3][1]~q\);

-- Location: LABCELL_X85_Y3_N0
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( \accumulate_sample[3][1]~q\ ) + ( \Add4~5_sumout\ ) + ( !VCC ))
-- \Add5~2\ = CARRY(( \accumulate_sample[3][1]~q\ ) + ( \Add4~5_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~5_sumout\,
	datad => \ALT_INV_accumulate_sample[3][1]~q\,
	cin => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: FF_X85_Y3_N1
\sum_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_2(1));

-- Location: MLABCELL_X87_Y3_N27
\prev_val_2[1]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_2[1]~_Duplicate_1feeder_combout\ = ( \accumulate_sample[0][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_accumulate_sample[0][2]~q\,
	combout => \prev_val_2[1]~_Duplicate_1feeder_combout\);

-- Location: FF_X87_Y3_N28
\prev_val_2[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_2[1]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[1]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y3_N24
\prev_val_3[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_3[1]~feeder_combout\ = ( \prev_val_2[1]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_prev_val_2[1]~_Duplicate_1_q\,
	combout => \prev_val_3[1]~feeder_combout\);

-- Location: FF_X87_Y3_N25
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

-- Location: FF_X85_Y3_N49
\accumulate_sample[3][2]\ : dffeas
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
	q => \accumulate_sample[3][2]~q\);

-- Location: MLABCELL_X82_Y3_N6
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\accumulate_sample[0][3]~q\ ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\accumulate_sample[0][3]~q\ ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[0][3]~q\,
	cin => \Add0~2\,
	sharein => \Add0~3\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

-- Location: FF_X83_Y3_N35
\accumulate_sample[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[1][2]~q\);

-- Location: LABCELL_X83_Y3_N3
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( \accumulate_sample[0][2]~q\ ) + ( \accumulate_sample[1][2]~q\ ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( \accumulate_sample[0][2]~q\ ) + ( \accumulate_sample[1][2]~q\ ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[1][2]~q\,
	datad => \ALT_INV_accumulate_sample[0][2]~q\,
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: MLABCELL_X84_Y3_N6
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( \accumulate_sample[2][2]\ ) + ( \Add3~5_sumout\ ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( \accumulate_sample[2][2]\ ) + ( \Add3~5_sumout\ ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add3~5_sumout\,
	datac => \ALT_INV_accumulate_sample[2][2]\,
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: LABCELL_X85_Y3_N3
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( \Add4~9_sumout\ ) + ( \accumulate_sample[3][2]~q\ ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( \Add4~9_sumout\ ) + ( \accumulate_sample[3][2]~q\ ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[3][2]~q\,
	datad => \ALT_INV_Add4~9_sumout\,
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: FF_X85_Y3_N4
\sum_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_2(2));

-- Location: MLABCELL_X82_Y3_N9
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\accumulate_sample[0][4]~q\ ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\accumulate_sample[0][4]~q\ ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[0][4]~q\,
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

-- Location: FF_X82_Y3_N10
\accumulate_sample[1][3]\ : dffeas
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
	q => \accumulate_sample[1][3]~q\);

-- Location: LABCELL_X83_Y3_N6
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \accumulate_sample[1][3]~q\ ) + ( \accumulate_sample[0][3]~q\ ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( \accumulate_sample[1][3]~q\ ) + ( \accumulate_sample[0][3]~q\ ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[1][3]~q\,
	datac => \ALT_INV_accumulate_sample[0][3]~q\,
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: MLABCELL_X84_Y3_N9
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( \Add3~9_sumout\ ) + ( \accumulate_sample[2][3]\ ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( \Add3~9_sumout\ ) + ( \accumulate_sample[2][3]\ ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[2][3]\,
	datad => \ALT_INV_Add3~9_sumout\,
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: FF_X84_Y4_N8
\prev_val_2[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \accumulate_sample[0][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[2]~_Duplicate_1_q\);

-- Location: FF_X84_Y4_N52
\prev_val_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \prev_val_2[2]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(2));

-- Location: FF_X85_Y3_N53
\accumulate_sample[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_3(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][3]~q\);

-- Location: LABCELL_X85_Y3_N6
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( \Add4~13_sumout\ ) + ( \accumulate_sample[3][3]~q\ ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( \Add4~13_sumout\ ) + ( \accumulate_sample[3][3]~q\ ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~13_sumout\,
	datac => \ALT_INV_accumulate_sample[3][3]~q\,
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: FF_X85_Y3_N7
\sum_2[3]\ : dffeas
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
	q => sum_2(3));

-- Location: FF_X82_Y3_N50
\prev_val_2[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \accumulate_sample[0][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[3]~_Duplicate_1_q\);

-- Location: FF_X82_Y3_N52
\prev_val_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \prev_val_2[3]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(3));

-- Location: LABCELL_X85_Y3_N54
\accumulate_sample[3][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[3][4]~feeder_combout\ = ( prev_val_3(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_val_3(3),
	combout => \accumulate_sample[3][4]~feeder_combout\);

-- Location: FF_X85_Y3_N55
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

-- Location: MLABCELL_X82_Y3_N12
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\accumulate_sample[0][5]~q\ $ (\accumulate_sample[0][1]~q\) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\accumulate_sample[0][5]~q\ $ (\accumulate_sample[0][1]~q\) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~15\ = SHARE((!\accumulate_sample[0][5]~q\ & \accumulate_sample[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[0][5]~q\,
	datad => \ALT_INV_accumulate_sample[0][1]~q\,
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\,
	shareout => \Add0~15\);

-- Location: FF_X82_Y3_N13
\accumulate_sample[1][4]\ : dffeas
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
	q => \accumulate_sample[1][4]~q\);

-- Location: LABCELL_X83_Y3_N9
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( \accumulate_sample[1][4]~q\ ) + ( \accumulate_sample[0][4]~q\ ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( \accumulate_sample[1][4]~q\ ) + ( \accumulate_sample[0][4]~q\ ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[0][4]~q\,
	datad => \ALT_INV_accumulate_sample[1][4]~q\,
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: MLABCELL_X84_Y3_N12
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( \accumulate_sample[2][4]\ ) + ( \Add3~13_sumout\ ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( \accumulate_sample[2][4]\ ) + ( \Add3~13_sumout\ ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_accumulate_sample[2][4]\,
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: LABCELL_X85_Y3_N9
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( \Add4~17_sumout\ ) + ( \accumulate_sample[3][4]~q\ ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( \Add4~17_sumout\ ) + ( \accumulate_sample[3][4]~q\ ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[3][4]~q\,
	datad => \ALT_INV_Add4~17_sumout\,
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X85_Y3_N10
\sum_2[4]\ : dffeas
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
	q => sum_2(4));

-- Location: MLABCELL_X82_Y3_N15
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\accumulate_sample[0][2]~q\ $ (\accumulate_sample[0][6]~q\) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !\accumulate_sample[0][2]~q\ $ (\accumulate_sample[0][6]~q\) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~19\ = SHARE((\accumulate_sample[0][2]~q\ & !\accumulate_sample[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[0][2]~q\,
	datad => \ALT_INV_accumulate_sample[0][6]~q\,
	cin => \Add0~14\,
	sharein => \Add0~15\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\,
	shareout => \Add0~19\);

-- Location: FF_X82_Y3_N16
\accumulate_sample[1][5]\ : dffeas
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
	q => \accumulate_sample[1][5]~q\);

-- Location: LABCELL_X83_Y3_N12
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( \accumulate_sample[0][5]~q\ ) + ( \accumulate_sample[1][5]~q\ ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( \accumulate_sample[0][5]~q\ ) + ( \accumulate_sample[1][5]~q\ ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[1][5]~q\,
	datad => \ALT_INV_accumulate_sample[0][5]~q\,
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: MLABCELL_X84_Y3_N15
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( \Add3~17_sumout\ ) + ( \accumulate_sample[2][5]\ ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( \Add3~17_sumout\ ) + ( \accumulate_sample[2][5]\ ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[2][5]\,
	datad => \ALT_INV_Add3~17_sumout\,
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: LABCELL_X85_Y4_N15
\prev_val_2[4]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_2[4]~_Duplicate_1feeder_combout\ = ( \accumulate_sample[0][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_accumulate_sample[0][5]~q\,
	combout => \prev_val_2[4]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y4_N17
\prev_val_2[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_2[4]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[4]~_Duplicate_1_q\);

-- Location: FF_X85_Y4_N53
\prev_val_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \prev_val_2[4]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(4));

-- Location: LABCELL_X85_Y4_N12
\accumulate_sample[3][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[3][5]~feeder_combout\ = prev_val_3(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_prev_val_3(4),
	combout => \accumulate_sample[3][5]~feeder_combout\);

-- Location: FF_X85_Y4_N13
\accumulate_sample[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[3][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][5]~q\);

-- Location: LABCELL_X85_Y3_N12
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( \Add4~21_sumout\ ) + ( \accumulate_sample[3][5]~q\ ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( \Add4~21_sumout\ ) + ( \accumulate_sample[3][5]~q\ ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~21_sumout\,
	datac => \ALT_INV_accumulate_sample[3][5]~q\,
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X85_Y3_N13
\sum_2[5]\ : dffeas
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
	q => sum_2(5));

-- Location: MLABCELL_X82_Y3_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\accumulate_sample[0][3]~q\ $ (\accumulate_sample[0][7]~q\) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !\accumulate_sample[0][3]~q\ $ (\accumulate_sample[0][7]~q\) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~23\ = SHARE((\accumulate_sample[0][3]~q\ & !\accumulate_sample[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[0][3]~q\,
	datad => \ALT_INV_accumulate_sample[0][7]~q\,
	cin => \Add0~18\,
	sharein => \Add0~19\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\,
	shareout => \Add0~23\);

-- Location: FF_X82_Y3_N19
\accumulate_sample[1][6]\ : dffeas
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
	q => \accumulate_sample[1][6]~q\);

-- Location: LABCELL_X83_Y3_N15
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( \accumulate_sample[1][6]~q\ ) + ( \accumulate_sample[0][6]~q\ ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( \accumulate_sample[1][6]~q\ ) + ( \accumulate_sample[0][6]~q\ ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[0][6]~q\,
	datad => \ALT_INV_accumulate_sample[1][6]~q\,
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: MLABCELL_X84_Y3_N18
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( \accumulate_sample[2][6]\ ) + ( \Add3~21_sumout\ ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( \accumulate_sample[2][6]\ ) + ( \Add3~21_sumout\ ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add3~21_sumout\,
	datad => \ALT_INV_accumulate_sample[2][6]\,
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: FF_X85_Y4_N38
\prev_val_2[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \accumulate_sample[0][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[5]~_Duplicate_1_q\);

-- Location: FF_X85_Y4_N35
\prev_val_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \prev_val_2[5]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(5));

-- Location: FF_X85_Y4_N32
\accumulate_sample[3][6]\ : dffeas
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
	q => \accumulate_sample[3][6]~q\);

-- Location: LABCELL_X85_Y3_N15
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( \accumulate_sample[3][6]~q\ ) + ( \Add4~25_sumout\ ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( \accumulate_sample[3][6]~q\ ) + ( \Add4~25_sumout\ ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~25_sumout\,
	datad => \ALT_INV_accumulate_sample[3][6]~q\,
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: FF_X85_Y3_N16
\sum_2[6]\ : dffeas
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
	q => sum_2(6));

-- Location: LABCELL_X85_Y4_N42
\prev_val_2[6]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_2[6]~_Duplicate_1feeder_combout\ = ( \accumulate_sample[0][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_accumulate_sample[0][7]~q\,
	combout => \prev_val_2[6]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y4_N44
\prev_val_2[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_2[6]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[6]~_Duplicate_1_q\);

-- Location: FF_X85_Y4_N10
\prev_val_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \prev_val_2[6]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(6));

-- Location: LABCELL_X85_Y3_N57
\accumulate_sample[3][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[3][7]~feeder_combout\ = ( prev_val_3(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_val_3(6),
	combout => \accumulate_sample[3][7]~feeder_combout\);

-- Location: FF_X85_Y3_N59
\accumulate_sample[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[3][7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][7]~q\);

-- Location: MLABCELL_X82_Y3_N21
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !\accumulate_sample[0][4]~q\ $ (\accumulate_sample[0][8]~q\) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !\accumulate_sample[0][4]~q\ $ (\accumulate_sample[0][8]~q\) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~27\ = SHARE((\accumulate_sample[0][4]~q\ & !\accumulate_sample[0][8]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[0][4]~q\,
	datad => \ALT_INV_accumulate_sample[0][8]~q\,
	cin => \Add0~22\,
	sharein => \Add0~23\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\,
	shareout => \Add0~27\);

-- Location: FF_X82_Y3_N22
\accumulate_sample[1][7]\ : dffeas
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
	q => \accumulate_sample[1][7]~q\);

-- Location: LABCELL_X83_Y3_N18
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( \accumulate_sample[1][7]~q\ ) + ( \accumulate_sample[0][7]~q\ ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( \accumulate_sample[1][7]~q\ ) + ( \accumulate_sample[0][7]~q\ ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[0][7]~q\,
	datad => \ALT_INV_accumulate_sample[1][7]~q\,
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: MLABCELL_X84_Y3_N21
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( \accumulate_sample[2][7]\ ) + ( \Add3~25_sumout\ ) + ( \Add4~26\ ))
-- \Add4~30\ = CARRY(( \accumulate_sample[2][7]\ ) + ( \Add3~25_sumout\ ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~25_sumout\,
	datad => \ALT_INV_accumulate_sample[2][7]\,
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: LABCELL_X85_Y3_N18
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( \Add4~29_sumout\ ) + ( \accumulate_sample[3][7]~q\ ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( \Add4~29_sumout\ ) + ( \accumulate_sample[3][7]~q\ ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[3][7]~q\,
	datad => \ALT_INV_Add4~29_sumout\,
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: FF_X85_Y3_N19
\sum_2[7]\ : dffeas
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
	q => sum_2(7));

-- Location: MLABCELL_X82_Y3_N24
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !\accumulate_sample[0][9]~q\ $ (\accumulate_sample[0][5]~q\) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !\accumulate_sample[0][9]~q\ $ (\accumulate_sample[0][5]~q\) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~31\ = SHARE((!\accumulate_sample[0][9]~q\ & \accumulate_sample[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[0][9]~q\,
	datad => \ALT_INV_accumulate_sample[0][5]~q\,
	cin => \Add0~26\,
	sharein => \Add0~27\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\,
	shareout => \Add0~31\);

-- Location: FF_X82_Y3_N25
\accumulate_sample[1][8]\ : dffeas
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
	q => \accumulate_sample[1][8]~q\);

-- Location: LABCELL_X83_Y3_N21
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( \accumulate_sample[0][8]~q\ ) + ( \accumulate_sample[1][8]~q\ ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( \accumulate_sample[0][8]~q\ ) + ( \accumulate_sample[1][8]~q\ ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[1][8]~q\,
	datad => \ALT_INV_accumulate_sample[0][8]~q\,
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: MLABCELL_X84_Y3_N24
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( \Add3~29_sumout\ ) + ( \accumulate_sample[2][8]\ ) + ( \Add4~30\ ))
-- \Add4~34\ = CARRY(( \Add3~29_sumout\ ) + ( \accumulate_sample[2][8]\ ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[2][8]\,
	datad => \ALT_INV_Add3~29_sumout\,
	cin => \Add4~30\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: MLABCELL_X87_Y3_N6
\prev_val_2[7]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_2[7]~_Duplicate_1feeder_combout\ = ( \accumulate_sample[0][8]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_accumulate_sample[0][8]~q\,
	combout => \prev_val_2[7]~_Duplicate_1feeder_combout\);

-- Location: FF_X87_Y3_N8
\prev_val_2[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_2[7]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[7]~_Duplicate_1_q\);

-- Location: FF_X87_Y3_N53
\prev_val_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \prev_val_2[7]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(7));

-- Location: MLABCELL_X87_Y3_N48
\accumulate_sample[3][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[3][8]~feeder_combout\ = prev_val_3(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_prev_val_3(7),
	combout => \accumulate_sample[3][8]~feeder_combout\);

-- Location: FF_X87_Y3_N49
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

-- Location: LABCELL_X85_Y3_N21
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( \accumulate_sample[3][8]~q\ ) + ( \Add4~33_sumout\ ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( \accumulate_sample[3][8]~q\ ) + ( \Add4~33_sumout\ ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~33_sumout\,
	datad => \ALT_INV_accumulate_sample[3][8]~q\,
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X85_Y3_N22
\sum_2[8]\ : dffeas
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
	q => sum_2(8));

-- Location: MLABCELL_X87_Y3_N57
\prev_val_2[8]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_2[8]~_Duplicate_1feeder_combout\ = ( \accumulate_sample[0][9]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_accumulate_sample[0][9]~q\,
	combout => \prev_val_2[8]~_Duplicate_1feeder_combout\);

-- Location: FF_X87_Y3_N58
\prev_val_2[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_2[8]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[8]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y3_N54
\prev_val_3[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_3[8]~feeder_combout\ = ( \prev_val_2[8]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_prev_val_2[8]~_Duplicate_1_q\,
	combout => \prev_val_3[8]~feeder_combout\);

-- Location: FF_X87_Y3_N56
\prev_val_3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_3[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(8));

-- Location: FF_X87_Y3_N10
\accumulate_sample[3][9]\ : dffeas
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
	q => \accumulate_sample[3][9]~q\);

-- Location: MLABCELL_X82_Y3_N27
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !\accumulate_sample[0][6]~q\ $ (\accumulate_sample[0][10]~q\) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( !\accumulate_sample[0][6]~q\ $ (\accumulate_sample[0][10]~q\) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~35\ = SHARE((\accumulate_sample[0][6]~q\ & !\accumulate_sample[0][10]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[0][6]~q\,
	datad => \ALT_INV_accumulate_sample[0][10]~q\,
	cin => \Add0~30\,
	sharein => \Add0~31\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\,
	shareout => \Add0~35\);

-- Location: FF_X82_Y3_N28
\accumulate_sample[1][9]\ : dffeas
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
	q => \accumulate_sample[1][9]~q\);

-- Location: LABCELL_X83_Y3_N24
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( \accumulate_sample[1][9]~q\ ) + ( \accumulate_sample[0][9]~q\ ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( \accumulate_sample[1][9]~q\ ) + ( \accumulate_sample[0][9]~q\ ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[0][9]~q\,
	datad => \ALT_INV_accumulate_sample[1][9]~q\,
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: MLABCELL_X84_Y3_N27
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( \accumulate_sample[2][9]\ ) + ( \Add3~33_sumout\ ) + ( \Add4~34\ ))
-- \Add4~38\ = CARRY(( \accumulate_sample[2][9]\ ) + ( \Add3~33_sumout\ ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~33_sumout\,
	datad => \ALT_INV_accumulate_sample[2][9]\,
	cin => \Add4~34\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: LABCELL_X85_Y3_N24
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( \Add4~37_sumout\ ) + ( \accumulate_sample[3][9]~q\ ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( \Add4~37_sumout\ ) + ( \accumulate_sample[3][9]~q\ ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[3][9]~q\,
	datad => \ALT_INV_Add4~37_sumout\,
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: FF_X85_Y3_N25
\sum_2[9]\ : dffeas
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
	q => sum_2(9));

-- Location: MLABCELL_X82_Y3_N30
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !\accumulate_sample[0][11]~q\ $ (\accumulate_sample[0][7]~q\) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( !\accumulate_sample[0][11]~q\ $ (\accumulate_sample[0][7]~q\) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~39\ = SHARE((!\accumulate_sample[0][11]~q\ & \accumulate_sample[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[0][11]~q\,
	datad => \ALT_INV_accumulate_sample[0][7]~q\,
	cin => \Add0~34\,
	sharein => \Add0~35\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\,
	shareout => \Add0~39\);

-- Location: FF_X82_Y3_N31
\accumulate_sample[1][10]\ : dffeas
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
	q => \accumulate_sample[1][10]~q\);

-- Location: LABCELL_X83_Y3_N27
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( \accumulate_sample[0][10]~q\ ) + ( \accumulate_sample[1][10]~q\ ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( \accumulate_sample[0][10]~q\ ) + ( \accumulate_sample[1][10]~q\ ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[1][10]~q\,
	datad => \ALT_INV_accumulate_sample[0][10]~q\,
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: MLABCELL_X84_Y3_N30
\Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( \Add3~37_sumout\ ) + ( \accumulate_sample[2][10]\ ) + ( \Add4~38\ ))
-- \Add4~42\ = CARRY(( \Add3~37_sumout\ ) + ( \accumulate_sample[2][10]\ ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[2][10]\,
	datad => \ALT_INV_Add3~37_sumout\,
	cin => \Add4~38\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\);

-- Location: MLABCELL_X87_Y3_N42
\prev_val_2[9]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_2[9]~_Duplicate_1feeder_combout\ = ( \accumulate_sample[0][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_accumulate_sample[0][10]~q\,
	combout => \prev_val_2[9]~_Duplicate_1feeder_combout\);

-- Location: FF_X87_Y3_N44
\prev_val_2[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_2[9]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[9]~_Duplicate_1_q\);

-- Location: FF_X87_Y3_N5
\prev_val_3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \prev_val_2[9]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(9));

-- Location: FF_X87_Y3_N1
\accumulate_sample[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_3(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][10]~q\);

-- Location: LABCELL_X85_Y3_N27
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( \accumulate_sample[3][10]~q\ ) + ( \Add4~41_sumout\ ) + ( \Add5~34\ ))
-- \Add5~38\ = CARRY(( \accumulate_sample[3][10]~q\ ) + ( \Add4~41_sumout\ ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~41_sumout\,
	datad => \ALT_INV_accumulate_sample[3][10]~q\,
	cin => \Add5~34\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: FF_X85_Y3_N28
\sum_2[10]\ : dffeas
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
	q => sum_2(10));

-- Location: MLABCELL_X87_Y3_N18
\prev_val_2[10]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_2[10]~_Duplicate_1feeder_combout\ = ( \accumulate_sample[0][11]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_accumulate_sample[0][11]~q\,
	combout => \prev_val_2[10]~_Duplicate_1feeder_combout\);

-- Location: FF_X87_Y3_N20
\prev_val_2[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_2[10]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[10]~_Duplicate_1_q\);

-- Location: FF_X87_Y3_N38
\prev_val_3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \prev_val_2[10]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(10));

-- Location: FF_X87_Y3_N22
\accumulate_sample[3][11]\ : dffeas
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
	q => \accumulate_sample[3][11]~q\);

-- Location: MLABCELL_X82_Y3_N33
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( !\accumulate_sample[0][12]~q\ $ (\accumulate_sample[0][8]~q\) ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( !\accumulate_sample[0][12]~q\ $ (\accumulate_sample[0][8]~q\) ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~43\ = SHARE((!\accumulate_sample[0][12]~q\ & \accumulate_sample[0][8]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[0][12]~q\,
	datad => \ALT_INV_accumulate_sample[0][8]~q\,
	cin => \Add0~38\,
	sharein => \Add0~39\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\,
	shareout => \Add0~43\);

-- Location: FF_X82_Y3_N34
\accumulate_sample[1][11]\ : dffeas
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
	q => \accumulate_sample[1][11]~q\);

-- Location: LABCELL_X83_Y3_N30
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( \accumulate_sample[1][11]~q\ ) + ( \accumulate_sample[0][11]~q\ ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( \accumulate_sample[1][11]~q\ ) + ( \accumulate_sample[0][11]~q\ ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[0][11]~q\,
	datad => \ALT_INV_accumulate_sample[1][11]~q\,
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: MLABCELL_X84_Y3_N33
\Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( \accumulate_sample[2][11]\ ) + ( \Add3~41_sumout\ ) + ( \Add4~42\ ))
-- \Add4~46\ = CARRY(( \accumulate_sample[2][11]\ ) + ( \Add3~41_sumout\ ) + ( \Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~41_sumout\,
	datad => \ALT_INV_accumulate_sample[2][11]\,
	cin => \Add4~42\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\);

-- Location: LABCELL_X85_Y3_N30
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( \Add4~45_sumout\ ) + ( \accumulate_sample[3][11]~q\ ) + ( \Add5~38\ ))
-- \Add5~42\ = CARRY(( \Add4~45_sumout\ ) + ( \accumulate_sample[3][11]~q\ ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[3][11]~q\,
	datad => \ALT_INV_Add4~45_sumout\,
	cin => \Add5~38\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\);

-- Location: FF_X85_Y3_N31
\sum_2[11]\ : dffeas
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
	q => sum_2(11));

-- Location: MLABCELL_X82_Y3_N36
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( !\accumulate_sample[0][9]~q\ $ (\accumulate_sample[0][13]~q\) ) + ( \Add0~43\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( !\accumulate_sample[0][9]~q\ $ (\accumulate_sample[0][13]~q\) ) + ( \Add0~43\ ) + ( \Add0~42\ ))
-- \Add0~47\ = SHARE((\accumulate_sample[0][9]~q\ & !\accumulate_sample[0][13]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[0][9]~q\,
	datad => \ALT_INV_accumulate_sample[0][13]~q\,
	cin => \Add0~42\,
	sharein => \Add0~43\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\,
	shareout => \Add0~47\);

-- Location: FF_X82_Y3_N37
\accumulate_sample[1][12]\ : dffeas
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
	q => \accumulate_sample[1][12]~q\);

-- Location: LABCELL_X83_Y3_N33
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( \accumulate_sample[1][12]~q\ ) + ( \accumulate_sample[0][12]~q\ ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( \accumulate_sample[1][12]~q\ ) + ( \accumulate_sample[0][12]~q\ ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[1][12]~q\,
	datac => \ALT_INV_accumulate_sample[0][12]~q\,
	cin => \Add3~42\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: MLABCELL_X84_Y3_N36
\Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( \Add3~45_sumout\ ) + ( \accumulate_sample[2][12]\ ) + ( \Add4~46\ ))
-- \Add4~50\ = CARRY(( \Add3~45_sumout\ ) + ( \accumulate_sample[2][12]\ ) + ( \Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[2][12]\,
	datad => \ALT_INV_Add3~45_sumout\,
	cin => \Add4~46\,
	sumout => \Add4~49_sumout\,
	cout => \Add4~50\);

-- Location: MLABCELL_X87_Y3_N15
\prev_val_2[11]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_2[11]~_Duplicate_1feeder_combout\ = ( \accumulate_sample[0][12]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_accumulate_sample[0][12]~q\,
	combout => \prev_val_2[11]~_Duplicate_1feeder_combout\);

-- Location: FF_X87_Y3_N17
\prev_val_2[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_2[11]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[11]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y3_N12
\prev_val_3[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_3[11]~feeder_combout\ = \prev_val_2[11]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_prev_val_2[11]~_Duplicate_1_q\,
	combout => \prev_val_3[11]~feeder_combout\);

-- Location: FF_X87_Y3_N14
\prev_val_3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_3[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(11));

-- Location: MLABCELL_X87_Y3_N39
\accumulate_sample[3][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[3][12]~feeder_combout\ = prev_val_3(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_prev_val_3(11),
	combout => \accumulate_sample[3][12]~feeder_combout\);

-- Location: FF_X87_Y3_N40
\accumulate_sample[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulate_sample[3][12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][12]~q\);

-- Location: LABCELL_X85_Y3_N33
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( \Add4~49_sumout\ ) + ( \accumulate_sample[3][12]~q\ ) + ( \Add5~42\ ))
-- \Add5~46\ = CARRY(( \Add4~49_sumout\ ) + ( \accumulate_sample[3][12]~q\ ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~49_sumout\,
	datac => \ALT_INV_accumulate_sample[3][12]~q\,
	cin => \Add5~42\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\);

-- Location: FF_X85_Y3_N34
\sum_2[12]\ : dffeas
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
	q => sum_2(12));

-- Location: FF_X83_Y3_N14
\prev_val_2[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \accumulate_sample[0][13]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[12]~_Duplicate_1_q\);

-- Location: FF_X83_Y3_N2
\prev_val_3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \prev_val_2[12]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(12));

-- Location: MLABCELL_X84_Y3_N54
\accumulate_sample[3][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulate_sample[3][13]~feeder_combout\ = ( prev_val_3(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_val_3(12),
	combout => \accumulate_sample[3][13]~feeder_combout\);

-- Location: FF_X84_Y3_N55
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

-- Location: MLABCELL_X82_Y3_N39
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( !\accumulate_sample[0][14]~q\ $ (\accumulate_sample[0][10]~q\) ) + ( \Add0~47\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( !\accumulate_sample[0][14]~q\ $ (\accumulate_sample[0][10]~q\) ) + ( \Add0~47\ ) + ( \Add0~46\ ))
-- \Add0~51\ = SHARE((!\accumulate_sample[0][14]~q\ & \accumulate_sample[0][10]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[0][14]~q\,
	datad => \ALT_INV_accumulate_sample[0][10]~q\,
	cin => \Add0~46\,
	sharein => \Add0~47\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\,
	shareout => \Add0~51\);

-- Location: FF_X82_Y3_N40
\accumulate_sample[1][13]\ : dffeas
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
	q => \accumulate_sample[1][13]~q\);

-- Location: LABCELL_X83_Y3_N36
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( \accumulate_sample[1][13]~q\ ) + ( \accumulate_sample[0][13]~q\ ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( \accumulate_sample[1][13]~q\ ) + ( \accumulate_sample[0][13]~q\ ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[1][13]~q\,
	datac => \ALT_INV_accumulate_sample[0][13]~q\,
	cin => \Add3~46\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: MLABCELL_X84_Y3_N39
\Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~53_sumout\ = SUM(( \accumulate_sample[2][13]\ ) + ( \Add3~49_sumout\ ) + ( \Add4~50\ ))
-- \Add4~54\ = CARRY(( \accumulate_sample[2][13]\ ) + ( \Add3~49_sumout\ ) + ( \Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~49_sumout\,
	datad => \ALT_INV_accumulate_sample[2][13]\,
	cin => \Add4~50\,
	sumout => \Add4~53_sumout\,
	cout => \Add4~54\);

-- Location: LABCELL_X85_Y3_N36
\Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~49_sumout\ = SUM(( \Add4~53_sumout\ ) + ( \accumulate_sample[3][13]~q\ ) + ( \Add5~46\ ))
-- \Add5~50\ = CARRY(( \Add4~53_sumout\ ) + ( \accumulate_sample[3][13]~q\ ) + ( \Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[3][13]~q\,
	datac => \ALT_INV_Add4~53_sumout\,
	cin => \Add5~46\,
	sumout => \Add5~49_sumout\,
	cout => \Add5~50\);

-- Location: FF_X85_Y3_N37
\sum_2[13]\ : dffeas
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
	q => sum_2(13));

-- Location: FF_X83_Y3_N20
\prev_val_2[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \accumulate_sample[0][14]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[13]~_Duplicate_1_q\);

-- Location: MLABCELL_X84_Y3_N51
\prev_val_3[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prev_val_3[13]~feeder_combout\ = ( \prev_val_2[13]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_prev_val_2[13]~_Duplicate_1_q\,
	combout => \prev_val_3[13]~feeder_combout\);

-- Location: FF_X84_Y3_N53
\prev_val_3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prev_val_3[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(13));

-- Location: FF_X84_Y3_N26
\accumulate_sample[3][14]\ : dffeas
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
	q => \accumulate_sample[3][14]~q\);

-- Location: MLABCELL_X82_Y3_N42
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( !\accumulate_sample[0][11]~q\ $ (\accumulate_sample[0][15]~q\) ) + ( \Add0~51\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( !\accumulate_sample[0][11]~q\ $ (\accumulate_sample[0][15]~q\) ) + ( \Add0~51\ ) + ( \Add0~50\ ))
-- \Add0~55\ = SHARE((\accumulate_sample[0][11]~q\ & !\accumulate_sample[0][15]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[0][11]~q\,
	datad => \ALT_INV_accumulate_sample[0][15]~q\,
	cin => \Add0~50\,
	sharein => \Add0~51\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\,
	shareout => \Add0~55\);

-- Location: FF_X82_Y3_N43
\accumulate_sample[1][14]\ : dffeas
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
	q => \accumulate_sample[1][14]~q\);

-- Location: LABCELL_X83_Y3_N39
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( \accumulate_sample[1][14]~q\ ) + ( \accumulate_sample[0][14]~q\ ) + ( \Add3~50\ ))
-- \Add3~54\ = CARRY(( \accumulate_sample[1][14]~q\ ) + ( \accumulate_sample[0][14]~q\ ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[0][14]~q\,
	datad => \ALT_INV_accumulate_sample[1][14]~q\,
	cin => \Add3~50\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: MLABCELL_X84_Y3_N42
\Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~57_sumout\ = SUM(( \accumulate_sample[2][14]\ ) + ( \Add3~53_sumout\ ) + ( \Add4~54\ ))
-- \Add4~58\ = CARRY(( \accumulate_sample[2][14]\ ) + ( \Add3~53_sumout\ ) + ( \Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~53_sumout\,
	datad => \ALT_INV_accumulate_sample[2][14]\,
	cin => \Add4~54\,
	sumout => \Add4~57_sumout\,
	cout => \Add4~58\);

-- Location: LABCELL_X85_Y3_N39
\Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~53_sumout\ = SUM(( \Add4~57_sumout\ ) + ( \accumulate_sample[3][14]~q\ ) + ( \Add5~50\ ))
-- \Add5~54\ = CARRY(( \Add4~57_sumout\ ) + ( \accumulate_sample[3][14]~q\ ) + ( \Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[3][14]~q\,
	datad => \ALT_INV_Add4~57_sumout\,
	cin => \Add5~50\,
	sumout => \Add5~53_sumout\,
	cout => \Add5~54\);

-- Location: FF_X85_Y3_N40
\sum_2[14]\ : dffeas
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
	q => sum_2(14));

-- Location: FF_X83_Y3_N8
\prev_val_2[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \accumulate_sample[0][15]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_val_2[14]~_Duplicate_1_q\);

-- Location: FF_X87_Y3_N32
\prev_val_3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \prev_val_2[14]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val_3(14));

-- Location: FF_X87_Y3_N34
\accumulate_sample[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => prev_val_3(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[3][15]~q\);

-- Location: MLABCELL_X82_Y3_N45
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( !\accumulate_sample[0][12]~q\ $ (prev_val_1(15)) ) + ( \Add0~55\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[0][12]~q\,
	datad => ALT_INV_prev_val_1(15),
	cin => \Add0~54\,
	sharein => \Add0~55\,
	sumout => \Add0~57_sumout\);

-- Location: FF_X82_Y3_N46
\accumulate_sample[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulate_sample[1][15]~q\);

-- Location: LABCELL_X83_Y3_N42
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( \accumulate_sample[0][15]~q\ ) + ( \accumulate_sample[1][15]~q\ ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_accumulate_sample[1][15]~q\,
	datad => \ALT_INV_accumulate_sample[0][15]~q\,
	cin => \Add3~54\,
	sumout => \Add3~57_sumout\);

-- Location: MLABCELL_X84_Y3_N45
\Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~61_sumout\ = SUM(( \Add3~57_sumout\ ) + ( \accumulate_sample[2][15]\ ) + ( \Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_accumulate_sample[2][15]\,
	datad => \ALT_INV_Add3~57_sumout\,
	cin => \Add4~58\,
	sumout => \Add4~61_sumout\);

-- Location: LABCELL_X85_Y3_N42
\Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~57_sumout\ = SUM(( \Add4~61_sumout\ ) + ( \accumulate_sample[3][15]~q\ ) + ( \Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_accumulate_sample[3][15]~q\,
	datac => \ALT_INV_Add4~61_sumout\,
	cin => \Add5~54\,
	sumout => \Add5~57_sumout\);

-- Location: FF_X85_Y3_N43
\sum_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_2(15));

-- Location: LABCELL_X63_Y18_N0
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


