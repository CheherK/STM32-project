#include <array>

std::uint8_t Detecteur(std::array<std::uint8_t, 16> BusExt)
{
   bool allOnes = true;
   for (std::uint8_t i : BusExt)
   {
      if (i != 1)
      {
         allOnes = false;
         break;
      }
   }

   return allOnes ? 1 : 0;
}
