
library IEEE;
library WORK;
use WORK.PAQUETE.ALL; -- aqui importamos el paquete
use IEEE.STD_LOGIC_1164.ALL;

-- adentro de process no se pueden instanciar componentes

entity Alu4Bits is
	 port(
		a: in std_logic_vector(0 to 3);
		b: in std_logic_vector(0 to 3);
		aInvert: in std_logic_vector(0 to 3);
		bInvert: in std_logic_vector(0 to 3);
		op: in std_logic_vector(0 to 1);
		cout: out std_logic;
		res: out std_logic_vector(0 to 3));
end Alu4Bits;

architecture funcion of Alu4Bits is
begin
	 --variable cnt : integer := 0;
	process(a,b,aInvert,bInvert,op)
	begin
		for i in 0 to 3 loop
			ALU1bit port map(a(i),b(i),aInvert(i),bInvert(i),op,cout(i),res(i));
			-- ó
	--		:ALU1bit port map(
	--			a => a,
	--			-- la primer a es la de aqui, y la otra a es de el componente del paquete
	--			-- como tal la flecha no indica la direccion solo es mera notacion
	--		);
		end loop;
		end process;
end funcion;

