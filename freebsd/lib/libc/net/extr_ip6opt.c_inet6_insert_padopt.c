
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int IP6OPT_PAD1 ;
 int IP6OPT_PADN ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void
inet6_insert_padopt(u_char *p, int len)
{
 switch(len) {
  case 0:
   return;
  case 1:
   p[0] = IP6OPT_PAD1;
   return;
  default:
   p[0] = IP6OPT_PADN;
   p[1] = len - 2;
   memset(&p[2], 0, len - 2);
   return;
 }
}
