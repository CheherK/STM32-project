library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Codeur is
   Port ( 
      BusExt : in  STD_LOGIC_VECTOR (15 downto 0);
      BusInt : out  STD_LOGIC_VECTOR (3 downto 0)
   );
end Codeur;

architecture Behavioral of Codeur is
begin
   process(BusExt)
   begin
      case BusExt is
            when "1101111111111111" => BusInt <= "0000";
            when "1111111111111110" => BusInt <= "0001";
            when "1111111111111101" => BusInt <= "0010";
            when "1111111111111011" => BusInt <= "0011";
            when "1111111111101111" => BusInt <= "0100";
            when "1111111111011111" => BusInt <= "0101";
            when "1111111110111111" => BusInt <= "0110";
            when "1111111011111111" => BusInt <= "0111";
            when "1111110111111111" => BusInt <= "1000";
            when "1111101111111111" => BusInt <= "1001";
            when "1111111111110111" => BusInt <= "1010";
            when "1111111101111111" => BusInt <= "1011";
            when "1111011111111111" => BusInt <= "1100";
            when "0111111111111111" => BusInt <= "1101";
            when "1011111111111111" => BusInt <= "1110";
            when "1110111111111111" => BusInt <= "1111";
            when "1111111111111111" => BusInt <= "Z";
            when others => BusInt <= (others => '0');
      end case;
   end process;
end Behavioral;
