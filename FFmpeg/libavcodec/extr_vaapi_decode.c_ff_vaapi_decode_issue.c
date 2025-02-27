
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ VAStatus ;
struct TYPE_13__ {int nb_param_buffers; int nb_slices; int slice_buffers; scalar_t__ slices_allocated; int param_buffers; int output_surface; } ;
typedef TYPE_3__ VAAPIDecodePicture ;
struct TYPE_14__ {int va_context; TYPE_2__* hwctx; } ;
typedef TYPE_4__ VAAPIDecodeContext ;
struct TYPE_15__ {TYPE_1__* internal; } ;
struct TYPE_12__ {int driver_quirks; int display; } ;
struct TYPE_11__ {TYPE_4__* hwaccel_priv_data; } ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_VAAPI_DRIVER_QUIRK_RENDER_PARAM_BUFFERS ;
 scalar_t__ CONFIG_VAAPI_1 ;
 int EIO ;
 scalar_t__ VA_STATUS_SUCCESS ;
 int av_freep (int *) ;
 int av_log (TYPE_5__*,int ,char*,scalar_t__,...) ;
 int ff_vaapi_decode_destroy_buffers (TYPE_5__*,TYPE_3__*) ;
 scalar_t__ vaBeginPicture (int ,int ,int ) ;
 scalar_t__ vaEndPicture (int ,int ) ;
 int vaErrorStr (scalar_t__) ;
 scalar_t__ vaRenderPicture (int ,int ,int ,int) ;

int ff_vaapi_decode_issue(AVCodecContext *avctx,
                          VAAPIDecodePicture *pic)
{
    VAAPIDecodeContext *ctx = avctx->internal->hwaccel_priv_data;
    VAStatus vas;
    int err;

    av_log(avctx, AV_LOG_DEBUG, "Decode to surface %#x.\n",
           pic->output_surface);

    vas = vaBeginPicture(ctx->hwctx->display, ctx->va_context,
                         pic->output_surface);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to begin picture decode "
               "issue: %d (%s).\n", vas, vaErrorStr(vas));
        err = AVERROR(EIO);
        goto fail_with_picture;
    }

    vas = vaRenderPicture(ctx->hwctx->display, ctx->va_context,
                          pic->param_buffers, pic->nb_param_buffers);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to upload decode "
               "parameters: %d (%s).\n", vas, vaErrorStr(vas));
        err = AVERROR(EIO);
        goto fail_with_picture;
    }

    vas = vaRenderPicture(ctx->hwctx->display, ctx->va_context,
                          pic->slice_buffers, 2 * pic->nb_slices);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to upload slices: "
               "%d (%s).\n", vas, vaErrorStr(vas));
        err = AVERROR(EIO);
        goto fail_with_picture;
    }

    vas = vaEndPicture(ctx->hwctx->display, ctx->va_context);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to end picture decode "
               "issue: %d (%s).\n", vas, vaErrorStr(vas));
        err = AVERROR(EIO);
        if (CONFIG_VAAPI_1 || ctx->hwctx->driver_quirks &
            AV_VAAPI_DRIVER_QUIRK_RENDER_PARAM_BUFFERS)
            goto fail;
        else
            goto fail_at_end;
    }

    if (CONFIG_VAAPI_1 || ctx->hwctx->driver_quirks &
        AV_VAAPI_DRIVER_QUIRK_RENDER_PARAM_BUFFERS)
        ff_vaapi_decode_destroy_buffers(avctx, pic);

    err = 0;
    goto exit;

fail_with_picture:
    vas = vaEndPicture(ctx->hwctx->display, ctx->va_context);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to end picture decode "
               "after error: %d (%s).\n", vas, vaErrorStr(vas));
    }
fail:
    ff_vaapi_decode_destroy_buffers(avctx, pic);
fail_at_end:
exit:
    pic->nb_param_buffers = 0;
    pic->nb_slices = 0;
    pic->slices_allocated = 0;
    av_freep(&pic->slice_buffers);

    return err;
}
