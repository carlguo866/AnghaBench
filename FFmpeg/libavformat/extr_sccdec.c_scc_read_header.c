
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int line2 ;
typedef int line ;
typedef int int64_t ;
struct TYPE_17__ {int pb; TYPE_2__* priv_data; } ;
struct TYPE_16__ {int pos; int pts; int duration; } ;
struct TYPE_15__ {TYPE_1__* codecpar; } ;
struct TYPE_14__ {int q; } ;
struct TYPE_13__ {int codec_id; int codec_type; } ;
typedef TYPE_2__ SCCContext ;
typedef int FFTextReader ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_SUBTITLE ;
 int AV_CODEC_ID_EIA_608 ;
 int ENOMEM ;
 int FFMAX (int,int) ;
 char* av_strtok (char*,char*,char**) ;
 TYPE_3__* avformat_new_stream (TYPE_5__*,int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int convert (char) ;
 int ff_subtitles_queue_finalize (TYPE_5__*,int *) ;
 TYPE_4__* ff_subtitles_queue_insert (int *,int*,int,int ) ;
 int ff_subtitles_read_line (int *,char*,int) ;
 int ff_text_eof (int *) ;
 int ff_text_init_avio (TYPE_5__*,int *,int ) ;
 int ff_text_pos (int *) ;
 int memmove (char*,char*,int) ;
 int sscanf (char*,char*,...) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int scc_read_header(AVFormatContext *s)
{
    SCCContext *scc = s->priv_data;
    AVStream *st = avformat_new_stream(s, ((void*)0));
    char line[4096], line2[4096];
    int count = 0, ret = 0;
    ptrdiff_t len2, len;
    uint8_t out[4096];
    FFTextReader tr;

    ff_text_init_avio(s, &tr, s->pb);

    if (!st)
        return AVERROR(ENOMEM);
    avpriv_set_pts_info(st, 64, 1, 1000);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id = AV_CODEC_ID_EIA_608;

    while (!ff_text_eof(&tr)) {
        const int64_t pos = ff_text_pos(&tr);
        char *saveptr = ((void*)0), *lline;
        int hh1, mm1, ss1, fs1, i;
        int hh2, mm2, ss2, fs2;
        int64_t ts_start, ts_end;
        AVPacket *sub;

        if (count == 0) {
            while (!ff_text_eof(&tr)) {
                len = ff_subtitles_read_line(&tr, line, sizeof(line));
                if (len > 13)
                    break;
            }
        }

        if (!strncmp(line, "Scenarist_SCC V1.0", 18))
            continue;
        if (sscanf(line, "%d:%d:%d%*[:;]%d", &hh1, &mm1, &ss1, &fs1) != 4)
            continue;

        ts_start = (hh1 * 3600LL + mm1 * 60LL + ss1) * 1000LL + fs1 * 33;

        while (!ff_text_eof(&tr)) {
            len2 = ff_subtitles_read_line(&tr, line2, sizeof(line2));
            if (len2 > 13)
                break;
        }
        if (sscanf(line2, "%d:%d:%d%*[:;]%d", &hh2, &mm2, &ss2, &fs2) != 4)
            continue;

        ts_end = (hh2 * 3600LL + mm2 * 60LL + ss2) * 1000LL + fs2 * 33;
        count++;

try_again:
        lline = (char *)&line;
        lline += 12;

        for (i = 0; i < 4095; i += 3) {
            char *ptr = av_strtok(lline, " ", &saveptr);
            char c1, c2, c3, c4;

            if (!ptr)
                break;

            if (sscanf(ptr, "%c%c%c%c", &c1, &c2, &c3, &c4) != 4)
                break;

            lline = ((void*)0);
            out[i+0] = 0xfc;
            out[i+1] = convert(c2) | (convert(c1) << 4);
            out[i+2] = convert(c4) | (convert(c3) << 4);
        }
        out[i] = 0;

        sub = ff_subtitles_queue_insert(&scc->q, out, i, 0);
        if (!sub)
            return AVERROR(ENOMEM);

        sub->pos = pos;
        sub->pts = ts_start;
        sub->duration = FFMAX(1200, ts_end - ts_start);
        memmove(line, line2, sizeof(line));
        line2[0] = 0;
    }

    if (line[0])
        goto try_again;

    ff_subtitles_queue_finalize(s, &scc->q);

    return ret;
}
