
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int int64_t ;
struct TYPE_12__ {int nb_streams; TYPE_4__** streams; } ;
struct TYPE_11__ {int metadata; TYPE_1__* codecpar; } ;
struct TYPE_10__ {int size; } ;
struct TYPE_9__ {scalar_t__ trak_index; int found_hdlr_mdta; int isom; TYPE_7__* fc; } ;
struct TYPE_8__ {int codec_type; int codec_id; } ;
typedef TYPE_2__ MOVContext ;
typedef TYPE_3__ MOVAtom ;
typedef TYPE_4__ AVStream ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_SUBTITLE ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_MP2 ;
 int AV_DICT_DONT_OVERWRITE ;
 int AV_LOG_TRACE ;
 int ENOMEM ;
 int FFMIN (int ,scalar_t__) ;
 int INT_MAX ;
 scalar_t__ MKTAG (char,char,char,char) ;
 scalar_t__ SIZE_MAX ;
 int av_dict_set (int *,char*,char*,int ) ;
 int av_fourcc2str (scalar_t__) ;
 int av_freep (char**) ;
 int av_log (TYPE_7__*,int ,char*,int ) ;
 char* av_malloc (int) ;
 int avio_r8 (int *) ;
 int avio_rb24 (int *) ;
 int avio_rb32 (int *) ;
 scalar_t__ avio_rl32 (int *) ;
 int ffio_read_size (int *,char*,int) ;

__attribute__((used)) static int mov_read_hdlr(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    uint32_t type;
    uint32_t ctype;
    int64_t title_size;
    char *title_str;
    int ret;

    avio_r8(pb);
    avio_rb24(pb);


    ctype = avio_rl32(pb);
    type = avio_rl32(pb);

    av_log(c->fc, AV_LOG_TRACE, "ctype=%s\n", av_fourcc2str(ctype));
    av_log(c->fc, AV_LOG_TRACE, "stype=%s\n", av_fourcc2str(type));

    if (c->trak_index < 0) {
        if (type == MKTAG('m','d','t','a')) {
            c->found_hdlr_mdta = 1;
        }
        return 0;
    }

    st = c->fc->streams[c->fc->nb_streams-1];

    if (type == MKTAG('v','i','d','e'))
        st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    else if (type == MKTAG('s','o','u','n'))
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    else if (type == MKTAG('m','1','a',' '))
        st->codecpar->codec_id = AV_CODEC_ID_MP2;
    else if ((type == MKTAG('s','u','b','p')) || (type == MKTAG('c','l','c','p')))
        st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;

    avio_rb32(pb);
    avio_rb32(pb);
    avio_rb32(pb);

    title_size = atom.size - 24;
    if (title_size > 0) {
        if (title_size > FFMIN(INT_MAX, SIZE_MAX-1))
            return AVERROR_INVALIDDATA;
        title_str = av_malloc(title_size + 1);
        if (!title_str)
            return AVERROR(ENOMEM);

        ret = ffio_read_size(pb, title_str, title_size);
        if (ret < 0) {
            av_freep(&title_str);
            return ret;
        }
        title_str[title_size] = 0;
        if (title_str[0]) {
            int off = (!c->isom && title_str[0] == title_size - 1);

            av_dict_set(&st->metadata, "handler_name", title_str + off, AV_DICT_DONT_OVERWRITE);
        }
        av_freep(&title_str);
    }

    return 0;
}
