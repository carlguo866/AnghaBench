
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct exclude_list_struct {int type; char const* string; struct exclude_list_struct* next; } ;
struct TYPE_15__ {int num_exports; TYPE_1__* exports; } ;
typedef TYPE_2__ def_file ;
struct TYPE_16__ {int filename; TYPE_6__* my_archive; } ;
typedef TYPE_3__ bfd ;
struct TYPE_17__ {char const* name; int len; } ;
typedef TYPE_4__ autofilter_entry_type ;
struct TYPE_19__ {TYPE_4__* autofilter_symbollist; } ;
struct TYPE_18__ {int filename; } ;
struct TYPE_14__ {char const* name; } ;


 TYPE_4__* autofilter_liblist ;
 TYPE_4__* autofilter_objlist ;
 TYPE_4__* autofilter_symbolprefixlist ;
 TYPE_4__* autofilter_symbolsuffixlist ;
 struct exclude_list_struct* excludes ;
 char* lbasename (int ) ;
 TYPE_7__* pe_details ;
 scalar_t__ pe_dll_do_default_excludes ;
 scalar_t__ pe_dll_extra_pe_debug ;
 int printf (char*,char const*,TYPE_3__*,TYPE_6__*) ;
 scalar_t__ strcasecmp (char*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int
auto_export (bfd *abfd, def_file *d, const char *n)
{
  int i;
  struct exclude_list_struct *ex;
  const autofilter_entry_type *afptr;
  const char * libname = 0;
  if (abfd && abfd->my_archive)
    libname = lbasename (abfd->my_archive->filename);

  for (i = 0; i < d->num_exports; i++)
    if (strcmp (d->exports[i].name, n) == 0)
      return 0;

  if (pe_dll_do_default_excludes)
    {
      const char * p;
      int len;

      if (pe_dll_extra_pe_debug)
 printf ("considering exporting: %s, abfd=%p, abfd->my_arc=%p\n",
  n, abfd, abfd->my_archive);



      if (libname)
 {
   afptr = autofilter_liblist;

   while (afptr->name)
     {
       if (strncmp (libname, afptr->name, afptr->len) == 0 )
  return 0;
       afptr++;
     }
 }



      if (abfd && (p = lbasename (abfd->filename)))
 {
   afptr = autofilter_objlist;
   while (afptr->name)
     {
       if (strcmp (p, afptr->name) == 0)
  return 0;
       afptr++;
     }
 }





      afptr = pe_details->autofilter_symbollist;

      while (afptr->name)
 {
   if (strcmp (n, afptr->name) == 0)
     return 0;

   afptr++;
 }


      afptr = autofilter_symbolprefixlist;
      while (afptr->name)
 {
   if (strncmp (n, afptr->name, afptr->len) == 0)
     return 0;

   afptr++;
 }


      len = strlen (n);
      afptr = autofilter_symbolsuffixlist;
      while (afptr->name)
 {
   if ((len >= afptr->len)

       && strncmp (n + len - afptr->len, afptr->name,
     afptr->len + 1) == 0)
     return 0;

   afptr++;
 }
    }

  for (ex = excludes; ex; ex = ex->next)
    {
      if (ex->type == 1)
 {
   if (libname
       && ((strcmp (libname, ex->string) == 0)
     || (strcasecmp ("ALL", ex->string) == 0)))
     return 0;
 }
      else if (strcmp (n, ex->string) == 0)
 return 0;
    }

  return 1;
}
