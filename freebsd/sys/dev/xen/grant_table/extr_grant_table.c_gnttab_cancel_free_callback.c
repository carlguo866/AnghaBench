
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnttab_free_callback {struct gnttab_free_callback* next; } ;


 struct gnttab_free_callback* gnttab_free_callback_list ;
 int gnttab_list_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
gnttab_cancel_free_callback(struct gnttab_free_callback *callback)
{
 struct gnttab_free_callback **pcb;

 mtx_lock(&gnttab_list_lock);
 for (pcb = &gnttab_free_callback_list; *pcb; pcb = &(*pcb)->next) {
  if (*pcb == callback) {
   *pcb = callback->next;
   break;
  }
 }
 mtx_unlock(&gnttab_list_lock);
}
