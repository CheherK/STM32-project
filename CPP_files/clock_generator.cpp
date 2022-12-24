#include <chrono>
#include <thread>

std::uint8_t clock_generator(double frequency)
{
   // Initialize the clock output value to 0
   std::uint8_t clk = 0;

   // Calculate the period of the clock signal in milliseconds
   double period = 1.0 / frequency;
   int period_ms = static_cast<int>(period * 1000);

   // Toggle the clock output value every period_ms milliseconds
   while (true)
   {
      clk = !clk;
      std::this_thread::sleep_for(std::chrono::milliseconds(period_ms));
   }
}
