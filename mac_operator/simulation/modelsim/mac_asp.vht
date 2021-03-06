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
-- Generated on "05/15/2021 13:15:14"
                                                            
-- Vhdl Test Bench template for design  :  mac_asp
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mac_asp_vhd_tst IS
END mac_asp_vhd_tst;
ARCHITECTURE mac_asp_arch OF mac_asp_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL final_index : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL initial_index : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL mac_val : STD_LOGIC_VECTOR(47 DOWNTO 0);
COMPONENT mac_asp
	PORT (
	clk : IN STD_LOGIC;
	final_index : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	initial_index : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	mac_val : BUFFER STD_LOGIC_VECTOR(47 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mac_asp
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	final_index => final_index,
	initial_index => initial_index,
	mac_val => mac_val
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
	final_index <= "001100010";
	initial_index <= "000000000";
WAIT;                                                        
END PROCESS always;

clk_gen : PROCESS
BEGIN
	clk <= '1';
	wait for 5 ns;
	clk <= '0';
	wait for 5 ns;
END PROCESS clk_gen;
                                         
END mac_asp_arch;
