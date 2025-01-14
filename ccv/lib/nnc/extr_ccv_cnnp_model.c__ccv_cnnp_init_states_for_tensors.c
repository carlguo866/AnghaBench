
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ccv_nnc_tensor_t ;
struct TYPE_11__ {int d; } ;
typedef TYPE_3__ ccv_nnc_tensor_symbol_t ;
struct TYPE_12__ {int parallel_count; int * graph; TYPE_2__* compiled_data; int * tensor_arena; } ;
typedef TYPE_4__ ccv_nnc_tensor_init_states_t ;
typedef int ccv_nnc_tensor_arena_t ;
typedef int ccv_nnc_symbolic_graph_t ;
typedef int ccv_nnc_hint_t ;
typedef int ccv_nnc_cmd_t ;
struct TYPE_9__ {int const size; unsigned int* v; } ;
struct TYPE_10__ {TYPE_1__ tensors_init; } ;


 int const CMD_DATA_TRANSFER_FORWARD () ;
 int assert (int) ;
 int ccv_nnc_cmd_exec (int const,int const,int const,int * const*,int,int * const*,int,int ) ;
 int const ccv_nnc_no_hint ;
 int * ccv_nnc_tensor_from_symbol (int * const,TYPE_3__ const) ;
 TYPE_3__ const ccv_nnc_tensor_symbol_copy (int const* const,TYPE_3__ const,int) ;

__attribute__((used)) static void _ccv_cnnp_init_states_for_tensors(void* const context, const ccv_nnc_cmd_t cmd, const ccv_nnc_hint_t hint, const int flags, ccv_nnc_tensor_t* const input, const ccv_nnc_tensor_symbol_t output_symbol)
{
 ccv_nnc_tensor_init_states_t* const tensor_init_states = (ccv_nnc_tensor_init_states_t*)context;
 ccv_nnc_tensor_arena_t* const tensor_arena = tensor_init_states->tensor_arena;
 ccv_nnc_tensor_t* const output_tensor = ccv_nnc_tensor_from_symbol(tensor_arena, output_symbol);
 if (!output_tensor)
  return;
 const int d = output_symbol.d;
 assert(d < tensor_init_states->compiled_data->tensors_init.size);
 if (tensor_init_states->compiled_data->tensors_init.v[d >> 5] & (1u << (d & 0x1f)))
  return;
 tensor_init_states->compiled_data->tensors_init.v[d >> 5] |= (1u << (d & 0x1f));
 ccv_nnc_cmd_exec(cmd, hint, flags, &input, input ? 1 : 0, &output_tensor, 1, 0);
 const ccv_nnc_symbolic_graph_t* const graph = tensor_init_states->graph;
 const int parallel_count = tensor_init_states->parallel_count;
 int i;
 for (i = 1; i < parallel_count; i++)
 {
  ccv_nnc_tensor_t* const copy = ccv_nnc_tensor_from_symbol(tensor_arena, ccv_nnc_tensor_symbol_copy(graph, output_symbol, i));
  if (copy)
   ccv_nnc_cmd_exec(CMD_DATA_TRANSFER_FORWARD(), ccv_nnc_no_hint, 0, &output_tensor, 1, &copy, 1, 0);
 }
}
