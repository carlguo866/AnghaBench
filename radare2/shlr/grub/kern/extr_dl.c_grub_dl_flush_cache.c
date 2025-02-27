
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* grub_dl_t ;
typedef TYPE_2__* grub_dl_segment_t ;
struct TYPE_5__ {scalar_t__ size; int addr; struct TYPE_5__* next; } ;
struct TYPE_4__ {TYPE_2__* segment; } ;


 int grub_arch_sync_caches (int ,scalar_t__) ;
 int grub_dprintf (char*,char*,unsigned long,int ) ;

__attribute__((used)) static void
grub_dl_flush_cache (grub_dl_t mod)
{
  grub_dl_segment_t seg;

  for (seg = mod->segment; seg; seg = seg->next) {
    if (seg->size) {
      grub_dprintf ("modules", "flushing 0x%lx bytes at %p\n",
      (unsigned long) seg->size, seg->addr);
      grub_arch_sync_caches (seg->addr, seg->size);
    }
  }
}
