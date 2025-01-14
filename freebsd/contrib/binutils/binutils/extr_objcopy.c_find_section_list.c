
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_list {char const* name; struct section_list* next; scalar_t__ flags; void* set_flags; scalar_t__ lma_val; scalar_t__ vma_val; void* change_lma; void* change_vma; void* copy; void* remove; void* used; } ;
typedef int bfd_boolean ;


 void* CHANGE_IGNORE ;
 void* FALSE ;
 struct section_list* change_sections ;
 scalar_t__ strcmp (char const*,char const*) ;
 struct section_list* xmalloc (int) ;

__attribute__((used)) static struct section_list *
find_section_list (const char *name, bfd_boolean add)
{
  struct section_list *p;

  for (p = change_sections; p != ((void*)0); p = p->next)
    if (strcmp (p->name, name) == 0)
      return p;

  if (! add)
    return ((void*)0);

  p = xmalloc (sizeof (struct section_list));
  p->name = name;
  p->used = FALSE;
  p->remove = FALSE;
  p->copy = FALSE;
  p->change_vma = CHANGE_IGNORE;
  p->change_lma = CHANGE_IGNORE;
  p->vma_val = 0;
  p->lma_val = 0;
  p->set_flags = FALSE;
  p->flags = 0;

  p->next = change_sections;
  change_sections = p;

  return p;
}
