bool serrure_electronique(std::uint8_t clk, std::uint8_t reset, std::array<std::uint8_t, 16> BusExt)
{
   std::array<std::uint8_t, 4> BusInt = Codeur(BusExt);

   std::uint8_t DetectCar = Detecteur(BusExt);

   std::array<std::uint8_t, 16> BusCode = memoire(clk, reset, BusInt, DetectCar);

   return comparateur_16(BusCode);
}
