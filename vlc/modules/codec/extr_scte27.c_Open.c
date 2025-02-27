
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int i_codec; } ;
struct TYPE_7__ {scalar_t__ i_codec; } ;
struct TYPE_8__ {TYPE_1__ fmt_out; int pf_decode; TYPE_4__* p_sys; TYPE_2__ fmt_in; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_9__ {int segment_id; int * segment_buffer; scalar_t__ segment_size; } ;
typedef TYPE_4__ decoder_sys_t ;


 int Decode ;
 scalar_t__ VLC_CODEC_SCTE_27 ;
 int VLC_CODEC_YUVP ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_4__* malloc (int) ;

__attribute__((used)) static int Open(vlc_object_t *object)
{
    decoder_t *dec = (decoder_t *)object;

    if (dec->fmt_in.i_codec != VLC_CODEC_SCTE_27)
        return VLC_EGENERIC;

    decoder_sys_t *sys = dec->p_sys = malloc(sizeof(*sys));
    if (!sys)
        return VLC_ENOMEM;
    sys->segment_id = -1;
    sys->segment_size = 0;
    sys->segment_buffer = ((void*)0);

    dec->pf_decode = Decode;
    dec->fmt_out.i_codec = VLC_CODEC_YUVP;

    return VLC_SUCCESS;
}
