
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* YY_BUFFER_STATE ;
struct TYPE_4__ {int yy_at_bol; int yy_buffer_status; void** yy_ch_buf; void** yy_buf_pos; scalar_t__ yy_n_chars; } ;


 int YY_BUFFER_NEW ;
 TYPE_1__* YY_CURRENT_BUFFER ;
 void* YY_END_OF_BUFFER_CHAR ;
 int null__load_buffer_state () ;

void null__flush_buffer (YY_BUFFER_STATE b )
{
     if ( ! b )
  return;

 b->yy_n_chars = 0;





 b->yy_ch_buf[0] = YY_END_OF_BUFFER_CHAR;
 b->yy_ch_buf[1] = YY_END_OF_BUFFER_CHAR;

 b->yy_buf_pos = &b->yy_ch_buf[0];

 b->yy_at_bol = 1;
 b->yy_buffer_status = YY_BUFFER_NEW;

 if ( b == YY_CURRENT_BUFFER )
  null__load_buffer_state( );
}
