library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity macAsp is
	port (
		clk : in  std_logic;
		initial_index: in std_logic_vector(8 downto 0);
		final_index: in std_logic_vector(8 downto 0);
		mac_val: out std_logic_vector(47 downto 0)
		);
end entity;

architecture rtl of macAsp is

component register_a_b
	PORT
	(
		address	: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (23 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (23 DOWNTO 0)
	);
end component;

component MAC_operand
	PORT 
	(
		clk : in  std_logic;
		val_a: in std_logic_vector(23 downto 0);
		val_b: in std_logic_vector(23 downto 0);
		mac_val: out std_logic_vector(47 downto 0)
	);


signal index_val : std_logic_vector(8 downto 0); --current index value
signal out_a : std_logic_vector(23 downto 0);
signal out_b : std_logic_vector(23 downto 0);
signal mac_val_temp : std_logic_vector(47 downto 0);

begin
	index_val <= intial_index;
	
	reg_a : register_a_b
	port map (index_val, clk, x"0000", 0, out_a); --load from reg a the index value
	
	reg_b : register_a_b
	port map (index_val, clk, x"0000", 0, out_b); --load from reg b the index value
	
	mac : MAC_operand
	port map(clk, val_a, out_a, out_b, mac_val_temp);

	process(clk)
	begin		
		mac_val <= mac_val_temp;
		if final_index > initial_val then 
			index_val <= initial_val + 1; --increment the index value...
		end if
	end process;
end architecture;
