
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {scalar_t__ type; int id_; } ;
struct TYPE_5__ {scalar_t__ type; int id_; } ;
struct TYPE_7__ {int exclusive; int weight_m1; TYPE_2__ dependency; TYPE_1__ prioritized; } ;
typedef TYPE_3__ h2o_http3_priority_frame_t ;


 int H2O_HTTP3_FRAME_TYPE_PRIORITY ;
 scalar_t__ H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT ;
 int H2O_HTTP3_PRIORITY_FRAME_CAPACITY ;
 int assert (int) ;
 int* quicly_encodev (int*,int ) ;

uint8_t *h2o_http3_encode_priority_frame(uint8_t *dst, const h2o_http3_priority_frame_t *frame)
{
    assert(frame->prioritized.type != H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT);
    uint8_t *base = dst;

    *dst++ = H2O_HTTP3_FRAME_TYPE_PRIORITY;
    ++dst;
    *dst++ = ((uint8_t)frame->prioritized.type << 6) | ((uint8_t)frame->dependency.type << 4) | (frame->exclusive << 3);
    dst = quicly_encodev(dst, frame->prioritized.id_);
    if (frame->dependency.type != H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT)
        dst = quicly_encodev(dst, frame->dependency.id_);
    *dst++ = frame->weight_m1;
    base[1] = dst - (base + 2);

    assert(dst - base < H2O_HTTP3_PRIORITY_FRAME_CAPACITY);
    return dst;
}
