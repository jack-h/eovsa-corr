library IEEE;
use IEEE.std_logic_1164.all;

entity pfb_fir_real_core is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1_in1: in std_logic_vector(7 downto 0); 
    pol1_in2: in std_logic_vector(7 downto 0); 
    pol1_in3: in std_logic_vector(7 downto 0); 
    pol1_in4: in std_logic_vector(7 downto 0); 
    sync: in std_logic; 
    pol1_out1: out std_logic_vector(17 downto 0); 
    pol1_out2: out std_logic_vector(17 downto 0); 
    pol1_out3: out std_logic_vector(17 downto 0); 
    pol1_out4: out std_logic_vector(17 downto 0); 
    sync_out: out std_logic
  );
end pfb_fir_real_core;

architecture structural of pfb_fir_real_core is
begin
end structural;

