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

entity pfb_fir_real_core_cw_stub is
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 5.0 ns (200.0 Mhz)
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
end pfb_fir_real_core_cw_stub;

architecture Behavioral of pfb_fir_real_core_cw_stub is

  component pfb_fir_real_core_cw
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 5.0 ns (200.0 Mhz)
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
  end component;
begin

pfb_fir_real_core_cw_i : pfb_fir_real_core_cw
  port map (
    ce => ce,
    clk => clk,
    pol1_in1 => pol1_in1,
    pol1_in2 => pol1_in2,
    pol1_in3 => pol1_in3,
    pol1_in4 => pol1_in4,
    sync => sync,
    pol1_out1 => pol1_out1,
    pol1_out2 => pol1_out2,
    pol1_out3 => pol1_out3,
    pol1_out4 => pol1_out4,
    sync_out => sync_out);
end Behavioral;

