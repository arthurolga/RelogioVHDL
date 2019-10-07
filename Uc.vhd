
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;           --Soma (esta biblioteca =ieee)

entity UC is port
	(
		opCode:	in std_logic_vector(2 downto 0);
		inCondReg : in std_logic;
		selMuxJump, selInUla, selDataIn, selBotoes, enableWrite, resetCondReg:	out std_logic;
		Operation :	out std_logic_vector(2 downto 0)
	);

end UC;

architecture comportamento of UC is
begin
process(opCode)
begin

	selMuxJump <= '0';
	selInUla <= '0';
	selDataIn <= '0';
	selBotoes <= '0';
	enableWrite <= '0';
	resetCondReg <= '0';

	case opCode is
	when "000" => -- Add B + Imediato
	selInUla <= '0'; -- Seleciona Imediado para a ULA
	enableWrite <= '1'; -- Hab escrita no BR
	selDataIn <= '1'; -- Seleciona ULa para escrever na memoria
	Operation <= "000";
	
	when "001" => -- MOV imediato para o registrador C
	selInUla <= '0' ;-- Seleciona Imediado para a ULA
	enableWrite <= '1' ; -- Hab escrita no BR
	selDataIn <= '1' ; -- Seleciona ULa para escrever na memoria
	Operation <= "001";
	
	when "010" => -- Checa se o RegCond, se ele tiver 1, ele pula pro Imediato
	if (inCondReg = '1') then
		selMuxJump <= '1'; -- Jump
		resetCondReg <= '1';
	end if;
	Operation <= "010";
	
	-- JE - Jump if B equals 0 -- JE %5
	when "011" => -- JE
	Operation <= "011";
	
	--  JL - Jump if B equals 0 -- JL %5, $10
	when "100" => -- JL
	selInUla <= '0' ; -- Sel Imediato para ULA
	Operation <= "100";
	
	
	
	when "101" => -- Equal A==B
	selInUla <= '1' ; -- Sel A para ULA
	enableWrite <= '1' ; -- Hab escrita no BR
	selDataIn <= '1' ;-- Seleciona ULa para escrever na memoria
	Operation <= "101";
	
	when "110" => -- JMP
	selMuxJump <= '1'; -- Seleciona o imediado para dar JM
	
	when "111" => -- STR
	Operation <= "111";	

	when others =>
	NULL;
	
	end case;
end process;
end architecture;
