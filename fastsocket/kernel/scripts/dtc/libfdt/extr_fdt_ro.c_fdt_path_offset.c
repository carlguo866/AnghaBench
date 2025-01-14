
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_CHECK_HEADER (void const*) ;
 int FDT_ERR_BADPATH ;
 int fdt_subnode_offset_namelen (void const*,int,char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

int fdt_path_offset(const void *fdt, const char *path)
{
 const char *end = path + strlen(path);
 const char *p = path;
 int offset = 0;

 FDT_CHECK_HEADER(fdt);

 if (*path != '/')
  return -FDT_ERR_BADPATH;

 while (*p) {
  const char *q;

  while (*p == '/')
   p++;
  if (! *p)
   return offset;
  q = strchr(p, '/');
  if (! q)
   q = end;

  offset = fdt_subnode_offset_namelen(fdt, offset, p, q-p);
  if (offset < 0)
   return offset;

  p = q;
 }

 return offset;
}
