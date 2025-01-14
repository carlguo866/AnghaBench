
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int slice_count; } ;
struct TYPE_8__ {TYPE_1__ h264; } ;
struct vdpau_picture_context {TYPE_2__ info; } ;
struct TYPE_11__ {TYPE_4__* priv_data; } ;
struct TYPE_10__ {TYPE_3__* cur_pic_ptr; } ;
struct TYPE_9__ {struct vdpau_picture_context* hwaccel_picture_private; } ;
typedef TYPE_3__ H264Picture ;
typedef TYPE_4__ H264Context ;
typedef TYPE_5__ AVCodecContext ;


 int ff_vdpau_add_buffer (struct vdpau_picture_context*,int const*,int) ;
 int const* start_code_prefix ;

__attribute__((used)) static int vdpau_h264_decode_slice(AVCodecContext *avctx,
                                   const uint8_t *buffer, uint32_t size)
{
    H264Context *h = avctx->priv_data;
    H264Picture *pic = h->cur_pic_ptr;
    struct vdpau_picture_context *pic_ctx = pic->hwaccel_picture_private;
    int val;

    val = ff_vdpau_add_buffer(pic_ctx, start_code_prefix, 3);
    if (val)
        return val;

    val = ff_vdpau_add_buffer(pic_ctx, buffer, size);
    if (val)
        return val;

    pic_ctx->info.h264.slice_count++;
    return 0;
}
