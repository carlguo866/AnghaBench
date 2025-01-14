
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ php_cli_server_chunk ;
struct TYPE_6__ {TYPE_1__* first; TYPE_1__* last; } ;
typedef TYPE_2__ php_cli_server_buffer ;



__attribute__((used)) static void php_cli_server_buffer_prepend(php_cli_server_buffer *buffer, php_cli_server_chunk *chunk)
{
 php_cli_server_chunk *last;
 for (last = chunk; last->next; last = last->next);
 last->next = buffer->first;
 if (!buffer->last) {
  buffer->last = last;
 }
 buffer->first = chunk;
}
