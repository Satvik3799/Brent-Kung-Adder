library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(63 downto 0);
        output_vector: out std_logic_vector(32 downto 0));
end entity;

architecture DutWrap of DUT is

  component MAC_32 is
       port(a, b : in std_logic_vector(15 downto 0);
      acc : in std_logic_vector(31 downto 0);
      result : out std_logic_vector(32 downto 0));
end component MAC_32;
begin

  MAC_instance: MAC_32 port map (a => input_vector(63 downto 48),b => input_vector(47 downto 32),
                                 acc => input_vector(31 downto 0), result => output_vector(32 downto 0));
end DutWrap;
