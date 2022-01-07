
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rev_info {int boundary; scalar_t__ max_count; scalar_t__ skip_count; int boundary_commits; int commits; } ;
struct object {int flags; } ;
struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct TYPE_3__ {int flags; } ;
struct commit {struct commit_list* parents; TYPE_1__ object; } ;
struct TYPE_4__ {struct object object; } ;


 int CHILD_SHOWN ;
 int SHOWN ;
 int add_object_array (struct object*,int *,int *) ;
 int create_boundary_commit_list (struct rev_info*) ;
 int gc_boundary (int *) ;
 struct commit* get_revision_1 (struct rev_info*) ;
 struct commit* pop_commit (int *) ;

__attribute__((used)) static struct commit *get_revision_internal(struct rev_info *revs)
{
 struct commit *c = ((void*)0);
 struct commit_list *l;

 if (revs->boundary == 2) {






  c = pop_commit(&revs->commits);
  if (c)
   c->object.flags |= SHOWN;
  return c;
 }
 if (revs->max_count) {
  c = get_revision_1(revs);
  if (c) {
   while (revs->skip_count > 0) {
    revs->skip_count--;
    c = get_revision_1(revs);
    if (!c)
     break;
   }
  }

  if (revs->max_count > 0)
   revs->max_count--;
 }

 if (c)
  c->object.flags |= SHOWN;

 if (!revs->boundary)
  return c;

 if (!c) {





  revs->boundary = 2;





  create_boundary_commit_list(revs);

  return get_revision_internal(revs);
 }
 for (l = c->parents; l; l = l->next) {
  struct object *p;
  p = &(l->item->object);
  if (p->flags & (CHILD_SHOWN | SHOWN))
   continue;
  p->flags |= CHILD_SHOWN;
  gc_boundary(&revs->boundary_commits);
  add_object_array(p, ((void*)0), &revs->boundary_commits);
 }

 return c;
}
