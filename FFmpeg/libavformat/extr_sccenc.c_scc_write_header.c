
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {int nb_streams; int pb; TYPE_5__** streams; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int prev_h; int prev_m; int prev_s; int prev_f; scalar_t__ inside; } ;
struct TYPE_7__ {scalar_t__ codec_type; scalar_t__ codec_id; } ;
typedef TYPE_2__ SCCContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ;
 scalar_t__ AV_CODEC_ID_EIA_608 ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int avcodec_get_name (scalar_t__) ;
 int avio_printf (int ,char*) ;
 int avpriv_set_pts_info (TYPE_5__*,int,int,int) ;

__attribute__((used)) static int scc_write_header(AVFormatContext *avf)
{
    SCCContext *scc = avf->priv_data;

    if (avf->nb_streams != 1 ||
        avf->streams[0]->codecpar->codec_type != AVMEDIA_TYPE_SUBTITLE) {
        av_log(avf, AV_LOG_ERROR,
               "SCC supports only a single subtitles stream.\n");
        return AVERROR(EINVAL);
    }
    if (avf->streams[0]->codecpar->codec_id != AV_CODEC_ID_EIA_608) {
        av_log(avf, AV_LOG_ERROR,
               "Unsupported subtitles codec: %s\n",
               avcodec_get_name(avf->streams[0]->codecpar->codec_id));
        return AVERROR(EINVAL);
    }
    avpriv_set_pts_info(avf->streams[0], 64, 1, 1000);
    avio_printf(avf->pb, "Scenarist_SCC V1.0\n");

    scc->prev_h = scc->prev_m = scc->prev_s = scc->prev_f = -1;
    scc->inside = 0;

    return 0;
}
