library ieee;
use ieee.std_logic_1164.all;

--
--Checklist:
--
--* Colocar a saida DataOut do bancoRegistradores
--* ROM
--* Registrador Condicional
--

entity computador is
    generic (
        larguraBarramentoEnderecos  : natural := 4;
		  larguraBarramentoMemoria		: natural := 3;
        larguraBarramentoDados      : natural := 7;
		  qtdEnderecosRom					: natural := 7
    );
    port
    (
		SW : in std_logic_vector(17 downto 0);
		CLOCK_50 : in std_logic;
	   outDecoder : out std_logic_vector(17 downto 0);
	   dataOut : out std_logic_vector(larguraBarramentoEnderecos -1 downto 0);
	   baseT : in std_logic;
	   buttons : in std_logic_vector(2 downto 0);
	   habilitaBotaoOut : out std_logic;
	   HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0);
		LEDG : out std_logic_vector(7 downto 0);
	   LEDR : out std_logic_vector(17 downto 0)	
    );
end entity;


	

architecture estrutura of computador is

signal ROMcommand : std_logic_vector(17 downto 0);
signal ROMIndex   : std_logic_vector(qtdEnderecosRom -1 downto 0);

signal tick : std_logic;
signal contador : integer range 0 to 50000001;

begin

	process(CLOCK_50)
	begin
		if(rising_edge(CLOCK_50)) then
			if (contador = 50000000) then
				contador <= 0;
				tick <= not tick;
			else
				contador <= contador + 1;
		
		end if;
		end if;
	end process;


 LEDR <= SW;
  LEDG(qtdEnderecosRom-1 downto 0) <= ROMIndex;
  LEDG(7) <= tick;
  
	 CPU1 : entity work.CPU 
    port map
    (
		  HEX0 => HEX0,
		  HEX1 => HEX1,
		  HEX2 => HEX2,
		  HEX3 => HEX3,
		  HEX4 => HEX4,
		  HEX5 => HEX5,
		  HEX6 => HEX6,
		  HEX7 => HEX7,
        clk  => tick,
		  ROM  => ROMcommand,
		  ROMIndex => ROMIndex,
		  outDecoder => outDecoder,
		  dataOut => dataOut,
		  baseT => baseT,
		  buttons => buttons,
		  habilitaBotaoOut => habilitaBotaoOut		  
    );
	 
	 ROM1 : entity work.ROM 
	 generic map (
         dataWidth => 18,
			addrWidth => qtdEnderecosRom
    )
    port map
    (
		Endereco => ROMIndex,
      Dado => ROMcommand
	 );
	 
	



end architecture;