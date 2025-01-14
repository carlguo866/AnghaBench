
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_25__ {int is_disabled; TYPE_5__** outputs; TYPE_2__* priv; } ;
struct TYPE_24__ {int w; int h; int format; TYPE_6__* dst; } ;
struct TYPE_23__ {scalar_t__ pict_type; int * linesize; scalar_t__* data; int height; int width; } ;
struct TYPE_22__ {TYPE_1__* comp; } ;
struct TYPE_21__ {int non_b_qp_alloc_size; int hsub; int vsub; scalar_t__ qp; int * non_b_qp_table; int use_bframe_qp; scalar_t__ log2_count; int qscale_type; } ;
struct TYPE_20__ {int depth; } ;
typedef TYPE_2__ SPPContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AVERROR (int ) ;
 void* AV_CEIL_RSHIFT (int,int) ;
 scalar_t__ AV_PICTURE_TYPE_B ;
 int ENOMEM ;
 int FFALIGN (int,int) ;
 int av_assert0 (int) ;
 int av_frame_copy_props (TYPE_4__*,TYPE_4__*) ;
 int av_frame_free (TYPE_4__**) ;
 int * av_frame_get_qp_table (TYPE_4__*,int*,int *) ;
 int av_frame_is_writable (TYPE_4__*) ;
 int av_image_copy_plane (scalar_t__,int ,scalar_t__,int ,int const,int const) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 int av_reallocp_array (int **,int,int) ;
 int emms_c () ;
 int ff_filter_frame (TYPE_5__*,TYPE_4__*) ;
 TYPE_4__* ff_get_video_buffer (TYPE_5__*,int const,int const) ;
 int filter (TYPE_2__*,scalar_t__,scalar_t__,int ,int ,int const,int const,int const*,int,int,int const) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    SPPContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out = in;
    int qp_stride = 0;
    const int8_t *qp_table = ((void*)0);
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    const int depth = desc->comp[0].depth;





    if (!s->qp) {
        qp_table = av_frame_get_qp_table(in, &qp_stride, &s->qscale_type);

        if (qp_table && !s->use_bframe_qp && in->pict_type != AV_PICTURE_TYPE_B) {
            int w, h;



            if (!qp_stride) {
                w = AV_CEIL_RSHIFT(inlink->w, 4);
                h = 1;
            } else {
                w = qp_stride;
                h = AV_CEIL_RSHIFT(inlink->h, 4);
            }

            if (w * h > s->non_b_qp_alloc_size) {
                int ret = av_reallocp_array(&s->non_b_qp_table, w, h);
                if (ret < 0) {
                    s->non_b_qp_alloc_size = 0;
                    return ret;
                }
                s->non_b_qp_alloc_size = w * h;
            }

            av_assert0(w * h <= s->non_b_qp_alloc_size);
            memcpy(s->non_b_qp_table, qp_table, w * h);
        }
    }

    if (s->log2_count && !ctx->is_disabled) {
        if (!s->use_bframe_qp && s->non_b_qp_table)
            qp_table = s->non_b_qp_table;

        if (qp_table || s->qp) {
            const int cw = AV_CEIL_RSHIFT(inlink->w, s->hsub);
            const int ch = AV_CEIL_RSHIFT(inlink->h, s->vsub);



            if (!av_frame_is_writable(in) || (inlink->w & 7) || (inlink->h & 7)) {
                const int aligned_w = FFALIGN(inlink->w, 8);
                const int aligned_h = FFALIGN(inlink->h, 8);

                out = ff_get_video_buffer(outlink, aligned_w, aligned_h);
                if (!out) {
                    av_frame_free(&in);
                    return AVERROR(ENOMEM);
                }
                av_frame_copy_props(out, in);
                out->width = in->width;
                out->height = in->height;
            }

            filter(s, out->data[0], in->data[0], out->linesize[0], in->linesize[0], inlink->w, inlink->h, qp_table, qp_stride, 1, depth);

            if (out->data[2]) {
                filter(s, out->data[1], in->data[1], out->linesize[1], in->linesize[1], cw, ch, qp_table, qp_stride, 0, depth);
                filter(s, out->data[2], in->data[2], out->linesize[2], in->linesize[2], cw, ch, qp_table, qp_stride, 0, depth);
            }
            emms_c();
        }
    }

    if (in != out) {
        if (in->data[3])
            av_image_copy_plane(out->data[3], out->linesize[3],
                                in ->data[3], in ->linesize[3],
                                inlink->w, inlink->h);
        av_frame_free(&in);
    }
    return ff_filter_frame(outlink, out);
}
