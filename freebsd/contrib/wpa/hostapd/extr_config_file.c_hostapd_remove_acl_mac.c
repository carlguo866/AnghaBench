
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mac_acl_entry {int addr; } ;


 int ETH_ALEN ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;
 int os_remove_in_array (struct mac_acl_entry*,int,int,int) ;

void hostapd_remove_acl_mac(struct mac_acl_entry **acl, int *num,
       const u8 *addr)
{
 int i = 0;

 while (i < *num) {
  if (os_memcmp((*acl)[i].addr, addr, ETH_ALEN) == 0) {
   os_remove_in_array(*acl, *num, sizeof(**acl), i);
   (*num)--;
  } else {
   i++;
  }
 }
}
