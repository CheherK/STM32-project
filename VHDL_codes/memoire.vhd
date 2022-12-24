library ieee;
use ieee.std_logic_1164.all;

entity memoire is
   port(
      clk : in std_logic;
      reset : in std_logic;
      BusInt : in std_logic_vector(3 downto 0);  
      DetectCar : in std_logic;  
      BusCode : out std_logic_vector(15 downto 0) 
   );
end entity memoire;

architecture behavioral of memoire is
   component registre_parallel is
      port(
         clk : in std_logic;
         reset : in std_logic;
         d : in std_logic_vector(3 downto 0);  
         q : out std_logic_vector(3 downto 0)  
      );
   end component registre_parallel;
begin

   reg_0 : registre_parallel port map (clk, reset, BusInt, BusCode(3 downto 0));
   reg_1 : registre_parallel port map (clk, reset, BusCode(3 downto 0), BusCode(7 downto 4));
   reg_2 : registre_parallel port map (clk, reset, BusCode(7 downto 4), BusCode(11 downto 8));
   reg_3 : registre_parallel port map (clk, reset, BusCode(11 downto 8), BusCode(15 downto 12));

   process(clk, reset, DetectCar)
   begin
      if reset='1' then
         BusInt <= (others => '0');
      elsif rising_edge(clk) then
         if DetectCar='1' then
               BusInt <= BusCode(3 downto 0);
               BusCode <= (others => '0');
         end if;
      end if;
   end process;
end architecture behavioral;
