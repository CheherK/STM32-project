std::array<std::uint8_t, 16> memoire(std::uint8_t clk, std::uint8_t reset, std::array<std::uint8_t, 4> BusInt, std::uint8_t DetectCar)
{
   std::array<std::uint8_t, 16> BusCode{0};

   static std::array<std::array<std::uint8_t, 4>, 4> shiftReg{{{0}}};
   if (DetectCar)
   {
      shiftReg[3] = shiftReg[2];
      shiftReg[2] = shiftReg[1];
      shiftReg[1] = shiftReg[0];
      shiftReg[0] = BusInt;
   }

   std::copy(shiftReg[3].begin(), shiftReg[3].end(), BusCode.begin());
   std::copy(shiftReg[2].begin(), shiftReg[2].end(), BusCode.begin() + 4);
   std::copy(shiftReg[1].begin(), shiftReg[1].end(), BusCode.begin() + 8);
   std::copy(shiftReg[0].begin(), shiftReg[0].end(), BusCode.begin() + 12);

   return BusCode;
}
