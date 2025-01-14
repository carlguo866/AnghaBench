
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {scalar_t__ map_priv_1; } ;
typedef int ssize_t ;
typedef int __u8 ;


 unsigned long address_fix8_write (scalar_t__) ;
 unsigned long flash_bank_setup (struct map_info*,unsigned long) ;

__attribute__((used)) static void ixp2000_flash_copy_to(struct map_info *map, unsigned long to,
       const void *from, ssize_t len)
{
 to = flash_bank_setup(map, to);
 while(len--) {
  unsigned long tmp = address_fix8_write(map->map_priv_1 + to++);
  *(__u8 *)(tmp) = *(__u8 *)(from++);
 }
}
