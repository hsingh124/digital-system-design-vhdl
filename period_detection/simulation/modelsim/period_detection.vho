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

-- DATE "06/08/2021 19:16:14"

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

ENTITY 	freqDetect IS
    PORT (
	clock : IN std_logic;
	recv : IN std_logic_vector(15 DOWNTO 0);
	sample_count : OUT std_logic_vector(7 DOWNTO 0)
	);
END freqDetect;

-- Design Ports Information
-- sample_count[0]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_count[1]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_count[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_count[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_count[4]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_count[5]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_count[6]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_count[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[2]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[3]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[4]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[6]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[7]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[8]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[10]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[11]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[12]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[14]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv[15]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF freqDetect IS
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
SIGNAL ww_recv : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sample_count : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \count[0]~0_combout\ : std_logic;
SIGNAL \recv[12]~input_o\ : std_logic;
SIGNAL \recv[11]~input_o\ : std_logic;
SIGNAL \recv[13]~input_o\ : std_logic;
SIGNAL \initial[13]~feeder_combout\ : std_logic;
SIGNAL \flag~0_combout\ : std_logic;
SIGNAL \flag~q\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \recv[14]~input_o\ : std_logic;
SIGNAL \recv[15]~input_o\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \recv[1]~input_o\ : std_logic;
SIGNAL \recv[0]~input_o\ : std_logic;
SIGNAL \initial[1]~feeder_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \recv[5]~input_o\ : std_logic;
SIGNAL \recv[7]~input_o\ : std_logic;
SIGNAL \recv[6]~input_o\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \recv[4]~input_o\ : std_logic;
SIGNAL \recv[3]~input_o\ : std_logic;
SIGNAL \recv[2]~input_o\ : std_logic;
SIGNAL \initial[2]~feeder_combout\ : std_logic;
SIGNAL \initial[4]~feeder_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \recv[9]~input_o\ : std_logic;
SIGNAL \recv[10]~input_o\ : std_logic;
SIGNAL \recv[8]~input_o\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \sample_count[0]~reg0_q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \sample_count[1]~reg0_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \sample_count[2]~reg0_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \sample_count[3]~reg0_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \sample_count[4]~reg0_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \sample_count[5]~reg0_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \sample_count[6]~reg0_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \sample_count[7]~reg0_q\ : std_logic;
SIGNAL count : std_logic_vector(7 DOWNTO 0);
SIGNAL initial : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_recv[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv[0]~input_o\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL ALT_INV_initial : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_flag~q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_recv <= recv;
sample_count <= ww_sample_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_recv[15]~input_o\ <= NOT \recv[15]~input_o\;
\ALT_INV_recv[14]~input_o\ <= NOT \recv[14]~input_o\;
\ALT_INV_recv[13]~input_o\ <= NOT \recv[13]~input_o\;
\ALT_INV_recv[12]~input_o\ <= NOT \recv[12]~input_o\;
\ALT_INV_recv[11]~input_o\ <= NOT \recv[11]~input_o\;
\ALT_INV_recv[10]~input_o\ <= NOT \recv[10]~input_o\;
\ALT_INV_recv[9]~input_o\ <= NOT \recv[9]~input_o\;
\ALT_INV_recv[8]~input_o\ <= NOT \recv[8]~input_o\;
\ALT_INV_recv[7]~input_o\ <= NOT \recv[7]~input_o\;
\ALT_INV_recv[6]~input_o\ <= NOT \recv[6]~input_o\;
\ALT_INV_recv[5]~input_o\ <= NOT \recv[5]~input_o\;
\ALT_INV_recv[4]~input_o\ <= NOT \recv[4]~input_o\;
\ALT_INV_recv[3]~input_o\ <= NOT \recv[3]~input_o\;
\ALT_INV_recv[2]~input_o\ <= NOT \recv[2]~input_o\;
\ALT_INV_recv[1]~input_o\ <= NOT \recv[1]~input_o\;
\ALT_INV_recv[0]~input_o\ <= NOT \recv[0]~input_o\;
ALT_INV_count(7) <= NOT count(7);
ALT_INV_count(6) <= NOT count(6);
ALT_INV_count(5) <= NOT count(5);
ALT_INV_count(4) <= NOT count(4);
ALT_INV_count(3) <= NOT count(3);
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(1) <= NOT count(1);
\ALT_INV_process_0~6_combout\ <= NOT \process_0~6_combout\;
\ALT_INV_process_0~5_combout\ <= NOT \process_0~5_combout\;
ALT_INV_initial(15) <= NOT initial(15);
ALT_INV_initial(14) <= NOT initial(14);
\ALT_INV_process_0~4_combout\ <= NOT \process_0~4_combout\;
ALT_INV_initial(13) <= NOT initial(13);
ALT_INV_initial(12) <= NOT initial(12);
ALT_INV_initial(11) <= NOT initial(11);
\ALT_INV_process_0~3_combout\ <= NOT \process_0~3_combout\;
ALT_INV_initial(10) <= NOT initial(10);
ALT_INV_initial(9) <= NOT initial(9);
ALT_INV_initial(8) <= NOT initial(8);
\ALT_INV_process_0~2_combout\ <= NOT \process_0~2_combout\;
ALT_INV_initial(7) <= NOT initial(7);
ALT_INV_initial(6) <= NOT initial(6);
ALT_INV_initial(5) <= NOT initial(5);
\ALT_INV_process_0~1_combout\ <= NOT \process_0~1_combout\;
ALT_INV_initial(4) <= NOT initial(4);
ALT_INV_initial(3) <= NOT initial(3);
ALT_INV_initial(2) <= NOT initial(2);
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
ALT_INV_initial(1) <= NOT initial(1);
ALT_INV_initial(0) <= NOT initial(0);
\ALT_INV_flag~q\ <= NOT \flag~q\;
ALT_INV_count(0) <= NOT count(0);

-- Location: IOOBUF_X89_Y6_N56
\sample_count[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sample_count[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sample_count(0));

-- Location: IOOBUF_X89_Y6_N39
\sample_count[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sample_count[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sample_count(1));

-- Location: IOOBUF_X89_Y8_N5
\sample_count[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sample_count[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sample_count(2));

-- Location: IOOBUF_X89_Y6_N22
\sample_count[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sample_count[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sample_count(3));

-- Location: IOOBUF_X89_Y8_N39
\sample_count[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sample_count[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sample_count(4));

-- Location: IOOBUF_X89_Y8_N56
\sample_count[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sample_count[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sample_count(5));

-- Location: IOOBUF_X80_Y0_N36
\sample_count[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sample_count[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sample_count(6));

-- Location: IOOBUF_X89_Y6_N5
\sample_count[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sample_count[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sample_count(7));

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

-- Location: LABCELL_X80_Y10_N51
\count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[0]~0_combout\ = ( !count(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_count(0),
	combout => \count[0]~0_combout\);

-- Location: IOIBUF_X89_Y13_N38
\recv[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(12),
	o => \recv[12]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\recv[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(11),
	o => \recv[11]~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\recv[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(13),
	o => \recv[13]~input_o\);

-- Location: LABCELL_X81_Y10_N39
\initial[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \initial[13]~feeder_combout\ = ( \recv[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_recv[13]~input_o\,
	combout => \initial[13]~feeder_combout\);

-- Location: MLABCELL_X82_Y10_N30
\flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag~0_combout\ = ( !\process_0~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_process_0~6_combout\,
	combout => \flag~0_combout\);

-- Location: FF_X82_Y10_N32
flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag~q\);

-- Location: FF_X81_Y10_N41
\initial[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \initial[13]~feeder_combout\,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(13));

-- Location: FF_X81_Y10_N47
\initial[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv[11]~input_o\,
	sload => VCC,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(11));

-- Location: FF_X81_Y10_N26
\initial[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv[12]~input_o\,
	sload => VCC,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(12));

-- Location: LABCELL_X81_Y10_N48
\process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = ( initial(11) & ( initial(12) & ( (\recv[12]~input_o\ & (\recv[11]~input_o\ & (!\recv[13]~input_o\ $ (initial(13))))) ) ) ) # ( !initial(11) & ( initial(12) & ( (\recv[12]~input_o\ & (!\recv[11]~input_o\ & (!\recv[13]~input_o\ $ 
-- (initial(13))))) ) ) ) # ( initial(11) & ( !initial(12) & ( (!\recv[12]~input_o\ & (\recv[11]~input_o\ & (!\recv[13]~input_o\ $ (initial(13))))) ) ) ) # ( !initial(11) & ( !initial(12) & ( (!\recv[12]~input_o\ & (!\recv[11]~input_o\ & (!\recv[13]~input_o\ 
-- $ (initial(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv[12]~input_o\,
	datab => \ALT_INV_recv[11]~input_o\,
	datac => \ALT_INV_recv[13]~input_o\,
	datad => ALT_INV_initial(13),
	datae => ALT_INV_initial(11),
	dataf => ALT_INV_initial(12),
	combout => \process_0~4_combout\);

-- Location: IOIBUF_X89_Y9_N4
\recv[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(14),
	o => \recv[14]~input_o\);

-- Location: IOIBUF_X89_Y15_N38
\recv[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(15),
	o => \recv[15]~input_o\);

-- Location: FF_X81_Y10_N23
\initial[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv[14]~input_o\,
	sload => VCC,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(14));

-- Location: FF_X81_Y10_N11
\initial[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv[15]~input_o\,
	sload => VCC,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(15));

-- Location: LABCELL_X81_Y10_N30
\process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = ( initial(14) & ( initial(15) & ( (\recv[14]~input_o\ & \recv[15]~input_o\) ) ) ) # ( !initial(14) & ( initial(15) & ( (!\recv[14]~input_o\ & \recv[15]~input_o\) ) ) ) # ( initial(14) & ( !initial(15) & ( (\recv[14]~input_o\ & 
-- !\recv[15]~input_o\) ) ) ) # ( !initial(14) & ( !initial(15) & ( (!\recv[14]~input_o\ & !\recv[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000000001010000010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv[14]~input_o\,
	datac => \ALT_INV_recv[15]~input_o\,
	datae => ALT_INV_initial(14),
	dataf => ALT_INV_initial(15),
	combout => \process_0~5_combout\);

-- Location: IOIBUF_X89_Y11_N78
\recv[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(1),
	o => \recv[1]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\recv[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(0),
	o => \recv[0]~input_o\);

-- Location: LABCELL_X81_Y10_N42
\initial[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \initial[1]~feeder_combout\ = ( \recv[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_recv[1]~input_o\,
	combout => \initial[1]~feeder_combout\);

-- Location: FF_X81_Y10_N44
\initial[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \initial[1]~feeder_combout\,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(1));

-- Location: FF_X81_Y10_N5
\initial[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(0));

-- Location: LABCELL_X81_Y10_N6
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( initial(0) & ( \flag~q\ & ( (\recv[0]~input_o\ & (!\recv[1]~input_o\ $ (initial(1)))) ) ) ) # ( !initial(0) & ( \flag~q\ & ( (!\recv[0]~input_o\ & (!\recv[1]~input_o\ $ (initial(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000010001000010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv[1]~input_o\,
	datab => \ALT_INV_recv[0]~input_o\,
	datad => ALT_INV_initial(1),
	datae => ALT_INV_initial(0),
	dataf => \ALT_INV_flag~q\,
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X89_Y15_N55
\recv[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(5),
	o => \recv[5]~input_o\);

-- Location: IOIBUF_X89_Y11_N95
\recv[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(7),
	o => \recv[7]~input_o\);

-- Location: IOIBUF_X89_Y13_N55
\recv[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(6),
	o => \recv[6]~input_o\);

-- Location: FF_X82_Y10_N56
\initial[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv[7]~input_o\,
	sload => VCC,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(7));

-- Location: FF_X81_Y10_N7
\initial[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv[5]~input_o\,
	sload => VCC,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(5));

-- Location: FF_X81_Y10_N16
\initial[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv[6]~input_o\,
	sload => VCC,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(6));

-- Location: LABCELL_X81_Y10_N18
\process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = ( initial(5) & ( initial(6) & ( (\recv[5]~input_o\ & (\recv[6]~input_o\ & (!\recv[7]~input_o\ $ (initial(7))))) ) ) ) # ( !initial(5) & ( initial(6) & ( (!\recv[5]~input_o\ & (\recv[6]~input_o\ & (!\recv[7]~input_o\ $ 
-- (initial(7))))) ) ) ) # ( initial(5) & ( !initial(6) & ( (\recv[5]~input_o\ & (!\recv[6]~input_o\ & (!\recv[7]~input_o\ $ (initial(7))))) ) ) ) # ( !initial(5) & ( !initial(6) & ( (!\recv[5]~input_o\ & (!\recv[6]~input_o\ & (!\recv[7]~input_o\ $ 
-- (initial(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv[5]~input_o\,
	datab => \ALT_INV_recv[7]~input_o\,
	datac => \ALT_INV_recv[6]~input_o\,
	datad => ALT_INV_initial(7),
	datae => ALT_INV_initial(5),
	dataf => ALT_INV_initial(6),
	combout => \process_0~2_combout\);

-- Location: IOIBUF_X89_Y13_N21
\recv[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(4),
	o => \recv[4]~input_o\);

-- Location: IOIBUF_X89_Y15_N4
\recv[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(3),
	o => \recv[3]~input_o\);

-- Location: IOIBUF_X89_Y13_N4
\recv[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(2),
	o => \recv[2]~input_o\);

-- Location: LABCELL_X81_Y10_N36
\initial[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \initial[2]~feeder_combout\ = ( \recv[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_recv[2]~input_o\,
	combout => \initial[2]~feeder_combout\);

-- Location: FF_X81_Y10_N38
\initial[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \initial[2]~feeder_combout\,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(2));

-- Location: LABCELL_X81_Y10_N27
\initial[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \initial[4]~feeder_combout\ = ( \recv[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_recv[4]~input_o\,
	combout => \initial[4]~feeder_combout\);

-- Location: FF_X81_Y10_N29
\initial[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \initial[4]~feeder_combout\,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(4));

-- Location: FF_X81_Y10_N19
\initial[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(3));

-- Location: LABCELL_X81_Y10_N0
\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( initial(4) & ( initial(3) & ( (\recv[4]~input_o\ & (\recv[3]~input_o\ & (!initial(2) $ (\recv[2]~input_o\)))) ) ) ) # ( !initial(4) & ( initial(3) & ( (!\recv[4]~input_o\ & (\recv[3]~input_o\ & (!initial(2) $ 
-- (\recv[2]~input_o\)))) ) ) ) # ( initial(4) & ( !initial(3) & ( (\recv[4]~input_o\ & (!\recv[3]~input_o\ & (!initial(2) $ (\recv[2]~input_o\)))) ) ) ) # ( !initial(4) & ( !initial(3) & ( (!\recv[4]~input_o\ & (!\recv[3]~input_o\ & (!initial(2) $ 
-- (\recv[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv[4]~input_o\,
	datab => \ALT_INV_recv[3]~input_o\,
	datac => ALT_INV_initial(2),
	datad => \ALT_INV_recv[2]~input_o\,
	datae => ALT_INV_initial(4),
	dataf => ALT_INV_initial(3),
	combout => \process_0~1_combout\);

-- Location: IOIBUF_X89_Y11_N61
\recv[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(9),
	o => \recv[9]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\recv[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(10),
	o => \recv[10]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\recv[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_recv(8),
	o => \recv[8]~input_o\);

-- Location: FF_X81_Y10_N28
\initial[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv[8]~input_o\,
	sload => VCC,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(8));

-- Location: FF_X81_Y10_N2
\initial[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv[10]~input_o\,
	sload => VCC,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(10));

-- Location: FF_X81_Y10_N14
\initial[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv[9]~input_o\,
	sload => VCC,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => initial(9));

-- Location: LABCELL_X81_Y10_N15
\process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = ( initial(10) & ( initial(9) & ( (\recv[9]~input_o\ & (\recv[10]~input_o\ & (!initial(8) $ (\recv[8]~input_o\)))) ) ) ) # ( !initial(10) & ( initial(9) & ( (\recv[9]~input_o\ & (!\recv[10]~input_o\ & (!initial(8) $ 
-- (\recv[8]~input_o\)))) ) ) ) # ( initial(10) & ( !initial(9) & ( (!\recv[9]~input_o\ & (\recv[10]~input_o\ & (!initial(8) $ (\recv[8]~input_o\)))) ) ) ) # ( !initial(10) & ( !initial(9) & ( (!\recv[9]~input_o\ & (!\recv[10]~input_o\ & (!initial(8) $ 
-- (\recv[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv[9]~input_o\,
	datab => \ALT_INV_recv[10]~input_o\,
	datac => ALT_INV_initial(8),
	datad => \ALT_INV_recv[8]~input_o\,
	datae => ALT_INV_initial(10),
	dataf => ALT_INV_initial(9),
	combout => \process_0~3_combout\);

-- Location: LABCELL_X81_Y10_N57
\process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = ( \process_0~1_combout\ & ( \process_0~3_combout\ & ( (\process_0~4_combout\ & (\process_0~5_combout\ & (\process_0~0_combout\ & \process_0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~4_combout\,
	datab => \ALT_INV_process_0~5_combout\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_process_0~2_combout\,
	datae => \ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_process_0~3_combout\,
	combout => \process_0~6_combout\);

-- Location: FF_X80_Y10_N53
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \count[0]~0_combout\,
	ena => \ALT_INV_process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: FF_X81_Y10_N59
\sample_count[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => count(0),
	sload => VCC,
	ena => \process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sample_count[0]~reg0_q\);

-- Location: LABCELL_X80_Y10_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( count(1) ) + ( count(0) ) + ( !VCC ))
-- \Add0~2\ = CARRY(( count(1) ) + ( count(0) ) + ( !VCC ))

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
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X80_Y10_N1
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	ena => \ALT_INV_process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: FF_X81_Y10_N53
\sample_count[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => count(1),
	sload => VCC,
	ena => \process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sample_count[1]~reg0_q\);

-- Location: LABCELL_X80_Y10_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( count(2) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( count(2) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(2),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X80_Y10_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	ena => \ALT_INV_process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: FF_X81_Y10_N34
\sample_count[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => count(2),
	sload => VCC,
	ena => \process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sample_count[2]~reg0_q\);

-- Location: LABCELL_X80_Y10_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( count(3) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( count(3) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(3),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X80_Y10_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	ena => \ALT_INV_process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: FF_X81_Y10_N49
\sample_count[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => count(3),
	sload => VCC,
	ena => \process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sample_count[3]~reg0_q\);

-- Location: LABCELL_X80_Y10_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( count(4) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( count(4) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(4),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X80_Y10_N10
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	ena => \ALT_INV_process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: FF_X81_Y10_N31
\sample_count[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => count(4),
	sload => VCC,
	ena => \process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sample_count[4]~reg0_q\);

-- Location: LABCELL_X80_Y10_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( count(5) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( count(5) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(5),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X80_Y10_N14
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	ena => \ALT_INV_process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: FF_X80_Y10_N31
\sample_count[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => count(5),
	sload => VCC,
	ena => \process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sample_count[5]~reg0_q\);

-- Location: LABCELL_X80_Y10_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( count(6) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( count(6) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(6),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X80_Y10_N17
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	ena => \ALT_INV_process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: FF_X80_Y10_N29
\sample_count[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => count(6),
	sload => VCC,
	ena => \process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sample_count[6]~reg0_q\);

-- Location: LABCELL_X80_Y10_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( count(7) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(7),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\);

-- Location: FF_X80_Y10_N19
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	ena => \ALT_INV_process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: FF_X81_Y10_N55
\sample_count[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => count(7),
	sload => VCC,
	ena => \process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sample_count[7]~reg0_q\);

-- Location: MLABCELL_X15_Y39_N0
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


