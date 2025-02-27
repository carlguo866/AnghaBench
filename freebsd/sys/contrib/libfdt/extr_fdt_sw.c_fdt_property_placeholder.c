
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {void* data; void* len; void* nameoff; void* tag; } ;


 int FDT_ERR_NOSPACE ;
 int FDT_PROP ;
 int FDT_SW_CHECK_HEADER (void*) ;
 scalar_t__ FDT_TAGALIGN (int) ;
 void* cpu_to_fdt32 (int) ;
 int fdt_find_add_string_ (void*,char const*) ;
 struct fdt_property* fdt_grab_space_ (void*,scalar_t__) ;

int fdt_property_placeholder(void *fdt, const char *name, int len, void **valp)
{
 struct fdt_property *prop;
 int nameoff;

 FDT_SW_CHECK_HEADER(fdt);

 nameoff = fdt_find_add_string_(fdt, name);
 if (nameoff == 0)
  return -FDT_ERR_NOSPACE;

 prop = fdt_grab_space_(fdt, sizeof(*prop) + FDT_TAGALIGN(len));
 if (! prop)
  return -FDT_ERR_NOSPACE;

 prop->tag = cpu_to_fdt32(FDT_PROP);
 prop->nameoff = cpu_to_fdt32(nameoff);
 prop->len = cpu_to_fdt32(len);
 *valp = prop->data;
 return 0;
}
