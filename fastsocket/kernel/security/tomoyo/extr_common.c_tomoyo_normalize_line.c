
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ tomoyo_is_invalid (unsigned char) ;
 scalar_t__ tomoyo_is_valid (unsigned char) ;

__attribute__((used)) static void tomoyo_normalize_line(unsigned char *buffer)
{
 unsigned char *sp = buffer;
 unsigned char *dp = buffer;
 bool first = 1;

 while (tomoyo_is_invalid(*sp))
  sp++;
 while (*sp) {
  if (!first)
   *dp++ = ' ';
  first = 0;
  while (tomoyo_is_valid(*sp))
   *dp++ = *sp++;
  while (tomoyo_is_invalid(*sp))
   sp++;
 }
 *dp = '\0';
}
