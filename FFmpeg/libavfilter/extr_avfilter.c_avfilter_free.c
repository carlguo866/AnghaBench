
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int nb_inputs; int nb_outputs; struct TYPE_12__* internal; struct TYPE_12__* var_values; int * enable; scalar_t__ command_queue; struct TYPE_12__* priv; struct TYPE_12__* outputs; struct TYPE_12__* inputs; struct TYPE_12__* output_pads; struct TYPE_12__* input_pads; struct TYPE_12__* name; int hw_device_ctx; TYPE_1__* filter; scalar_t__ graph; } ;
struct TYPE_11__ {scalar_t__ priv_class; int (* uninit ) (TYPE_2__*) ;} ;
typedef TYPE_2__ AVFilterContext ;


 int av_buffer_unref (int *) ;
 int av_expr_free (int *) ;
 int av_free (TYPE_2__*) ;
 int av_freep (TYPE_2__**) ;
 int av_opt_free (TYPE_2__*) ;
 int ff_command_queue_pop (TYPE_2__*) ;
 int ff_filter_graph_remove_filter (scalar_t__,TYPE_2__*) ;
 int free_link (TYPE_2__) ;
 int stub1 (TYPE_2__*) ;

void avfilter_free(AVFilterContext *filter)
{
    int i;

    if (!filter)
        return;

    if (filter->graph)
        ff_filter_graph_remove_filter(filter->graph, filter);

    if (filter->filter->uninit)
        filter->filter->uninit(filter);

    for (i = 0; i < filter->nb_inputs; i++) {
        free_link(filter->inputs[i]);
    }
    for (i = 0; i < filter->nb_outputs; i++) {
        free_link(filter->outputs[i]);
    }

    if (filter->filter->priv_class)
        av_opt_free(filter->priv);

    av_buffer_unref(&filter->hw_device_ctx);

    av_freep(&filter->name);
    av_freep(&filter->input_pads);
    av_freep(&filter->output_pads);
    av_freep(&filter->inputs);
    av_freep(&filter->outputs);
    av_freep(&filter->priv);
    while(filter->command_queue){
        ff_command_queue_pop(filter);
    }
    av_opt_free(filter);
    av_expr_free(filter->enable);
    filter->enable = ((void*)0);
    av_freep(&filter->var_values);
    av_freep(&filter->internal);
    av_free(filter);
}
