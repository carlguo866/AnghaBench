
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_NOSPACE ;
 int FDT_SW_CHECK_HEADER (void*) ;
 size_t fdt_off_dt_struct (void*) ;
 int fdt_set_off_dt_strings (void*,int) ;
 int fdt_set_totalsize (void*,int) ;
 size_t fdt_size_dt_strings (void*) ;
 int fdt_totalsize (void*) ;
 int memmove (void*,void*,size_t) ;

int fdt_resize(void *fdt, void *buf, int bufsize)
{
 size_t headsize, tailsize;
 char *oldtail, *newtail;

 FDT_SW_CHECK_HEADER(fdt);

 headsize = fdt_off_dt_struct(fdt);
 tailsize = fdt_size_dt_strings(fdt);

 if ((headsize + tailsize) > bufsize)
  return -FDT_ERR_NOSPACE;

 oldtail = (char *)fdt + fdt_totalsize(fdt) - tailsize;
 newtail = (char *)buf + bufsize - tailsize;



 if (buf <= fdt) {
  memmove(buf, fdt, headsize);
  memmove(newtail, oldtail, tailsize);
 } else {
  memmove(newtail, oldtail, tailsize);
  memmove(buf, fdt, headsize);
 }

 fdt_set_off_dt_strings(buf, bufsize);
 fdt_set_totalsize(buf, bufsize);

 return 0;
}
