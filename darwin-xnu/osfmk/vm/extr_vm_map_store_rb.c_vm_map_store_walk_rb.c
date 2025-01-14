
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct vm_map_store {int dummy; } ;
struct vm_map_header {int rb_head_store; } ;
struct TYPE_9__ {int store; } ;
struct TYPE_8__ {struct vm_map_header hdr; } ;


 struct vm_map_store* RB_FIND (int ,int *,int *) ;
 struct vm_map_store* RB_LEFT (struct vm_map_store*,int ) ;
 struct vm_map_store* RB_RIGHT (struct vm_map_store*,int ) ;
 struct vm_map_store* RB_ROOT (int *) ;
 int VME_FOR_STORE (struct vm_map_store*) ;
 int entry ;
 int panic (char*,TYPE_2__*,TYPE_2__*,...) ;
 int rb_head ;

void vm_map_store_walk_rb( vm_map_t map, vm_map_entry_t *wrong_vme, vm_map_entry_t *vm_entry)
{
 struct vm_map_header hdr = map->hdr;
 struct vm_map_store *rb_entry = RB_ROOT(&(hdr.rb_head_store));
 vm_map_entry_t cur = *vm_entry;

 rb_entry = RB_FIND( rb_head, &(hdr.rb_head_store), &(cur->store));
 if(rb_entry == ((void*)0))
  panic("NO SUCH ENTRY %p. Gave back %p", *vm_entry, *wrong_vme);
 else
  panic("Cur: %p, L: %p, R: %p", VME_FOR_STORE(rb_entry), VME_FOR_STORE(RB_LEFT(rb_entry,entry)), VME_FOR_STORE(RB_RIGHT(rb_entry,entry)));
}
