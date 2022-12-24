std::uint8_t bascule_D(std::uint8_t clk, std::uint8_t reset, std::uint8_t D)
{
   std::uint8_t Q = 0;

   static std::uint8_t shiftReg = 0;
   if (clk && !reset)
   {
      shiftReg = D;
   }
   Q = reset ? 0 : shiftReg;

   return Q;
}
