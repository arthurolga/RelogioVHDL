library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity ULA is
	generic (
        larguraDados : natural := 7
    );
	port (
		inA,inB	:	in std_logic_vector(larguraDados-1 downto 0);
		outO		:	out std_logic_vector(larguraDados-1 downto 0);
		sel		:	in std_logic_vector(2 downto 0);
		doJump	: 	out std_logic -- para jump condicional
	);

end ULA;

architecture Behavioral of ULA is

signal Z : std_logic_vector(larguraDados-1 downto 0);

begin
process(inA,inB,sel)
begin
	
	if(inA = inB) then
		Z <= "1111111";
	else
		Z <= "0000000";
	end if;
	
	case sel is
	
	when "000" =>
	outO <= inA + inB; -- Adicao A+B
	when "001" =>
	outO <= inA; -- MOV A
	-- when "010" =>
	-- N faz Nada na ULA! Eh o check do IF jump
	when "011" =>
	-- JE - Jump if B equals 0 -- JE %5
	if inB = "0000" then
		doJump <= '1';
	end if;
	when "100" =>
	-- JL - Jump if B < Imediato -- JL %5, $10-- Ve se o endereco5 eh menor que 10
	if inB < inA  then
		doJump <= '1';
	end if;
	when "101" =>
	outO <= Z; -- EQL A == B
	when others =>
	NULL;

	end case;
end process;

end architecture;


	
	
	
	
	

