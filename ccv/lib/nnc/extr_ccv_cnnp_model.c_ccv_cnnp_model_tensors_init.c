
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint32_t ;
typedef int ccv_nnc_tensor_t ;
struct TYPE_14__ {int graph; } ;
typedef TYPE_3__ ccv_nnc_tensor_symbol_t ;
struct TYPE_15__ {int type; } ;
typedef TYPE_4__ ccv_nnc_tensor_param_t ;
typedef int ccv_nnc_symbolic_graph_t ;
struct TYPE_13__ {int ** retainables; int ** trainables; } ;
struct TYPE_12__ {int size; int v; } ;
struct TYPE_16__ {TYPE_2__ tensors; TYPE_10__* retainables; TYPE_10__* trainables; TYPE_1__ tensors_init; int parallel_count; } ;
typedef TYPE_5__ ccv_cnnp_compiled_data_t ;
struct TYPE_11__ {int rnum; } ;


 int CCV_TENSOR_SET_DEVICE_ID (int ,int) ;
 int assert (int) ;
 int cccalloc (int,int) ;
 scalar_t__ ccmalloc (int) ;
 scalar_t__ ccv_array_get (TYPE_10__*,int) ;
 int ccv_max (int ,int) ;
 void* ccv_nnc_tensor_new (int ,TYPE_4__,int ) ;
 int ccv_nnc_tensor_symbol_count (int const* const) ;
 TYPE_4__ ccv_nnc_tensor_symbol_params (int ,TYPE_3__ const) ;

void ccv_cnnp_model_tensors_init(const ccv_nnc_symbolic_graph_t* const graph, ccv_cnnp_compiled_data_t* const compiled_data)
{
 assert(!compiled_data->tensors.trainables);
 const int trainable_size = compiled_data->trainables->rnum;
 const int parallel_count = ccv_max(compiled_data->parallel_count, 1);
 const int retainable_size = compiled_data->retainables->rnum;
 compiled_data->tensors_init.size = ccv_nnc_tensor_symbol_count(graph);
 compiled_data->tensors_init.v = cccalloc(((compiled_data->tensors_init.size + 31) >> 5), sizeof(uint32_t));
 compiled_data->tensors.trainables = (ccv_nnc_tensor_t**)ccmalloc((sizeof(ccv_nnc_tensor_t*) * trainable_size + sizeof(ccv_nnc_tensor_t*) * retainable_size) * parallel_count);
 compiled_data->tensors.retainables = compiled_data->tensors.trainables + trainable_size * parallel_count;
 int i, j;
 for (i = 0; i < trainable_size; i++)
 {
  const ccv_nnc_tensor_symbol_t trainable = *(ccv_nnc_tensor_symbol_t*)ccv_array_get(compiled_data->trainables, i);
  ccv_nnc_tensor_param_t info = ccv_nnc_tensor_symbol_params(trainable.graph, trainable);
  CCV_TENSOR_SET_DEVICE_ID(info.type, 0);
  compiled_data->tensors.trainables[i] = ccv_nnc_tensor_new(0, info, 0);
  for (j = 1; j < parallel_count; j++)
  {
   CCV_TENSOR_SET_DEVICE_ID(info.type, j);
   compiled_data->tensors.trainables[i + j * trainable_size] = ccv_nnc_tensor_new(0, info, 0);
  }
 }
 for (i = 0; i < retainable_size; i++)
 {
  const ccv_nnc_tensor_symbol_t retained = *(ccv_nnc_tensor_symbol_t*)ccv_array_get(compiled_data->retainables, i);
  ccv_nnc_tensor_param_t info = ccv_nnc_tensor_symbol_params(retained.graph, retained);
  CCV_TENSOR_SET_DEVICE_ID(info.type, 0);
  compiled_data->tensors.retainables[i] = ccv_nnc_tensor_new(0, info, 0);
  for (j = 1; j < parallel_count; j++)
  {
   CCV_TENSOR_SET_DEVICE_ID(info.type, j);
   compiled_data->tensors.retainables[i + j * retainable_size] = ccv_nnc_tensor_new(0, info, 0);
  }
 }
}
