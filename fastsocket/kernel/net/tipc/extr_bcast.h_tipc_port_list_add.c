
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct port_list {int count; scalar_t__* ports; struct port_list* next; } ;


 int GFP_ATOMIC ;
 int PLSIZE ;
 struct port_list* kmalloc (int,int ) ;
 int warn (char*) ;

__attribute__((used)) static inline void tipc_port_list_add(struct port_list *pl_ptr, u32 port)
{
 struct port_list *item = pl_ptr;
 int i;
 int item_sz = PLSIZE;
 int cnt = pl_ptr->count;

 for (; ; cnt -= item_sz, item = item->next) {
  if (cnt < PLSIZE)
   item_sz = cnt;
  for (i = 0; i < item_sz; i++)
   if (item->ports[i] == port)
    return;
  if (i < PLSIZE) {
   item->ports[i] = port;
   pl_ptr->count++;
   return;
  }
  if (!item->next) {
   item->next = kmalloc(sizeof(*item), GFP_ATOMIC);
   if (!item->next) {
    warn("Incomplete multicast delivery, no memory\n");
    return;
   }
   item->next->next = ((void*)0);
  }
 }
}
