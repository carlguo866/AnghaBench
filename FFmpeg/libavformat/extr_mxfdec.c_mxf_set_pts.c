
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ codec_type; } ;
struct TYPE_14__ {size_t dts; size_t pts; int duration; } ;
struct TYPE_13__ {TYPE_1__* priv_data; TYPE_5__* codecpar; } ;
struct TYPE_12__ {size_t nb_ptses; size_t first_dts; size_t* ptses; } ;
struct TYPE_11__ {size_t sample_count; scalar_t__ intra_only; int index_sid; } ;
typedef TYPE_1__ MXFTrack ;
typedef TYPE_2__ MXFIndexTable ;
typedef int MXFContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVCodecParameters ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 TYPE_2__* mxf_find_index_table (int *,int ) ;
 int mxf_set_audio_pts (int *,TYPE_5__*,TYPE_4__*) ;

__attribute__((used)) static int mxf_set_pts(MXFContext *mxf, AVStream *st, AVPacket *pkt)
{
    AVCodecParameters *par = st->codecpar;
    MXFTrack *track = st->priv_data;

    if (par->codec_type == AVMEDIA_TYPE_VIDEO) {

        MXFIndexTable *t = mxf_find_index_table(mxf, track->index_sid);

        if (t && track->sample_count < t->nb_ptses) {
            pkt->dts = track->sample_count + t->first_dts;
            pkt->pts = t->ptses[track->sample_count];
        } else if (track->intra_only) {


            pkt->pts = track->sample_count;
        }
        track->sample_count++;
    } else if (par->codec_type == AVMEDIA_TYPE_AUDIO) {
        int ret = mxf_set_audio_pts(mxf, par, pkt);
        if (ret < 0)
            return ret;
    } else if (track) {
        pkt->dts = pkt->pts = track->sample_count;
        pkt->duration = 1;
        track->sample_count++;
    }
    return 0;
}
