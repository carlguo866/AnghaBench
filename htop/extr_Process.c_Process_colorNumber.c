
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RichString ;


 int* CRT_colors ;
 size_t LARGE_NUMBER ;
 size_t PROCESS ;
 size_t PROCESS_MEGABYTES ;
 size_t PROCESS_SHADOW ;
 int RichString_appendn (int *,int,char*,int) ;
 int snprintf (char*,int,char*) ;
 int xSnprintf (char*,int,char*,unsigned long long) ;

void Process_colorNumber(RichString* str, unsigned long long number, bool coloring) {
   char buffer[14];

   int largeNumberColor = CRT_colors[LARGE_NUMBER];
   int processMegabytesColor = CRT_colors[PROCESS_MEGABYTES];
   int processColor = CRT_colors[PROCESS];
   int processShadowColor = CRT_colors[PROCESS_SHADOW];
   if (!coloring) {
      largeNumberColor = CRT_colors[PROCESS];
      processMegabytesColor = CRT_colors[PROCESS];
      processShadowColor = CRT_colors[PROCESS];
   }

   if ((long long) number == -1LL) {
      int len = snprintf(buffer, 13, "    no perm ");
      RichString_appendn(str, CRT_colors[PROCESS_SHADOW], buffer, len);
   } else if (number > 10000000000) {
      xSnprintf(buffer, 13, "%11llu ", number / 1000);
      RichString_appendn(str, largeNumberColor, buffer, 5);
      RichString_appendn(str, processMegabytesColor, buffer+5, 3);
      RichString_appendn(str, processColor, buffer+8, 4);
   } else {
      xSnprintf(buffer, 13, "%11llu ", number);
      RichString_appendn(str, largeNumberColor, buffer, 2);
      RichString_appendn(str, processMegabytesColor, buffer+2, 3);
      RichString_appendn(str, processColor, buffer+5, 3);
      RichString_appendn(str, processShadowColor, buffer+8, 4);
   }
}
