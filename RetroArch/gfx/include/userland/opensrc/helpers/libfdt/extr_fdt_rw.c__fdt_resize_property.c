
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {int len; int data; } ;


 int FDT_TAGALIGN (int) ;
 int _fdt_splice_struct (void*,int ,int ,int ) ;
 int cpu_to_fdt32 (int) ;
 struct fdt_property* fdt_get_property_w (void*,int,char const*,int*) ;

__attribute__((used)) static int _fdt_resize_property(void *fdt, int nodeoffset, const char *name,
    int len, struct fdt_property **prop)
{
 int oldlen;
 int err;

 *prop = fdt_get_property_w(fdt, nodeoffset, name, &oldlen);
 if (! (*prop))
  return oldlen;

 if ((err = _fdt_splice_struct(fdt, (*prop)->data, FDT_TAGALIGN(oldlen),
          FDT_TAGALIGN(len))) != 0)
  return err;

 (*prop)->len = cpu_to_fdt32(len);
 return 0;
}
