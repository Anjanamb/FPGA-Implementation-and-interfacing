library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_counter is
end tb_counter;

architecture testbench1 of tb_counter is
    signal clk_in : std_logic := '0';
    signal clkout : std_logic;
    signal TxBusy : std_logic; 
    signal Tx_bit : std_logic;
    signal wren_out : std_logic;
    signal state_out : std_logic_vector(1 downto 0);
    signal Clock_trans : std_logic;       
    --signal reset : std_logic := '0';
    signal out_val : std_logic_vector(7 downto 0);
    signal count : std_logic_vector(7 downto 0);
    signal address_out : std_logic_vector(15 downto 0);
begin
    -- Instantiate the design under test
    dut : entity work.top_level
    port map (
        clk_in => clk_in,
	clkout => clkout,
	wren_out => wren_out,
	state_out => state_out,
	TxBusy => TxBusy,
	Tx_bit => Tx_bit,
	count => count,
	Clock_trans => Clock_trans,
	address_out => address_out,
        --reset => reset,
        out_val => out_val
    );

    -- Clock process
    clk_process : process
    begin
        clk_in <= '0';
        wait for 5 ns;
        clk_in <= '1';
        wait for 5 ns;
    end process;

    -- Stimulus process
end architecture testbench1;