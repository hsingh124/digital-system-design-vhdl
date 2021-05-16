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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/16/2021 15:11:54"
                                                            
-- Vhdl Test Bench template for design  :  peak_detection
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;  
use ieee.numeric_std.all;                              

ENTITY peak_detection_vhd_tst IS
END peak_detection_vhd_tst;
ARCHITECTURE peak_detection_arch OF peak_detection_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL cycle_num : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL max_val : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL min_val : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL signal_input : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT peak_detection
	PORT (
	clock : IN STD_LOGIC;
	cycle_num : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	max_val : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	min_val : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal_input : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : peak_detection
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	cycle_num => cycle_num,
	max_val => max_val,
	min_val => min_val,
	signal_input => signal_input
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list 
	cycle_num <= std_logic_vector(to_unsigned(10, cycle_num'length));
	signal_input <= std_logic_vector(to_unsigned(3, signal_input'length));
	wait for 10 ns;
	signal_input <= std_logic_vector(to_unsigned(6, signal_input'length));
	wait for 10 ns;
	signal_input <= std_logic_vector(to_unsigned(10, signal_input'length));
	wait for 10 ns;
	signal_input <= std_logic_vector(to_unsigned(2, signal_input'length));
	wait for 10 ns;
	signal_input <= std_logic_vector(to_unsigned(4, signal_input'length));
	wait for 10 ns;
	signal_input <= std_logic_vector(to_unsigned(8, signal_input'length));
	wait for 10 ns;
WAIT;                                                        
END PROCESS always;   

clk_gen : PROCESS
BEGIN
	clock <= '1';
	wait for 5 ns;
	clock <= '0';
	wait for 5 ns;
END PROCESS clk_gen;
                                       
END peak_detection_arch;
