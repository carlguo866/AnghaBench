
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* Value; } ;
typedef TYPE_1__ IPV6_ADDR ;



bool IsHubIpAddress64(IPV6_ADDR *addr)
{

 if (addr == ((void*)0))
 {
  return 0;
 }

 if (addr->Value[0] == 0xfe && addr->Value[1] == 0x80 &&
  addr->Value[2] == 0 &&
  addr->Value[3] == 0 &&
  addr->Value[4] == 0 &&
  addr->Value[5] == 0 &&
  addr->Value[6] == 0 &&
  addr->Value[7] == 0 &&
  addr->Value[8] == 0x02 && addr->Value[9] == 0xae &&
  addr->Value[11] == 0xff && addr->Value[12] == 0xfe)
 {
  return 1;
 }

 return 0;
}
