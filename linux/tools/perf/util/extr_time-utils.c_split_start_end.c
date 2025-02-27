
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static int split_start_end(char **start, char **end, const char *ostr, char ch)
{
 char *start_str, *end_str;
 char *d, *str;

 if (ostr == ((void*)0) || *ostr == '\0')
  return 0;


 str = strdup(ostr);
 if (str == ((void*)0))
  return -ENOMEM;

 start_str = str;
 d = strchr(start_str, ch);
 if (d) {
  *d = '\0';
  ++d;
 }
 end_str = d;

 *start = start_str;
 *end = end_str;

 return 0;
}
