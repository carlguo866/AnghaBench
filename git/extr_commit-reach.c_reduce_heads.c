
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_3__ {int flags; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_4__ {struct commit_list* next; } ;


 int STALE ;
 TYPE_2__* commit_list_insert (struct commit*,struct commit_list**) ;
 int free (struct commit**) ;
 int remove_redundant (int ,struct commit**,int) ;
 int the_repository ;
 struct commit** xcalloc (int,int) ;

struct commit_list *reduce_heads(struct commit_list *heads)
{
 struct commit_list *p;
 struct commit_list *result = ((void*)0), **tail = &result;
 struct commit **array;
 int num_head, i;

 if (!heads)
  return ((void*)0);


 for (p = heads; p; p = p->next)
  p->item->object.flags &= ~STALE;
 for (p = heads, num_head = 0; p; p = p->next) {
  if (p->item->object.flags & STALE)
   continue;
  p->item->object.flags |= STALE;
  num_head++;
 }
 array = xcalloc(num_head, sizeof(*array));
 for (p = heads, i = 0; p; p = p->next) {
  if (p->item->object.flags & STALE) {
   array[i++] = p->item;
   p->item->object.flags &= ~STALE;
  }
 }
 num_head = remove_redundant(the_repository, array, num_head);
 for (i = 0; i < num_head; i++)
  tail = &commit_list_insert(array[i], tail)->next;
 free(array);
 return result;
}
