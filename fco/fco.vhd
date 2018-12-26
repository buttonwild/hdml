LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
entity fco is
	port(int0,int1,int2,int3,s0,s1:in std_logic;
			   o2:out std_logic);
end entity fco;
ARCHITECTURE BHV OF fco IS
	component tco
		port(a0,b0,clk:in std_logic;
			   o0:out std_logic);
	end component;
	signal e,f:std_logic;
		begin
			u0 : tco PORT MAP(a0=>int0,b0=>int1,clk=>s0,o0=>e);
			u1 : tco PORT MAP(a0=>int2,b0=>int3,clk=>s0,o0=>f);
			u2 : tco PORT MAP(a0=>e,b0=>f,clk=>S1,o0=>o2);
END ARCHITECTURE BHV;