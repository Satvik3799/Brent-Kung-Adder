library STD;
library IEEE;
use std.textio.all;
use ieee.std_logic_textio.all;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_test is
end entity;

architecture tb_rtl of tb_test is

component brent_kung is
port(A, B : in std_logic_vector (31 downto 0);
        Cin : in std_logic;
		Sum : out std_logic_vector (31 downto 0);
		Cout : out std_logic);
end component;

signal t_sum : std_logic_vector(31 downto 0);  --correct sum from input file
signal t_cout : std_logic;							--Correct Cout from input file

signal A : std_logic_vector(31 downto 0);
signal B : std_logic_vector(31 downto 0);
signal cin : std_logic;
signal sum : std_logic_vector(31 downto 0);
signal cout : std_logic;

begin

read_process : process
					file infile: text open read_mode is "inputs.txt";
					variable input_line : line; --To store the line that is being read
					variable A_in : std_logic_vector(31 downto 0);
					variable B_in : std_logic_vector(31 downto 0);
					variable sum_in : std_logic_vector(31 downto 0);
					variable C_in : std_logic;
					variable cout_in : std_logic;
					
					begin
					while not endfile(infile) loop
						
						readline(infile,input_line);
						read(input_line, A_in);
						A <= A_in;
						--report "A in" severity note;
						
						readline(infile,input_line);
						read(input_line, B_in);
						B <= B_in;
						--report "B in" severity note;
						readline(infile,input_line);
						read(input_line, C_in);
						cin <= C_in;
						--report "C in" severity note;
						readline(infile,input_line);
						
						read(input_line, sum_in);
						t_sum <= sum_in;
						--report "sum in" severity note;
						readline(infile,input_line);
						read(input_line, cout_in);
						t_cout <= cout_in;		
						--report "cout in" severity note;
					
					wait for 50 ns;
					if sum = t_sum and cout = t_cout then
						report "Success!!" severity note;
					else
						report "Error" severity note;
					end if;
					end loop;
end process;		


DUT : brent_kung port map (A, B, cin, Sum, Cout);

end architecture tb_rtl;