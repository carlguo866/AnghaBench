
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int bfd_size_type ;
struct TYPE_12__ {scalar_t__ any; } ;
struct TYPE_14__ {TYPE_1__ tdata; } ;
typedef TYPE_3__ bfd ;
struct TYPE_13__ {int * p; } ;
struct TYPE_15__ {TYPE_2__ udata; TYPE_5__* section; void* flags; scalar_t__ value; void* name; TYPE_3__* the_bfd; } ;
typedef TYPE_4__ asymbol ;
struct TYPE_16__ {scalar_t__ size; } ;
typedef TYPE_5__ asection ;


 int BIN_SYMS ;
 void* BSF_GLOBAL ;
 TYPE_5__* bfd_abs_section_ptr ;
 TYPE_4__* bfd_alloc (TYPE_3__*,int) ;
 void* mangle_name (TYPE_3__*,char*) ;

__attribute__((used)) static long
binary_canonicalize_symtab (bfd *abfd, asymbol **alocation)
{
  asection *sec = (asection *) abfd->tdata.any;
  asymbol *syms;
  unsigned int i;
  bfd_size_type amt = BIN_SYMS * sizeof (asymbol);

  syms = bfd_alloc (abfd, amt);
  if (syms == ((void*)0))
    return 0;


  syms[0].the_bfd = abfd;
  syms[0].name = mangle_name (abfd, "start");
  syms[0].value = 0;
  syms[0].flags = BSF_GLOBAL;
  syms[0].section = sec;
  syms[0].udata.p = ((void*)0);


  syms[1].the_bfd = abfd;
  syms[1].name = mangle_name (abfd, "end");
  syms[1].value = sec->size;
  syms[1].flags = BSF_GLOBAL;
  syms[1].section = sec;
  syms[1].udata.p = ((void*)0);


  syms[2].the_bfd = abfd;
  syms[2].name = mangle_name (abfd, "size");
  syms[2].value = sec->size;
  syms[2].flags = BSF_GLOBAL;
  syms[2].section = bfd_abs_section_ptr;
  syms[2].udata.p = ((void*)0);

  for (i = 0; i < BIN_SYMS; i++)
    *alocation++ = syms++;
  *alocation = ((void*)0);

  return BIN_SYMS;
}
