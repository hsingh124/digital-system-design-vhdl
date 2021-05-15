library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity mac_asp is
	port (
		clk : in  std_logic;
		initial_index: in std_logic_vector(8 downto 0);
		final_index: in std_logic_vector(8 downto 0);
		mac_val: out std_logic_vector(47 downto 0) := std_logic_vector(to_unsigned(0, 48))
		);
end entity;

architecture rtl of mac_asp is

component mac_reg
	PORT
	(
		address	: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (23 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (23 DOWNTO 0)
	);
end component;

component mac_reg_2
	PORT
	(
		address	: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (23 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (23 DOWNTO 0)
	);
end component;

component mac_operand
	PORT 
	(
		clk : in  std_logic;
		val_a: in std_logic_vector(23 downto 0);
		val_b: in std_logic_vector(23 downto 0);
		mac_val: out std_logic_vector(47 downto 0)
	);
end component;

signal index_val : std_logic_vector(8 downto 0) := "000000000"; --current index value
signal out_a : std_logic_vector(23 downto 0);
signal out_b : std_logic_vector(23 downto 0);
signal mac_val_temp : std_logic_vector(47 downto 0);

begin
	
	reg_a : mac_reg
	port map (index_val, clk, "000000000000000000000000", '0', out_a); --load from reg a the index value
	
	reg_b : mac_reg_2
	port map (index_val, clk, "000000000000000000000000", '0', out_b); --load from reg b the index value
	
	mac : mac_operand
	port map(clk, out_a, out_b, mac_val_temp);

	process(clk)
	begin
		if rising_edge(clk) then
			index_val <= initial_index;
			mac_val <= mac_val_temp;
			if final_index > index_val then 
				index_val <= index_val + 1; --increment the index value...
			end if;
		end if;
	end process;
end architecture;