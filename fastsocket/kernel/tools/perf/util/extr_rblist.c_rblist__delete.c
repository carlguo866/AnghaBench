
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rblist {int entries; } ;
struct rb_node {int dummy; } ;


 int free (struct rblist*) ;
 struct rb_node* rb_first (int *) ;
 struct rb_node* rb_next (struct rb_node*) ;
 int rblist__remove_node (struct rblist*,struct rb_node*) ;

void rblist__delete(struct rblist *rblist)
{
 if (rblist != ((void*)0)) {
  struct rb_node *pos, *next = rb_first(&rblist->entries);

  while (next) {
   pos = next;
   next = rb_next(pos);
   rblist__remove_node(rblist, pos);
  }
  free(rblist);
 }
}
