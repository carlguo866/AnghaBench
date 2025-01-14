
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {int i_fragment; int i_fragment_size; TYPE_6__* p_block; int hdc_src; int hdc_dst; } ;
typedef TYPE_3__ screen_data_t ;
struct TYPE_24__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ demux_t ;
struct TYPE_21__ {int i_height; int i_width; } ;
struct TYPE_22__ {TYPE_1__ video; } ;
struct TYPE_25__ {scalar_t__ p_mouse; TYPE_2__ fmt; int i_top; int i_left; scalar_t__ b_follow_mouse; TYPE_3__* p_data; } ;
typedef TYPE_5__ demux_sys_t ;
struct TYPE_26__ {int p_buffer; } ;
typedef TYPE_6__ block_t ;
struct TYPE_27__ {scalar_t__ y; int x; int member_1; int member_0; } ;
typedef TYPE_7__ POINT ;


 int BitBlt (int ,int ,int,int ,int,int ,int ,scalar_t__,int) ;
 int CAPTUREBLT ;
 TYPE_6__* CaptureBlockNew (TYPE_4__*) ;
 int FollowMouse (TYPE_5__*,int ,scalar_t__) ;
 int FromScreenCoordinates (TYPE_4__*,TYPE_7__*) ;
 int GetCursorPos (TYPE_7__*) ;
 int RenderCursor (TYPE_4__*,int ,scalar_t__,int ) ;
 int SRCCOPY ;
 int ToScreenCoordinates (TYPE_4__*,TYPE_7__*) ;
 int msg_Err (TYPE_4__*,char*) ;
 int msg_Warn (TYPE_4__*,char*) ;

block_t *screen_Capture( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    screen_data_t *p_data = p_sys->p_data;

    if( !p_data->i_fragment )
    {
        if( !( p_data->p_block = CaptureBlockNew( p_demux ) ) )
        {
            msg_Warn( p_demux, "cannot get block" );
            return ((void*)0);
        }
    }

    if( p_sys->b_follow_mouse )
    {
        POINT pos;
        GetCursorPos( &pos );
        FromScreenCoordinates( p_demux, &pos );
        FollowMouse( p_sys, pos.x, pos.y );
    }

    POINT top_left = { p_sys->i_left, p_sys->i_top };
    ToScreenCoordinates( p_demux, &top_left );

    if( !BitBlt( p_data->hdc_dst, 0,
                 p_data->i_fragment * p_data->i_fragment_size,
                 p_sys->fmt.video.i_width, p_data->i_fragment_size,
                 p_data->hdc_src, top_left.x, top_left.y +
                 p_data->i_fragment * p_data->i_fragment_size,
                 SRCCOPY | CAPTUREBLT ) )
    {
        msg_Err( p_demux, "error during BitBlt()" );
        return ((void*)0);
    }

    p_data->i_fragment++;

    if( !( p_data->i_fragment %
           (p_sys->fmt.video.i_height/p_data->i_fragment_size) ) )
    {
        block_t *p_block = p_data->p_block;
        p_data->i_fragment = 0;
        p_data->p_block = 0;

        if( p_sys->p_mouse )
        {
            POINT pos;

            GetCursorPos( &pos );
            FromScreenCoordinates( p_demux, &pos );
            RenderCursor( p_demux, pos.x, pos.y,
                          p_block->p_buffer );
        }

        return p_block;
    }

    return ((void*)0);
}
