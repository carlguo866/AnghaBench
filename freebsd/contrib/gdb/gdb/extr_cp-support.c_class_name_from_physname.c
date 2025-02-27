
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 char* cplus_demangle (char const*,int) ;
 char* find_last_component (char*) ;
 int memcpy (char*,char*,int) ;
 int xfree (char*) ;
 char* xmalloc (int) ;

char *
class_name_from_physname (const char *physname)
{
  char *ret = ((void*)0);
  const char *end;
  int depth = 0;
  char *demangled_name = cplus_demangle (physname, DMGL_ANSI | DMGL_PARAMS);

  if (demangled_name == ((void*)0))
    return ((void*)0);

  end = find_last_component (demangled_name);
  if (end != ((void*)0))
    {
      ret = xmalloc (end - demangled_name + 1);
      memcpy (ret, demangled_name, end - demangled_name);
      ret[end - demangled_name] = '\0';
    }

  xfree (demangled_name);
  return ret;
}
