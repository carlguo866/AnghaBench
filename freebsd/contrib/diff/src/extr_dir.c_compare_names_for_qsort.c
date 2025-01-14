
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compare_names (char const* const,char const* const) ;

__attribute__((used)) static int
compare_names_for_qsort (void const *file1, void const *file2)
{
  char const *const *f1 = file1;
  char const *const *f2 = file2;
  return compare_names (*f1, *f2);
}
