library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity TopLevel is
	generic (
		ports : positive := 4
	);
	port (
		CLOCK_50      : in    std_logic;
		CLOCK2_50     : in    std_logic;
		CLOCK3_50     : in    std_logic;
		CLOCK4_50     : in    std_logic;

		FPGA_I2C_SCLK : out   std_logic;
		FPGA_I2C_SDAT : inout std_logic;
		AUD_ADCDAT    : in    std_logic;
		AUD_ADCLRCK   : inout std_logic;
		AUD_BCLK      : inout std_logic;
		AUD_DACDAT    : out   std_logic;
		AUD_DACLRCK   : inout std_logic;
		AUD_XCK       : out   std_logic
	);
end entity;

architecture rtl of TopLevel is

	signal clock : std_logic;

	signal adc_empty : std_logic;
	signal adc_get   : std_logic;
	signal adc_data  : std_logic_vector(16 downto 0);
	signal dac_full  : std_logic;
	signal dac_put   : std_logic;
	signal dac_data  : std_logic_vector(16 downto 0);

	signal send_port : tdma_min_ports(0 to ports-1);
	signal recv_port : tdma_min_ports(0 to ports-1);

begin

	clock <= CLOCK3_50;

	adc_dac : entity work.Audio
	port map (
		ref_clock     => CLOCK4_50,
		fpga_i2c_sclk => FPGA_I2C_SCLK,
		fpga_i2c_sdat => FPGA_I2C_SDAT,
		aud_adcdat    => AUD_ADCDAT,
		aud_adclrck   => AUD_ADCLRCK,
		aud_bclk      => AUD_BCLK,
		aud_dacdat    => AUD_DACDAT,
		aud_daclrck   => AUD_DACLRCK,
		aud_xck       => AUD_XCK,

		clock         => clock,
		adc_empty     => adc_empty,
		adc_get       => adc_get,
		adc_data      => adc_data,
		dac_full      => dac_full,
		dac_put       => dac_put,
		dac_data      => dac_data
	);

	tdma_min : entity work.TdmaMin
	generic map (
		ports => ports
	)
	port map (
		clock => clock,
		sends => send_port,
		recvs => recv_port
	);

	asp_adc : entity work.AspAdc
	port map (
		clock => clock,
		empty => adc_empty,
		get   => adc_get,
		data  => adc_data,

		send  => send_port(0),
		recv  => recv_port(0)
	);

	asp_dac : entity work.AspDac
	port map (
		clock => clock,
		full  => dac_full,
		put   => dac_put,
		data  => dac_data,

		send  => send_port(1),
		recv  => recv_port(1)
	);
	
	dp_asp : entity work.DpAspTemp
	port map (
		clock => clock,
		send => send_port(2),
		recv => recv_port(2)
		);
	
	recop : entity work.recop
	port map (
		clock,
		send_port(3)
	);

end architecture;
