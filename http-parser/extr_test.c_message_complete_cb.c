
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int http_parser ;
struct TYPE_2__ {scalar_t__ should_keep_alive; int message_complete_on_eof; int message_complete_cb_called; int body_is_final; scalar_t__ body_size; } ;


 int TRUE ;
 int abort () ;
 int assert (int) ;
 int currently_parsing_eof ;
 int fprintf (int ,char*) ;
 scalar_t__ http_body_is_final (int *) ;
 scalar_t__ http_should_keep_alive (int *) ;
 TYPE_1__* messages ;
 size_t num_messages ;
 int parser ;
 int stderr ;

int
message_complete_cb (http_parser *p)
{
  assert(p == &parser);
  if (messages[num_messages].should_keep_alive !=
      http_should_keep_alive(&parser))
  {
    fprintf(stderr, "\n\n *** Error http_should_keep_alive() should have same "
                    "value in both on_message_complete and on_headers_complete "
                    "but it doesn't! ***\n\n");
    assert(0);
    abort();
  }

  if (messages[num_messages].body_size &&
      http_body_is_final(p) &&
      !messages[num_messages].body_is_final)
  {
    fprintf(stderr, "\n\n *** Error http_body_is_final() should return 1 "
                    "on last on_body callback call "
                    "but it doesn't! ***\n\n");
    assert(0);
    abort();
  }

  messages[num_messages].message_complete_cb_called = TRUE;

  messages[num_messages].message_complete_on_eof = currently_parsing_eof;

  num_messages++;
  return 0;
}
