
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_pci_info {scalar_t__ (* translate ) (struct map_pci_info*,unsigned long) ;scalar_t__ base; } ;
struct map_info {int dummy; } ;
typedef int ssize_t ;


 int memcpy_toio (scalar_t__,void const*,int ) ;
 scalar_t__ stub1 (struct map_pci_info*,unsigned long) ;

__attribute__((used)) static void mtd_pci_copyto(struct map_info *_map, unsigned long to, const void *from, ssize_t len)
{
 struct map_pci_info *map = (struct map_pci_info *)_map;
 memcpy_toio(map->base + map->translate(map, to), from, len);
}
