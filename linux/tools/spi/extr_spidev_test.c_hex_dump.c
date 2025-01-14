
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void hex_dump(const void *src, size_t length, size_t line_size,
       char *prefix)
{
 int i = 0;
 const unsigned char *address = src;
 const unsigned char *line = address;
 unsigned char c;

 printf("%s | ", prefix);
 while (length-- > 0) {
  printf("%02X ", *address++);
  if (!(++i % line_size) || (length == 0 && i % line_size)) {
   if (length == 0) {
    while (i++ % line_size)
     printf("__ ");
   }
   printf(" |");
   while (line < address) {
    c = *line++;
    printf("%c", (c < 32 || c > 126) ? '.' : c);
   }
   printf("|\n");
   if (length > 0)
    printf("%s | ", prefix);
  }
 }
}
