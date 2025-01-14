
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ i_rate; scalar_t__ i_bytes_per_frame; int i_physical_channels; int i_channels; int i_chan_mode; int i_frame_length; } ;
struct TYPE_12__ {int i_bitrate; TYPE_1__ audio; } ;
struct TYPE_14__ {TYPE_2__ fmt_out; TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_13__ {scalar_t__ i_rate; scalar_t__ i_frame_size; int i_frame_length; int i_bitrate; int i_physical_channels; int i_chan_mode; } ;
struct TYPE_15__ {int b_date_set; int end_date; TYPE_3__ first; int i_input_size; int i_pts; } ;
typedef TYPE_5__ decoder_sys_t ;
struct TYPE_16__ {scalar_t__ i_pts; int i_nb_samples; scalar_t__ i_length; scalar_t__ i_dts; } ;
typedef TYPE_6__ block_t ;


 TYPE_6__* block_Alloc (int ) ;
 scalar_t__ date_Get (int *) ;
 scalar_t__ date_Increment (int *,int ) ;
 int date_Init (int *,scalar_t__,int) ;
 int date_Set (int *,int ) ;
 int msg_Dbg (TYPE_4__*,char*,scalar_t__,int ) ;
 int vlc_popcount (int ) ;

__attribute__((used)) static block_t *GetOutBuffer( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( !p_sys->b_date_set
     || p_dec->fmt_out.audio.i_rate != p_sys->first.i_rate )
    {
        msg_Dbg( p_dec, "DTS samplerate:%d bitrate:%d",
                 p_sys->first.i_rate, p_sys->first.i_bitrate );

        date_Init( &p_sys->end_date, p_sys->first.i_rate, 1 );
        date_Set( &p_sys->end_date, p_sys->i_pts );
        p_sys->b_date_set = 1;
    }

    p_dec->fmt_out.audio.i_rate = p_sys->first.i_rate;
    if( p_dec->fmt_out.audio.i_bytes_per_frame < p_sys->first.i_frame_size )
        p_dec->fmt_out.audio.i_bytes_per_frame = p_sys->first.i_frame_size;
    p_dec->fmt_out.audio.i_frame_length = p_sys->first.i_frame_length;

    p_dec->fmt_out.audio.i_chan_mode = p_sys->first.i_chan_mode;
    p_dec->fmt_out.audio.i_physical_channels = p_sys->first.i_physical_channels;
    p_dec->fmt_out.audio.i_channels =
        vlc_popcount( p_dec->fmt_out.audio.i_physical_channels );

    p_dec->fmt_out.i_bitrate = p_sys->first.i_bitrate;

    block_t *p_block = block_Alloc( p_sys->i_input_size );
    if( p_block == ((void*)0) )
        return ((void*)0);

    p_block->i_nb_samples = p_sys->first.i_frame_length;
    p_block->i_pts = p_block->i_dts = date_Get( &p_sys->end_date );
    p_block->i_length =
        date_Increment( &p_sys->end_date, p_block->i_nb_samples ) - p_block->i_pts;
    return p_block;
}
