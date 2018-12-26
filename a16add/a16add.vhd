library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity a16add is
port (a:in std_logic_vector(3 downto 0);
		clk,rst,en,load:in std_logic;
		b: out std_logic_vector(6 downto 0));
end;
architecture one of a16add is
	begin
		process(a,clk,en,load,rst) 
		variable q : std_logic_vector(3 downto 0);
	begin
		if rst='0'then q:= "0000";
		elsif clk'event and clk='1' then
			if en='1' then 
				if(load='0') then q:=a;else
					if q < 9 then q:=q+1;
					else q:=(others=>'0');end if;
				end if;
			end if;
		end if;
		case q is
		when "0000" => b<="0111111";
		when "0001" => b<="0000110";
		when "0010" => b<="1011011";
		when "0011" => b<="1001111";
		when "0100" => b<="1100110";
		when "0101" => b<="1101101";
		when "0110" => b<="1111101";
		when "0111" => b<="0000111";
		when "1000" => b<="1111111";
		when "1001" => b<="1101111";
		when "1010" => b<="1110111";
		when "1011" => b<="1111100";
		when "1100" => b<="0111001";
		when "1101" => b<="1011110";
		when "1110" => b<="1111001";
		when "1111" => b<="1110001";
		when others => null;
		end case ;
	end process;
end;