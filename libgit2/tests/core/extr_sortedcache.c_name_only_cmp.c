
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (void const*,void const*) ;

__attribute__((used)) static int name_only_cmp(const void *a, const void *b)
{
 return strcmp(a, b);
}
