
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_rate; int i_physical_channels; } ;
struct TYPE_6__ {TYPE_1__ audio; } ;
typedef TYPE_2__ es_format_t ;
typedef int demux_t ;


 int AOUT_CHAN_CENTER ;
 int AUDIO_ES ;
 int VLC_CODEC_QCELP ;
 void* codec_init (int *,TYPE_2__*) ;
 int es_format_Init (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void *qcelp_init (demux_t *demux)
{
    es_format_t fmt;

    es_format_Init (&fmt, AUDIO_ES, VLC_CODEC_QCELP);
    fmt.audio.i_rate = 8000;
    fmt.audio.i_physical_channels = AOUT_CHAN_CENTER;
    return codec_init (demux, &fmt);
}
