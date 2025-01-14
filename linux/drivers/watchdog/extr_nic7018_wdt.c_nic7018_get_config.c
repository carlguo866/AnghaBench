
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nic7018_config {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 int WDT_MAX_COUNTER ;
 struct nic7018_config* nic7018_configs ;

__attribute__((used)) static const struct nic7018_config *nic7018_get_config(u32 timeout,
             u8 *counter)
{
 const struct nic7018_config *config;
 u8 count;

 if (timeout < 30 && timeout != 16) {
  config = &nic7018_configs[0];
  count = timeout / 2 + 1;
 } else {
  config = &nic7018_configs[1];
  count = DIV_ROUND_UP(timeout + 16, 32);

  if (count > WDT_MAX_COUNTER)
   count = WDT_MAX_COUNTER;
 }
 *counter = count;
 return config;
}
