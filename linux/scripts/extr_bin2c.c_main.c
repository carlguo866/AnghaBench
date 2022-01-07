
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int getchar () ;
 int printf (char*,...) ;

int main(int argc, char *argv[])
{
 int ch, total = 0;

 if (argc > 1)
  printf("const char %s[] %s=\n",
   argv[1], argc > 2 ? argv[2] : "");

 do {
  printf("\t\"");
  while ((ch = getchar()) != EOF) {
   total++;
   printf("\\x%02x", ch);
   if (total % 16 == 0)
    break;
  }
  printf("\"\n");
 } while (ch != EOF);

 if (argc > 1)
  printf("\t;\n\n#include <linux/types.h>\n\nconst size_t %s_size = %d;\n",
         argv[1], total);

 return 0;
}
