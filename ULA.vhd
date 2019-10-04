library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity ULA is port
	(
		inA,inB	:	in std_logic_vector(3 downto 0);
		outO		:	out std_logic_vector(3 downto 0);
		sel		:	in std_logic_vector(2 downto 0)
	);

end ULA;

architecture Behavioral of ULA is

signal Z : std_logic_vector(3 downto 0);

begin
process(inA,inB,sel)
begin
	
	if(inA = inB) then
		Z <= "1111";
	else
		Z <= "0000";
	end if;
	
	case sel is
	
	when "000" =>
	outO <= inA + inB; -- Adicao A+B
	when "001" =>
	outO <= inA; -- MOV A
	when "010" =>
	outO <= inA AND inB; -- AND 1 A
	when "011" =>
	outO <= inA OR inB; -- ORR A | B
	when "100" =>
	outO <= NOT inA; -- NOT A
	when "101" =>
	outO <= Z; -- EQL A == B
	when others =>
	NULL;

	end case;
end process;

end architecture;


	
	
	
	
	

