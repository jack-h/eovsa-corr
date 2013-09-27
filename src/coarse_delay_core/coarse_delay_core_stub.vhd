----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity coarse_delay_core_stub is
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
end coarse_delay_core_stub;

architecture Behavioral of coarse_delay_core_stub is

  component coarse_delay_core
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
  end component;
begin

coarse_delay_core_i : coarse_delay_core
  port map (
    ce_1 => ce_1,
    clk_1 => clk_1,
    data_in1 => data_in1,
    data_in2 => data_in2,
    data_in3 => data_in3,
    data_in4 => data_in4,
    delay => delay,
    en => en,
    sync => sync,
    data_out1 => data_out1,
    data_out2 => data_out2,
    data_out3 => data_out3,
    data_out4 => data_out4,
    sync_out => sync_out);
end Behavioral;

