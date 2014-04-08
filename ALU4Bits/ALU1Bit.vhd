
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Alu1Bit is
	 port(
		a: in std_logic;
		b: in std_logic;
		aInvert: in std_logic;
		bInvert: in std_logic;
		op: in std_logic_vector(0 to 1);
		cout: out std_logic;
		res: out std_logic );
end Alu1Bits;

architecture funcion of Alu4Bits is

begin

	process (a,b,aInvert,bInvert,op) is
		variable aReal: std_logic;
		variable bReal: std_logic;

		if aInvert='1' then
			aReal := not a;
		elsif
			aReal := a;
		end if;

		if bInvert='1' then
			bReal := not b;
		elsif
			bReal := b;
		end if;
		
		if op="00" then
			res <= aReal and bReal;	
				
		elsif op="01" then
			res <= aReal or bReal;
		 
		elsif op="10" then
			res <= aReal xor bReal;
	
		elsif op="11" then
			res <= (aReal) xor (bReal) xor (bInvert);
			cout <= (aReal and bReal) or (bInvert and (bReal xor aReal));
		end if;
	end process;
	
end funcion;


