
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vlc_memstream {int dummy; } ;
struct TYPE_6__ {int i_data; int p_data; } ;
struct TYPE_5__ {int i_data; int p_data; } ;
struct TYPE_7__ {TYPE_2__ styles_headers; TYPE_1__ regions_headers; } ;
typedef TYPE_3__ demux_sys_t ;


 int memstream_Grab (struct vlc_memstream*,void**,size_t*) ;
 scalar_t__ vlc_memstream_open (struct vlc_memstream*) ;
 int vlc_memstream_puts (struct vlc_memstream*,char*) ;
 int vlc_memstream_write (struct vlc_memstream*,int ,int ) ;

__attribute__((used)) static void MakeExtradata( demux_sys_t *p_sys, void **p_extra, size_t *pi_extra )
{
    struct vlc_memstream extradata;
    if( vlc_memstream_open( &extradata ) )
        return;
    vlc_memstream_puts( &extradata, "WEBVTT\n\n");
    vlc_memstream_write( &extradata, p_sys->regions_headers.p_data,
                                     p_sys->regions_headers.i_data );
    vlc_memstream_write( &extradata, p_sys->styles_headers.p_data,
                                     p_sys->styles_headers.i_data );
    memstream_Grab( &extradata, p_extra, pi_extra );
}
