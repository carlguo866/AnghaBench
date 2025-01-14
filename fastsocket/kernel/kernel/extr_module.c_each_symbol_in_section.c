
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symsearch {unsigned int stop; unsigned int start; } ;
struct module {int dummy; } ;



__attribute__((used)) static bool each_symbol_in_section(const struct symsearch *arr,
       unsigned int arrsize,
       struct module *owner,
       bool (*fn)(const struct symsearch *syms,
           struct module *owner,
           unsigned int symnum, void *data),
       void *data)
{
 unsigned int i, j;

 for (j = 0; j < arrsize; j++) {
  for (i = 0; i < arr[j].stop - arr[j].start; i++)
   if (fn(&arr[j], owner, i, data))
    return 1;
 }

 return 0;
}
