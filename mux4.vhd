library IEEE;
use IEEE.std_logic_1164.all;
entity mux2 is
generic(
size:natural:=7
);
port(
  a1      : in  std_logic_vector(size -1 downto 0);
  a2      : in  std_logic_vector(size -1 downto 0);
  Sel: 	in std_logic;
  b       : out std_logic_vector(size -1 downto 0)
  );
end mux2;
architecture rtl of mux2 is
  -- declarative part: empty
begin
b <= a1 when (sel = '0') else
a2;
end rtl;