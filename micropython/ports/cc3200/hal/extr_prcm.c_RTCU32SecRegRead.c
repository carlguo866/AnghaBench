
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MAP_PRCMHIBRegRead (int ) ;
 int RTC_SECS_U32_REG_ADDR ;

__attribute__((used)) static unsigned long RTCU32SecRegRead(void)
{
  return (MAP_PRCMHIBRegRead(RTC_SECS_U32_REG_ADDR));
}
