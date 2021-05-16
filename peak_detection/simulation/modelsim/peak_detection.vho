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

-- DATE "05/16/2021 15:10:42"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
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
-- clock	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[0]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[1]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[3]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[4]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[5]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[6]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[7]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[8]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[9]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[10]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[11]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[12]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[13]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[14]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_input[15]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[0]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[1]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[3]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[5]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[6]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[7]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[8]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[9]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[11]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[12]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[13]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[14]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle_num[15]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[0]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[2]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[3]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[4]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[5]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[6]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[8]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[9]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[10]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[11]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[12]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[13]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[14]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_val[15]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[0]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[1]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[3]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[5]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[8]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[9]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[11]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[12]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[13]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[14]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_val[15]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \signal_input[0]~input_o\ : std_logic;
SIGNAL \signal_input[1]~input_o\ : std_logic;
SIGNAL \signal_input[2]~input_o\ : std_logic;
SIGNAL \signal_input[3]~input_o\ : std_logic;
SIGNAL \signal_input[4]~input_o\ : std_logic;
SIGNAL \signal_input[5]~input_o\ : std_logic;
SIGNAL \signal_input[6]~input_o\ : std_logic;
SIGNAL \signal_input[7]~input_o\ : std_logic;
SIGNAL \signal_input[8]~input_o\ : std_logic;
SIGNAL \signal_input[9]~input_o\ : std_logic;
SIGNAL \signal_input[10]~input_o\ : std_logic;
SIGNAL \signal_input[11]~input_o\ : std_logic;
SIGNAL \signal_input[12]~input_o\ : std_logic;
SIGNAL \signal_input[13]~input_o\ : std_logic;
SIGNAL \signal_input[14]~input_o\ : std_logic;
SIGNAL \signal_input[15]~input_o\ : std_logic;
SIGNAL \cycle_num[0]~input_o\ : std_logic;
SIGNAL \cycle_num[1]~input_o\ : std_logic;
SIGNAL \cycle_num[2]~input_o\ : std_logic;
SIGNAL \cycle_num[3]~input_o\ : std_logic;
SIGNAL \cycle_num[4]~input_o\ : std_logic;
SIGNAL \cycle_num[5]~input_o\ : std_logic;
SIGNAL \cycle_num[6]~input_o\ : std_logic;
SIGNAL \cycle_num[7]~input_o\ : std_logic;
SIGNAL \cycle_num[8]~input_o\ : std_logic;
SIGNAL \cycle_num[9]~input_o\ : std_logic;
SIGNAL \cycle_num[10]~input_o\ : std_logic;
SIGNAL \cycle_num[11]~input_o\ : std_logic;
SIGNAL \cycle_num[12]~input_o\ : std_logic;
SIGNAL \cycle_num[13]~input_o\ : std_logic;
SIGNAL \cycle_num[14]~input_o\ : std_logic;
SIGNAL \cycle_num[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_signal_input <= signal_input;
ww_cycle_num <= cycle_num;
max_val <= ww_max_val;
min_val <= ww_min_val;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X84_Y0_N53
\max_val[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(0));

-- Location: IOOBUF_X20_Y81_N2
\max_val[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(1));

-- Location: IOOBUF_X86_Y0_N36
\max_val[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(2));

-- Location: IOOBUF_X78_Y0_N2
\max_val[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(3));

-- Location: IOOBUF_X22_Y0_N53
\max_val[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(4));

-- Location: IOOBUF_X89_Y11_N45
\max_val[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(5));

-- Location: IOOBUF_X64_Y0_N19
\max_val[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(6));

-- Location: IOOBUF_X28_Y0_N2
\max_val[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(7));

-- Location: IOOBUF_X14_Y81_N53
\max_val[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(8));

-- Location: IOOBUF_X12_Y0_N36
\max_val[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(9));

-- Location: IOOBUF_X89_Y8_N22
\max_val[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(10));

-- Location: IOOBUF_X80_Y0_N19
\max_val[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(11));

-- Location: IOOBUF_X30_Y0_N53
\max_val[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(12));

-- Location: IOOBUF_X89_Y9_N5
\max_val[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(13));

-- Location: IOOBUF_X82_Y0_N93
\max_val[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(14));

-- Location: IOOBUF_X4_Y81_N53
\max_val[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_max_val(15));

-- Location: IOOBUF_X30_Y0_N2
\min_val[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(0));

-- Location: IOOBUF_X89_Y23_N56
\min_val[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(1));

-- Location: IOOBUF_X52_Y0_N36
\min_val[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(2));

-- Location: IOOBUF_X34_Y0_N93
\min_val[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(3));

-- Location: IOOBUF_X89_Y25_N5
\min_val[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(4));

-- Location: IOOBUF_X89_Y20_N45
\min_val[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(5));

-- Location: IOOBUF_X66_Y0_N42
\min_val[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(6));

-- Location: IOOBUF_X34_Y81_N42
\min_val[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(7));

-- Location: IOOBUF_X16_Y81_N2
\min_val[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(8));

-- Location: IOOBUF_X89_Y21_N22
\min_val[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(9));

-- Location: IOOBUF_X34_Y81_N76
\min_val[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(10));

-- Location: IOOBUF_X16_Y81_N36
\min_val[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(11));

-- Location: IOOBUF_X6_Y0_N53
\min_val[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(12));

-- Location: IOOBUF_X89_Y9_N22
\min_val[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(13));

-- Location: IOOBUF_X20_Y81_N53
\min_val[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(14));

-- Location: IOOBUF_X89_Y16_N39
\min_val[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_min_val(15));

-- Location: IOIBUF_X16_Y81_N52
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\signal_input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(0),
	o => \signal_input[0]~input_o\);

-- Location: IOIBUF_X86_Y0_N52
\signal_input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(1),
	o => \signal_input[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\signal_input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(2),
	o => \signal_input[2]~input_o\);

-- Location: IOIBUF_X89_Y11_N61
\signal_input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(3),
	o => \signal_input[3]~input_o\);

-- Location: IOIBUF_X12_Y81_N52
\signal_input[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(4),
	o => \signal_input[4]~input_o\);

-- Location: IOIBUF_X78_Y0_N52
\signal_input[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(5),
	o => \signal_input[5]~input_o\);

-- Location: IOIBUF_X89_Y16_N55
\signal_input[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(6),
	o => \signal_input[6]~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\signal_input[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(7),
	o => \signal_input[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\signal_input[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(8),
	o => \signal_input[8]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\signal_input[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(9),
	o => \signal_input[9]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\signal_input[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(10),
	o => \signal_input[10]~input_o\);

-- Location: IOIBUF_X26_Y81_N75
\signal_input[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(11),
	o => \signal_input[11]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\signal_input[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(12),
	o => \signal_input[12]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\signal_input[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(13),
	o => \signal_input[13]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\signal_input[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(14),
	o => \signal_input[14]~input_o\);

-- Location: IOIBUF_X14_Y81_N1
\signal_input[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_input(15),
	o => \signal_input[15]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\cycle_num[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(0),
	o => \cycle_num[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\cycle_num[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(1),
	o => \cycle_num[1]~input_o\);

-- Location: IOIBUF_X30_Y81_N1
\cycle_num[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(2),
	o => \cycle_num[2]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\cycle_num[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(3),
	o => \cycle_num[3]~input_o\);

-- Location: IOIBUF_X6_Y81_N18
\cycle_num[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(4),
	o => \cycle_num[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N52
\cycle_num[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(5),
	o => \cycle_num[5]~input_o\);

-- Location: IOIBUF_X76_Y0_N18
\cycle_num[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(6),
	o => \cycle_num[6]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\cycle_num[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(7),
	o => \cycle_num[7]~input_o\);

-- Location: IOIBUF_X28_Y81_N18
\cycle_num[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(8),
	o => \cycle_num[8]~input_o\);

-- Location: IOIBUF_X40_Y81_N52
\cycle_num[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(9),
	o => \cycle_num[9]~input_o\);

-- Location: IOIBUF_X30_Y81_N35
\cycle_num[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(10),
	o => \cycle_num[10]~input_o\);

-- Location: IOIBUF_X89_Y11_N78
\cycle_num[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(11),
	o => \cycle_num[11]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\cycle_num[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(12),
	o => \cycle_num[12]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\cycle_num[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(13),
	o => \cycle_num[13]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\cycle_num[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(14),
	o => \cycle_num[14]~input_o\);

-- Location: IOIBUF_X6_Y81_N1
\cycle_num[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle_num(15),
	o => \cycle_num[15]~input_o\);

-- Location: LABCELL_X81_Y29_N0
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


