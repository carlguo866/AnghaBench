
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotation_level ;
 int printf_filtered (char*) ;

void
annotate_elt_rep_end (void)
{
  if (annotation_level == 2)
    printf_filtered ("\n\032\032elt-rep-end\n");
}
