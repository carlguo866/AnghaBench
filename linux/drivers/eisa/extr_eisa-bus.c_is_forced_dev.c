
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eisa_root_device {int bus_nr; } ;
struct eisa_device {int slot; } ;



__attribute__((used)) static int is_forced_dev(int *forced_tab,
    int forced_count,
    struct eisa_root_device *root,
    struct eisa_device *edev)
{
 int i, x;

 for (i = 0; i < forced_count; i++) {
  x = (root->bus_nr << 8) | edev->slot;
  if (forced_tab[i] == x)
   return 1;
 }

 return 0;
}
