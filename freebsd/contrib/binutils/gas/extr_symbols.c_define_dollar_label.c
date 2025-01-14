
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DOLLAR_LABEL_BUMP_BY ;
 int dollar_label_count ;
 char* dollar_label_defines ;
 int* dollar_label_instances ;
 int dollar_label_max ;
 long* dollar_labels ;
 char* xmalloc (int) ;
 char* xrealloc (char*,int) ;

void
define_dollar_label (long label)
{
  long *i;

  for (i = dollar_labels; i < dollar_labels + dollar_label_count; ++i)
    if (*i == label)
      {
 ++dollar_label_instances[i - dollar_labels];
 dollar_label_defines[i - dollar_labels] = 1;
 return;
      }



  if (dollar_labels == ((void*)0))
    {
      dollar_labels = (long *) xmalloc (DOLLAR_LABEL_BUMP_BY * sizeof (long));
      dollar_label_instances = (long *) xmalloc (DOLLAR_LABEL_BUMP_BY * sizeof (long));
      dollar_label_defines = xmalloc (DOLLAR_LABEL_BUMP_BY);
      dollar_label_max = DOLLAR_LABEL_BUMP_BY;
      dollar_label_count = 0;
    }
  else if (dollar_label_count == dollar_label_max)
    {
      dollar_label_max += DOLLAR_LABEL_BUMP_BY;
      dollar_labels = (long *) xrealloc ((char *) dollar_labels,
      dollar_label_max * sizeof (long));
      dollar_label_instances = (long *) xrealloc ((char *) dollar_label_instances,
       dollar_label_max * sizeof (long));
      dollar_label_defines = xrealloc (dollar_label_defines, dollar_label_max);
    }

  dollar_labels[dollar_label_count] = label;
  dollar_label_instances[dollar_label_count] = 1;
  dollar_label_defines[dollar_label_count] = 1;
  ++dollar_label_count;
}
