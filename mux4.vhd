library IEEE;
use IEEE.std_logic_1164.all;
entity mux4 is
generic(
size:natural:=8
);
port(
  a1      : in  std_logic_vector(size downto 0);
  a2      : in  std_logic_vector(size downto 0);
  Sel: 	in std_logic;
  b       : out std_logic_vector(size downto 0)
  );
end mux4;
architecture rtl of mux4 is
  -- declarative part: empty
begin
p_mux : process(a1,a2,sel)
begin
  case sel is
    when '0' => b <= a1 ;
    when '1' => b <= a2 ;
  end case;
end process p_mux;
end rtl;