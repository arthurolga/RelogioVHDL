library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity Decoder is port
	(
		inO	:	in std_logic_vector(7 downto 0);
		enW, enR	: 	in std_logic;
 		hab0, hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8, hab9, hab10, hab11:	out std_logic
	);

end Decoder;

architecture decode of Decoder is
begin
		hab0 <= '1' when (inO = "00000000" AND enW = '1') else '0'; -- Display
		hab1 <= '1' when (inO = "00000001" AND enW = '1') else '0';
		hab2 <= '1' when (inO = "00000010" AND enW = '1') else '0';
		hab3 <= '1' when (inO = "00000011" AND enW = '1') else '0';
		hab4 <= '1' when (inO = "00000100" AND enW = '1') else '0';
		hab5 <= '1' when (inO = "00000101" AND enW = '1') else '0'; -- Display
		hab6 <= '1' when (inO = "00000110" AND enR = '1') else '0'; -- Botoes
		hab7 <= '1' when (inO = "00000111" AND enR = '1') else '0';
		hab8 <= '1' when (inO = "00001000" AND enR = '1') else '0';
		hab9 <= '1' when (inO = "00001001" AND enR = '1') else '0';
		hab10 <= '1' when (inO = "00001010" AND enR = '1') else '0';
		hab11 <= '1' when (inO = "00001011" AND enR = '1') else '0'; -- Botoes

end architecture;
	
	
