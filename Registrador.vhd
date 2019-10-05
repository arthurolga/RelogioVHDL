library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registradorDeslocamento is
    generic ( estagios : natural := 8 );
    port (
        clk     : in std_logic;
        enable  : in std_logic;
        rst    : in std_logic;
        sr_out  : out std_logic_vector((estagios-1) downto 0)
    );
end entity;

architecture rtl of registradorDeslocamento is
    signal sr : std_logic_vector ((estagios-1) downto 0);
begin
    process (clk, rst)
    variable ZERO : std_logic_vector ((estagios-1) downto 0);
    begin
        ZERO := (others => '0');
        if (rst = '1') then
                sr <= (others => '0');
        elsif (rising_edge(clk)) then
            if (enable = '1') then
                if (sr = ZERO) then
                    sr(0) <= '1';
                else
                    sr <= std_logic_vector(unsigned(sr) rol 1);
                end if;
            end if;
        end if;
    end process;
    sr_out <= sr;
end architecture;