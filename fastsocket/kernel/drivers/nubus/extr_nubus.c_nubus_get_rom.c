
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ not_useful (unsigned char*,int) ;

__attribute__((used)) static unsigned long nubus_get_rom(unsigned char **ptr, int len, int map)
{

 unsigned long v = 0;
 unsigned char *p = *ptr;

 while(len)
 {
  v <<= 8;
  while(not_useful(p,map))
   p++;
  v |= *p++;
  len--;
 }
 *ptr = p;
 return v;
}
