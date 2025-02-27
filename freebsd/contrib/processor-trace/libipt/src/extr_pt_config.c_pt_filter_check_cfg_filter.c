
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct pt_conf_addr_filter {int dummy; } ;


 scalar_t__ pt_addr_cfg_filter ;
 scalar_t__ pt_filter_addr_a (struct pt_conf_addr_filter const*,scalar_t__) ;
 scalar_t__ pt_filter_addr_b (struct pt_conf_addr_filter const*,scalar_t__) ;
 scalar_t__ pt_filter_addr_cfg (struct pt_conf_addr_filter const*,scalar_t__) ;
 scalar_t__ pt_filter_addr_ncfg () ;
 int pte_internal ;

__attribute__((used)) static int pt_filter_check_cfg_filter(const struct pt_conf_addr_filter *filter,
          uint64_t addr)
{
 uint8_t n;

 if (!filter)
  return -pte_internal;

 for (n = 0; n < pt_filter_addr_ncfg(); ++n) {
  uint64_t addr_a, addr_b;
  uint32_t addr_cfg;

  addr_cfg = pt_filter_addr_cfg(filter, n);
  if (addr_cfg != pt_addr_cfg_filter)
   continue;

  addr_a = pt_filter_addr_a(filter, n);
  addr_b = pt_filter_addr_b(filter, n);


  if ((addr_a <= addr) && (addr <= addr_b))
   return 1;
 }




 for (n = 0; n < pt_filter_addr_ncfg(); ++n) {
  uint32_t addr_cfg;

  addr_cfg = pt_filter_addr_cfg(filter, n);
  if (addr_cfg == pt_addr_cfg_filter)
   return 0;
 }

 return 1;
}
