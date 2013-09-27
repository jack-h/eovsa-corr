library IEEE;
use IEEE.std_logic_1164.all;

entity coarse_delay_core is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in1: in std_logic_vector(7 downto 0); 
    data_in2: in std_logic_vector(7 downto 0); 
    data_in3: in std_logic_vector(7 downto 0); 
    data_in4: in std_logic_vector(7 downto 0); 
    delay: in std_logic_vector(15 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    data_out1: out std_logic_vector(7 downto 0); 
    data_out2: out std_logic_vector(7 downto 0); 
    data_out3: out std_logic_vector(7 downto 0); 
    data_out4: out std_logic_vector(7 downto 0); 
    sync_out: out std_logic
  );
end coarse_delay_core;

architecture structural of coarse_delay_core is
begin
end structural;

