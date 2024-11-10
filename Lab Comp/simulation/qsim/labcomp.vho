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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "10/29/2024 09:35:06"

-- 
-- Device: Altera 5CEFA4F23C7 Package FBGA484
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

ENTITY 	labcomp IS
    PORT (
	F : OUT std_logic;
	W : IN std_logic;
	Z : IN std_logic;
	X : IN std_logic;
	Y : IN std_logic
	);
END labcomp;

-- Design Ports Information
-- F	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF labcomp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y~input_o\ : std_logic;
SIGNAL \ALT_INV_X~input_o\ : std_logic;
SIGNAL \ALT_INV_Z~input_o\ : std_logic;
SIGNAL \ALT_INV_W~input_o\ : std_logic;

BEGIN

F <= ww_F;
ww_W <= W;
ww_Z <= Z;
ww_X <= X;
ww_Y <= Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Y~input_o\ <= NOT \Y~input_o\;
\ALT_INV_X~input_o\ <= NOT \X~input_o\;
\ALT_INV_Z~input_o\ <= NOT \Z~input_o\;
\ALT_INV_W~input_o\ <= NOT \W~input_o\;

-- Location: IOOBUF_X0_Y18_N79
\F~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~0_combout\,
	devoe => ww_devoe,
	o => ww_F);

-- Location: IOIBUF_X34_Y0_N1
\X~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\Y~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\Z~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\W~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: MLABCELL_X34_Y2_N33
\inst8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = ( \Z~input_o\ & ( \W~input_o\ & ( (!\X~input_o\ & !\Y~input_o\) ) ) ) # ( !\Z~input_o\ & ( \W~input_o\ & ( (!\X~input_o\ & \Y~input_o\) ) ) ) # ( \Z~input_o\ & ( !\W~input_o\ ) ) # ( !\Z~input_o\ & ( !\W~input_o\ & ( (\X~input_o\ & 
-- !\Y~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111111111111111100001100000011001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X~input_o\,
	datac => \ALT_INV_Y~input_o\,
	datae => \ALT_INV_Z~input_o\,
	dataf => \ALT_INV_W~input_o\,
	combout => \inst8~0_combout\);

-- Location: LABCELL_X1_Y24_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


