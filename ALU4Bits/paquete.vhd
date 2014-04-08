
library IEEE;
library WORK;
use WORK.ALU1Bit.ALL;
use IEEE.STD_LOGIC_1164.all;

package PAQUETE is

	component ALU1bit is 
	port(
		b: in std_logic;
		aInvert: in std_logic;
		bInvert: in std_logic;
		op: in std_logic_vector(0 to 1);
		cout: out std_logic;
		res: out std_logic );
	end component;
end PAQUETE;