bool comparateur(std::array<std::uint8_t, 4> Datautil, std::array<std::uint8_t, 4> Dataamd)
{
   static const std::string DatautilStr{reinterpret_cast<char*>(Datautil.data())};
   static const std::string DataamdStr{reinterpret_cast<char*>(Dataamd.data())};
   return DatautilStr == DataamdStr;
}

