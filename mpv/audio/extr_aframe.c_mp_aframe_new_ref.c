
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_aframe {int av_frame; int speed; int pts; int format; int chmap; } ;


 int abort () ;
 scalar_t__ av_frame_ref (int ,int ) ;
 int mp_aframe_config_copy (struct mp_aframe*,struct mp_aframe*) ;
 struct mp_aframe* mp_aframe_create () ;
 scalar_t__ mp_aframe_is_allocated (struct mp_aframe*) ;

struct mp_aframe *mp_aframe_new_ref(struct mp_aframe *frame)
{
    if (!frame)
        return ((void*)0);

    struct mp_aframe *dst = mp_aframe_create();

    dst->chmap = frame->chmap;
    dst->format = frame->format;
    dst->pts = frame->pts;
    dst->speed = frame->speed;

    if (mp_aframe_is_allocated(frame)) {
        if (av_frame_ref(dst->av_frame, frame->av_frame) < 0)
            abort();
    } else {

        mp_aframe_config_copy(dst, frame);
    }

    return dst;
}
