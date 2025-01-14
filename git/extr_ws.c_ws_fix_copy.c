
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; } ;


 unsigned int WS_BLANK_AT_EOL ;
 unsigned int WS_CR_AT_EOL ;
 unsigned int WS_INDENT_WITH_NON_TAB ;
 unsigned int WS_SPACE_BEFORE_TAB ;
 unsigned int WS_TAB_IN_INDENT ;
 scalar_t__ isspace (char const) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addch (struct strbuf*,char const) ;
 int ws_tab_width (unsigned int) ;

void ws_fix_copy(struct strbuf *dst, const char *src, int len, unsigned ws_rule, int *error_count)
{





 int i;
 int add_nl_to_tail = 0;
 int add_cr_to_tail = 0;
 int fixed = 0;
 int last_tab_in_indent = -1;
 int last_space_in_indent = -1;
 int need_fix_leading_space = 0;




 if (ws_rule & WS_BLANK_AT_EOL) {
  if (0 < len && src[len - 1] == '\n') {
   add_nl_to_tail = 1;
   len--;
   if (0 < len && src[len - 1] == '\r') {
    add_cr_to_tail = !!(ws_rule & WS_CR_AT_EOL);
    len--;
   }
  }
  if (0 < len && isspace(src[len - 1])) {
   while (0 < len && isspace(src[len-1]))
    len--;
   fixed = 1;
  }
 }




 for (i = 0; i < len; i++) {
  char ch = src[i];
  if (ch == '\t') {
   last_tab_in_indent = i;
   if ((ws_rule & WS_SPACE_BEFORE_TAB) &&
       0 <= last_space_in_indent)
       need_fix_leading_space = 1;
  } else if (ch == ' ') {
   last_space_in_indent = i;
   if ((ws_rule & WS_INDENT_WITH_NON_TAB) &&
       ws_tab_width(ws_rule) <= i - last_tab_in_indent)
    need_fix_leading_space = 1;
  } else
   break;
 }

 if (need_fix_leading_space) {

  int consecutive_spaces = 0;
  int last = last_tab_in_indent + 1;

  if (ws_rule & WS_INDENT_WITH_NON_TAB) {

   if (last_tab_in_indent < last_space_in_indent)
    last = last_space_in_indent + 1;
   else
    last = last_tab_in_indent + 1;
  }





  for (i = 0; i < last; i++) {
   char ch = src[i];
   if (ch != ' ') {
    consecutive_spaces = 0;
    strbuf_addch(dst, ch);
   } else {
    consecutive_spaces++;
    if (consecutive_spaces == ws_tab_width(ws_rule)) {
     strbuf_addch(dst, '\t');
     consecutive_spaces = 0;
    }
   }
  }
  while (0 < consecutive_spaces--)
   strbuf_addch(dst, ' ');
  len -= last;
  src += last;
  fixed = 1;
 } else if ((ws_rule & WS_TAB_IN_INDENT) && last_tab_in_indent >= 0) {

  int start = dst->len;
  int last = last_tab_in_indent + 1;
  for (i = 0; i < last; i++) {
   if (src[i] == '\t')
    do {
     strbuf_addch(dst, ' ');
    } while ((dst->len - start) % ws_tab_width(ws_rule));
   else
    strbuf_addch(dst, src[i]);
  }
  len -= last;
  src += last;
  fixed = 1;
 }

 strbuf_add(dst, src, len);
 if (add_cr_to_tail)
  strbuf_addch(dst, '\r');
 if (add_nl_to_tail)
  strbuf_addch(dst, '\n');
 if (fixed && error_count)
  (*error_count)++;
}
