
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* int32_t ;
struct TYPE_6__ {scalar_t__ u32; } ;
struct TYPE_8__ {TYPE_1__ val; } ;
struct TYPE_7__ {void* output_operand_index; void** input_operand_indexes; TYPE_3__* params; } ;
typedef TYPE_2__ Layer ;
typedef TYPE_3__ DnnLayerMaximumParams ;
typedef int AVIOContext ;


 TYPE_3__* av_malloc (int) ;
 scalar_t__ avio_rl32 (int *) ;

int dnn_load_layer_maximum(Layer *layer, AVIOContext *model_file_context, int file_size)
{
    DnnLayerMaximumParams *params;
    int dnn_size = 0;
    params = av_malloc(sizeof(*params));
    if (!params)
        return 0;

    params->val.u32 = avio_rl32(model_file_context);
    dnn_size += 4;
    layer->params = params;
    layer->input_operand_indexes[0] = (int32_t)avio_rl32(model_file_context);
    layer->output_operand_index = (int32_t)avio_rl32(model_file_context);
    dnn_size += 8;

    return dnn_size;
}
