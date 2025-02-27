
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {scalar_t__ vlan4k_enabled; } ;


 int RTL8367B_NUM_VIDS ;
 unsigned int RTL8367B_NUM_VLANS ;

__attribute__((used)) static int rtl8367b_is_vlan_valid(struct rtl8366_smi *smi, unsigned vlan)
{
 unsigned max = RTL8367B_NUM_VLANS;

 if (smi->vlan4k_enabled)
  max = RTL8367B_NUM_VIDS - 1;

 if (vlan == 0 || vlan >= max)
  return 0;

 return 1;
}
