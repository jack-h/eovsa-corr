library IEEE;
use IEEE.std_logic_1164.all;

entity fft_wideband_real_core is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in00: in std_logic_vector(17 downto 0); 
    in01: in std_logic_vector(17 downto 0); 
    in02: in std_logic_vector(17 downto 0); 
    in03: in std_logic_vector(17 downto 0); 
    in10: in std_logic_vector(17 downto 0); 
    in11: in std_logic_vector(17 downto 0); 
    in12: in std_logic_vector(17 downto 0); 
    in13: in std_logic_vector(17 downto 0); 
    in20: in std_logic_vector(17 downto 0); 
    in21: in std_logic_vector(17 downto 0); 
    in22: in std_logic_vector(17 downto 0); 
    in23: in std_logic_vector(17 downto 0); 
    in30: in std_logic_vector(17 downto 0); 
    in31: in std_logic_vector(17 downto 0); 
    in32: in std_logic_vector(17 downto 0); 
    in33: in std_logic_vector(17 downto 0); 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    oflow: out std_logic_vector(3 downto 0); 
    out00: out std_logic_vector(35 downto 0); 
    out01: out std_logic_vector(35 downto 0); 
    out10: out std_logic_vector(35 downto 0); 
    out11: out std_logic_vector(35 downto 0); 
    out20: out std_logic_vector(35 downto 0); 
    out21: out std_logic_vector(35 downto 0); 
    out30: out std_logic_vector(35 downto 0); 
    out31: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_wideband_real_core;

architecture structural of fft_wideband_real_core is
begin
end structural;

