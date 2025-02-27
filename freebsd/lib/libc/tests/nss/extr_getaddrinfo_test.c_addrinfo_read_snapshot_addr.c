
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strsep (char**,char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int
addrinfo_read_snapshot_addr(char *addr, unsigned char *result, size_t len)
{
 char *s, *ps, *ts;

 ps = addr;
 while ((s = strsep(&ps, ".")) != ((void*)0)) {
  if (len == 0)
   return (-1);

  *result = (unsigned char)strtol(s, &ts, 10);
  ++result;
  if (*ts != '\0')
   return (-1);

  --len;
 }
 if (len != 0)
  return (-1);
 else
  return (0);
}
