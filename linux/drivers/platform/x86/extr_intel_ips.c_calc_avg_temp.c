
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u16 ;
struct ips_driver {int dummy; } ;


 int IPS_SAMPLE_COUNT ;
 int do_div (scalar_t__,int) ;

__attribute__((used)) static u16 calc_avg_temp(struct ips_driver *ips, u16 *array)
{
 u64 total = 0;
 int i;
 u16 avg;

 for (i = 0; i < IPS_SAMPLE_COUNT; i++)
  total += (u64)(array[i] * 100);

 do_div(total, IPS_SAMPLE_COUNT);

 avg = (u16)total;

 return avg;
}
