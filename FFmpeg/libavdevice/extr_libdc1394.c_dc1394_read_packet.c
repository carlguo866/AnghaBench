
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct dc1394_data {int current_frame; int frame_rate; int stream_index; TYPE_5__* frame; int camera; } ;
struct TYPE_10__ {int image_bytes; scalar_t__ image; } ;
struct TYPE_9__ {struct dc1394_data* priv_data; } ;
struct TYPE_8__ {int size; int pts; int stream_index; int flags; int * data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_PKT_FLAG_KEY ;
 int DC1394_CAPTURE_POLICY_WAIT ;
 int DC1394_SUCCESS ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int dc1394_capture_dequeue (int ,int ,TYPE_5__**) ;
 int dc1394_capture_enqueue (int ,TYPE_5__*) ;

__attribute__((used)) static int dc1394_read_packet(AVFormatContext *c, AVPacket *pkt)
{
    struct dc1394_data *dc1394 = c->priv_data;
    int res;


    if (dc1394->current_frame++) {
        if (dc1394_capture_enqueue(dc1394->camera, dc1394->frame) != DC1394_SUCCESS)
            av_log(c, AV_LOG_ERROR, "failed to release %d frame\n", dc1394->current_frame);
    }

    res = dc1394_capture_dequeue(dc1394->camera, DC1394_CAPTURE_POLICY_WAIT, &dc1394->frame);
    if (res == DC1394_SUCCESS) {
        pkt->data = (uint8_t *)dc1394->frame->image;
        pkt->size = dc1394->frame->image_bytes;
        pkt->pts = dc1394->current_frame * 1000000 / dc1394->frame_rate;
        pkt->flags |= AV_PKT_FLAG_KEY;
        pkt->stream_index = dc1394->stream_index;
    } else {
        av_log(c, AV_LOG_ERROR, "DMA capture failed\n");
        return AVERROR_INVALIDDATA;
    }

    return pkt->size;
}
