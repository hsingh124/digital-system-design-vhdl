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
-- Generated on "06/08/2021 19:17:28"
                                                            
-- Vhdl Test Bench template for design  :  freqDetect
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY freqDetect_vhd_tst IS
END freqDetect_vhd_tst;
ARCHITECTURE freqDetect_arch OF freqDetect_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL recv : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL peak : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000100";
SIGNAL sample_count : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT freqDetect
	PORT (
	clock : IN STD_LOGIC;
	recv : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	peak : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	sample_count : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : freqDetect
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	recv => recv,
	peak => peak,
	sample_count => sample_count
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
  recv <= "0000000000000000";
  wait for 10 ns;
  recv <= "0000000000000001";
  wait for 10 ns;
  recv <= "0000000000000010";
  wait for 10 ns;
  recv <= "0000000000000011";
  wait for 10 ns;
  recv <= "0000000000000100";
  wait for 10 ns;
  recv <= "0000000000000011";
  wait for 10 ns;
  recv <= "0000000000000010";
  wait for 10 ns;
  recv <= "0000000000000001";
  wait for 10 ns;
  recv <= "0000000000000100";
  wait for 10 ns;
  recv <= "0000000000000011";
  wait for 10 ns;
  recv <= "0000000000000010";
  wait for 10 ns;
  recv <= "0000000000000001";
  wait for 10 ns;
  recv <= "0000000000000000";
  wait for 10 ns;
  recv <= "0000000000000001";
  wait for 10 ns;
  recv <= "0000000000000010";
  wait for 10 ns;
  recv <= "0000000000000011";
  wait for 10 ns;
  recv <= "0000000000000100";
  wait for 10 ns;
  recv <= "0000000000000011";
  wait for 10 ns;
  recv <= "0000000000000010";
  wait for 10 ns;
  recv <= "0000000000000001";
WAIT;                                                        
END PROCESS always;

clk_gen : PROCESS
BEGIN
	clock <= '1';
	wait for 5 ns;
	clock <= '0';
	wait for 5 ns;
END PROCESS clk_gen;
                                          
END freqDetect_arch;
