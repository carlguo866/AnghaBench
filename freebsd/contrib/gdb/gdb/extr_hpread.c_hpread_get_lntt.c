
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dnttentry {int dummy; } dnttentry ;
struct objfile {int dummy; } ;
struct dntt_type_block {int dummy; } ;


 int * LNTT (struct objfile*) ;

__attribute__((used)) static union dnttentry *
hpread_get_lntt (int index, struct objfile *objfile)
{
  return (union dnttentry *)
    &(LNTT (objfile)[(index * sizeof (struct dntt_type_block))]);
}
