
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_entry {int full; } ;


 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
parse_escapes(char *src, struct mtree_entry *mentry)
{
 char *dest = src;
 char c;

 if (mentry != ((void*)0) && strcmp(src, ".") == 0)
  mentry->full = 1;

 while (*src != '\0') {
  c = *src++;
  if (c == '/' && mentry != ((void*)0))
   mentry->full = 1;
  if (c == '\\') {
   switch (src[0]) {
   case '0':
    if (src[1] < '0' || src[1] > '7') {
     c = 0;
     ++src;
     break;
    }

   case '1':
   case '2':
   case '3':
    if (src[1] >= '0' && src[1] <= '7' &&
        src[2] >= '0' && src[2] <= '7') {
     c = (src[0] - '0') << 6;
     c |= (src[1] - '0') << 3;
     c |= (src[2] - '0');
     src += 3;
    }
    break;
   case 'a':
    c = '\a';
    ++src;
    break;
   case 'b':
    c = '\b';
    ++src;
    break;
   case 'f':
    c = '\f';
    ++src;
    break;
   case 'n':
    c = '\n';
    ++src;
    break;
   case 'r':
    c = '\r';
    ++src;
    break;
   case 's':
    c = ' ';
    ++src;
    break;
   case 't':
    c = '\t';
    ++src;
    break;
   case 'v':
    c = '\v';
    ++src;
    break;
   case '\\':
    c = '\\';
    ++src;
    break;
   }
  }
  *dest++ = c;
 }
 *dest = '\0';
}
