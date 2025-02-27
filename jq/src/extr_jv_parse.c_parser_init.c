
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jv_parser {int flags; int line; int dtoa; scalar_t__ column; scalar_t__ last_ch_was_ws; scalar_t__ bom_strip_position; scalar_t__ curr_buf_is_partial; scalar_t__ curr_buf_pos; scalar_t__ curr_buf_length; scalar_t__ curr_buf; scalar_t__ eof; int st; scalar_t__ tokenpos; scalar_t__ tokenlen; scalar_t__ tokenbuf; void* next; void* output; int last_seen; scalar_t__ stackpos; scalar_t__ stacklen; scalar_t__ stack; void* path; } ;


 int JV_LAST_NONE ;
 int JV_PARSER_NORMAL ;
 int JV_PARSER_WAITING_FOR_RS ;
 int JV_PARSE_SEQ ;
 int JV_PARSE_STREAMING ;
 int JV_PARSE_STREAM_ERRORS ;
 void* jv_array () ;
 void* jv_invalid () ;
 int jvp_dtoa_context_init (int *) ;

__attribute__((used)) static void parser_init(struct jv_parser* p, int flags) {
  p->flags = flags;
  if ((p->flags & JV_PARSE_STREAMING)) {
    p->path = jv_array();
  } else {
    p->path = jv_invalid();
    p->flags &= ~(JV_PARSE_STREAM_ERRORS);
  }
  p->stack = 0;
  p->stacklen = p->stackpos = 0;
  p->last_seen = JV_LAST_NONE;
  p->output = jv_invalid();
  p->next = jv_invalid();
  p->tokenbuf = 0;
  p->tokenlen = p->tokenpos = 0;
  if ((p->flags & JV_PARSE_SEQ))
    p->st = JV_PARSER_WAITING_FOR_RS;
  else
    p->st = JV_PARSER_NORMAL;
  p->eof = 0;
  p->curr_buf = 0;
  p->curr_buf_length = p->curr_buf_pos = p->curr_buf_is_partial = 0;
  p->bom_strip_position = 0;
  p->last_ch_was_ws = 0;
  p->line = 1;
  p->column = 0;
  jvp_dtoa_context_init(&p->dtoa);
}
