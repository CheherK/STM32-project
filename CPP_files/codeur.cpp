#include <array>
#include <string>

std::array<std::uint8_t, 4> Codeur(std::array<std::uint8_t, 16> BusExt)
{
   std::array<std::uint8_t, 4> BusInt{0};

   std::string BusExtStr;
   for (std::uint8_t i : BusExt)
   {
      BusExtStr += std::to_string(i);
   }

   switch (BusExtStr)
   {
      case "1101111111111111":
         BusInt = std::array<std::uint8_t, 4>{0, 0, 0, 0};
         break;
      case "1111111111111110":
         BusInt = std::array<std::uint8_t, 4>{0, 0, 0, 1};
         break;
      case "1111111111111101":
         BusInt = std::array<std::uint8_t, 4>{0, 0, 1, 0};
         break;
      case "1111111111111011":
         BusInt = std::array<std::uint8_t, 4>{0, 0, 1, 1};
         break;
      case "1111111111101111":
         BusInt = std::array<std::uint8_t, 4>{0, 1, 0, 0};
         break;
      case "1111111111011111":
         BusInt = std::array<std::uint8_t, 4>{0, 1, 0, 1};
         break;
      case "1111111110111111":
         BusInt = std::array<std::uint8_t, 4>{0, 1, 1, 0};
         break;
      case "1111111011111111":
         BusInt = std::array<std::uint8_t, 4>{0, 1, 1, 1};
         break;
      case "1111110111111111":
         BusInt = std::array<std::uint8_t, 4>{1, 0, 0, 0};
         break;
      case "1111101111111111":
         BusInt = std::array<std::uint8_t, 4>{1, 0, 0, 1};
         break;
      case "1111111111110111":
         BusInt = std::array<std::uint8_t, 4>{1, 0, 1, 0};
         break;
      case "1111111101111111":
         BusInt = std::array<std::uint8_t, 4>{1, 0, 1, 1};
         break;
      case "1111011111111111":
         BusInt = std::array<std::uint8_t, 4>{1, 1, 0, 0};
         break;
      case "0111111111111111":
         BusInt = std::array<std::uint8_t, 4>{1, 1, 0, 1};
         break;
      case "1011111111111111":
         BusInt = std::array<std::uint8_t, 4>{1, 1, 1, 0};
         break;
      case "1110111111111111":
         BusInt = std::array<std::uint8_t, 4>{1, 1, 1, 1};
         break;
      default: BusInt = std::array<std::uint8_t, 4>{"Z"};
         break;
   }
   return BusInt;
}
