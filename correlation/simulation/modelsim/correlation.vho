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

-- DATE "05/16/2021 22:31:01"

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

ENTITY 	correlation IS
    PORT (
	clk : IN std_logic;
	in_1 : IN std_logic_vector(15 DOWNTO 0);
	in_2 : IN std_logic_vector(15 DOWNTO 0)
	);
END correlation;

-- Design Ports Information
-- clk	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[0]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[1]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[2]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[3]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[4]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[6]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[8]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[9]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[10]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[11]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[12]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[13]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[14]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[15]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[2]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[3]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[4]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[6]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[8]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[9]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[10]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[11]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[12]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[13]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[14]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[15]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF correlation IS
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
SIGNAL ww_in_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_in_2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \in_1[0]~input_o\ : std_logic;
SIGNAL \in_1[1]~input_o\ : std_logic;
SIGNAL \in_1[2]~input_o\ : std_logic;
SIGNAL \in_1[3]~input_o\ : std_logic;
SIGNAL \in_1[4]~input_o\ : std_logic;
SIGNAL \in_1[5]~input_o\ : std_logic;
SIGNAL \in_1[6]~input_o\ : std_logic;
SIGNAL \in_1[7]~input_o\ : std_logic;
SIGNAL \in_1[8]~input_o\ : std_logic;
SIGNAL \in_1[9]~input_o\ : std_logic;
SIGNAL \in_1[10]~input_o\ : std_logic;
SIGNAL \in_1[11]~input_o\ : std_logic;
SIGNAL \in_1[12]~input_o\ : std_logic;
SIGNAL \in_1[13]~input_o\ : std_logic;
SIGNAL \in_1[14]~input_o\ : std_logic;
SIGNAL \in_1[15]~input_o\ : std_logic;
SIGNAL \in_2[0]~input_o\ : std_logic;
SIGNAL \in_2[1]~input_o\ : std_logic;
SIGNAL \in_2[2]~input_o\ : std_logic;
SIGNAL \in_2[3]~input_o\ : std_logic;
SIGNAL \in_2[4]~input_o\ : std_logic;
SIGNAL \in_2[5]~input_o\ : std_logic;
SIGNAL \in_2[6]~input_o\ : std_logic;
SIGNAL \in_2[7]~input_o\ : std_logic;
SIGNAL \in_2[8]~input_o\ : std_logic;
SIGNAL \in_2[9]~input_o\ : std_logic;
SIGNAL \in_2[10]~input_o\ : std_logic;
SIGNAL \in_2[11]~input_o\ : std_logic;
SIGNAL \in_2[12]~input_o\ : std_logic;
SIGNAL \in_2[13]~input_o\ : std_logic;
SIGNAL \in_2[14]~input_o\ : std_logic;
SIGNAL \in_2[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_in_1 <= in_1;
ww_in_2 <= in_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X6_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X89_Y11_N78
\in_1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(0),
	o => \in_1[0]~input_o\);

-- Location: IOIBUF_X80_Y0_N52
\in_1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(1),
	o => \in_1[1]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\in_1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(2),
	o => \in_1[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\in_1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(3),
	o => \in_1[3]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\in_1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(4),
	o => \in_1[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\in_1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(5),
	o => \in_1[5]~input_o\);

-- Location: IOIBUF_X6_Y81_N52
\in_1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(6),
	o => \in_1[6]~input_o\);

-- Location: IOIBUF_X14_Y81_N1
\in_1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(7),
	o => \in_1[7]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\in_1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(8),
	o => \in_1[8]~input_o\);

-- Location: IOIBUF_X6_Y81_N18
\in_1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(9),
	o => \in_1[9]~input_o\);

-- Location: IOIBUF_X22_Y81_N52
\in_1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(10),
	o => \in_1[10]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\in_1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(11),
	o => \in_1[11]~input_o\);

-- Location: IOIBUF_X30_Y81_N1
\in_1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(12),
	o => \in_1[12]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\in_1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(13),
	o => \in_1[13]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\in_1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(14),
	o => \in_1[14]~input_o\);

-- Location: IOIBUF_X6_Y81_N35
\in_1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(15),
	o => \in_1[15]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\in_2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(0),
	o => \in_2[0]~input_o\);

-- Location: IOIBUF_X38_Y81_N18
\in_2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(1),
	o => \in_2[1]~input_o\);

-- Location: IOIBUF_X82_Y0_N41
\in_2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(2),
	o => \in_2[2]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\in_2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(3),
	o => \in_2[3]~input_o\);

-- Location: IOIBUF_X84_Y0_N1
\in_2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(4),
	o => \in_2[4]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\in_2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(5),
	o => \in_2[5]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\in_2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(6),
	o => \in_2[6]~input_o\);

-- Location: IOIBUF_X12_Y81_N52
\in_2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(7),
	o => \in_2[7]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\in_2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(8),
	o => \in_2[8]~input_o\);

-- Location: IOIBUF_X80_Y0_N18
\in_2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(9),
	o => \in_2[9]~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\in_2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(10),
	o => \in_2[10]~input_o\);

-- Location: IOIBUF_X32_Y81_N18
\in_2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(11),
	o => \in_2[11]~input_o\);

-- Location: IOIBUF_X18_Y81_N41
\in_2[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(12),
	o => \in_2[12]~input_o\);

-- Location: IOIBUF_X14_Y81_N35
\in_2[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(13),
	o => \in_2[13]~input_o\);

-- Location: IOIBUF_X82_Y0_N92
\in_2[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(14),
	o => \in_2[14]~input_o\);

-- Location: IOIBUF_X20_Y81_N52
\in_2[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(15),
	o => \in_2[15]~input_o\);

-- Location: MLABCELL_X65_Y36_N0
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


