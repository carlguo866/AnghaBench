
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uchar ;
typedef int ssize_t ;
struct TYPE_3__ {int key; char* val; } ;
typedef TYPE_1__ kv ;


 int DPRINTF_S (char*) ;
 char* home ;
 scalar_t__ malloc (int) ;
 char* realpath (char*,char*) ;
 int strlen (char*) ;
 int xstrlcpy (char*,char*,int) ;

__attribute__((used)) static char *get_kv_val(kv *kvarr, char *buf, int key, uchar max, bool path)
{
 int r = 0;

 for (; kvarr[r].key && r < max; ++r) {
  if (kvarr[r].key == key) {
   if (!path)
    return kvarr[r].val;

   if (kvarr[r].val[0] == '~') {
    ssize_t len = strlen(home);
    ssize_t loclen = strlen(kvarr[r].val);

    if (!buf)
     buf = (char *)malloc(len + loclen);

    xstrlcpy(buf, home, len + 1);
    xstrlcpy(buf + len, kvarr[r].val + 1, loclen);
    return buf;
   }

   return realpath(kvarr[r].val, buf);
  }
 }

 DPRINTF_S("Invalid key");
 return ((void*)0);
}
