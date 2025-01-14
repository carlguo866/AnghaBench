
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* value; int * name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 char* alloca (int) ;
 TYPE_1__* configure_default_options ;
 int do_self_spec (char*) ;
 int memcpy (char*,char const*,unsigned int) ;
 scalar_t__ strcmp (int *,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static void
do_option_spec (const char *name, const char *spec)
{
  unsigned int i, value_count, value_len;
  const char *p, *q, *value;
  char *tmp_spec, *tmp_spec_p;

  if (configure_default_options[0].name == ((void*)0))
    return;

  for (i = 0; i < ARRAY_SIZE (configure_default_options); i++)
    if (strcmp (configure_default_options[i].name, name) == 0)
      break;
  if (i == ARRAY_SIZE (configure_default_options))
    return;

  value = configure_default_options[i].value;
  value_len = strlen (value);


  value_count = 0;
  p = spec;
  while ((p = strstr (p, "%(VALUE)")) != ((void*)0))
    {
      p ++;
      value_count ++;
    }


  tmp_spec = alloca (strlen (spec) + 1
       + value_count * (value_len - strlen ("%(VALUE)")));
  tmp_spec_p = tmp_spec;
  q = spec;
  while ((p = strstr (q, "%(VALUE)")) != ((void*)0))
    {
      memcpy (tmp_spec_p, q, p - q);
      tmp_spec_p = tmp_spec_p + (p - q);
      memcpy (tmp_spec_p, value, value_len);
      tmp_spec_p += value_len;
      q = p + strlen ("%(VALUE)");
    }
  strcpy (tmp_spec_p, q);

  do_self_spec (tmp_spec);
}
