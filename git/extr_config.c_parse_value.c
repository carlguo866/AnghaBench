
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buf; scalar_t__ len; } ;
struct TYPE_5__ {TYPE_1__ value; int linenr; } ;


 TYPE_3__* cf ;
 int get_next_char () ;
 scalar_t__ isspace (int) ;
 int strbuf_addch (TYPE_1__*,int) ;
 int strbuf_reset (TYPE_1__*) ;

__attribute__((used)) static char *parse_value(void)
{
 int quote = 0, comment = 0, space = 0;

 strbuf_reset(&cf->value);
 for (;;) {
  int c = get_next_char();
  if (c == '\n') {
   if (quote) {
    cf->linenr--;
    return ((void*)0);
   }
   return cf->value.buf;
  }
  if (comment)
   continue;
  if (isspace(c) && !quote) {
   if (cf->value.len)
    space++;
   continue;
  }
  if (!quote) {
   if (c == ';' || c == '#') {
    comment = 1;
    continue;
   }
  }
  for (; space; space--)
   strbuf_addch(&cf->value, ' ');
  if (c == '\\') {
   c = get_next_char();
   switch (c) {
   case '\n':
    continue;
   case 't':
    c = '\t';
    break;
   case 'b':
    c = '\b';
    break;
   case 'n':
    c = '\n';
    break;

   case '\\': case '"':
    break;

   default:
    return ((void*)0);
   }
   strbuf_addch(&cf->value, c);
   continue;
  }
  if (c == '"') {
   quote = 1-quote;
   continue;
  }
  strbuf_addch(&cf->value, c);
 }
}
