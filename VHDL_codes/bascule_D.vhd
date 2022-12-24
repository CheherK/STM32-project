library ieee;
use ieee.std_logic_1164.all;

entity bascule_D is
   port(
      clk : in std_logic;
      reset : in std_logic;
      d : in std_logic;
      q : out std_logic
   );
end entity bascule_D;

architecture behavioral of bascule_D is

   component clock_generator is
      port(
         clk : out std_logic
      );
   end component clock_generator;

begin
   process(clk, reset)
   bas : clock_generator port map (clk);
   begin
      if reset='1' then
         q <= '0';
      elsif rising_edge(clk) then
         q <= d;
      end if;
   end process;
end architecture behavioral;
