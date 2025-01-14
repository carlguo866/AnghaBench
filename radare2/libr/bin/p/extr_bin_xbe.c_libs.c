
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {char* name; int build; int minor; int major; } ;
typedef TYPE_2__ xbe_lib ;
struct TYPE_14__ {scalar_t__ kernel_lib_addr; scalar_t__ base; scalar_t__ xapi_lib_addr; int lib_versions; int lib_versions_addr; } ;
typedef TYPE_3__ xbe_header ;
typedef int ut8 ;
typedef int ut32 ;
struct TYPE_15__ {TYPE_3__ header; } ;
typedef TYPE_4__ r_bin_xbe_obj_t ;
struct TYPE_17__ {int size; int buf; TYPE_1__* o; } ;
struct TYPE_16__ {int free; } ;
struct TYPE_12__ {TYPE_4__* bin_obj; } ;
typedef TYPE_5__ RList ;
typedef TYPE_6__ RBinFile ;


 int free ;
 int r_buf_read_at (int ,int,int *,int) ;
 int r_list_append (TYPE_5__*,char*) ;
 int r_list_free (TYPE_5__*) ;
 TYPE_5__* r_list_new () ;
 char* r_str_newf (char*,char*,int ,int ,int ) ;

__attribute__((used)) static RList *libs(RBinFile *bf) {
 r_bin_xbe_obj_t *obj;
 xbe_header *h = ((void*)0);
 int i, off, libs, r;
 xbe_lib lib;
 RList *ret;
 char *s;
 ut32 addr;

 if (!bf || !bf->o || !bf->o->bin_obj) {
  return ((void*)0);
 }
 obj = bf->o->bin_obj;
 h = &obj->header;
 ret = r_list_new ();
 if (!ret) {
  return ((void*)0);
 }
 ret->free = free;
 if (h->kernel_lib_addr < h->base) {
  off = 0;
 } else {
  off = h->kernel_lib_addr - h->base;
 }
 if (off > bf->size || off + sizeof(xbe_lib) > bf->size) {
  goto out_error;
 }
 r = r_buf_read_at (bf->buf, off, (ut8 *) &lib, sizeof(xbe_lib));
 if (r < 1) {
  goto out_error;
 }
 lib.name[7] = 0;
 s = r_str_newf ("%s %i.%i.%i", lib.name, lib.major, lib.minor, lib.build);
 if (s) {
  r_list_append (ret, s);
 }
 if (h->xapi_lib_addr < h->base) {
  off = 0;
 } else {
  off = h->xapi_lib_addr - h->base;
 }
 if (off > bf->size || off + sizeof(xbe_lib) > bf->size) {
  goto out_error;
 }
 r = r_buf_read_at (bf->buf, off, (ut8 *) &lib, sizeof(xbe_lib));
 if (r < 1) {
  goto out_error;
 }

 lib.name[7] = 0;
 s = r_str_newf ("%s %i.%i.%i", lib.name, lib.major, lib.minor, lib.build);
 if (s) {
  r_list_append (ret, s);
 }
 libs = h->lib_versions;
 if (libs < 1) {
  goto out_error;
 }
 for (i = 0; i < libs; i++) {
  addr = h->lib_versions_addr - h->base + (i * sizeof (xbe_lib));
  if (addr > bf->size || addr + sizeof (xbe_lib) > bf->size) {
   goto out_error;
  }
  r = r_buf_read_at (bf->buf, addr, (ut8 *) &lib, sizeof (xbe_lib));
  if (r < 1) {
   goto out_error;
  }

  lib.name[7] = '\0';
  s = r_str_newf ("%s %i.%i.%i", lib.name, lib.major, lib.minor, lib.build);
  if (s) {
   r_list_append (ret, s);
  }
 }

 return ret;
out_error:
 r_list_free (ret);
 return ((void*)0);
}
