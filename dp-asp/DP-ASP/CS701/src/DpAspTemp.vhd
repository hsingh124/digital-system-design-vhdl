library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

library work;
use work.TdmaMinTypes.all;
use work.asp_types.all;

entity DpAspTemp is
	port (
		clock : in  std_logic;
		recv  : in  tdma_min_port; -- config or data component recieved
		send  : out tdma_min_port -- data component sent out
	);
end entity;

architecture rtl of DpAspTemp is

component fir is
	port (
		clk : in  std_logic;
		sample_in : in std_logic_vector(15 downto 0);
		acc_val : out std_logic_vector(31 downto 0)
		);
end component;

component noise_reduction_filter is
	port (
		clk : in bit_1;
		data_in : in bit_16;
		data_out : out bit_16
	);
end component;

component correlation is
port (
	clk		: in bit_1;
	in_1		: in bit_16;
	in_2		: in bit_16
);
end component;

component peak_detection is
	port (
		clock : in  std_logic;
		signal_input  : in std_logic_vector(15 downto 0); --input signal from the averaging filter
		max_val: out std_logic_vector(15 downto 0);
		min_val: out std_logic_vector(15 downto 0)
	);
end component;

	signal mode : std_logic_vector(3 downto 0) := "0010";
	signal send_out : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
	signal count : std_logic_vector(3 downto 0) := "0000";
	
-- FIR signal flag 
	--signal sample_in_temp : std_logic_vector(15 downto 0) := "0000000000000000";
	signal acc_val_temp : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
	signal fir_flag : std_logic := '0';
	
-- LULU Filter
	signal lulu_output : std_logic_vector (15 downto 0) := "0000000000000000";
	
-- Correlation Filter


--Peak Detection

	signal max_peak : std_logic_vector(15 downto 0) := "0000000000000000";
	signal min_peak : std_logic_vector(15 downto 0) := "0000000000000000";
	
begin

	fir_one : fir port map (clock, recv.data(15 downto 0), acc_val_temp);
	lulu : noise_reduction_filter port map (clock, recv.data(15 downto 0), lulu_output);
	peak : peak_detection port map (clock, recv.data(15 downto 0), max_peak, min_peak);

	--mode <= "0010";
	process(clock)
	variable state : natural := 9;
	begin
		if rising_edge(clock) then
			if recv.data(31 downto 28) = "1001" then
				mode <= recv.data(19 downto 16);
			end if;
			
			if recv.data(31 downto 28) = "1000" then
				if mode = "0000" then --Peak Detection
					send.addr <= x"01";
					send_out(15 downto 0) <= max_peak; -- configure the data to be sent out as the max/min values	
					send.data(31 downto 17) <= recv.data(31 downto 17);
					send.data(16) <= '1';
				elsif mode = "0001" then -- Filter Averaging
					send.addr <= x"01";
					send.data(15 downto 0) <= lulu_output;
					send.data(31 downto 17) <= recv.data(31 downto 17);
					send.data(16) <= '1';
				elsif mode = "0010" then -- FIR
					if fir_flag = '0' then
						send.addr <= x"01"; --sending top half of 32-bit output

						send.data(15 downto 0) <= acc_val_temp(31 downto 16);
						send.data(31 downto 17) <= recv.data(31 downto 17);
						send.data(16) <= '1';
						fir_flag <= '1';
					else 
						send.addr <= x"01"; --sending bottom half of 32-bit output
						
						send.data(15 downto 0) <= acc_val_temp(15 downto 0);
						send.data(31 downto 17) <= recv.data(31 downto 17);
						send.data(16) <= '1';
						fir_flag <= '0';
					end if;
--					send.addr <= x"01";
--					send.data(31 downto 17) <= recv.data(31 downto 17);
--					send.data(16) <= '1';
--					send.data(15 downto 0) <= recv.data(15 downto 0);

				elsif mode = "0011" then -- Correlation Filter
					send_out(15 downto 0) <= "0000000000000000";
				end if;
			else 
				case state is
					-- Enable DAC channel 0
					when 9 =>
						send.addr <= x"01";
						send.data <= x"b1020000";
						state := 8;

					-- Enable DAC channel 1
					when 8 =>
						send.addr <= x"01";
						send.data <= x"b1030000";
						state := 7;

					-- Enable ADC channel 0
					when 7 =>
						send.addr <= x"00";
						send.data <= x"a0220000";
						state := 6;

					-- Enable ADC channel 1
					when 6 =>
						send.addr <= x"00";
						send.data <= x"a0230000";
						state := 5;
					when others =>
						send.addr <= x"01";
						send.data <= x"00000000";
				end case;
			end if;
		end if;
	end process;
end architecture;
