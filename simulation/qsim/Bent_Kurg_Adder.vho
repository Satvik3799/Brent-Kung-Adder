-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/07/2023 22:05:42"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	brent_kung IS
    PORT (
	A : IN std_logic_vector(0 TO 31);
	B : IN std_logic_vector(0 TO 31);
	Cin : IN std_logic;
	Sum : OUT std_logic_vector(0 TO 31);
	Cout : OUT std_logic
	);
END brent_kung;

ARCHITECTURE structure OF brent_kung IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(0 TO 31);
SIGNAL ww_B : std_logic_vector(0 TO 31);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Sum : std_logic_vector(0 TO 31);
SIGNAL ww_Cout : std_logic;
SIGNAL \Sum[31]~output_o\ : std_logic;
SIGNAL \Sum[30]~output_o\ : std_logic;
SIGNAL \Sum[29]~output_o\ : std_logic;
SIGNAL \Sum[28]~output_o\ : std_logic;
SIGNAL \Sum[27]~output_o\ : std_logic;
SIGNAL \Sum[26]~output_o\ : std_logic;
SIGNAL \Sum[25]~output_o\ : std_logic;
SIGNAL \Sum[24]~output_o\ : std_logic;
SIGNAL \Sum[23]~output_o\ : std_logic;
SIGNAL \Sum[22]~output_o\ : std_logic;
SIGNAL \Sum[21]~output_o\ : std_logic;
SIGNAL \Sum[20]~output_o\ : std_logic;
SIGNAL \Sum[19]~output_o\ : std_logic;
SIGNAL \Sum[18]~output_o\ : std_logic;
SIGNAL \Sum[17]~output_o\ : std_logic;
SIGNAL \Sum[16]~output_o\ : std_logic;
SIGNAL \Sum[15]~output_o\ : std_logic;
SIGNAL \Sum[14]~output_o\ : std_logic;
SIGNAL \Sum[13]~output_o\ : std_logic;
SIGNAL \Sum[12]~output_o\ : std_logic;
SIGNAL \Sum[11]~output_o\ : std_logic;
SIGNAL \Sum[10]~output_o\ : std_logic;
SIGNAL \Sum[9]~output_o\ : std_logic;
SIGNAL \Sum[8]~output_o\ : std_logic;
SIGNAL \Sum[7]~output_o\ : std_logic;
SIGNAL \Sum[6]~output_o\ : std_logic;
SIGNAL \Sum[5]~output_o\ : std_logic;
SIGNAL \Sum[4]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \order_1:31:if_gen2:P_1|uneq~combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \order_2:14:P_2|uneq~combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \order_2:12:P_2|uneq~combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \order_1:26:if_gen2:P_1|uneq~combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \order_3:6:P_3|uneq~combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \order_2:8:P_2|uneq~combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \order_2:9:P_2|uneq~combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \order_2:10:P_2|uneq~combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \order_2:11:P_2|uneq~combout\ : std_logic;
SIGNAL \order_4:2:P_4|uneq~combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \order_2:6:P_2|uneq~combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \order_2:7:P_2|uneq~combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \order_2:5:P_2|uneq~combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \temp_c_10|abc~0_combout\ : std_logic;
SIGNAL \order_3:2:G_3|abc~0_combout\ : std_logic;
SIGNAL \order_4:1:G_4|abc~0_combout\ : std_logic;
SIGNAL \order_2:4:P_2|uneq~combout\ : std_logic;
SIGNAL \order_4:1:P_4|uneq~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \order_2:0:G_2|abc~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \order_2:1:P_2|uneq~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \order_2:2:P_2|uneq~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \order_2:3:P_2|uneq~combout\ : std_logic;
SIGNAL \order_3:0:G_3|abc~0_combout\ : std_logic;
SIGNAL \order_4:0:G_4|abc~0_combout\ : std_logic;
SIGNAL \temp_c_6|abc~0_combout\ : std_logic;
SIGNAL \order_4:0:G_4|abc~1_combout\ : std_logic;
SIGNAL \temp_c_14|abc~0_combout\ : std_logic;
SIGNAL \order_5:0:G_5|abc~0_combout\ : std_logic;
SIGNAL \order_5:0:G_5|abc~1_combout\ : std_logic;
SIGNAL \temp_c_18|abc~0_combout\ : std_logic;
SIGNAL \order_3:4:G_3|abc~0_combout\ : std_logic;
SIGNAL \temp_c_22|abc~0_combout\ : std_logic;
SIGNAL \order_4:2:G_4|abc~0_combout\ : std_logic;
SIGNAL \order_4:2:G_4|abc~1_combout\ : std_logic;
SIGNAL \temp_c_26|abc~0_combout\ : std_logic;
SIGNAL \order_3:6:G_3|abc~0_combout\ : std_logic;
SIGNAL \temp_c_28|abc~combout\ : std_logic;
SIGNAL \temp_c_30|abc~0_combout\ : std_logic;
SIGNAL \sum_out:31:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:30:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:29:sum_is|uneq~combout\ : std_logic;
SIGNAL \order_1:28:if_gen2:P_1|uneq~combout\ : std_logic;
SIGNAL \sum_out:28:sum_is|uneq~combout\ : std_logic;
SIGNAL \temp_c_26|abc~combout\ : std_logic;
SIGNAL \sum_out:27:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:26:sum_is|uneq~combout\ : std_logic;
SIGNAL \order_1:25:if_gen2:P_1|uneq~combout\ : std_logic;
SIGNAL \sum_out:25:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:24:sum_is|uneq~combout\ : std_logic;
SIGNAL \order_3:4:P_3|uneq~combout\ : std_logic;
SIGNAL \temp_c_22|abc~combout\ : std_logic;
SIGNAL \sum_out:23:sum_is|uneq~combout\ : std_logic;
SIGNAL \order_1:22:if_gen2:P_1|uneq~combout\ : std_logic;
SIGNAL \sum_out:22:sum_is|uneq~combout\ : std_logic;
SIGNAL \order_1:21:if_gen2:P_1|uneq~combout\ : std_logic;
SIGNAL \sum_out:21:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:20:sum_is|uneq~combout\ : std_logic;
SIGNAL \order_1:19:if_gen2:P_1|uneq~combout\ : std_logic;
SIGNAL \sum_out:19:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:18:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:17:sum_is|uneq~combout\ : std_logic;
SIGNAL \order_1:16:if_gen2:P_1|uneq~combout\ : std_logic;
SIGNAL \sum_out:16:sum_is|uneq~combout\ : std_logic;
SIGNAL \order_1:15:if_gen2:P_1|uneq~combout\ : std_logic;
SIGNAL \order_3:2:G_3|abc~1_combout\ : std_logic;
SIGNAL \order_3:2:P_3|uneq~combout\ : std_logic;
SIGNAL \temp_c_12|abc~combout\ : std_logic;
SIGNAL \sum_out:15:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:14:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:13:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:12:sum_is|uneq~combout\ : std_logic;
SIGNAL \temp_c_10|abc~combout\ : std_logic;
SIGNAL \sum_out:11:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:10:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:9:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:8:sum_is|uneq~combout\ : std_logic;
SIGNAL \temp_c_6|abc~combout\ : std_logic;
SIGNAL \sum_out:7:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:6:sum_is|uneq~combout\ : std_logic;
SIGNAL \order_3:0:G_3|abc~combout\ : std_logic;
SIGNAL \sum_out:5:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:4:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:3:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:2:sum_is|uneq~combout\ : std_logic;
SIGNAL \sum_out:1:sum_is|uneq~combout\ : std_logic;
SIGNAL \order_3:7:P_3|uneq~combout\ : std_logic;
SIGNAL \order_6_G_5|abc~0_combout\ : std_logic;
SIGNAL \order_6_G_5|abc~1_combout\ : std_logic;
SIGNAL \order_6_G_5|abc~2_combout\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \temp_c_26|ALT_INV_abc~combout\ : std_logic;
SIGNAL \order_1:28:if_gen2:P_1|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \temp_c_30|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \temp_c_28|ALT_INV_abc~combout\ : std_logic;
SIGNAL \order_3:6:G_3|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \temp_c_26|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \order_4:2:G_4|ALT_INV_abc~1_combout\ : std_logic;
SIGNAL \order_4:2:G_4|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \temp_c_22|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \order_3:4:G_3|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \temp_c_18|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \order_5:0:G_5|ALT_INV_abc~1_combout\ : std_logic;
SIGNAL \order_5:0:G_5|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \temp_c_14|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \order_4:0:G_4|ALT_INV_abc~1_combout\ : std_logic;
SIGNAL \temp_c_6|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \order_4:0:G_4|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \order_3:0:G_3|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \order_2:3:P_2|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_2:2:P_2|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_2:1:P_2|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_2:0:G_2|ALT_INV_abc~combout\ : std_logic;
SIGNAL \order_4:1:P_4|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_2:4:P_2|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_4:1:G_4|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \order_3:2:G_3|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \temp_c_10|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \order_2:5:P_2|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_2:7:P_2|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_2:6:P_2|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_4:2:P_4|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_2:11:P_2|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_2:10:P_2|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_2:9:P_2|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_2:8:P_2|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_3:6:P_3|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_1:26:if_gen2:P_1|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_2:12:P_2|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_2:14:P_2|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_1:31:if_gen2:P_1|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \order_6_G_5|ALT_INV_abc~1_combout\ : std_logic;
SIGNAL \order_6_G_5|ALT_INV_abc~0_combout\ : std_logic;
SIGNAL \order_3:7:P_3|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_3:0:G_3|ALT_INV_abc~combout\ : std_logic;
SIGNAL \temp_c_6|ALT_INV_abc~combout\ : std_logic;
SIGNAL \temp_c_10|ALT_INV_abc~combout\ : std_logic;
SIGNAL \temp_c_12|ALT_INV_abc~combout\ : std_logic;
SIGNAL \order_3:2:P_3|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_3:2:G_3|ALT_INV_abc~1_combout\ : std_logic;
SIGNAL \order_1:15:if_gen2:P_1|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_1:16:if_gen2:P_1|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_1:19:if_gen2:P_1|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_1:21:if_gen2:P_1|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_1:22:if_gen2:P_1|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \temp_c_22|ALT_INV_abc~combout\ : std_logic;
SIGNAL \order_3:4:P_3|ALT_INV_uneq~combout\ : std_logic;
SIGNAL \order_1:25:if_gen2:P_1|ALT_INV_uneq~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
Sum <= ww_Sum;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\temp_c_26|ALT_INV_abc~combout\ <= NOT \temp_c_26|abc~combout\;
\order_1:28:if_gen2:P_1|ALT_INV_uneq~combout\ <= NOT \order_1:28:if_gen2:P_1|uneq~combout\;
\temp_c_30|ALT_INV_abc~0_combout\ <= NOT \temp_c_30|abc~0_combout\;
\temp_c_28|ALT_INV_abc~combout\ <= NOT \temp_c_28|abc~combout\;
\order_3:6:G_3|ALT_INV_abc~0_combout\ <= NOT \order_3:6:G_3|abc~0_combout\;
\temp_c_26|ALT_INV_abc~0_combout\ <= NOT \temp_c_26|abc~0_combout\;
\order_4:2:G_4|ALT_INV_abc~1_combout\ <= NOT \order_4:2:G_4|abc~1_combout\;
\order_4:2:G_4|ALT_INV_abc~0_combout\ <= NOT \order_4:2:G_4|abc~0_combout\;
\temp_c_22|ALT_INV_abc~0_combout\ <= NOT \temp_c_22|abc~0_combout\;
\order_3:4:G_3|ALT_INV_abc~0_combout\ <= NOT \order_3:4:G_3|abc~0_combout\;
\temp_c_18|ALT_INV_abc~0_combout\ <= NOT \temp_c_18|abc~0_combout\;
\order_5:0:G_5|ALT_INV_abc~1_combout\ <= NOT \order_5:0:G_5|abc~1_combout\;
\order_5:0:G_5|ALT_INV_abc~0_combout\ <= NOT \order_5:0:G_5|abc~0_combout\;
\temp_c_14|ALT_INV_abc~0_combout\ <= NOT \temp_c_14|abc~0_combout\;
\order_4:0:G_4|ALT_INV_abc~1_combout\ <= NOT \order_4:0:G_4|abc~1_combout\;
\temp_c_6|ALT_INV_abc~0_combout\ <= NOT \temp_c_6|abc~0_combout\;
\order_4:0:G_4|ALT_INV_abc~0_combout\ <= NOT \order_4:0:G_4|abc~0_combout\;
\order_3:0:G_3|ALT_INV_abc~0_combout\ <= NOT \order_3:0:G_3|abc~0_combout\;
\order_2:3:P_2|ALT_INV_uneq~combout\ <= NOT \order_2:3:P_2|uneq~combout\;
\order_2:2:P_2|ALT_INV_uneq~combout\ <= NOT \order_2:2:P_2|uneq~combout\;
\order_2:1:P_2|ALT_INV_uneq~combout\ <= NOT \order_2:1:P_2|uneq~combout\;
\order_2:0:G_2|ALT_INV_abc~combout\ <= NOT \order_2:0:G_2|abc~combout\;
\order_4:1:P_4|ALT_INV_uneq~combout\ <= NOT \order_4:1:P_4|uneq~combout\;
\order_2:4:P_2|ALT_INV_uneq~combout\ <= NOT \order_2:4:P_2|uneq~combout\;
\order_4:1:G_4|ALT_INV_abc~0_combout\ <= NOT \order_4:1:G_4|abc~0_combout\;
\order_3:2:G_3|ALT_INV_abc~0_combout\ <= NOT \order_3:2:G_3|abc~0_combout\;
\temp_c_10|ALT_INV_abc~0_combout\ <= NOT \temp_c_10|abc~0_combout\;
\order_2:5:P_2|ALT_INV_uneq~combout\ <= NOT \order_2:5:P_2|uneq~combout\;
\order_2:7:P_2|ALT_INV_uneq~combout\ <= NOT \order_2:7:P_2|uneq~combout\;
\order_2:6:P_2|ALT_INV_uneq~combout\ <= NOT \order_2:6:P_2|uneq~combout\;
\order_4:2:P_4|ALT_INV_uneq~combout\ <= NOT \order_4:2:P_4|uneq~combout\;
\order_2:11:P_2|ALT_INV_uneq~combout\ <= NOT \order_2:11:P_2|uneq~combout\;
\order_2:10:P_2|ALT_INV_uneq~combout\ <= NOT \order_2:10:P_2|uneq~combout\;
\order_2:9:P_2|ALT_INV_uneq~combout\ <= NOT \order_2:9:P_2|uneq~combout\;
\order_2:8:P_2|ALT_INV_uneq~combout\ <= NOT \order_2:8:P_2|uneq~combout\;
\order_3:6:P_3|ALT_INV_uneq~combout\ <= NOT \order_3:6:P_3|uneq~combout\;
\order_1:26:if_gen2:P_1|ALT_INV_uneq~combout\ <= NOT \order_1:26:if_gen2:P_1|uneq~combout\;
\order_2:12:P_2|ALT_INV_uneq~combout\ <= NOT \order_2:12:P_2|uneq~combout\;
\order_2:14:P_2|ALT_INV_uneq~combout\ <= NOT \order_2:14:P_2|uneq~combout\;
\order_1:31:if_gen2:P_1|ALT_INV_uneq~combout\ <= NOT \order_1:31:if_gen2:P_1|uneq~combout\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\order_6_G_5|ALT_INV_abc~1_combout\ <= NOT \order_6_G_5|abc~1_combout\;
\order_6_G_5|ALT_INV_abc~0_combout\ <= NOT \order_6_G_5|abc~0_combout\;
\order_3:7:P_3|ALT_INV_uneq~combout\ <= NOT \order_3:7:P_3|uneq~combout\;
\order_3:0:G_3|ALT_INV_abc~combout\ <= NOT \order_3:0:G_3|abc~combout\;
\temp_c_6|ALT_INV_abc~combout\ <= NOT \temp_c_6|abc~combout\;
\temp_c_10|ALT_INV_abc~combout\ <= NOT \temp_c_10|abc~combout\;
\temp_c_12|ALT_INV_abc~combout\ <= NOT \temp_c_12|abc~combout\;
\order_3:2:P_3|ALT_INV_uneq~combout\ <= NOT \order_3:2:P_3|uneq~combout\;
\order_3:2:G_3|ALT_INV_abc~1_combout\ <= NOT \order_3:2:G_3|abc~1_combout\;
\order_1:15:if_gen2:P_1|ALT_INV_uneq~combout\ <= NOT \order_1:15:if_gen2:P_1|uneq~combout\;
\order_1:16:if_gen2:P_1|ALT_INV_uneq~combout\ <= NOT \order_1:16:if_gen2:P_1|uneq~combout\;
\order_1:19:if_gen2:P_1|ALT_INV_uneq~combout\ <= NOT \order_1:19:if_gen2:P_1|uneq~combout\;
\order_1:21:if_gen2:P_1|ALT_INV_uneq~combout\ <= NOT \order_1:21:if_gen2:P_1|uneq~combout\;
\order_1:22:if_gen2:P_1|ALT_INV_uneq~combout\ <= NOT \order_1:22:if_gen2:P_1|uneq~combout\;
\temp_c_22|ALT_INV_abc~combout\ <= NOT \temp_c_22|abc~combout\;
\order_3:4:P_3|ALT_INV_uneq~combout\ <= NOT \order_3:4:P_3|uneq~combout\;
\order_1:25:if_gen2:P_1|ALT_INV_uneq~combout\ <= NOT \order_1:25:if_gen2:P_1|uneq~combout\;

\Sum[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:31:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[31]~output_o\);

\Sum[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:30:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[30]~output_o\);

\Sum[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:29:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[29]~output_o\);

\Sum[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:28:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[28]~output_o\);

\Sum[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:27:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[27]~output_o\);

\Sum[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:26:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[26]~output_o\);

\Sum[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:25:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[25]~output_o\);

\Sum[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:24:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[24]~output_o\);

\Sum[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:23:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[23]~output_o\);

\Sum[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:22:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[22]~output_o\);

\Sum[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:21:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[21]~output_o\);

\Sum[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:20:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[20]~output_o\);

\Sum[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:19:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[19]~output_o\);

\Sum[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:18:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[18]~output_o\);

\Sum[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:17:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[17]~output_o\);

\Sum[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:16:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[16]~output_o\);

\Sum[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:15:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[15]~output_o\);

\Sum[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:14:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[14]~output_o\);

\Sum[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:13:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[13]~output_o\);

\Sum[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:12:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[12]~output_o\);

\Sum[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:11:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[11]~output_o\);

\Sum[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:10:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[10]~output_o\);

\Sum[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:9:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[9]~output_o\);

\Sum[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:8:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[8]~output_o\);

\Sum[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:7:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[7]~output_o\);

\Sum[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:6:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[6]~output_o\);

\Sum[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:5:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[5]~output_o\);

\Sum[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:4:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[4]~output_o\);

\Sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:3:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

\Sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:2:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

\Sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_out:1:sum_is|uneq~combout\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

\Sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Cin~input_o\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \order_6_G_5|abc~2_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

\A[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

\B[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

\order_1:31:if_gen2:P_1|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_1:31:if_gen2:P_1|uneq~combout\ = !\A[31]~input_o\ $ (!\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_B[31]~input_o\,
	combout => \order_1:31:if_gen2:P_1|uneq~combout\);

\A[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

\B[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

\A[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

\B[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

\A[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

\B[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

\order_2:14:P_2|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_2:14:P_2|uneq~combout\ = !\A[28]~input_o\ $ (!\B[28]~input_o\ $ (!\A[29]~input_o\ $ (!\B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[29]~input_o\,
	combout => \order_2:14:P_2|uneq~combout\);

\A[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

\B[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

\A[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

\B[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

\order_2:12:P_2|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_2:12:P_2|uneq~combout\ = !\A[24]~input_o\ $ (!\B[24]~input_o\ $ (!\A[25]~input_o\ $ (!\B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	combout => \order_2:12:P_2|uneq~combout\);

\A[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

\B[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

\order_1:26:if_gen2:P_1|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_1:26:if_gen2:P_1|uneq~combout\ = !\A[26]~input_o\ $ (!\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	combout => \order_1:26:if_gen2:P_1|uneq~combout\);

\A[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

\B[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

\order_3:6:P_3|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_3:6:P_3|uneq~combout\ = !\order_2:12:P_2|uneq~combout\ $ (!\order_1:26:if_gen2:P_1|uneq~combout\ $ (!\A[27]~input_o\ $ (!\B[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:12:P_2|ALT_INV_uneq~combout\,
	datab => \order_1:26:if_gen2:P_1|ALT_INV_uneq~combout\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	combout => \order_3:6:P_3|uneq~combout\);

\A[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

\B[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

\A[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

\B[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

\order_2:8:P_2|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_2:8:P_2|uneq~combout\ = !\A[16]~input_o\ $ (!\B[16]~input_o\ $ (!\A[17]~input_o\ $ (!\B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	combout => \order_2:8:P_2|uneq~combout\);

\A[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

\B[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

\A[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

\B[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

\order_2:9:P_2|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_2:9:P_2|uneq~combout\ = !\A[18]~input_o\ $ (!\B[18]~input_o\ $ (!\A[19]~input_o\ $ (!\B[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_B[18]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	combout => \order_2:9:P_2|uneq~combout\);

\A[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

\B[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

\A[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

\B[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

\order_2:10:P_2|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_2:10:P_2|uneq~combout\ = !\A[20]~input_o\ $ (!\B[20]~input_o\ $ (!\A[21]~input_o\ $ (!\B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	combout => \order_2:10:P_2|uneq~combout\);

\A[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

\B[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

\A[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

\B[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

\order_2:11:P_2|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_2:11:P_2|uneq~combout\ = !\A[22]~input_o\ $ (!\B[22]~input_o\ $ (!\A[23]~input_o\ $ (!\B[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_B[22]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	combout => \order_2:11:P_2|uneq~combout\);

\order_4:2:P_4|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_4:2:P_4|uneq~combout\ = !\order_2:8:P_2|uneq~combout\ $ (!\order_2:9:P_2|uneq~combout\ $ (!\order_2:10:P_2|uneq~combout\ $ (!\order_2:11:P_2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:8:P_2|ALT_INV_uneq~combout\,
	datab => \order_2:9:P_2|ALT_INV_uneq~combout\,
	datac => \order_2:10:P_2|ALT_INV_uneq~combout\,
	datad => \order_2:11:P_2|ALT_INV_uneq~combout\,
	combout => \order_4:2:P_4|uneq~combout\);

\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

\order_2:6:P_2|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_2:6:P_2|uneq~combout\ = !\A[12]~input_o\ $ (!\B[12]~input_o\ $ (!\A[13]~input_o\ $ (!\B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	combout => \order_2:6:P_2|uneq~combout\);

\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

\order_2:7:P_2|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_2:7:P_2|uneq~combout\ = !\A[15]~input_o\ $ (!\B[15]~input_o\ $ (!\A[14]~input_o\ $ (!\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	combout => \order_2:7:P_2|uneq~combout\);

\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

\order_2:5:P_2|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_2:5:P_2|uneq~combout\ = !\A[11]~input_o\ $ (!\B[11]~input_o\ $ (!\A[10]~input_o\ $ (!\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	combout => \order_2:5:P_2|uneq~combout\);

\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

\temp_c_10|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_c_10|abc~0_combout\ = (!\A[9]~input_o\ & (\B[9]~input_o\ & (\A[8]~input_o\ & \B[8]~input_o\))) # (\A[9]~input_o\ & (((\A[8]~input_o\ & \B[8]~input_o\)) # (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	combout => \temp_c_10|abc~0_combout\);

\order_3:2:G_3|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_3:2:G_3|abc~0_combout\ = (!\A[11]~input_o\ & (\B[11]~input_o\ & (\A[10]~input_o\ & \B[10]~input_o\))) # (\A[11]~input_o\ & (((\A[10]~input_o\ & \B[10]~input_o\)) # (\B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	combout => \order_3:2:G_3|abc~0_combout\);

\order_4:1:G_4|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_4:1:G_4|abc~0_combout\ = ( \order_3:2:G_3|abc~0_combout\ & ( !\order_2:6:P_2|uneq~combout\ $ (!\order_2:7:P_2|uneq~combout\) ) ) # ( !\order_3:2:G_3|abc~0_combout\ & ( (\order_2:5:P_2|uneq~combout\ & (\temp_c_10|abc~0_combout\ & 
-- (!\order_2:6:P_2|uneq~combout\ $ (!\order_2:7:P_2|uneq~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110011001100110011000000000000001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:6:P_2|ALT_INV_uneq~combout\,
	datab => \order_2:7:P_2|ALT_INV_uneq~combout\,
	datac => \order_2:5:P_2|ALT_INV_uneq~combout\,
	datad => \temp_c_10|ALT_INV_abc~0_combout\,
	datae => \order_3:2:G_3|ALT_INV_abc~0_combout\,
	combout => \order_4:1:G_4|abc~0_combout\);

\order_2:4:P_2|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_2:4:P_2|uneq~combout\ = !\A[9]~input_o\ $ (!\B[9]~input_o\ $ (!\A[8]~input_o\ $ (!\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	combout => \order_2:4:P_2|uneq~combout\);

\order_4:1:P_4|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_4:1:P_4|uneq~combout\ = !\order_2:6:P_2|uneq~combout\ $ (!\order_2:7:P_2|uneq~combout\ $ (!\order_2:5:P_2|uneq~combout\ $ (!\order_2:4:P_2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:6:P_2|ALT_INV_uneq~combout\,
	datab => \order_2:7:P_2|ALT_INV_uneq~combout\,
	datac => \order_2:5:P_2|ALT_INV_uneq~combout\,
	datad => \order_2:4:P_2|ALT_INV_uneq~combout\,
	combout => \order_4:1:P_4|uneq~combout\);

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\order_2:0:G_2|abc\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_2:0:G_2|abc~combout\ = ( \A[0]~input_o\ & ( (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\Cin~input_o\) # (\B[0]~input_o\)))) # (\A[1]~input_o\ & (((\Cin~input_o\) # (\B[0]~input_o\)) # (\B[1]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (!\A[1]~input_o\ & 
-- (\B[1]~input_o\ & (\B[0]~input_o\ & \Cin~input_o\))) # (\A[1]~input_o\ & (((\B[0]~input_o\ & \Cin~input_o\)) # (\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000101110111011100010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	combout => \order_2:0:G_2|abc~combout\);

\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\order_2:1:P_2|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_2:1:P_2|uneq~combout\ = !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (!\A[2]~input_o\ $ (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	combout => \order_2:1:P_2|uneq~combout\);

\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\order_2:2:P_2|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_2:2:P_2|uneq~combout\ = !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (!\A[5]~input_o\ $ (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	combout => \order_2:2:P_2|uneq~combout\);

\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\order_2:3:P_2|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_2:3:P_2|uneq~combout\ = !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (!\A[6]~input_o\ $ (!\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	combout => \order_2:3:P_2|uneq~combout\);

\order_3:0:G_3|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_3:0:G_3|abc~0_combout\ = (!\A[3]~input_o\ & (\B[3]~input_o\ & (\A[2]~input_o\ & \B[2]~input_o\))) # (\A[3]~input_o\ & (((\A[2]~input_o\ & \B[2]~input_o\)) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	combout => \order_3:0:G_3|abc~0_combout\);

\order_4:0:G_4|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_4:0:G_4|abc~0_combout\ = ( \order_3:0:G_3|abc~0_combout\ & ( !\order_2:2:P_2|uneq~combout\ $ (!\order_2:3:P_2|uneq~combout\) ) ) # ( !\order_3:0:G_3|abc~0_combout\ & ( (\order_2:0:G_2|abc~combout\ & (\order_2:1:P_2|uneq~combout\ & 
-- (!\order_2:2:P_2|uneq~combout\ $ (!\order_2:3:P_2|uneq~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000011111111000000000001000100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:0:G_2|ALT_INV_abc~combout\,
	datab => \order_2:1:P_2|ALT_INV_uneq~combout\,
	datac => \order_2:2:P_2|ALT_INV_uneq~combout\,
	datad => \order_2:3:P_2|ALT_INV_uneq~combout\,
	datae => \order_3:0:G_3|ALT_INV_abc~0_combout\,
	combout => \order_4:0:G_4|abc~0_combout\);

\temp_c_6|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_c_6|abc~0_combout\ = (!\A[5]~input_o\ & (\A[4]~input_o\ & (\B[4]~input_o\ & \B[5]~input_o\))) # (\A[5]~input_o\ & (((\A[4]~input_o\ & \B[4]~input_o\)) # (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	combout => \temp_c_6|abc~0_combout\);

\order_4:0:G_4|abc~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_4:0:G_4|abc~1_combout\ = ( \temp_c_6|abc~0_combout\ & ( (!\A[7]~input_o\ & (!\B[7]~input_o\ $ (!\A[6]~input_o\ $ (\B[6]~input_o\)))) # (\A[7]~input_o\ & ((!\A[6]~input_o\ $ (\B[6]~input_o\)) # (\B[7]~input_o\))) ) ) # ( !\temp_c_6|abc~0_combout\ & 
-- ( (!\A[7]~input_o\ & (\B[7]~input_o\ & (\A[6]~input_o\ & \B[6]~input_o\))) # (\A[7]~input_o\ & (((\A[6]~input_o\ & \B[6]~input_o\)) # (\B[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111011110011001011100010001000101110111100110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \temp_c_6|ALT_INV_abc~0_combout\,
	combout => \order_4:0:G_4|abc~1_combout\);

\temp_c_14|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_c_14|abc~0_combout\ = (!\A[13]~input_o\ & (\A[12]~input_o\ & (\B[12]~input_o\ & \B[13]~input_o\))) # (\A[13]~input_o\ & (((\A[12]~input_o\ & \B[12]~input_o\)) # (\B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	combout => \temp_c_14|abc~0_combout\);

\order_5:0:G_5|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_5:0:G_5|abc~0_combout\ = ( \temp_c_14|abc~0_combout\ & ( (!\A[15]~input_o\ & (!\B[15]~input_o\ $ (!\A[14]~input_o\ $ (\B[14]~input_o\)))) # (\A[15]~input_o\ & ((!\A[14]~input_o\ $ (\B[14]~input_o\)) # (\B[15]~input_o\))) ) ) # ( 
-- !\temp_c_14|abc~0_combout\ & ( (!\A[15]~input_o\ & (\B[15]~input_o\ & (\A[14]~input_o\ & \B[14]~input_o\))) # (\A[15]~input_o\ & (((\A[14]~input_o\ & \B[14]~input_o\)) # (\B[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111011110011001011100010001000101110111100110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	datae => \temp_c_14|ALT_INV_abc~0_combout\,
	combout => \order_5:0:G_5|abc~0_combout\);

\order_5:0:G_5|abc~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_5:0:G_5|abc~1_combout\ = ( !\order_5:0:G_5|abc~0_combout\ & ( (!\order_4:1:G_4|abc~0_combout\ & ((!\order_4:1:P_4|uneq~combout\) # ((!\order_4:0:G_4|abc~0_combout\ & !\order_4:0:G_4|abc~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010001000000000000000000010101000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_4:1:G_4|ALT_INV_abc~0_combout\,
	datab => \order_4:1:P_4|ALT_INV_uneq~combout\,
	datac => \order_4:0:G_4|ALT_INV_abc~0_combout\,
	datad => \order_4:0:G_4|ALT_INV_abc~1_combout\,
	datae => \order_5:0:G_5|ALT_INV_abc~0_combout\,
	combout => \order_5:0:G_5|abc~1_combout\);

\temp_c_18|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_c_18|abc~0_combout\ = (!\A[17]~input_o\ & (\A[16]~input_o\ & (\B[16]~input_o\ & \B[17]~input_o\))) # (\A[17]~input_o\ & (((\A[16]~input_o\ & \B[16]~input_o\)) # (\B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	combout => \temp_c_18|abc~0_combout\);

\order_3:4:G_3|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_3:4:G_3|abc~0_combout\ = ( \temp_c_18|abc~0_combout\ & ( (!\A[19]~input_o\ & (!\A[18]~input_o\ $ (!\B[18]~input_o\ $ (\B[19]~input_o\)))) # (\A[19]~input_o\ & ((!\A[18]~input_o\ $ (\B[18]~input_o\)) # (\B[19]~input_o\))) ) ) # ( 
-- !\temp_c_18|abc~0_combout\ & ( (!\A[19]~input_o\ & (\A[18]~input_o\ & (\B[18]~input_o\ & \B[19]~input_o\))) # (\A[19]~input_o\ & (((\A[18]~input_o\ & \B[18]~input_o\)) # (\B[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111011010011001111100000001000111110110100110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_B[18]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	datae => \temp_c_18|ALT_INV_abc~0_combout\,
	combout => \order_3:4:G_3|abc~0_combout\);

\temp_c_22|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_c_22|abc~0_combout\ = (!\A[21]~input_o\ & (\A[20]~input_o\ & (\B[20]~input_o\ & \B[21]~input_o\))) # (\A[21]~input_o\ & (((\A[20]~input_o\ & \B[20]~input_o\)) # (\B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	combout => \temp_c_22|abc~0_combout\);

\order_4:2:G_4|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_4:2:G_4|abc~0_combout\ = (!\A[23]~input_o\ & (\A[22]~input_o\ & (\B[22]~input_o\ & \B[23]~input_o\))) # (\A[23]~input_o\ & (((\A[22]~input_o\ & \B[22]~input_o\)) # (\B[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_B[22]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	combout => \order_4:2:G_4|abc~0_combout\);

\order_4:2:G_4|abc~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_4:2:G_4|abc~1_combout\ = ( !\order_4:2:G_4|abc~0_combout\ & ( (!\order_2:11:P_2|uneq~combout\ & ((!\order_2:10:P_2|uneq~combout\) # ((!\order_3:4:G_3|abc~0_combout\)))) # (\order_2:11:P_2|uneq~combout\ & (!\temp_c_22|abc~0_combout\ & 
-- ((!\order_3:4:G_3|abc~0_combout\) # (\order_2:10:P_2|uneq~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111001000000000000000000011111001110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:10:P_2|ALT_INV_uneq~combout\,
	datab => \order_2:11:P_2|ALT_INV_uneq~combout\,
	datac => \order_3:4:G_3|ALT_INV_abc~0_combout\,
	datad => \temp_c_22|ALT_INV_abc~0_combout\,
	datae => \order_4:2:G_4|ALT_INV_abc~0_combout\,
	combout => \order_4:2:G_4|abc~1_combout\);

\temp_c_26|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_c_26|abc~0_combout\ = (!\A[25]~input_o\ & (\A[24]~input_o\ & (\B[24]~input_o\ & \B[25]~input_o\))) # (\A[25]~input_o\ & (((\A[24]~input_o\ & \B[24]~input_o\)) # (\B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	combout => \temp_c_26|abc~0_combout\);

\order_3:6:G_3|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_3:6:G_3|abc~0_combout\ = ( \temp_c_26|abc~0_combout\ & ( (!\A[27]~input_o\ & (!\A[26]~input_o\ $ (!\B[26]~input_o\ $ (\B[27]~input_o\)))) # (\A[27]~input_o\ & ((!\A[26]~input_o\ $ (\B[26]~input_o\)) # (\B[27]~input_o\))) ) ) # ( 
-- !\temp_c_26|abc~0_combout\ & ( (!\A[27]~input_o\ & (\A[26]~input_o\ & (\B[26]~input_o\ & \B[27]~input_o\))) # (\A[27]~input_o\ & (((\A[26]~input_o\ & \B[26]~input_o\)) # (\B[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111011010011001111100000001000111110110100110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	datae => \temp_c_26|ALT_INV_abc~0_combout\,
	combout => \order_3:6:G_3|abc~0_combout\);

\temp_c_28|abc\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_c_28|abc~combout\ = ( !\order_3:6:G_3|abc~0_combout\ & ( (!\order_3:6:P_3|uneq~combout\) # ((\order_4:2:G_4|abc~1_combout\ & ((!\order_4:2:P_4|uneq~combout\) # (\order_5:0:G_5|abc~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011101111000000000000000010101010111011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_3:6:P_3|ALT_INV_uneq~combout\,
	datab => \order_4:2:P_4|ALT_INV_uneq~combout\,
	datac => \order_5:0:G_5|ALT_INV_abc~1_combout\,
	datad => \order_4:2:G_4|ALT_INV_abc~1_combout\,
	datae => \order_3:6:G_3|ALT_INV_abc~0_combout\,
	combout => \temp_c_28|abc~combout\);

\temp_c_30|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_c_30|abc~0_combout\ = (!\A[29]~input_o\ & (\A[28]~input_o\ & (\B[28]~input_o\ & \B[29]~input_o\))) # (\A[29]~input_o\ & (((\A[28]~input_o\ & \B[28]~input_o\)) # (\B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[29]~input_o\,
	combout => \temp_c_30|abc~0_combout\);

\sum_out:31:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:31:sum_is|uneq~combout\ = ( \temp_c_28|abc~combout\ & ( \temp_c_30|abc~0_combout\ & ( !\order_1:31:if_gen2:P_1|uneq~combout\ $ (((!\A[30]~input_o\ & !\B[30]~input_o\))) ) ) ) # ( !\temp_c_28|abc~combout\ & ( \temp_c_30|abc~0_combout\ & ( 
-- !\order_1:31:if_gen2:P_1|uneq~combout\ $ (((!\A[30]~input_o\ & !\B[30]~input_o\))) ) ) ) # ( \temp_c_28|abc~combout\ & ( !\temp_c_30|abc~0_combout\ & ( !\order_1:31:if_gen2:P_1|uneq~combout\ $ (((!\A[30]~input_o\) # (!\B[30]~input_o\))) ) ) ) # ( 
-- !\temp_c_28|abc~combout\ & ( !\temp_c_30|abc~0_combout\ & ( !\order_1:31:if_gen2:P_1|uneq~combout\ $ (((!\A[30]~input_o\ & ((!\B[30]~input_o\) # (!\order_2:14:P_2|uneq~combout\))) # (\A[30]~input_o\ & (!\B[30]~input_o\ & !\order_2:14:P_2|uneq~combout\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100101011001101010011010100110101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_1:31:if_gen2:P_1|ALT_INV_uneq~combout\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \order_2:14:P_2|ALT_INV_uneq~combout\,
	datae => \temp_c_28|ALT_INV_abc~combout\,
	dataf => \temp_c_30|ALT_INV_abc~0_combout\,
	combout => \sum_out:31:sum_is|uneq~combout\);

\sum_out:30:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:30:sum_is|uneq~combout\ = ( \temp_c_30|abc~0_combout\ & ( !\A[30]~input_o\ $ (\B[30]~input_o\) ) ) # ( !\temp_c_30|abc~0_combout\ & ( !\A[30]~input_o\ $ (!\B[30]~input_o\ $ (((\order_2:14:P_2|uneq~combout\ & !\temp_c_28|abc~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110100110011001100101101001011001101001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_B[30]~input_o\,
	datac => \order_2:14:P_2|ALT_INV_uneq~combout\,
	datad => \temp_c_28|ALT_INV_abc~combout\,
	datae => \temp_c_30|ALT_INV_abc~0_combout\,
	combout => \sum_out:30:sum_is|uneq~combout\);

\sum_out:29:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:29:sum_is|uneq~combout\ = ( \temp_c_28|abc~combout\ & ( !\A[29]~input_o\ $ (!\B[29]~input_o\ $ (((\A[28]~input_o\ & \B[28]~input_o\)))) ) ) # ( !\temp_c_28|abc~combout\ & ( !\A[29]~input_o\ $ (!\B[29]~input_o\ $ (((\B[28]~input_o\) # 
-- (\A[28]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111000111101110000101111000100001110001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[29]~input_o\,
	datae => \temp_c_28|ALT_INV_abc~combout\,
	combout => \sum_out:29:sum_is|uneq~combout\);

\order_1:28:if_gen2:P_1|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_1:28:if_gen2:P_1|uneq~combout\ = !\A[28]~input_o\ $ (!\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_B[28]~input_o\,
	combout => \order_1:28:if_gen2:P_1|uneq~combout\);

\sum_out:28:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:28:sum_is|uneq~combout\ = ( \order_4:2:G_4|abc~1_combout\ & ( \order_3:6:G_3|abc~0_combout\ & ( !\order_1:28:if_gen2:P_1|uneq~combout\ ) ) ) # ( !\order_4:2:G_4|abc~1_combout\ & ( \order_3:6:G_3|abc~0_combout\ & ( 
-- !\order_1:28:if_gen2:P_1|uneq~combout\ ) ) ) # ( \order_4:2:G_4|abc~1_combout\ & ( !\order_3:6:G_3|abc~0_combout\ & ( !\order_1:28:if_gen2:P_1|uneq~combout\ $ (((!\order_3:6:P_3|uneq~combout\) # ((!\order_4:2:P_4|uneq~combout\) # 
-- (\order_5:0:G_5|abc~1_combout\)))) ) ) ) # ( !\order_4:2:G_4|abc~1_combout\ & ( !\order_3:6:G_3|abc~0_combout\ & ( !\order_1:28:if_gen2:P_1|uneq~combout\ $ (!\order_3:6:P_3|uneq~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110010101100101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_1:28:if_gen2:P_1|ALT_INV_uneq~combout\,
	datab => \order_3:6:P_3|ALT_INV_uneq~combout\,
	datac => \order_4:2:P_4|ALT_INV_uneq~combout\,
	datad => \order_5:0:G_5|ALT_INV_abc~1_combout\,
	datae => \order_4:2:G_4|ALT_INV_abc~1_combout\,
	dataf => \order_3:6:G_3|ALT_INV_abc~0_combout\,
	combout => \sum_out:28:sum_is|uneq~combout\);

\temp_c_26|abc\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_c_26|abc~combout\ = ( !\temp_c_26|abc~0_combout\ & ( (!\order_2:12:P_2|uneq~combout\) # ((\order_4:2:G_4|abc~1_combout\ & ((!\order_4:2:P_4|uneq~combout\) # (\order_5:0:G_5|abc~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011101111000000000000000010101010111011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:12:P_2|ALT_INV_uneq~combout\,
	datab => \order_4:2:P_4|ALT_INV_uneq~combout\,
	datac => \order_5:0:G_5|ALT_INV_abc~1_combout\,
	datad => \order_4:2:G_4|ALT_INV_abc~1_combout\,
	datae => \temp_c_26|ALT_INV_abc~0_combout\,
	combout => \temp_c_26|abc~combout\);

\sum_out:27:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:27:sum_is|uneq~combout\ = ( \temp_c_26|abc~combout\ & ( !\A[27]~input_o\ $ (!\B[27]~input_o\ $ (((\A[26]~input_o\ & \B[26]~input_o\)))) ) ) # ( !\temp_c_26|abc~combout\ & ( !\A[27]~input_o\ $ (!\B[27]~input_o\ $ (((\B[26]~input_o\) # 
-- (\A[26]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111000111101110000101111000100001110001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	datae => \temp_c_26|ALT_INV_abc~combout\,
	combout => \sum_out:27:sum_is|uneq~combout\);

\sum_out:26:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:26:sum_is|uneq~combout\ = ( \order_4:2:G_4|abc~1_combout\ & ( \temp_c_26|abc~0_combout\ & ( !\order_1:26:if_gen2:P_1|uneq~combout\ ) ) ) # ( !\order_4:2:G_4|abc~1_combout\ & ( \temp_c_26|abc~0_combout\ & ( !\order_1:26:if_gen2:P_1|uneq~combout\ ) 
-- ) ) # ( \order_4:2:G_4|abc~1_combout\ & ( !\temp_c_26|abc~0_combout\ & ( !\order_1:26:if_gen2:P_1|uneq~combout\ $ (((!\order_2:12:P_2|uneq~combout\) # ((!\order_4:2:P_4|uneq~combout\) # (\order_5:0:G_5|abc~1_combout\)))) ) ) ) # ( 
-- !\order_4:2:G_4|abc~1_combout\ & ( !\temp_c_26|abc~0_combout\ & ( !\order_2:12:P_2|uneq~combout\ $ (!\order_1:26:if_gen2:P_1|uneq~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110001101100011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:12:P_2|ALT_INV_uneq~combout\,
	datab => \order_1:26:if_gen2:P_1|ALT_INV_uneq~combout\,
	datac => \order_4:2:P_4|ALT_INV_uneq~combout\,
	datad => \order_5:0:G_5|ALT_INV_abc~1_combout\,
	datae => \order_4:2:G_4|ALT_INV_abc~1_combout\,
	dataf => \temp_c_26|ALT_INV_abc~0_combout\,
	combout => \sum_out:26:sum_is|uneq~combout\);

\order_1:25:if_gen2:P_1|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_1:25:if_gen2:P_1|uneq~combout\ = !\A[25]~input_o\ $ (!\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	combout => \order_1:25:if_gen2:P_1|uneq~combout\);

\sum_out:25:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:25:sum_is|uneq~combout\ = ( \order_5:0:G_5|abc~1_combout\ & ( \order_4:2:G_4|abc~1_combout\ & ( !\order_1:25:if_gen2:P_1|uneq~combout\ $ (((!\A[24]~input_o\) # (!\B[24]~input_o\))) ) ) ) # ( !\order_5:0:G_5|abc~1_combout\ & ( 
-- \order_4:2:G_4|abc~1_combout\ & ( !\order_1:25:if_gen2:P_1|uneq~combout\ $ (((!\A[24]~input_o\ & ((!\B[24]~input_o\) # (!\order_4:2:P_4|uneq~combout\))) # (\A[24]~input_o\ & (!\B[24]~input_o\ & !\order_4:2:P_4|uneq~combout\)))) ) ) ) # ( 
-- \order_5:0:G_5|abc~1_combout\ & ( !\order_4:2:G_4|abc~1_combout\ & ( !\order_1:25:if_gen2:P_1|uneq~combout\ $ (((!\A[24]~input_o\ & !\B[24]~input_o\))) ) ) ) # ( !\order_5:0:G_5|abc~1_combout\ & ( !\order_4:2:G_4|abc~1_combout\ & ( 
-- !\order_1:25:if_gen2:P_1|uneq~combout\ $ (((!\A[24]~input_o\ & !\B[24]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100000011110011110000001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	datac => \order_1:25:if_gen2:P_1|ALT_INV_uneq~combout\,
	datad => \order_4:2:P_4|ALT_INV_uneq~combout\,
	datae => \order_5:0:G_5|ALT_INV_abc~1_combout\,
	dataf => \order_4:2:G_4|ALT_INV_abc~1_combout\,
	combout => \sum_out:25:sum_is|uneq~combout\);

\sum_out:24:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:24:sum_is|uneq~combout\ = ( \order_4:2:G_4|abc~1_combout\ & ( !\A[24]~input_o\ $ (!\B[24]~input_o\ $ (((\order_4:2:P_4|uneq~combout\ & !\order_5:0:G_5|abc~1_combout\)))) ) ) # ( !\order_4:2:G_4|abc~1_combout\ & ( !\A[24]~input_o\ $ 
-- (\B[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001011010010110011010011001100110010110100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	datac => \order_4:2:P_4|ALT_INV_uneq~combout\,
	datad => \order_5:0:G_5|ALT_INV_abc~1_combout\,
	datae => \order_4:2:G_4|ALT_INV_abc~1_combout\,
	combout => \sum_out:24:sum_is|uneq~combout\);

\order_3:4:P_3|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_3:4:P_3|uneq~combout\ = !\order_2:8:P_2|uneq~combout\ $ (!\order_2:9:P_2|uneq~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:8:P_2|ALT_INV_uneq~combout\,
	datab => \order_2:9:P_2|ALT_INV_uneq~combout\,
	combout => \order_3:4:P_3|uneq~combout\);

\temp_c_22|abc\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_c_22|abc~combout\ = ( !\temp_c_22|abc~0_combout\ & ( (!\order_2:10:P_2|uneq~combout\) # ((!\order_3:4:G_3|abc~0_combout\ & ((!\order_3:4:P_3|uneq~combout\) # (\order_5:0:G_5|abc~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111001100000000000000000011101111110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_3:4:P_3|ALT_INV_uneq~combout\,
	datab => \order_2:10:P_2|ALT_INV_uneq~combout\,
	datac => \order_5:0:G_5|ALT_INV_abc~1_combout\,
	datad => \order_3:4:G_3|ALT_INV_abc~0_combout\,
	datae => \temp_c_22|ALT_INV_abc~0_combout\,
	combout => \temp_c_22|abc~combout\);

\sum_out:23:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:23:sum_is|uneq~combout\ = ( \temp_c_22|abc~combout\ & ( !\A[23]~input_o\ $ (!\B[23]~input_o\ $ (((\A[22]~input_o\ & \B[22]~input_o\)))) ) ) # ( !\temp_c_22|abc~combout\ & ( !\A[23]~input_o\ $ (!\B[23]~input_o\ $ (((\B[22]~input_o\) # 
-- (\A[22]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111000111101110000101111000100001110001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_B[22]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	datae => \temp_c_22|ALT_INV_abc~combout\,
	combout => \sum_out:23:sum_is|uneq~combout\);

\order_1:22:if_gen2:P_1|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_1:22:if_gen2:P_1|uneq~combout\ = !\A[22]~input_o\ $ (!\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_B[22]~input_o\,
	combout => \order_1:22:if_gen2:P_1|uneq~combout\);

\sum_out:22:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:22:sum_is|uneq~combout\ = ( \order_3:4:G_3|abc~0_combout\ & ( \temp_c_22|abc~0_combout\ & ( !\order_1:22:if_gen2:P_1|uneq~combout\ ) ) ) # ( !\order_3:4:G_3|abc~0_combout\ & ( \temp_c_22|abc~0_combout\ & ( !\order_1:22:if_gen2:P_1|uneq~combout\ ) 
-- ) ) # ( \order_3:4:G_3|abc~0_combout\ & ( !\temp_c_22|abc~0_combout\ & ( !\order_2:10:P_2|uneq~combout\ $ (!\order_1:22:if_gen2:P_1|uneq~combout\) ) ) ) # ( !\order_3:4:G_3|abc~0_combout\ & ( !\temp_c_22|abc~0_combout\ & ( 
-- !\order_1:22:if_gen2:P_1|uneq~combout\ $ (((!\order_3:4:P_3|uneq~combout\) # ((!\order_2:10:P_2|uneq~combout\) # (\order_5:0:G_5|abc~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000001111001111000011110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_3:4:P_3|ALT_INV_uneq~combout\,
	datab => \order_2:10:P_2|ALT_INV_uneq~combout\,
	datac => \order_1:22:if_gen2:P_1|ALT_INV_uneq~combout\,
	datad => \order_5:0:G_5|ALT_INV_abc~1_combout\,
	datae => \order_3:4:G_3|ALT_INV_abc~0_combout\,
	dataf => \temp_c_22|ALT_INV_abc~0_combout\,
	combout => \sum_out:22:sum_is|uneq~combout\);

\order_1:21:if_gen2:P_1|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_1:21:if_gen2:P_1|uneq~combout\ = !\A[21]~input_o\ $ (!\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_B[21]~input_o\,
	combout => \order_1:21:if_gen2:P_1|uneq~combout\);

\sum_out:21:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:21:sum_is|uneq~combout\ = ( \order_5:0:G_5|abc~1_combout\ & ( \order_3:4:G_3|abc~0_combout\ & ( !\order_1:21:if_gen2:P_1|uneq~combout\ $ (((!\A[20]~input_o\ & !\B[20]~input_o\))) ) ) ) # ( !\order_5:0:G_5|abc~1_combout\ & ( 
-- \order_3:4:G_3|abc~0_combout\ & ( !\order_1:21:if_gen2:P_1|uneq~combout\ $ (((!\A[20]~input_o\ & !\B[20]~input_o\))) ) ) ) # ( \order_5:0:G_5|abc~1_combout\ & ( !\order_3:4:G_3|abc~0_combout\ & ( !\order_1:21:if_gen2:P_1|uneq~combout\ $ 
-- (((!\A[20]~input_o\) # (!\B[20]~input_o\))) ) ) ) # ( !\order_5:0:G_5|abc~1_combout\ & ( !\order_3:4:G_3|abc~0_combout\ & ( !\order_1:21:if_gen2:P_1|uneq~combout\ $ (((!\order_3:4:P_3|uneq~combout\ & ((!\A[20]~input_o\) # (!\B[20]~input_o\))) # 
-- (\order_3:4:P_3|uneq~combout\ & (!\A[20]~input_o\ & !\B[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000000111111110000111111110000000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_3:4:P_3|ALT_INV_uneq~combout\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	datad => \order_1:21:if_gen2:P_1|ALT_INV_uneq~combout\,
	datae => \order_5:0:G_5|ALT_INV_abc~1_combout\,
	dataf => \order_3:4:G_3|ALT_INV_abc~0_combout\,
	combout => \sum_out:21:sum_is|uneq~combout\);

\sum_out:20:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:20:sum_is|uneq~combout\ = ( \order_3:4:G_3|abc~0_combout\ & ( !\A[20]~input_o\ $ (\B[20]~input_o\) ) ) # ( !\order_3:4:G_3|abc~0_combout\ & ( !\A[20]~input_o\ $ (!\B[20]~input_o\ $ (((\order_3:4:P_3|uneq~combout\ & 
-- !\order_5:0:G_5|abc~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100111100110000111100001101101001001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_3:4:P_3|ALT_INV_uneq~combout\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	datad => \order_5:0:G_5|ALT_INV_abc~1_combout\,
	datae => \order_3:4:G_3|ALT_INV_abc~0_combout\,
	combout => \sum_out:20:sum_is|uneq~combout\);

\order_1:19:if_gen2:P_1|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_1:19:if_gen2:P_1|uneq~combout\ = !\A[19]~input_o\ $ (!\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	combout => \order_1:19:if_gen2:P_1|uneq~combout\);

\sum_out:19:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:19:sum_is|uneq~combout\ = ( \order_5:0:G_5|abc~1_combout\ & ( \temp_c_18|abc~0_combout\ & ( !\order_1:19:if_gen2:P_1|uneq~combout\ $ (((!\A[18]~input_o\ & !\B[18]~input_o\))) ) ) ) # ( !\order_5:0:G_5|abc~1_combout\ & ( \temp_c_18|abc~0_combout\ 
-- & ( !\order_1:19:if_gen2:P_1|uneq~combout\ $ (((!\A[18]~input_o\ & !\B[18]~input_o\))) ) ) ) # ( \order_5:0:G_5|abc~1_combout\ & ( !\temp_c_18|abc~0_combout\ & ( !\order_1:19:if_gen2:P_1|uneq~combout\ $ (((!\A[18]~input_o\) # (!\B[18]~input_o\))) ) ) ) # 
-- ( !\order_5:0:G_5|abc~1_combout\ & ( !\temp_c_18|abc~0_combout\ & ( !\order_1:19:if_gen2:P_1|uneq~combout\ $ (((!\order_2:8:P_2|uneq~combout\ & ((!\A[18]~input_o\) # (!\B[18]~input_o\))) # (\order_2:8:P_2|uneq~combout\ & (!\A[18]~input_o\ & 
-- !\B[18]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000000111111110000111111110000000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:8:P_2|ALT_INV_uneq~combout\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \order_1:19:if_gen2:P_1|ALT_INV_uneq~combout\,
	datae => \order_5:0:G_5|ALT_INV_abc~1_combout\,
	dataf => \temp_c_18|ALT_INV_abc~0_combout\,
	combout => \sum_out:19:sum_is|uneq~combout\);

\sum_out:18:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:18:sum_is|uneq~combout\ = ( \temp_c_18|abc~0_combout\ & ( !\A[18]~input_o\ $ (\B[18]~input_o\) ) ) # ( !\temp_c_18|abc~0_combout\ & ( !\A[18]~input_o\ $ (!\B[18]~input_o\ $ (((\order_2:8:P_2|uneq~combout\ & !\order_5:0:G_5|abc~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100111100110000111100001101101001001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:8:P_2|ALT_INV_uneq~combout\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \order_5:0:G_5|ALT_INV_abc~1_combout\,
	datae => \temp_c_18|ALT_INV_abc~0_combout\,
	combout => \sum_out:18:sum_is|uneq~combout\);

\sum_out:17:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:17:sum_is|uneq~combout\ = ( \order_5:0:G_5|abc~1_combout\ & ( !\A[17]~input_o\ $ (!\B[17]~input_o\ $ (((\A[16]~input_o\ & \B[16]~input_o\)))) ) ) # ( !\order_5:0:G_5|abc~1_combout\ & ( !\A[17]~input_o\ $ (!\B[17]~input_o\ $ (((\B[16]~input_o\) # 
-- (\A[16]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111000111101110000101111000100001110001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	datae => \order_5:0:G_5|ALT_INV_abc~1_combout\,
	combout => \sum_out:17:sum_is|uneq~combout\);

\order_1:16:if_gen2:P_1|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_1:16:if_gen2:P_1|uneq~combout\ = !\A[16]~input_o\ $ (!\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	combout => \order_1:16:if_gen2:P_1|uneq~combout\);

\sum_out:16:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:16:sum_is|uneq~combout\ = ( \order_4:0:G_4|abc~1_combout\ & ( \order_5:0:G_5|abc~0_combout\ & ( !\order_1:16:if_gen2:P_1|uneq~combout\ ) ) ) # ( !\order_4:0:G_4|abc~1_combout\ & ( \order_5:0:G_5|abc~0_combout\ & ( 
-- !\order_1:16:if_gen2:P_1|uneq~combout\ ) ) ) # ( \order_4:0:G_4|abc~1_combout\ & ( !\order_5:0:G_5|abc~0_combout\ & ( !\order_1:16:if_gen2:P_1|uneq~combout\ $ (((!\order_4:1:G_4|abc~0_combout\ & !\order_4:1:P_4|uneq~combout\))) ) ) ) # ( 
-- !\order_4:0:G_4|abc~1_combout\ & ( !\order_5:0:G_5|abc~0_combout\ & ( !\order_1:16:if_gen2:P_1|uneq~combout\ $ (((!\order_4:1:G_4|abc~0_combout\ & ((!\order_4:1:P_4|uneq~combout\) # (!\order_4:0:G_4|abc~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101010011010100110101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_1:16:if_gen2:P_1|ALT_INV_uneq~combout\,
	datab => \order_4:1:G_4|ALT_INV_abc~0_combout\,
	datac => \order_4:1:P_4|ALT_INV_uneq~combout\,
	datad => \order_4:0:G_4|ALT_INV_abc~0_combout\,
	datae => \order_4:0:G_4|ALT_INV_abc~1_combout\,
	dataf => \order_5:0:G_5|ALT_INV_abc~0_combout\,
	combout => \sum_out:16:sum_is|uneq~combout\);

\order_1:15:if_gen2:P_1|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_1:15:if_gen2:P_1|uneq~combout\ = !\A[15]~input_o\ $ (!\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	combout => \order_1:15:if_gen2:P_1|uneq~combout\);

\order_3:2:G_3|abc~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_3:2:G_3|abc~1_combout\ = (!\order_3:2:G_3|abc~0_combout\ & ((!\order_2:5:P_2|uneq~combout\) # (!\temp_c_10|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:5:P_2|ALT_INV_uneq~combout\,
	datab => \temp_c_10|ALT_INV_abc~0_combout\,
	datac => \order_3:2:G_3|ALT_INV_abc~0_combout\,
	combout => \order_3:2:G_3|abc~1_combout\);

\order_3:2:P_3|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_3:2:P_3|uneq~combout\ = !\order_2:5:P_2|uneq~combout\ $ (!\order_2:4:P_2|uneq~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:5:P_2|ALT_INV_uneq~combout\,
	datab => \order_2:4:P_2|ALT_INV_uneq~combout\,
	combout => \order_3:2:P_3|uneq~combout\);

\temp_c_12|abc\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_c_12|abc~combout\ = (\order_3:2:G_3|abc~1_combout\ & ((!\order_3:2:P_3|uneq~combout\) # ((!\order_4:0:G_4|abc~0_combout\ & !\order_4:0:G_4|abc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100010101000100010001010100010001000101010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_3:2:G_3|ALT_INV_abc~1_combout\,
	datab => \order_3:2:P_3|ALT_INV_uneq~combout\,
	datac => \order_4:0:G_4|ALT_INV_abc~0_combout\,
	datad => \order_4:0:G_4|ALT_INV_abc~1_combout\,
	combout => \temp_c_12|abc~combout\);

\sum_out:15:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:15:sum_is|uneq~combout\ = ( \temp_c_14|abc~0_combout\ & ( \temp_c_12|abc~combout\ & ( !\order_1:15:if_gen2:P_1|uneq~combout\ $ (((!\A[14]~input_o\ & !\B[14]~input_o\))) ) ) ) # ( !\temp_c_14|abc~0_combout\ & ( \temp_c_12|abc~combout\ & ( 
-- !\order_1:15:if_gen2:P_1|uneq~combout\ $ (((!\A[14]~input_o\) # (!\B[14]~input_o\))) ) ) ) # ( \temp_c_14|abc~0_combout\ & ( !\temp_c_12|abc~combout\ & ( !\order_1:15:if_gen2:P_1|uneq~combout\ $ (((!\A[14]~input_o\ & !\B[14]~input_o\))) ) ) ) # ( 
-- !\temp_c_14|abc~0_combout\ & ( !\temp_c_12|abc~combout\ & ( !\order_1:15:if_gen2:P_1|uneq~combout\ $ (((!\order_2:6:P_2|uneq~combout\ & ((!\A[14]~input_o\) # (!\B[14]~input_o\))) # (\order_2:6:P_2|uneq~combout\ & (!\A[14]~input_o\ & !\B[14]~input_o\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000001111111100000000000011111111000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:6:P_2|ALT_INV_uneq~combout\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \order_1:15:if_gen2:P_1|ALT_INV_uneq~combout\,
	datae => \temp_c_14|ALT_INV_abc~0_combout\,
	dataf => \temp_c_12|ALT_INV_abc~combout\,
	combout => \sum_out:15:sum_is|uneq~combout\);

\sum_out:14:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:14:sum_is|uneq~combout\ = ( \temp_c_12|abc~combout\ & ( !\A[14]~input_o\ $ (!\B[14]~input_o\ $ (\temp_c_14|abc~0_combout\)) ) ) # ( !\temp_c_12|abc~combout\ & ( !\A[14]~input_o\ $ (!\B[14]~input_o\ $ (((\temp_c_14|abc~0_combout\) # 
-- (\order_2:6:P_2|uneq~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100111000011001111001100001101101001110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:6:P_2|ALT_INV_uneq~combout\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \temp_c_14|ALT_INV_abc~0_combout\,
	datae => \temp_c_12|ALT_INV_abc~combout\,
	combout => \sum_out:14:sum_is|uneq~combout\);

\sum_out:13:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:13:sum_is|uneq~combout\ = ( \temp_c_12|abc~combout\ & ( !\A[13]~input_o\ $ (!\B[13]~input_o\ $ (((\A[12]~input_o\ & \B[12]~input_o\)))) ) ) # ( !\temp_c_12|abc~combout\ & ( !\A[13]~input_o\ $ (!\B[13]~input_o\ $ (((\B[12]~input_o\) # 
-- (\A[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111000111101110000101111000100001110001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	datae => \temp_c_12|ALT_INV_abc~combout\,
	combout => \sum_out:13:sum_is|uneq~combout\);

\sum_out:12:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:12:sum_is|uneq~combout\ = ( \order_4:0:G_4|abc~0_combout\ & ( \order_4:0:G_4|abc~1_combout\ & ( !\A[12]~input_o\ $ (!\B[12]~input_o\ $ (((!\order_3:2:G_3|abc~1_combout\) # (\order_3:2:P_3|uneq~combout\)))) ) ) ) # ( !\order_4:0:G_4|abc~0_combout\ 
-- & ( \order_4:0:G_4|abc~1_combout\ & ( !\A[12]~input_o\ $ (!\B[12]~input_o\ $ (((!\order_3:2:G_3|abc~1_combout\) # (\order_3:2:P_3|uneq~combout\)))) ) ) ) # ( \order_4:0:G_4|abc~0_combout\ & ( !\order_4:0:G_4|abc~1_combout\ & ( !\A[12]~input_o\ $ 
-- (!\B[12]~input_o\ $ (((!\order_3:2:G_3|abc~1_combout\) # (\order_3:2:P_3|uneq~combout\)))) ) ) ) # ( !\order_4:0:G_4|abc~0_combout\ & ( !\order_4:0:G_4|abc~1_combout\ & ( !\A[12]~input_o\ $ (!\B[12]~input_o\ $ (!\order_3:2:G_3|abc~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001100110010110100110011001011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \order_3:2:G_3|ALT_INV_abc~1_combout\,
	datad => \order_3:2:P_3|ALT_INV_uneq~combout\,
	datae => \order_4:0:G_4|ALT_INV_abc~0_combout\,
	dataf => \order_4:0:G_4|ALT_INV_abc~1_combout\,
	combout => \sum_out:12:sum_is|uneq~combout\);

\temp_c_10|abc\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_c_10|abc~combout\ = (!\temp_c_10|abc~0_combout\ & ((!\order_2:4:P_2|uneq~combout\) # ((!\order_4:0:G_4|abc~0_combout\ & !\order_4:0:G_4|abc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010001000101010001000100010101000100010001010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp_c_10|ALT_INV_abc~0_combout\,
	datab => \order_2:4:P_2|ALT_INV_uneq~combout\,
	datac => \order_4:0:G_4|ALT_INV_abc~0_combout\,
	datad => \order_4:0:G_4|ALT_INV_abc~1_combout\,
	combout => \temp_c_10|abc~combout\);

\sum_out:11:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:11:sum_is|uneq~combout\ = ( \temp_c_10|abc~combout\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\ $ (((\A[10]~input_o\ & \B[10]~input_o\)))) ) ) # ( !\temp_c_10|abc~combout\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\ $ (((\B[10]~input_o\) # 
-- (\A[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011001100110100101101001100110010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	datae => \temp_c_10|ALT_INV_abc~combout\,
	combout => \sum_out:11:sum_is|uneq~combout\);

\sum_out:10:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:10:sum_is|uneq~combout\ = ( \order_4:0:G_4|abc~0_combout\ & ( \order_4:0:G_4|abc~1_combout\ & ( !\A[10]~input_o\ $ (!\B[10]~input_o\ $ (((\order_2:4:P_2|uneq~combout\) # (\temp_c_10|abc~0_combout\)))) ) ) ) # ( !\order_4:0:G_4|abc~0_combout\ & ( 
-- \order_4:0:G_4|abc~1_combout\ & ( !\A[10]~input_o\ $ (!\B[10]~input_o\ $ (((\order_2:4:P_2|uneq~combout\) # (\temp_c_10|abc~0_combout\)))) ) ) ) # ( \order_4:0:G_4|abc~0_combout\ & ( !\order_4:0:G_4|abc~1_combout\ & ( !\A[10]~input_o\ $ (!\B[10]~input_o\ 
-- $ (((\order_2:4:P_2|uneq~combout\) # (\temp_c_10|abc~0_combout\)))) ) ) ) # ( !\order_4:0:G_4|abc~0_combout\ & ( !\order_4:0:G_4|abc~1_combout\ & ( !\A[10]~input_o\ $ (!\B[10]~input_o\ $ (\temp_c_10|abc~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010011001100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \temp_c_10|ALT_INV_abc~0_combout\,
	datad => \order_2:4:P_2|ALT_INV_uneq~combout\,
	datae => \order_4:0:G_4|ALT_INV_abc~0_combout\,
	dataf => \order_4:0:G_4|ALT_INV_abc~1_combout\,
	combout => \sum_out:10:sum_is|uneq~combout\);

\sum_out:9:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:9:sum_is|uneq~combout\ = ( \order_4:0:G_4|abc~0_combout\ & ( \order_4:0:G_4|abc~1_combout\ & ( !\A[9]~input_o\ $ (!\B[9]~input_o\ $ (((\B[8]~input_o\) # (\A[8]~input_o\)))) ) ) ) # ( !\order_4:0:G_4|abc~0_combout\ & ( 
-- \order_4:0:G_4|abc~1_combout\ & ( !\A[9]~input_o\ $ (!\B[9]~input_o\ $ (((\B[8]~input_o\) # (\A[8]~input_o\)))) ) ) ) # ( \order_4:0:G_4|abc~0_combout\ & ( !\order_4:0:G_4|abc~1_combout\ & ( !\A[9]~input_o\ $ (!\B[9]~input_o\ $ (((\B[8]~input_o\) # 
-- (\A[8]~input_o\)))) ) ) ) # ( !\order_4:0:G_4|abc~0_combout\ & ( !\order_4:0:G_4|abc~1_combout\ & ( !\A[9]~input_o\ $ (!\B[9]~input_o\ $ (((\A[8]~input_o\ & \B[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011010011001100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	datae => \order_4:0:G_4|ALT_INV_abc~0_combout\,
	dataf => \order_4:0:G_4|ALT_INV_abc~1_combout\,
	combout => \sum_out:9:sum_is|uneq~combout\);

\sum_out:8:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:8:sum_is|uneq~combout\ = !\A[8]~input_o\ $ (!\B[8]~input_o\ $ (((\order_4:0:G_4|abc~1_combout\) # (\order_4:0:G_4|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \order_4:0:G_4|ALT_INV_abc~0_combout\,
	datad => \order_4:0:G_4|ALT_INV_abc~1_combout\,
	combout => \sum_out:8:sum_is|uneq~combout\);

\temp_c_6|abc\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_c_6|abc~combout\ = ( !\temp_c_6|abc~0_combout\ & ( (!\order_2:2:P_2|uneq~combout\) # ((!\order_3:0:G_3|abc~0_combout\ & ((!\order_2:0:G_2|abc~combout\) # (!\order_2:1:P_2|uneq~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011110000000000000000000011111110111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:0:G_2|ALT_INV_abc~combout\,
	datab => \order_2:1:P_2|ALT_INV_uneq~combout\,
	datac => \order_2:2:P_2|ALT_INV_uneq~combout\,
	datad => \order_3:0:G_3|ALT_INV_abc~0_combout\,
	datae => \temp_c_6|ALT_INV_abc~0_combout\,
	combout => \temp_c_6|abc~combout\);

\sum_out:7:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:7:sum_is|uneq~combout\ = ( \temp_c_6|abc~combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\A[6]~input_o\ & \B[6]~input_o\)))) ) ) # ( !\temp_c_6|abc~combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\B[6]~input_o\) # (\A[6]~input_o\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011001100110100101101001100110010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \temp_c_6|ALT_INV_abc~combout\,
	combout => \sum_out:7:sum_is|uneq~combout\);

\sum_out:6:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:6:sum_is|uneq~combout\ = !\A[6]~input_o\ $ (!\B[6]~input_o\ $ (!\temp_c_6|abc~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \temp_c_6|ALT_INV_abc~combout\,
	combout => \sum_out:6:sum_is|uneq~combout\);

\order_3:0:G_3|abc\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_3:0:G_3|abc~combout\ = (!\order_3:0:G_3|abc~0_combout\ & ((!\order_2:0:G_2|abc~combout\) # (!\order_2:1:P_2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:0:G_2|ALT_INV_abc~combout\,
	datab => \order_2:1:P_2|ALT_INV_uneq~combout\,
	datac => \order_3:0:G_3|ALT_INV_abc~0_combout\,
	combout => \order_3:0:G_3|abc~combout\);

\sum_out:5:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:5:sum_is|uneq~combout\ = ( \order_3:0:G_3|abc~combout\ & ( !\A[5]~input_o\ $ (!\B[5]~input_o\ $ (((\A[4]~input_o\ & \B[4]~input_o\)))) ) ) # ( !\order_3:0:G_3|abc~combout\ & ( !\A[5]~input_o\ $ (!\B[5]~input_o\ $ (((\B[4]~input_o\) # 
-- (\A[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111000111101110000101111000100001110001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \order_3:0:G_3|ALT_INV_abc~combout\,
	combout => \sum_out:5:sum_is|uneq~combout\);

\sum_out:4:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:4:sum_is|uneq~combout\ = !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (!\order_3:0:G_3|abc~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \order_3:0:G_3|ALT_INV_abc~combout\,
	combout => \sum_out:4:sum_is|uneq~combout\);

\sum_out:3:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:3:sum_is|uneq~combout\ = ( \B[2]~input_o\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((\A[2]~input_o\) # (\order_2:0:G_2|abc~combout\)))) ) ) # ( !\B[2]~input_o\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((\order_2:0:G_2|abc~combout\ & 
-- \A[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011010011001100101100110011010010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \order_2:0:G_2|ALT_INV_abc~combout\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	combout => \sum_out:3:sum_is|uneq~combout\);

\sum_out:2:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:2:sum_is|uneq~combout\ = !\order_2:0:G_2|abc~combout\ $ (!\A[2]~input_o\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_2:0:G_2|ALT_INV_abc~combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	combout => \sum_out:2:sum_is|uneq~combout\);

\sum_out:1:sum_is|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_out:1:sum_is|uneq~combout\ = ( \A[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\Cin~input_o\) # (\B[0]~input_o\)))) ) ) # ( !\A[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\B[0]~input_o\ & \Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011010011001100101100110011010010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	combout => \sum_out:1:sum_is|uneq~combout\);

\order_3:7:P_3|uneq\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_3:7:P_3|uneq~combout\ = !\order_1:31:if_gen2:P_1|uneq~combout\ $ (!\A[30]~input_o\ $ (!\B[30]~input_o\ $ (!\order_2:14:P_2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_1:31:if_gen2:P_1|ALT_INV_uneq~combout\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \order_2:14:P_2|ALT_INV_uneq~combout\,
	combout => \order_3:7:P_3|uneq~combout\);

\order_6_G_5|abc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_6_G_5|abc~0_combout\ = ( \temp_c_30|abc~0_combout\ & ( (!\A[31]~input_o\ & (!\B[31]~input_o\ $ (!\A[30]~input_o\ $ (\B[30]~input_o\)))) # (\A[31]~input_o\ & ((!\A[30]~input_o\ $ (\B[30]~input_o\)) # (\B[31]~input_o\))) ) ) # ( 
-- !\temp_c_30|abc~0_combout\ & ( (!\A[31]~input_o\ & (\B[31]~input_o\ & (\A[30]~input_o\ & \B[30]~input_o\))) # (\A[31]~input_o\ & (((\A[30]~input_o\ & \B[30]~input_o\)) # (\B[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111011110011001011100010001000101110111100110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_B[31]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	datae => \temp_c_30|ALT_INV_abc~0_combout\,
	combout => \order_6_G_5|abc~0_combout\);

\order_6_G_5|abc~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_6_G_5|abc~1_combout\ = (!\order_6_G_5|abc~0_combout\ & ((!\order_3:6:G_3|abc~0_combout\) # (!\order_3:7:P_3|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_3:6:G_3|ALT_INV_abc~0_combout\,
	datab => \order_3:7:P_3|ALT_INV_uneq~combout\,
	datac => \order_6_G_5|ALT_INV_abc~0_combout\,
	combout => \order_6_G_5|abc~1_combout\);

\order_6_G_5|abc~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \order_6_G_5|abc~2_combout\ = ( \order_3:7:P_3|uneq~combout\ & ( \order_6_G_5|abc~1_combout\ & ( (!\order_3:6:P_3|uneq~combout\ & ((!\order_4:2:G_4|abc~1_combout\) # ((!\order_4:2:P_4|uneq~combout\ & !\order_5:0:G_5|abc~1_combout\)))) # 
-- (\order_3:6:P_3|uneq~combout\ & (\order_4:2:P_4|uneq~combout\ & (!\order_5:0:G_5|abc~1_combout\))) ) ) ) # ( !\order_3:7:P_3|uneq~combout\ & ( \order_6_G_5|abc~1_combout\ & ( (!\order_3:6:P_3|uneq~combout\ & (\order_4:2:P_4|uneq~combout\ & 
-- (!\order_5:0:G_5|abc~1_combout\))) # (\order_3:6:P_3|uneq~combout\ & ((!\order_4:2:G_4|abc~1_combout\) # ((!\order_4:2:P_4|uneq~combout\ & !\order_5:0:G_5|abc~1_combout\)))) ) ) ) # ( \order_3:7:P_3|uneq~combout\ & ( !\order_6_G_5|abc~1_combout\ ) ) # ( 
-- !\order_3:7:P_3|uneq~combout\ & ( !\order_6_G_5|abc~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101110101011000001011101010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \order_3:6:P_3|ALT_INV_uneq~combout\,
	datab => \order_4:2:P_4|ALT_INV_uneq~combout\,
	datac => \order_5:0:G_5|ALT_INV_abc~1_combout\,
	datad => \order_4:2:G_4|ALT_INV_abc~1_combout\,
	datae => \order_3:7:P_3|ALT_INV_uneq~combout\,
	dataf => \order_6_G_5|ALT_INV_abc~1_combout\,
	combout => \order_6_G_5|abc~2_combout\);

ww_Sum(31) <= \Sum[31]~output_o\;

ww_Sum(30) <= \Sum[30]~output_o\;

ww_Sum(29) <= \Sum[29]~output_o\;

ww_Sum(28) <= \Sum[28]~output_o\;

ww_Sum(27) <= \Sum[27]~output_o\;

ww_Sum(26) <= \Sum[26]~output_o\;

ww_Sum(25) <= \Sum[25]~output_o\;

ww_Sum(24) <= \Sum[24]~output_o\;

ww_Sum(23) <= \Sum[23]~output_o\;

ww_Sum(22) <= \Sum[22]~output_o\;

ww_Sum(21) <= \Sum[21]~output_o\;

ww_Sum(20) <= \Sum[20]~output_o\;

ww_Sum(19) <= \Sum[19]~output_o\;

ww_Sum(18) <= \Sum[18]~output_o\;

ww_Sum(17) <= \Sum[17]~output_o\;

ww_Sum(16) <= \Sum[16]~output_o\;

ww_Sum(15) <= \Sum[15]~output_o\;

ww_Sum(14) <= \Sum[14]~output_o\;

ww_Sum(13) <= \Sum[13]~output_o\;

ww_Sum(12) <= \Sum[12]~output_o\;

ww_Sum(11) <= \Sum[11]~output_o\;

ww_Sum(10) <= \Sum[10]~output_o\;

ww_Sum(9) <= \Sum[9]~output_o\;

ww_Sum(8) <= \Sum[8]~output_o\;

ww_Sum(7) <= \Sum[7]~output_o\;

ww_Sum(6) <= \Sum[6]~output_o\;

ww_Sum(5) <= \Sum[5]~output_o\;

ww_Sum(4) <= \Sum[4]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(0) <= \Sum[0]~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


