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
-- Generated on "05/16/2021 21:18:02"
                                                            
-- Vhdl Test Bench template for design  :  correlation
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY correlation_vhd_tst IS
END correlation_vhd_tst;
ARCHITECTURE correlation_arch OF correlation_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL in_1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL in_2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT correlation
	PORT (
	clk : IN STD_LOGIC;
	in_1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	in_2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : correlation
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	in_1 => in_1,
	in_2 => in_2
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
	in_1 <= "0000000000000010";
	in_2 <= "0000000000000011";
WAIT;                                                        
END PROCESS always;

clk_gen : PROCESS
BEGIN
	clk <= '1';
	wait for 5 ns;
	clk <= '0';
	wait for 5 ns;
END PROCESS clk_gen;
                                        
END correlation_arch;
