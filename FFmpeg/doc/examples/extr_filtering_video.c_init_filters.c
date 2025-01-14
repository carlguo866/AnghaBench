
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef int args ;
struct TYPE_12__ {int num; int den; } ;
struct TYPE_16__ {int width; int height; int pix_fmt; TYPE_2__ sample_aspect_ratio; } ;
struct TYPE_15__ {TYPE_1__** streams; } ;
struct TYPE_14__ {int * next; scalar_t__ pad_idx; void* filter_ctx; void* name; } ;
struct TYPE_13__ {int num; int den; } ;
struct TYPE_11__ {TYPE_3__ time_base; } ;
typedef TYPE_3__ AVRational ;
typedef TYPE_4__ AVFilterInOut ;
typedef int AVFilter ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_OPT_SEARCH_CHILDREN ;
 int AV_PIX_FMT_GRAY8 ;
 int AV_PIX_FMT_NONE ;
 int ENOMEM ;
 int av_log (int *,int ,char*) ;
 int av_opt_set_int_list (void*,char*,int*,int,int ) ;
 void* av_strdup (char*) ;
 int * avfilter_get_by_name (char*) ;
 int avfilter_graph_alloc () ;
 int avfilter_graph_config (int ,int *) ;
 int avfilter_graph_create_filter (void**,int const*,char*,char*,int *,int ) ;
 int avfilter_graph_parse_ptr (int ,char const*,TYPE_4__**,TYPE_4__**,int *) ;
 TYPE_4__* avfilter_inout_alloc () ;
 int avfilter_inout_free (TYPE_4__**) ;
 void* buffersink_ctx ;
 void* buffersrc_ctx ;
 TYPE_6__* dec_ctx ;
 int filter_graph ;
 TYPE_5__* fmt_ctx ;
 int snprintf (char*,int,char*,int,int,int,int,int,int,int) ;
 size_t video_stream_index ;

__attribute__((used)) static int init_filters(const char *filters_descr)
{
    char args[512];
    int ret = 0;
    const AVFilter *buffersrc = avfilter_get_by_name("buffer");
    const AVFilter *buffersink = avfilter_get_by_name("buffersink");
    AVFilterInOut *outputs = avfilter_inout_alloc();
    AVFilterInOut *inputs = avfilter_inout_alloc();
    AVRational time_base = fmt_ctx->streams[video_stream_index]->time_base;
    enum AVPixelFormat pix_fmts[] = { AV_PIX_FMT_GRAY8, AV_PIX_FMT_NONE };

    filter_graph = avfilter_graph_alloc();
    if (!outputs || !inputs || !filter_graph) {
        ret = AVERROR(ENOMEM);
        goto end;
    }


    snprintf(args, sizeof(args),
            "video_size=%dx%d:pix_fmt=%d:time_base=%d/%d:pixel_aspect=%d/%d",
            dec_ctx->width, dec_ctx->height, dec_ctx->pix_fmt,
            time_base.num, time_base.den,
            dec_ctx->sample_aspect_ratio.num, dec_ctx->sample_aspect_ratio.den);

    ret = avfilter_graph_create_filter(&buffersrc_ctx, buffersrc, "in",
                                       args, ((void*)0), filter_graph);
    if (ret < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Cannot create buffer source\n");
        goto end;
    }


    ret = avfilter_graph_create_filter(&buffersink_ctx, buffersink, "out",
                                       ((void*)0), ((void*)0), filter_graph);
    if (ret < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Cannot create buffer sink\n");
        goto end;
    }

    ret = av_opt_set_int_list(buffersink_ctx, "pix_fmts", pix_fmts,
                              AV_PIX_FMT_NONE, AV_OPT_SEARCH_CHILDREN);
    if (ret < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Cannot set output pixel format\n");
        goto end;
    }
    outputs->name = av_strdup("in");
    outputs->filter_ctx = buffersrc_ctx;
    outputs->pad_idx = 0;
    outputs->next = ((void*)0);







    inputs->name = av_strdup("out");
    inputs->filter_ctx = buffersink_ctx;
    inputs->pad_idx = 0;
    inputs->next = ((void*)0);

    if ((ret = avfilter_graph_parse_ptr(filter_graph, filters_descr,
                                    &inputs, &outputs, ((void*)0))) < 0)
        goto end;

    if ((ret = avfilter_graph_config(filter_graph, ((void*)0))) < 0)
        goto end;

end:
    avfilter_inout_free(&inputs);
    avfilter_inout_free(&outputs);

    return ret;
}
