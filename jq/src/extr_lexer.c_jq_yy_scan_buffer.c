
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int yyscan_t ;
typedef int yy_size_t ;
struct yy_buffer_state {int dummy; } ;
typedef TYPE_1__* YY_BUFFER_STATE ;
struct TYPE_4__ {int yy_buf_size; char* yy_buf_pos; char* yy_ch_buf; int yy_n_chars; int yy_at_bol; int yy_buffer_status; scalar_t__ yy_fill_buffer; scalar_t__ yy_is_interactive; int * yy_input_file; scalar_t__ yy_is_our_buffer; } ;


 int YY_BUFFER_NEW ;
 char YY_END_OF_BUFFER_CHAR ;
 int YY_FATAL_ERROR (char*) ;
 int yy_switch_to_buffer (TYPE_1__*,int ) ;
 scalar_t__ yyalloc (int,int ) ;

YY_BUFFER_STATE yy_scan_buffer (char * base, yy_size_t size , yyscan_t yyscanner)
{
 YY_BUFFER_STATE b;

 if ( size < 2 ||
      base[size-2] != YY_END_OF_BUFFER_CHAR ||
      base[size-1] != YY_END_OF_BUFFER_CHAR )

  return ((void*)0);

 b = (YY_BUFFER_STATE) yyalloc( sizeof( struct yy_buffer_state ) , yyscanner );
 if ( ! b )
  YY_FATAL_ERROR( "out of dynamic memory in yy_scan_buffer()" );

 b->yy_buf_size = (int) (size - 2);
 b->yy_buf_pos = b->yy_ch_buf = base;
 b->yy_is_our_buffer = 0;
 b->yy_input_file = ((void*)0);
 b->yy_n_chars = b->yy_buf_size;
 b->yy_is_interactive = 0;
 b->yy_at_bol = 1;
 b->yy_fill_buffer = 0;
 b->yy_buffer_status = YY_BUFFER_NEW;

 yy_switch_to_buffer( b , yyscanner );

 return b;
}
