
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int buf; } ;
struct TYPE_3__ {int len; char* buf; } ;
struct json_writer {int need_comma; TYPE_2__ json; scalar_t__ pretty; TYPE_1__ open_stack; } ;


 int BUG (char*,int ) ;
 int indent_pretty (struct json_writer*) ;
 int strbuf_addch (TYPE_2__*,char) ;
 int strbuf_setlen (TYPE_1__*,int) ;

void jw_end(struct json_writer *jw)
{
 char ch_open;
 int len;

 if (!jw->open_stack.len)
  BUG("json-writer: too many jw_end(): '%s'", jw->json.buf);

 len = jw->open_stack.len - 1;
 ch_open = jw->open_stack.buf[len];

 strbuf_setlen(&jw->open_stack, len);
 jw->need_comma = 1;

 if (jw->pretty) {
  strbuf_addch(&jw->json, '\n');
  indent_pretty(jw);
 }

 if (ch_open == '{')
  strbuf_addch(&jw->json, '}');
 else
  strbuf_addch(&jw->json, ']');
}
