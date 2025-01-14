
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int key ;
typedef scalar_t__ int64_t ;
typedef int filename ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_14__ {int codec_id; int codec_type; } ;
struct TYPE_13__ {int metadata; int * pb; } ;
struct TYPE_12__ {int flags; int stream_index; } ;
struct TYPE_11__ {TYPE_5__* codecpar; TYPE_2__ attached_pic; int index; int disposition; int metadata; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 scalar_t__ APE_TAG_FLAG_IS_BINARY ;
 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_ATTACHMENT ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_NONE ;
 int AV_DICT_DONT_STRDUP_VAL ;
 int AV_DISPOSITION_ATTACHED_PIC ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int AV_PKT_FLAG_KEY ;
 int ENOMEM ;
 scalar_t__ INT32_MAX ;
 int av_dict_set (int *,int*,int*,int ) ;
 int av_free (int*) ;
 int av_get_packet (int *,TYPE_2__*,scalar_t__) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int* av_malloc (scalar_t__) ;
 TYPE_1__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_get_str (int *,scalar_t__,int*,int) ;
 int avio_r8 (int *) ;
 int avio_read (int *,int*,scalar_t__) ;
 scalar_t__ avio_rl32 (int *) ;
 scalar_t__ ff_get_extradata (TYPE_3__*,TYPE_5__*,int *,scalar_t__) ;
 int ff_guess_image2_codec (int*) ;

__attribute__((used)) static int ape_tag_read_field(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    uint8_t key[1024], *value;
    int64_t size, flags;
    int i, c;

    size = avio_rl32(pb);
    flags = avio_rl32(pb);
    for (i = 0; i < sizeof(key) - 1; i++) {
        c = avio_r8(pb);
        if (c < 0x20 || c > 0x7E)
            break;
        else
            key[i] = c;
    }
    key[i] = 0;
    if (c != 0) {
        av_log(s, AV_LOG_WARNING, "Invalid APE tag key '%s'.\n", key);
        return -1;
    }
    if (size > INT32_MAX - AV_INPUT_BUFFER_PADDING_SIZE) {
        av_log(s, AV_LOG_ERROR, "APE tag size too large.\n");
        return AVERROR_INVALIDDATA;
    }
    if (flags & APE_TAG_FLAG_IS_BINARY) {
        uint8_t filename[1024];
        enum AVCodecID id;
        int ret;
        AVStream *st = avformat_new_stream(s, ((void*)0));
        if (!st)
            return AVERROR(ENOMEM);

        ret = avio_get_str(pb, size, filename, sizeof(filename));
        if (ret < 0)
            return ret;
        if (size <= ret) {
            av_log(s, AV_LOG_WARNING, "Skipping binary tag '%s'.\n", key);
            return 0;
        }
        size -= ret;

        av_dict_set(&st->metadata, key, filename, 0);

        if ((id = ff_guess_image2_codec(filename)) != AV_CODEC_ID_NONE) {
            AVPacket pkt;
            int ret;

            ret = av_get_packet(s->pb, &pkt, size);
            if (ret < 0) {
                av_log(s, AV_LOG_ERROR, "Error reading cover art.\n");
                return ret;
            }

            st->disposition |= AV_DISPOSITION_ATTACHED_PIC;
            st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
            st->codecpar->codec_id = id;

            st->attached_pic = pkt;
            st->attached_pic.stream_index = st->index;
            st->attached_pic.flags |= AV_PKT_FLAG_KEY;
        } else {
            if (ff_get_extradata(s, st->codecpar, s->pb, size) < 0)
                return AVERROR(ENOMEM);
            st->codecpar->codec_type = AVMEDIA_TYPE_ATTACHMENT;
        }
    } else {
        value = av_malloc(size+1);
        if (!value)
            return AVERROR(ENOMEM);
        c = avio_read(pb, value, size);
        if (c < 0) {
            av_free(value);
            return c;
        }
        value[c] = 0;
        av_dict_set(&s->metadata, key, value, AV_DICT_DONT_STRDUP_VAL);
    }
    return 0;
}
