
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int cmp_int(const void *a, const void *b)
{
 int x, y;

 x = *((int *) a);
 y = *((int *) b);
 return (x - y);
}
