library IEEE;
use IEEE.std_logic_1164.all;

entity xeng_core is
  port (
    ant: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    mcnt_in: in std_logic_vector(47 downto 0); 
    sync_in: in std_logic; 
    window_valid: in std_logic; 
    acc: out std_logic_vector(31 downto 0); 
    gateway_out2: out std_logic; 
    gateway_out3: out std_logic; 
    gateway_out55: out std_logic; 
    gateway_out56: out std_logic; 
    mcnt_out: out std_logic_vector(47 downto 0); 
    sync_out: out std_logic; 
    valid: out std_logic
  );
end xeng_core;

architecture structural of xeng_core is
begin
end structural;

