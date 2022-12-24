bool comparateur_16(std::array<std::uint8_t, 16> BusCode)
{
   std::array<std::array<std::uint8_t, 4>, 4> data;
   std::copy(BusCode.begin(), BusCode.begin() + 4, data[0].begin());
   std::copy(BusCode.begin() + 4, BusCode.begin() + 8, data[1].begin());
   std::copy(BusCode.begin() + 8, BusCode.begin() + 12, data[2].begin());
   std::copy(BusCode.begin() + 12, BusCode.end(), data[3].begin());

   static const std::array<std::array<std::uint8_t, 4>, 4> Dataamd{{0, 0, 0, 1}, {0, 0, 1, 0}, {0, 0, 1, 1}, {0, 1, 0, 0}} ;
   return comparateur(data[0], Dataamd) && comparateur(data[1], Dataamd) && comparateur(data[2], Dataamd) && comparateur(data[3], Dataamd);
}