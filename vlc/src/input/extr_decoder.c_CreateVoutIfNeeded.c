
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_14__ {TYPE_1__* fmt; int * vout; } ;
typedef TYPE_5__ vout_device_configuration_t ;
typedef int vlc_decoder_device ;
struct TYPE_11__ {scalar_t__ i_width; scalar_t__ i_height; scalar_t__ i_visible_width; scalar_t__ i_visible_height; scalar_t__ i_x_offset; scalar_t__ i_y_offset; scalar_t__ i_chroma; int i_sar_den; int i_sar_num; scalar_t__ orientation; scalar_t__ multiview_mode; } ;
struct TYPE_12__ {TYPE_2__ video; } ;
struct TYPE_10__ {scalar_t__ i_width; scalar_t__ i_height; scalar_t__ i_visible_width; scalar_t__ i_visible_height; scalar_t__ i_x_offset; scalar_t__ i_y_offset; scalar_t__ orientation; scalar_t__ multiview_mode; scalar_t__ i_sar_den; scalar_t__ i_sar_num; } ;
struct TYPE_13__ {scalar_t__ i_codec; TYPE_1__ video; } ;
struct TYPE_15__ {TYPE_4__ fmt_out; } ;
struct decoder_owner {int vout_order; int reset_out_state; int p_fifo; int * out_pool; int lock; TYPE_3__ fmt; int * p_vout; int p_resource; TYPE_6__ dec; } ;
typedef int int64_t ;
typedef enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;
typedef TYPE_6__ decoder_t ;


 int DecoderUpdateFormatLocked (struct decoder_owner*) ;
 int * input_resource_GetVoutDecoderDevice (int ,TYPE_5__*,int*,int **) ;
 int msg_Dbg (TYPE_6__*,char*) ;
 int msg_Err (TYPE_6__*,char*) ;
 int picture_pool_Release (int *) ;
 int vlc_decoder_device_Release (int *) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_Unlock (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int CreateVoutIfNeeded(struct decoder_owner *p_owner,
                              vout_thread_t **pp_vout, enum vlc_vout_order *order,
                              vlc_decoder_device **pp_dec_dev)
{
    decoder_t *p_dec = &p_owner->dec;
    bool need_vout = 0;

    if( p_owner->p_vout == ((void*)0) )
    {
        msg_Dbg(p_dec, "vout: none found");
        need_vout = 1;
    }
    if( p_dec->fmt_out.video.i_width != p_owner->fmt.video.i_width
             || p_dec->fmt_out.video.i_height != p_owner->fmt.video.i_height )
    {
        msg_Dbg(p_dec, "vout change: decoder size");
        need_vout = 1;
    }
    if( p_dec->fmt_out.video.i_visible_width != p_owner->fmt.video.i_visible_width
             || p_dec->fmt_out.video.i_visible_height != p_owner->fmt.video.i_visible_height
             || p_dec->fmt_out.video.i_x_offset != p_owner->fmt.video.i_x_offset
             || p_dec->fmt_out.video.i_y_offset != p_owner->fmt.video.i_y_offset )
    {
        msg_Dbg(p_dec, "vout change: visible size");
        need_vout = 1;
    }
    if( p_dec->fmt_out.i_codec != p_owner->fmt.video.i_chroma )
    {
        msg_Dbg(p_dec, "vout change: chroma");
        need_vout = 1;
    }
    if( (int64_t)p_dec->fmt_out.video.i_sar_num * p_owner->fmt.video.i_sar_den !=
             (int64_t)p_dec->fmt_out.video.i_sar_den * p_owner->fmt.video.i_sar_num )
    {
        msg_Dbg(p_dec, "vout change: SAR");
        need_vout = 1;
    }
    if( p_dec->fmt_out.video.orientation != p_owner->fmt.video.orientation )
    {
        msg_Dbg(p_dec, "vout change: orientation");
        need_vout = 1;
    }
    if( p_dec->fmt_out.video.multiview_mode != p_owner->fmt.video.multiview_mode )
    {
        msg_Dbg(p_dec, "vout change: multiview");
        need_vout = 1;
    }

    if( !need_vout )
    {
        if (pp_vout)
        {
            vlc_mutex_lock( &p_owner->lock );
            *pp_vout = p_owner->p_vout;
            *order = p_owner->vout_order;
            vlc_mutex_unlock( &p_owner->lock );
        }
        return 0;
    }

    if( !p_dec->fmt_out.video.i_width ||
        !p_dec->fmt_out.video.i_height ||
        p_dec->fmt_out.video.i_width < p_dec->fmt_out.video.i_visible_width ||
        p_dec->fmt_out.video.i_height < p_dec->fmt_out.video.i_visible_height )
    {

        return -1;
    }

    vlc_mutex_lock( &p_owner->lock );

    vout_thread_t *p_vout = p_owner->p_vout;
    p_owner->p_vout = ((void*)0);
    vlc_mutex_unlock( &p_owner->lock );

    if ( pp_dec_dev ) *pp_dec_dev = ((void*)0);
    vout_device_configuration_t cfg = {
        .vout = p_vout, .fmt = &p_dec->fmt_out.video,
    };
    p_vout = input_resource_GetVoutDecoderDevice( p_owner->p_resource,
                                    &cfg, order, pp_dec_dev );

    if (pp_vout)
        *pp_vout = p_vout;

    vlc_mutex_lock( &p_owner->lock );
    p_owner->p_vout = p_vout;
    p_owner->vout_order = *order;
    if ( pp_dec_dev )
    {
        if( p_vout == ((void*)0) && *pp_dec_dev != ((void*)0) )
        {
            vlc_decoder_device_Release( *pp_dec_dev );
            *pp_dec_dev = ((void*)0);
        }
    }

    DecoderUpdateFormatLocked( p_owner );
    p_owner->fmt.video.i_chroma = p_dec->fmt_out.i_codec;
    vlc_mutex_unlock( &p_owner->lock );

     if ( p_owner->out_pool != ((void*)0) )
     {
         picture_pool_Release( p_owner->out_pool );
         p_owner->out_pool = ((void*)0);
     }

    if( p_vout == ((void*)0) )
    {
        msg_Err( p_dec, "failed to create video output" );
        return -1;
    }

    vlc_fifo_Lock( p_owner->p_fifo );
    p_owner->reset_out_state = 1;
    vlc_fifo_Unlock( p_owner->p_fifo );

    return 1;
}
