
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* f ) (char*) ;



__attribute__((used)) static void
fN2(f func, char *a, int i)
{
 func(a);
}
