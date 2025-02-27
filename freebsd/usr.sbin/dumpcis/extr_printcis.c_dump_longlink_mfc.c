
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef scalar_t__ u_char ;


 int printf (char*,...) ;
 int tpl32 (scalar_t__*) ;

__attribute__((used)) static void
dump_longlink_mfc(u_char *p, int len)
{
 u_int i, n = *p++;

 --len;
 for (i = 0; i < n; i++) {
  if (len < 5) {
   printf("\tWrong length for long link MFC tuple\n");
   return;
  }
  printf("\tFunction %d: %s memory, address 0x%x\n",
         i, (*p ? "common" : "attribute"), tpl32(p + 1));
  p += 5;
  len -= 5;
 }
}
