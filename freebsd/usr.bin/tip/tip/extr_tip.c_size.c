
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
size(char *s)
{
 size_t i = 0;

 while (s && *s++)
  i++;
 return (i);
}
