
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_24__ {scalar_t__ data; } ;
struct TYPE_23__ {scalar_t__ extra_hw_frames; TYPE_6__* hw_device_ctx; TYPE_4__** inputs; TYPE_1__* priv; } ;
struct TYPE_22__ {scalar_t__ format; int h; int w; TYPE_6__* hw_frames_ctx; TYPE_5__* src; } ;
struct TYPE_21__ {scalar_t__ format; scalar_t__ sw_format; scalar_t__ initial_pool_size; int height; int width; TYPE_6__* device_ref; } ;
struct TYPE_20__ {int flags; } ;
struct TYPE_19__ {int reverse; TYPE_6__* hwframes_ref; int mode; scalar_t__ derive_device_type; } ;
typedef TYPE_1__ HWMapContext ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef TYPE_3__ AVHWFramesContext ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;
typedef TYPE_6__ AVBufferRef ;


 int AVERROR (int ) ;
 int AV_HWDEVICE_TYPE_NONE ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_FLAG_HWACCEL ;
 int EINVAL ;
 int ENOMEM ;
 void* av_buffer_ref (TYPE_6__*) ;
 int av_buffer_unref (TYPE_6__**) ;
 int av_get_pix_fmt_name (scalar_t__) ;
 int av_hwdevice_ctx_create_derived (TYPE_6__**,int,TYPE_6__*,int ) ;
 int av_hwdevice_find_type_by_name (scalar_t__) ;
 void* av_hwframe_ctx_alloc (TYPE_6__*) ;
 int av_hwframe_ctx_create_derived (TYPE_6__**,scalar_t__,TYPE_6__*,TYPE_6__*,int ) ;
 int av_hwframe_ctx_init (TYPE_6__*) ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 TYPE_2__* av_pix_fmt_desc_get (scalar_t__) ;

__attribute__((used)) static int hwmap_config_output(AVFilterLink *outlink)
{
    AVFilterContext *avctx = outlink->src;
    HWMapContext *ctx = avctx->priv;
    AVFilterLink *inlink = avctx->inputs[0];
    AVHWFramesContext *hwfc;
    AVBufferRef *device;
    const AVPixFmtDescriptor *desc;
    int err, device_is_derived;

    av_log(avctx, AV_LOG_DEBUG, "Configure hwmap %s -> %s.\n",
           av_get_pix_fmt_name(inlink->format),
           av_get_pix_fmt_name(outlink->format));

    av_buffer_unref(&ctx->hwframes_ref);

    device = avctx->hw_device_ctx;
    device_is_derived = 0;

    if (inlink->hw_frames_ctx) {
        hwfc = (AVHWFramesContext*)inlink->hw_frames_ctx->data;

        if (ctx->derive_device_type) {
            enum AVHWDeviceType type;

            type = av_hwdevice_find_type_by_name(ctx->derive_device_type);
            if (type == AV_HWDEVICE_TYPE_NONE) {
                av_log(avctx, AV_LOG_ERROR, "Invalid device type.\n");
                err = AVERROR(EINVAL);
                goto fail;
            }

            err = av_hwdevice_ctx_create_derived(&device, type,
                                                 hwfc->device_ref, 0);
            if (err < 0) {
                av_log(avctx, AV_LOG_ERROR, "Failed to created derived "
                       "device context: %d.\n", err);
                goto fail;
            }
            device_is_derived = 1;
        }

        desc = av_pix_fmt_desc_get(outlink->format);
        if (!desc) {
            err = AVERROR(EINVAL);
            goto fail;
        }

        if (inlink->format == hwfc->format &&
            (desc->flags & AV_PIX_FMT_FLAG_HWACCEL) &&
            !ctx->reverse) {



            if (!device) {
                av_log(avctx, AV_LOG_ERROR, "A device reference is "
                       "required to map to a hardware format.\n");
                err = AVERROR(EINVAL);
                goto fail;
            }

            err = av_hwframe_ctx_create_derived(&ctx->hwframes_ref,
                                                outlink->format,
                                                device,
                                                inlink->hw_frames_ctx,
                                                ctx->mode);
            if (err < 0) {
                av_log(avctx, AV_LOG_ERROR, "Failed to create derived "
                       "frames context: %d.\n", err);
                goto fail;
            }

        } else if (inlink->format == hwfc->format &&
                   (desc->flags & AV_PIX_FMT_FLAG_HWACCEL) &&
                   ctx->reverse) {




            AVBufferRef *source;
            AVHWFramesContext *frames;

            ctx->hwframes_ref = av_hwframe_ctx_alloc(device);
            if (!ctx->hwframes_ref) {
                err = AVERROR(ENOMEM);
                goto fail;
            }
            frames = (AVHWFramesContext*)ctx->hwframes_ref->data;

            frames->format = outlink->format;
            frames->sw_format = hwfc->sw_format;
            frames->width = hwfc->width;
            frames->height = hwfc->height;

            if (avctx->extra_hw_frames >= 0)
                frames->initial_pool_size = 2 + avctx->extra_hw_frames;

            err = av_hwframe_ctx_init(ctx->hwframes_ref);
            if (err < 0) {
                av_log(avctx, AV_LOG_ERROR, "Failed to initialise "
                       "target frames context: %d.\n", err);
                goto fail;
            }

            err = av_hwframe_ctx_create_derived(&source,
                                                inlink->format,
                                                hwfc->device_ref,
                                                ctx->hwframes_ref,
                                                ctx->mode);
            if (err < 0) {
                av_log(avctx, AV_LOG_ERROR, "Failed to create "
                       "derived source frames context: %d.\n", err);
                goto fail;
            }







            av_buffer_unref(&inlink->hw_frames_ctx);
            inlink->hw_frames_ctx = source;

        } else if ((outlink->format == hwfc->format &&
                    inlink->format == hwfc->sw_format) ||
                   inlink->format == hwfc->format) {



            ctx->hwframes_ref = av_buffer_ref(inlink->hw_frames_ctx);
            if (!ctx->hwframes_ref) {
                err = AVERROR(ENOMEM);
                goto fail;
            }

        } else {


            av_log(avctx, AV_LOG_ERROR, "Unsupported formats for "
                   "hwmap: from %s (%s) to %s.\n",
                   av_get_pix_fmt_name(inlink->format),
                   av_get_pix_fmt_name(hwfc->format),
                   av_get_pix_fmt_name(outlink->format));
            err = AVERROR(EINVAL);
            goto fail;
        }
    } else if (avctx->hw_device_ctx) {





        if (!device) {
            av_log(avctx, AV_LOG_ERROR, "A device reference is "
                   "required to create new frames with reverse "
                   "mapping.\n");
            err = AVERROR(EINVAL);
            goto fail;
        }

        ctx->reverse = 1;

        ctx->hwframes_ref = av_hwframe_ctx_alloc(device);
        if (!ctx->hwframes_ref) {
            err = AVERROR(ENOMEM);
            goto fail;
        }
        hwfc = (AVHWFramesContext*)ctx->hwframes_ref->data;

        hwfc->format = outlink->format;
        hwfc->sw_format = inlink->format;
        hwfc->width = inlink->w;
        hwfc->height = inlink->h;

        if (avctx->extra_hw_frames >= 0)
            hwfc->initial_pool_size = 2 + avctx->extra_hw_frames;

        err = av_hwframe_ctx_init(ctx->hwframes_ref);
        if (err < 0) {
            av_log(avctx, AV_LOG_ERROR, "Failed to create frame "
                   "context for reverse mapping: %d.\n", err);
            goto fail;
        }

    } else {
        av_log(avctx, AV_LOG_ERROR, "Mapping requires a hardware "
               "context (a device, or frames on input).\n");
        return AVERROR(EINVAL);
    }

    outlink->hw_frames_ctx = av_buffer_ref(ctx->hwframes_ref);
    if (!outlink->hw_frames_ctx) {
        err = AVERROR(ENOMEM);
        goto fail;
    }

    outlink->w = inlink->w;
    outlink->h = inlink->h;

    if (device_is_derived)
        av_buffer_unref(&device);
    return 0;

fail:
    if (device_is_derived)
        av_buffer_unref(&device);
    av_buffer_unref(&ctx->hwframes_ref);
    return err;
}
