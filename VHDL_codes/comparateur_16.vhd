library ieee;
use ieee.std_logic_1164.all;

entity comparateur_16 is
   port(
      BusCode : in std_logic_vector(15 downto 0); 
      ouverture : out std_logic 
   );
end entity comparateur_16;

architecture behavioral of comparateur_16 is
   component comparateur is
      port(
         Datautil : in std_logic_vector(3 downto 0);  
         Dataamd : in std_logic_vector(3 downto 0);  
         CompOK : out std_logic  
      );
   end component comparateur;
begin

   comp_0 : comparateur port map (BusCode(3 downto 0), "0001", ouverture);
   comp_1 : comparateur port map (BusCode(7 downto 4), "0010", ouverture);
   comp_2 : comparateur port map (BusCode(11 downto 8), "0011", ouverture);
   comp_3 : comparateur port map (BusCode(15 downto 12), "0100", ouverture);

end architecture behavioral;
