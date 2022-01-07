
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MISSING_QUOTE ;
 int TOO_MANY_CLOSE ;
 int TOO_MANY_OPEN ;
 scalar_t__ isspace (char const) ;

__attribute__((used)) static int calc_stack(const char *str, int *parens, int *preds, int *err)
{
 bool is_pred = 0;
 int nr_preds = 0;
 int open = 1;
 int last_quote = 0;
 int max_open = 1;
 int quote = 0;
 int i;

 *err = 0;

 for (i = 0; str[i]; i++) {
  if (isspace(str[i]))
   continue;
  if (quote) {
   if (str[i] == quote)
          quote = 0;
   continue;
  }

  switch (str[i]) {
  case '\'':
  case '"':
   quote = str[i];
   last_quote = i;
   break;
  case '|':
  case '&':
   if (str[i+1] != str[i])
    break;
   is_pred = 0;
   continue;
  case '(':
   is_pred = 0;
   open++;
   if (open > max_open)
    max_open = open;
   continue;
  case ')':
   is_pred = 0;
   if (open == 1) {
    *err = i;
    return TOO_MANY_CLOSE;
   }
   open--;
   continue;
  }
  if (!is_pred) {
   nr_preds++;
   is_pred = 1;
  }
 }

 if (quote) {
  *err = last_quote;
  return MISSING_QUOTE;
 }

 if (open != 1) {
  int level = open;


  for (i--; i; i--) {
   if (quote) {
    if (str[i] == quote)
     quote = 0;
    continue;
   }
   switch (str[i]) {
   case '(':
    if (level == open) {
     *err = i;
     return TOO_MANY_OPEN;
    }
    level--;
    break;
   case ')':
    level++;
    break;
   case '\'':
   case '"':
    quote = str[i];
    break;
   }
  }

  *err = 0;
  return TOO_MANY_OPEN;
 }


 *parens = max_open;
 *preds = nr_preds;
 return 0;
}
