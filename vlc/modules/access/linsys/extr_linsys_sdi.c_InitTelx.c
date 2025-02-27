
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_10__ {int scanning; double sampling_rate; int bytes_per_line; double offset; int* count; int synchronous; int interlaced; scalar_t__* start; int sampling_format; } ;
struct TYPE_9__ {int i_telx_count; int i_width; TYPE_3__ rd_telx; int p_telx_buffer; scalar_t__ i_telx_line; } ;
typedef TYPE_2__ demux_sys_t ;


 int FALSE ;
 int TRUE ;
 int VBI_PIXFMT_UYVY ;
 int VBI_SLICED_TELETEXT_B ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int msg_Warn (TYPE_1__*,char*) ;
 scalar_t__ vbi_raw_decoder_add_services (TYPE_3__*,int ,int ) ;
 int vbi_raw_decoder_destroy (TYPE_3__*) ;
 int vbi_raw_decoder_init (TYPE_3__*) ;
 int vlc_alloc (int,int) ;

__attribute__((used)) static int InitTelx( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    vbi_raw_decoder_init( &p_sys->rd_telx );

    p_sys->rd_telx.scanning = 625;
    p_sys->rd_telx.sampling_format = VBI_PIXFMT_UYVY;
    p_sys->rd_telx.sampling_rate = 13.5e6;
    p_sys->rd_telx.bytes_per_line = 720 * 2;
    p_sys->rd_telx.offset = 9.5e-6 * 13.5e6;

    p_sys->rd_telx.start[0] = p_sys->i_telx_line + 1;
    p_sys->rd_telx.count[0] = p_sys->i_telx_count;
    p_sys->rd_telx.start[1] = p_sys->i_telx_line + 1 + 313;
    p_sys->rd_telx.count[1] = p_sys->i_telx_count;

    p_sys->rd_telx.interlaced = FALSE;
    p_sys->rd_telx.synchronous = TRUE;

    if ( vbi_raw_decoder_add_services( &p_sys->rd_telx, VBI_SLICED_TELETEXT_B,
                                       0 ) == 0 )
    {
        msg_Warn( p_demux, "cannot initialize zvbi for Teletext" );
        vbi_raw_decoder_destroy ( &p_sys->rd_telx );
        return VLC_EGENERIC;
    }

    p_sys->p_telx_buffer = vlc_alloc( p_sys->i_telx_count * p_sys->i_width, 4 );
    if( !p_sys->p_telx_buffer )
    {
        vbi_raw_decoder_destroy ( &p_sys->rd_telx );
        return VLC_ENOMEM;
    }
    return VLC_SUCCESS;
}
