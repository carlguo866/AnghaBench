
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
struct TYPE_2__ {scalar_t__ i_codec; int i_fourcc; } ;
typedef scalar_t__ OMX_COLOR_FORMATTYPE ;


 int VIDEO_ES ;
 TYPE_1__* chroma_format_table ;
 char* vlc_fourcc_GetDescription (int ,int ) ;

int GetVlcChromaFormat( OMX_COLOR_FORMATTYPE i_omx_codec,
                        vlc_fourcc_t *pi_fourcc, const char **ppsz_name )
{
    unsigned int i;

    for( i = 0; chroma_format_table[i].i_codec != 0; i++ )
        if( chroma_format_table[i].i_codec == i_omx_codec ) break;

    if( pi_fourcc ) *pi_fourcc = chroma_format_table[i].i_fourcc;
    if( ppsz_name ) *ppsz_name = vlc_fourcc_GetDescription( VIDEO_ES,
                                     chroma_format_table[i].i_fourcc );
    return !!chroma_format_table[i].i_fourcc;
}
