
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_BADMAGIC ;
 int FDT_ERR_BADSTATE ;
 int FDT_ERR_BADVERSION ;
 scalar_t__ FDT_FIRST_SUPPORTED_VERSION ;
 scalar_t__ FDT_LAST_SUPPORTED_VERSION ;
 scalar_t__ FDT_MAGIC ;
 scalar_t__ FDT_SW_MAGIC ;
 scalar_t__ fdt_last_comp_version (void const*) ;
 scalar_t__ fdt_magic (void const*) ;
 scalar_t__ fdt_size_dt_struct (void const*) ;
 scalar_t__ fdt_version (void const*) ;

int fdt_ro_probe_(const void *fdt)
{
 if (fdt_magic(fdt) == FDT_MAGIC) {

  if (fdt_version(fdt) < FDT_FIRST_SUPPORTED_VERSION)
   return -FDT_ERR_BADVERSION;
  if (fdt_last_comp_version(fdt) > FDT_LAST_SUPPORTED_VERSION)
   return -FDT_ERR_BADVERSION;
 } else if (fdt_magic(fdt) == FDT_SW_MAGIC) {

  if (fdt_size_dt_struct(fdt) == 0)
   return -FDT_ERR_BADSTATE;
 } else {
  return -FDT_ERR_BADMAGIC;
 }

 return 0;
}
