std::array<std::uint8_t, 4> register_parallel(std::uint8_t clk, std::uint8_t reset, std::array<std::uint8_t, 4> Din)
{
   std::array<std::uint8_t, 4> Dout{0};

   static std::array<std::uint8_t, 4> shiftReg{0};
   if (clk && !reset)
   {
      shiftReg = Din;
   }

   if (!clk && !reset)
   {
      Dout = shiftReg;
   }

   return Dout;
}
