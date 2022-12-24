library ieee;
use ieee.std_logic_1164.all;

entity comparateur is
   port(
      Datautil : in std_logic_vector(3 downto 0); 
      Dataamd : in std_logic_vector(3 downto 0); 
      CompOK : out std_logic 
   );
end entity comparateur;

architecture behavioral of comparateur is
begin

   process(Datautil, Dataamd)
   begin
      if Datautil = Dataamd then
         CompOK <= '1';
      else
         CompOK <= '0';
      end if;
   end process;
end architecture behavioral;
