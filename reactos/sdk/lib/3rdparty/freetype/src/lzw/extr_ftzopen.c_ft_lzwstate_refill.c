
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_bits; int buf_size; scalar_t__ buf_offset; int in_eof; int buf_total; int buf_tab; int source; } ;
typedef scalar_t__ FT_ULong ;
typedef int FT_UInt ;
typedef TYPE_1__* FT_LzwState ;


 int FT_BOOL (int) ;
 scalar_t__ FT_Stream_TryRead (int ,int ,scalar_t__) ;

__attribute__((used)) static int
  ft_lzwstate_refill( FT_LzwState state )
  {
    FT_ULong count;


    if ( state->in_eof )
      return -1;

    count = FT_Stream_TryRead( state->source,
                               state->buf_tab,
                               state->num_bits );

    state->buf_size = (FT_UInt)count;
    state->buf_total += count;
    state->in_eof = FT_BOOL( count < state->num_bits );
    state->buf_offset = 0;

    state->buf_size <<= 3;
    if ( state->buf_size > state->num_bits )
      state->buf_size -= state->num_bits - 1;
    else
      return -1;

    if ( count == 0 )
      return -1;

    return 0;
  }
