library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(64 downto 0);
        output_vector: out std_logic_vector(32 downto 0));
end entity;

architecture DutWrap of DUT is

component brent_kung is
port(A, B : in std_logic_vector (31 downto 0);
        Cin : in std_logic;
		Sum : out std_logic_vector (31 downto 0);
		Cout : out std_logic);
end component;

begin

  brent_kung_adder : brent_kung port map (a => input_vector(64 downto 33),b => input_vector(32 downto 1),
                                 cin => input_vector(0), sum => output_vector(32 downto 0), cout => output_vector(33));
end DutWrap;
