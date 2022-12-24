library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Detecteur is
   Port ( 
      BusExt : in  STD_LOGIC_VECTOR (15 downto 0);
      DetectCar : out  STD_LOGIC
   );
end Detecteur;

architecture Behavioral of Detecteur is
begin
   process(BusExt)
   begin
      if BusExt = "1111111111111111" then
         DetectCar <= '0';
      else
         DetectCar <= '1';
      end if;
   end process;
end Behavioral;
