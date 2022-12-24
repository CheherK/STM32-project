library ieee;
use ieee.std_logic_1164.all;

entity serrure_electronique is
   port(
      BusExt : in std_logic_vector(15 downto 0);  
      ouverture : out std_logic  
   );
end entity serrure_electronique;

architecture behavioral of serrure_electronique is
   component Codeur is
      port(
         BusExt : in std_logic_vector(15 downto 0);  
         BusInt : out std_logic_vector(3 downto 0)  
      );
   end component Codeur;

   component Detecteur is
      port(
         BusExt : in std_logic_vector(15 downto 0);  
         DetectCar : out std_logic  
      );
   end component Detecteur;

   component memoire is
      port(
         clk : in std_logic;
         reset : in std_logic;
         BusInt : in std_logic_vector(3 downto 0); 
         DetectCar : in std_logic;  
         BusCode : out std_logic_vector(15 downto 0)  
      );
   end component memoire;
   
   component comparateur_16 is
      port(
         BusCode : in std_logic_vector(15 downto 0);  
         ouverture : out std_logic  
      );
   end component comparateur_16;

   signal BusInt : out std_logic_vector(3 downto 0);
   signal DetectCar : out std_logic;
   signal BusCode : out std_logic_vector(15 downto 0);

begin

   coder : Codeur port map (BusExt, BusInt);
   detector : Detecteur port map (BusExt, DetectCar);
   memory : memoire port map (clk, reset, BusInt, DetectCar, BusCode);
   compare : comparateur_16 port map (BusCode, ouverture);

end architecture behavioral;
