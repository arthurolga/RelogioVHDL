
library ieee;
use ieee.std_logic_1164.all;

entity Botoes is
    generic (
         quantidadeBotoes   : natural := 3
    );
    port
    (
        entradaBotoes   : IN STD_LOGIC_VECTOR(quantidadeBotoes-1 downto 0);
        habilita        : IN  STD_LOGIC;
        saida           : OUT STD_LOGIC_VECTOR(quantidadeBotoes-1 downto 0)
    );
end entity;