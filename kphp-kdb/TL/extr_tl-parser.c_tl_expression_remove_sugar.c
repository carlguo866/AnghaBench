
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {int text; } ;
struct tl_compiler {int dummy; } ;


 int cstr_remove_extra_spaces (char*) ;
 int tl_failf (struct tl_compiler*,char*,int ) ;
 int vkprintf (int,char*,char*) ;

int tl_expression_remove_sugar (struct tl_compiler *C, struct tl_expression *E, char *buf) {
  vkprintf (4, "tl_expression_remove_sugar (\"%s\")\n", buf);
  char *s;
  int n = 0;
  for (s = buf; *s; s++) {
    if (*s == '<') {
      *s = ' ';
      n++;
    } else if (*s == '>') {
      *s = ' ';
      if (--n < 0) {
        return tl_failf (C, "tl_expression_remove_sugar: too many '>', expr: %s", E->text);
      }
    } else if (*s == ',') {
      if (n > 0) {
        *s = ' ';
      }
    }
  }
  if (n > 0) {
    return tl_failf (C, "tl_expression_remove_sugar: too many '<', expr: %s", E->text);
  }
  cstr_remove_extra_spaces (buf);
  vkprintf (4, "after removing sugar: %s\n", buf);
  return 0;
}
