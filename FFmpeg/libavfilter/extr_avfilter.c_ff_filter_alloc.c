
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int priv_size; scalar_t__ (* preinit ) (TYPE_1__*) ;int (* uninit ) (TYPE_1__*) ;int outputs; int inputs; int * priv_class; } ;
struct TYPE_11__ {int nb_inputs; int nb_outputs; struct TYPE_11__* internal; struct TYPE_11__* priv; struct TYPE_11__* output_pads; struct TYPE_11__* outputs; struct TYPE_11__* input_pads; struct TYPE_11__* inputs; int execute; int * name; TYPE_2__ const* filter; int * av_class; } ;
typedef int AVFilterPad ;
typedef int AVFilterLink ;
typedef TYPE_1__ AVFilterContext ;
typedef TYPE_2__ AVFilter ;
typedef int AVClass ;


 int av_free (TYPE_1__*) ;
 int av_freep (TYPE_1__**) ;
 void* av_malloc_array (int,int) ;
 void* av_mallocz (int) ;
 void* av_mallocz_array (int,int) ;
 int av_opt_set_defaults (TYPE_1__*) ;
 int * av_strdup (char const*) ;
 int avfilter_class ;
 void* avfilter_pad_count (int ) ;
 int default_execute ;
 int memcpy (TYPE_1__*,int ,int) ;
 scalar_t__ stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

AVFilterContext *ff_filter_alloc(const AVFilter *filter, const char *inst_name)
{
    AVFilterContext *ret;
    int preinited = 0;

    if (!filter)
        return ((void*)0);

    ret = av_mallocz(sizeof(AVFilterContext));
    if (!ret)
        return ((void*)0);

    ret->av_class = &avfilter_class;
    ret->filter = filter;
    ret->name = inst_name ? av_strdup(inst_name) : ((void*)0);
    if (filter->priv_size) {
        ret->priv = av_mallocz(filter->priv_size);
        if (!ret->priv)
            goto err;
    }
    if (filter->preinit) {
        if (filter->preinit(ret) < 0)
            goto err;
        preinited = 1;
    }

    av_opt_set_defaults(ret);
    if (filter->priv_class) {
        *(const AVClass**)ret->priv = filter->priv_class;
        av_opt_set_defaults(ret->priv);
    }

    ret->internal = av_mallocz(sizeof(*ret->internal));
    if (!ret->internal)
        goto err;
    ret->internal->execute = default_execute;

    ret->nb_inputs = avfilter_pad_count(filter->inputs);
    if (ret->nb_inputs ) {
        ret->input_pads = av_malloc_array(ret->nb_inputs, sizeof(AVFilterPad));
        if (!ret->input_pads)
            goto err;
        memcpy(ret->input_pads, filter->inputs, sizeof(AVFilterPad) * ret->nb_inputs);
        ret->inputs = av_mallocz_array(ret->nb_inputs, sizeof(AVFilterLink*));
        if (!ret->inputs)
            goto err;
    }

    ret->nb_outputs = avfilter_pad_count(filter->outputs);
    if (ret->nb_outputs) {
        ret->output_pads = av_malloc_array(ret->nb_outputs, sizeof(AVFilterPad));
        if (!ret->output_pads)
            goto err;
        memcpy(ret->output_pads, filter->outputs, sizeof(AVFilterPad) * ret->nb_outputs);
        ret->outputs = av_mallocz_array(ret->nb_outputs, sizeof(AVFilterLink*));
        if (!ret->outputs)
            goto err;
    }

    return ret;

err:
    if (preinited)
        filter->uninit(ret);
    av_freep(&ret->inputs);
    av_freep(&ret->input_pads);
    ret->nb_inputs = 0;
    av_freep(&ret->outputs);
    av_freep(&ret->output_pads);
    ret->nb_outputs = 0;
    av_freep(&ret->priv);
    av_freep(&ret->internal);
    av_free(ret);
    return ((void*)0);
}
