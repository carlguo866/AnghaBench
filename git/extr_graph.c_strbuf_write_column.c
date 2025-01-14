
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct column {scalar_t__ color; } ;


 scalar_t__ column_colors_max ;
 int column_get_color_code (scalar_t__) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;

__attribute__((used)) static void strbuf_write_column(struct strbuf *sb, const struct column *c,
    char col_char)
{
 if (c->color < column_colors_max)
  strbuf_addstr(sb, column_get_color_code(c->color));
 strbuf_addch(sb, col_char);
 if (c->color < column_colors_max)
  strbuf_addstr(sb, column_get_color_code(column_colors_max));
}
