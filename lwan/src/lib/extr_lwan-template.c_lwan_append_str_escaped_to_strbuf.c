
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_strbuf {int dummy; } ;


 scalar_t__ UNLIKELY (int) ;
 int lwan_strbuf_append_char (struct lwan_strbuf*,char const) ;
 int lwan_strbuf_append_str (struct lwan_strbuf*,char*,int) ;

void lwan_append_str_escaped_to_strbuf(struct lwan_strbuf *buf, void *ptr)
{
    if (UNLIKELY(!ptr))
        return;

    const char *str = *(char **)ptr;
    if (UNLIKELY(!str))
        return;

    for (const char *p = str; *p; p++) {
        if (*p == '<')
            lwan_strbuf_append_str(buf, "&lt;", 4);
        else if (*p == '>')
            lwan_strbuf_append_str(buf, "&gt;", 4);
        else if (*p == '&')
            lwan_strbuf_append_str(buf, "&amp;", 5);
        else if (*p == '"')
            lwan_strbuf_append_str(buf, "&quot;", 6);
        else if (*p == '\'')
            lwan_strbuf_append_str(buf, "&#x27;", 6);
        else if (*p == '/')
            lwan_strbuf_append_str(buf, "&#x2f;", 6);
        else
            lwan_strbuf_append_char(buf, *p);
    }
}
