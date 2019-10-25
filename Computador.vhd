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
		KEY : in std_logic_vector(3 downto 0);
		CLOCK_50 : in std_logic;
	   dataOut : out std_logic_vector(larguraBarramentoEnderecos -1 downto 0);
	   HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0);
		LEDG : out std_logic_vector(7 downto 0);
	   LEDR : out std_logic_vector(17 downto 0)	
    );
end entity;


	

architecture estrutura of computador is

signal ROMcommand : std_logic_vector(17 downto 0);
signal ROMIndex   : std_logic_vector(qtdEnderecosRom -1 downto 0);
signal baseT_FF : std_logic;
signal resetBaseT : std_logic;

signal tick, baseT,baseTFAST ,baseFastOrNot : std_logic;
signal contador : integer range 0 to 50000001;
signal btn0_out, btn1_out : std_logic;




begin

	process(CLOCK_50)
	--- Clock devagar pra debuggar
	begin
		if(rising_edge(CLOCK_50)) then
			if (contador = 1) then
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
        clk  => tick,
		  ROM  => ROMcommand,
		  ROMIndex => ROMIndex,
		  outDecoder => open,
		  dataOut => dataOut,
		  baseT => baseT_FF,
		  button0 => btn0_out,
		  button1 => btn1_out,
		  resetBaseT => resetBaseT  
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
	 
	 
	 REGBASET : entity work.Registrador1b
	  port map
	  (
		 DIN => '1',
       DOUT => baseT_FF,
       ENABLE => '1',
       CLK =>  baseFastOrNot,
		 RST => resetBaseT
	  );
	  
	  baseFastOrNot <= baseTFAST when SW(0) else
	  baseT;
	  
	  
	  
	  REGBTN0 : entity work.Registrador1b
	  port map
	  (
		 DIN => '1',
       DOUT => btn0_out,
       ENABLE => '1',
       CLK => (NOT KEY(0)),
		 RST => resetBaseT
	  );
	  
	  REGBTN1 : entity work.Registrador1b
	  port map
	  (
		 DIN => '1',
       DOUT => btn1_out,
       ENABLE => '1',
       CLK =>  (NOT KEY(1)),
		 RST => resetBaseT
	  );
	 
	  BASE1 : entity work.baseDetempo
	  generic map
	  (
	  divisor => 50000
	  )
	  port map
	  (
		clk => CLOCK_50,
		saida_clk => baseTFAST
	  );
	  
	  BASE2 : entity work.baseDetempo
	  generic map
	  (
	  divisor => 50000000
	  )
	  port map
	  (
		clk => CLOCK_50,
		saida_clk => baseT
	  );
	  
	  
	



end architecture;