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
-- Generated on "05/15/2021 22:09:00"
                                                            
-- Vhdl Test Bench template for design  :  averaging_filter
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY averaging_filter_vhd_tst IS
END averaging_filter_vhd_tst;
ARCHITECTURE averaging_filter_arch OF averaging_filter_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT averaging_filter
	PORT (
	clk : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : averaging_filter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	data_in => data_in,
	data_out => data_out
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
	data_in <= "0000000000000001";
	wait for 10 ns;
	
	data_in <= "0000000000000010";
	wait for 10 ns;
	
	data_in <= "0000000000000011";
	wait for 10 ns;
	
	data_in <= "0000000000000010";
	wait for 10 ns;
	
	data_in <= "0000000000000001";
	wait for 10 ns;
	
	data_in <= "0000000000000010";
	wait for 10 ns;
	
	data_in <= "0000000000000011";
	wait for 10 ns;
	
	data_in <= "0000000000000010";
	wait for 10 ns;
	
WAIT;                                                        
END PROCESS always;

clk_gen : PROCESS
BEGIN
	clk <= '1';
	wait for 5 ns;
	clk <= '0';
	wait for 5 ns;
END PROCESS clk_gen;
                                          
END averaging_filter_arch;
