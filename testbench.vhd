-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 16.3.2024 13:06:59 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_parity_gen is
	generic (n: INTEGER:=7);
end tb_parity_gen;

architecture tb of tb_parity_gen is
	
    component parity_gen
    
        port (input  : in bit_vector (n-1 downto 0);
              output : out bit_vector (n downto 0));
    end component;

    signal input  : bit_vector (n-1 downto 0);
    signal output : bit_vector (n downto 0);

begin

   	dut : parity_gen
    port map (input  => input,
              output => output);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        input <= (others => '0');
		wait for 10 ns;
        input <= "0000001";
        wait for 10 ns;
        input <= "0000011";
        wait for 10 ns;
        input <= "0000111";
        wait for 10 ns;
        input <= "0001111";
        wait for 10 ns;        
        -- EDIT Add stimuli here

        wait;
    end process;

end tb;
