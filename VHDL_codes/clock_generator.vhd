library ieee;
use ieee.std_logic_1164.all;

entity clock_generator is
   port(
      clk : out std_logic
   );
end entity clock_generator;

architecture behavioral of clock_generator is
   constant PERIOD : time := 1 sec;  -- clock period
   constant DUTY_CYCLE : real := 0.5;  -- 50% duty cycle
begin
   process
   begin
      clk <= '0';
      wait for PERIOD * DUTY_CYCLE;
      clk <= '1';
      wait for PERIOD * (1 - DUTY_CYCLE);
   end process;
end architecture behavioral;
