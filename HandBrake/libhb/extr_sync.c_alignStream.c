
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_22__ {TYPE_3__* audio; } ;
struct TYPE_24__ {scalar_t__ type; int in_queue; TYPE_4__ audio; } ;
typedef TYPE_6__ sync_stream_t ;
struct TYPE_25__ {int stream_count; TYPE_6__* streams; } ;
typedef TYPE_7__ sync_common_t ;
typedef scalar_t__ int64_t ;
struct TYPE_23__ {scalar_t__ start; scalar_t__ stop; int duration; } ;
struct TYPE_26__ {TYPE_5__ s; struct TYPE_26__* next; } ;
typedef TYPE_8__ hb_buffer_t ;
struct TYPE_19__ {int codec; } ;
struct TYPE_20__ {TYPE_1__ out; } ;
struct TYPE_21__ {TYPE_2__ config; } ;


 TYPE_8__* CreateBlackBuf (TYPE_6__*,scalar_t__,scalar_t__) ;
 TYPE_8__* CreateSilenceBuf (TYPE_6__*,scalar_t__,scalar_t__) ;
 int HB_ACODEC_PASS_FLAG ;
 scalar_t__ SYNC_TYPE_AUDIO ;
 scalar_t__ SYNC_TYPE_SUBTITLE ;
 scalar_t__ SYNC_TYPE_VIDEO ;
 int hb_buffer_close (TYPE_8__**) ;
 scalar_t__ hb_list_count (int ) ;
 int hb_list_insert (int ,int,TYPE_8__*) ;
 TYPE_8__* hb_list_item (int ,int ) ;
 int hb_list_rem (int ,TYPE_8__*) ;

__attribute__((used)) static void alignStream( sync_common_t * common, sync_stream_t * stream,
                         int64_t pts )
{
    if (hb_list_count(stream->in_queue) <= 0 ||
        stream->type == SYNC_TYPE_SUBTITLE)
    {
        return;
    }

    hb_buffer_t * buf = hb_list_item(stream->in_queue, 0);
    int64_t gap = buf->s.start - pts;

    if (gap == 0)
    {
        return;
    }
    if (gap < 0)
    {
        int ii;


        for (ii = 0; ii < common->stream_count; ii++)
        {
            sync_stream_t * other_stream = &common->streams[ii];
            if (stream == other_stream)
            {
                continue;
            }
            while (hb_list_count(other_stream->in_queue) > 0)
            {
                buf = hb_list_item(other_stream->in_queue, 0);
                if (buf->s.start < pts)
                {
                    hb_list_rem(other_stream->in_queue, buf);
                    hb_buffer_close(&buf);
                }
                else
                {

                    alignStream(common, other_stream, pts);
                    break;
                }
            }
        }
    }
    else
    {
        hb_buffer_t * blank_buf = ((void*)0);


        if (stream->type == SYNC_TYPE_AUDIO)
        {

            if (!(stream->audio.audio->config.out.codec & HB_ACODEC_PASS_FLAG))
            {
                blank_buf = CreateSilenceBuf(stream, gap, pts);
            }
        }
        else if (stream->type == SYNC_TYPE_VIDEO)
        {
            blank_buf = CreateBlackBuf(stream, gap, pts);
        }

        int64_t last_stop = pts;
        hb_buffer_t * next;
        int pos;
        for (pos = 0; blank_buf != ((void*)0); blank_buf = next, pos++)
        {
            last_stop = blank_buf->s.stop;
            next = blank_buf->next;
            blank_buf->next = ((void*)0);
            hb_list_insert(stream->in_queue, pos, blank_buf);
        }
        if (stream->type == SYNC_TYPE_VIDEO && last_stop < buf->s.start)
        {

            buf->s.duration += buf->s.start - last_stop;
            buf->s.start = last_stop;
        }
    }
}
