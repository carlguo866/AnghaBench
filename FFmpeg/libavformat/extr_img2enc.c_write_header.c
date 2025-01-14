
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int is_pipe; char* muxer; int split_planes; int path; } ;
typedef TYPE_3__ VideoMuxData ;
struct TYPE_14__ {int nb_streams; TYPE_1__* oformat; int url; TYPE_4__** streams; TYPE_3__* priv_data; } ;
struct TYPE_13__ {int flags; int nb_components; } ;
struct TYPE_12__ {TYPE_2__* codecpar; } ;
struct TYPE_10__ {scalar_t__ codec_id; int format; } ;
struct TYPE_9__ {int flags; } ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVPixFmtDescriptor ;
typedef TYPE_6__ AVFormatContext ;


 int AVFMT_NOFILE ;
 scalar_t__ AV_CODEC_ID_FITS ;
 scalar_t__ AV_CODEC_ID_GIF ;
 scalar_t__ AV_CODEC_ID_RAWVIDEO ;
 int AV_PIX_FMT_FLAG_PLANAR ;
 TYPE_5__* av_pix_fmt_desc_get (int ) ;
 int av_strcasecmp (char const*,char*) ;
 int av_strlcpy (int ,int ,int) ;
 char* strrchr (int ,char) ;

__attribute__((used)) static int write_header(AVFormatContext *s)
{
    VideoMuxData *img = s->priv_data;
    AVStream *st = s->streams[0];
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(st->codecpar->format);

    av_strlcpy(img->path, s->url, sizeof(img->path));


    if (s->oformat->flags & AVFMT_NOFILE)
        img->is_pipe = 0;
    else
        img->is_pipe = 1;

    if (st->codecpar->codec_id == AV_CODEC_ID_GIF) {
        img->muxer = "gif";
    } else if (st->codecpar->codec_id == AV_CODEC_ID_FITS) {
        img->muxer = "fits";
    } else if (st->codecpar->codec_id == AV_CODEC_ID_RAWVIDEO) {
        const char *str = strrchr(img->path, '.');
        img->split_planes = str
                             && !av_strcasecmp(str + 1, "y")
                             && s->nb_streams == 1
                             && desc
                             &&(desc->flags & AV_PIX_FMT_FLAG_PLANAR)
                             && desc->nb_components >= 3;
    }

    return 0;
}
