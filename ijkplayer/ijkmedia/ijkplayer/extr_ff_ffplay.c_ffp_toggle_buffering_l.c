
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int buffering_on; int seek_buffering; scalar_t__ seek_req; } ;
typedef TYPE_1__ VideoState ;
struct TYPE_8__ {TYPE_1__* is; int packet_buffering; } ;
typedef TYPE_2__ FFPlayer ;


 int AV_LOG_DEBUG ;
 int FFP_MSG_BUFFERING_END ;
 int FFP_MSG_BUFFERING_START ;
 int av_log (TYPE_2__*,int ,char*) ;
 int ffp_notify_msg2 (TYPE_2__*,int ,int) ;
 int stream_update_pause_l (TYPE_2__*) ;

void ffp_toggle_buffering_l(FFPlayer *ffp, int buffering_on)
{
    if (!ffp->packet_buffering)
        return;

    VideoState *is = ffp->is;
    if (buffering_on && !is->buffering_on) {
        av_log(ffp, AV_LOG_DEBUG, "ffp_toggle_buffering_l: start\n");
        is->buffering_on = 1;
        stream_update_pause_l(ffp);
        if (is->seek_req) {
            is->seek_buffering = 1;
            ffp_notify_msg2(ffp, FFP_MSG_BUFFERING_START, 1);
        } else {
            ffp_notify_msg2(ffp, FFP_MSG_BUFFERING_START, 0);
        }
    } else if (!buffering_on && is->buffering_on){
        av_log(ffp, AV_LOG_DEBUG, "ffp_toggle_buffering_l: end\n");
        is->buffering_on = 0;
        stream_update_pause_l(ffp);
        if (is->seek_buffering) {
            is->seek_buffering = 0;
            ffp_notify_msg2(ffp, FFP_MSG_BUFFERING_END, 1);
        } else {
            ffp_notify_msg2(ffp, FFP_MSG_BUFFERING_END, 0);
        }
    }
}
