library ieee;
use ieee.std_logic_1164.all;

entity registre_parallel is
   port(
      clk : in std_logic;
      reset : in std_logic;
      d : in std_logic_vector(3 downto 0);  -- 4-bits entrées
      q : out std_logic_vector(3 downto 0)  -- 4-bits sorties
   );
end entity registre_parallel;

architecture behavioral of registre_parallel is
   component Bascule_D is
      port(
         clk : in std_logic;
         reset : in std_logic;
         d : in std_logic;
         q : out std_logic
      );
   end component Bascule_D;
begin
   
   dff_0 : Bascule_D port map (clk, reset, d(0), q(0));
   dff_1 : Bascule_D port map (clk, reset, d(1), q(1));
   dff_2 : Bascule_D port map (clk, reset, d(2), q(2));
   dff_3 : Bascule_D port map (clk, reset, d(3), q(3));

end architecture behavioral;
