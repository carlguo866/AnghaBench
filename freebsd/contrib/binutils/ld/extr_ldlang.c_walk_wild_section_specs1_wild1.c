
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_13__ {int name; } ;
struct wildcard_list {TYPE_1__ spec; } ;
struct TYPE_14__ {struct wildcard_list** handler_data; } ;
typedef TYPE_2__ lang_wild_statement_type ;
struct TYPE_15__ {TYPE_10__* the_bfd; } ;
typedef TYPE_3__ lang_input_statement_type ;
typedef int callback_t ;
typedef int bfd_boolean ;
struct TYPE_16__ {struct TYPE_16__* next; } ;
typedef TYPE_4__ asection ;
struct TYPE_12__ {TYPE_4__* sections; } ;


 char* bfd_get_section_name (TYPE_10__*,TYPE_4__*) ;
 int match_simple_wild (int ,char const*) ;
 int walk_wild_consider_section (TYPE_2__*,TYPE_3__*,TYPE_4__*,struct wildcard_list*,int ,void*) ;

__attribute__((used)) static void
walk_wild_section_specs1_wild1 (lang_wild_statement_type *ptr,
    lang_input_statement_type *file,
    callback_t callback,
    void *data)
{
  asection *s;
  struct wildcard_list *wildsec0 = ptr->handler_data[0];

  for (s = file->the_bfd->sections; s != ((void*)0); s = s->next)
    {
      const char *sname = bfd_get_section_name (file->the_bfd, s);
      bfd_boolean skip = !match_simple_wild (wildsec0->spec.name, sname);

      if (!skip)
 walk_wild_consider_section (ptr, file, s, wildsec0, callback, data);
    }
}
