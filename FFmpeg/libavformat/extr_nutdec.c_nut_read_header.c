
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int int64_t ;
struct TYPE_20__ {int nb_streams; TYPE_1__* internal; TYPE_3__* pb; TYPE_2__* priv_data; } ;
struct TYPE_19__ {int seekable; } ;
struct TYPE_18__ {scalar_t__ next_startcode; TYPE_4__* avf; } ;
struct TYPE_17__ {int data_offset; } ;
typedef TYPE_2__ NUTContext ;
typedef TYPE_3__ AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AVIO_SEEKABLE_NORMAL ;
 int AV_LOG_ERROR ;
 scalar_t__ INFO_STARTCODE ;
 int MAIN_STARTCODE ;
 int SEEK_SET ;
 int STREAM_STARTCODE ;
 scalar_t__ SYNCPOINT_STARTCODE ;
 int av_assert0 (int) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int avio_seek (TYPE_3__*,int,int ) ;
 int avio_tell (TYPE_3__*) ;
 int decode_info_header (TYPE_2__*) ;
 scalar_t__ decode_main_header (TYPE_2__*) ;
 scalar_t__ decode_stream_header (TYPE_2__*) ;
 int ff_metadata_conv_ctx (TYPE_4__*,int *,int ) ;
 int ff_nut_metadata_conv ;
 int find_and_decode_index (TYPE_2__*) ;
 scalar_t__ find_any_startcode (TYPE_3__*,int) ;
 int find_startcode (TYPE_3__*,int ,int) ;
 int nut_read_close (TYPE_4__*) ;

__attribute__((used)) static int nut_read_header(AVFormatContext *s)
{
    NUTContext *nut = s->priv_data;
    AVIOContext *bc = s->pb;
    int64_t pos;
    int initialized_stream_count;

    nut->avf = s;


    pos = 0;
    do {
        pos = find_startcode(bc, MAIN_STARTCODE, pos) + 1;
        if (pos < 0 + 1) {
            av_log(s, AV_LOG_ERROR, "No main startcode found.\n");
            goto fail;
        }
    } while (decode_main_header(nut) < 0);


    pos = 0;
    for (initialized_stream_count = 0; initialized_stream_count < s->nb_streams;) {
        pos = find_startcode(bc, STREAM_STARTCODE, pos) + 1;
        if (pos < 0 + 1) {
            av_log(s, AV_LOG_ERROR, "Not all stream headers found.\n");
            goto fail;
        }
        if (decode_stream_header(nut) >= 0)
            initialized_stream_count++;
    }


    pos = 0;
    for (;;) {
        uint64_t startcode = find_any_startcode(bc, pos);
        pos = avio_tell(bc);

        if (startcode == 0) {
            av_log(s, AV_LOG_ERROR, "EOF before video frames\n");
            goto fail;
        } else if (startcode == SYNCPOINT_STARTCODE) {
            nut->next_startcode = startcode;
            break;
        } else if (startcode != INFO_STARTCODE) {
            continue;
        }

        decode_info_header(nut);
    }

    s->internal->data_offset = pos - 8;

    if (bc->seekable & AVIO_SEEKABLE_NORMAL) {
        int64_t orig_pos = avio_tell(bc);
        find_and_decode_index(nut);
        avio_seek(bc, orig_pos, SEEK_SET);
    }
    av_assert0(nut->next_startcode == SYNCPOINT_STARTCODE);

    ff_metadata_conv_ctx(s, ((void*)0), ff_nut_metadata_conv);

    return 0;

fail:
    nut_read_close(s);

    return AVERROR_INVALIDDATA;
}
