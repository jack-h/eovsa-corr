library IEEE;
use IEEE.std_logic_1164.all;

entity pfb_fir_4input_core is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol0: in std_logic_vector(31 downto 0); 
    pol1: in std_logic_vector(31 downto 0); 
    pol2: in std_logic_vector(31 downto 0); 
    pol3: in std_logic_vector(31 downto 0); 
    sync: in std_logic; 
    pol_out0: out std_logic_vector(47 downto 0); 
    pol_out1: out std_logic_vector(47 downto 0); 
    pol_out2: out std_logic_vector(47 downto 0); 
    pol_out3: out std_logic_vector(47 downto 0); 
    sync_out: out std_logic
  );
end pfb_fir_4input_core;

architecture structural of pfb_fir_4input_core is
begin
end structural;

