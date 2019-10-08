library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity BancoRegistradores is
    generic
    (
        larguraDados        : natural := 7;
        larguraEndBancoRegs : natural := 4
    );
	 
    port
    (
        clk        : in std_logic;

        enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
		  
        enderecoC       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);
        escreveC        : in std_logic;
		  
        saidaA          : out std_logic_vector((larguraDados -1) downto 0);
        saidaB          : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture arch of BancoRegistradores is

    subtype linha_t is std_logic_vector((larguraDados-1) DOWNTO 0);
	 
    type matriz_t is array(2**larguraEndBancoRegs-1 DOWNTO 0) of linha_t;
	 
    shared variable banco_regis : matriz_t;

begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (escreveC = '1') then
                banco_regis(to_integer(unsigned(enderecoC))) := dadoEscritaC;
            end if;
        end if;
    end process;
	 
	saidaA <= banco_regis(to_integer(unsigned(enderecoA)));
	saidaB <= banco_regis(to_integer(unsigned(enderecoB)));
	
end architecture;