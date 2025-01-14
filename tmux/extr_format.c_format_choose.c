
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_tree {int dummy; } ;


 char* format_expand (struct format_tree*,char*) ;
 char* format_skip (char const*,char*) ;
 int free (char*) ;
 char* xstrdup (char const*) ;
 char* xstrndup (char const*,int) ;

__attribute__((used)) static int
format_choose(struct format_tree *ft, const char *s, char **left, char **right,
    int expand)
{
 const char *cp;
 char *left0, *right0;

 cp = format_skip(s, ",");
 if (cp == ((void*)0))
  return (-1);
 left0 = xstrndup(s, cp - s);
 right0 = xstrdup(cp + 1);

 if (expand) {
  *left = format_expand(ft, left0);
  free(left0);
  *right = format_expand(ft, right0);
  free(right0);
 } else {
  *left = left0;
  *right = right0;
 }
 return (0);
}
