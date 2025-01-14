
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int ccv_nnc_tensor_symbol_t ;
struct TYPE_16__ {int tensor; } ;
typedef TYPE_1__ ccv_nnc_tensor_bind_t ;
typedef int ccv_nnc_tensor_arena_t ;
typedef int ccv_nnc_symbolic_graph_t ;
struct TYPE_17__ {int * graph; } ;
typedef TYPE_2__ ccv_nnc_symbolic_graph_prep_t ;
typedef int ccv_nnc_graph_t ;
typedef int ccv_nnc_graph_exec_symbol_t ;
typedef int ccv_nnc_graph_exec_arena_t ;


 int CCV_IS_TENSOR_MULTIVIEW (int) ;
 int _ccv_nnc_graph_exec_arena_fixup_pair_ref (int *,TYPE_2__*,int *) ;
 int * _ccv_nnc_graph_exec_arena_new (int const* const,int const* const,int const,int const* const,int const,TYPE_2__*,int *) ;
 int _ccv_nnc_graph_exec_arena_topsort (int *,int *) ;
 int _ccv_nnc_graph_fixup_pair (TYPE_2__*,TYPE_2__*) ;
 int _ccv_nnc_symbolic_graph_prep_dup_breakpoints_free (TYPE_2__*) ;
 int _ccv_nnc_symbolic_graph_prep_free (TYPE_2__*) ;
 TYPE_2__* _ccv_nnc_symbolic_graph_prep_new (int const* const,TYPE_1__ const* const,int const,int const* const,int const,int const* const,int const,int const* const,int const,int ,int ,int ,int ) ;
 int _ccv_nnc_symbolic_graph_prep_while_count_tensor (TYPE_2__*) ;
 int _ccv_nnc_tensor_arena_fixup_pair_ref_and_tape_var (int *,TYPE_2__*,int *) ;
 int * _ccv_nnc_tensor_arena_new (TYPE_2__*,int ,TYPE_1__ const* const,int const) ;
 int assert (int) ;

void ccv_nnc_symbolic_graph_compile(const ccv_nnc_symbolic_graph_t* const symbolic_graph, const ccv_nnc_tensor_bind_t* const tensor_binds, const int tensor_bind_size, const ccv_nnc_tensor_symbol_t* const outputs, const int output_size, const ccv_nnc_graph_exec_symbol_t* const sources, const int source_size, const ccv_nnc_graph_exec_symbol_t* const destinations, const int destination_size, ccv_nnc_graph_t** const graph_ref, ccv_nnc_tensor_arena_t** const tensor_arena_ref, ccv_nnc_graph_exec_arena_t** const graph_exec_arena_ref)
{
 assert(graph_ref);
 assert(tensor_arena_ref);
 assert(graph_exec_arena_ref);
 int i;

 for (i = 0; i < tensor_bind_size; i++)
 {
  assert(tensor_binds[i].tensor);
  assert(!CCV_IS_TENSOR_MULTIVIEW(tensor_binds[i].tensor));
 }
 ccv_nnc_symbolic_graph_prep_t* graph_prep = _ccv_nnc_symbolic_graph_prep_new(symbolic_graph, tensor_binds, tensor_bind_size, outputs, output_size, sources, source_size, destinations, destination_size, 0, 0, 0, 0);
 _ccv_nnc_symbolic_graph_prep_while_count_tensor(graph_prep);
 ccv_nnc_tensor_arena_t* tensor_arena = _ccv_nnc_tensor_arena_new(graph_prep, 0, tensor_binds, tensor_bind_size);
 _ccv_nnc_tensor_arena_fixup_pair_ref_and_tape_var(tensor_arena, graph_prep, tensor_arena);
 *tensor_arena_ref = tensor_arena;

 _ccv_nnc_graph_fixup_pair(graph_prep, graph_prep);

 _ccv_nnc_symbolic_graph_prep_dup_breakpoints_free(graph_prep);
 *graph_ref = graph_prep->graph;
 ccv_nnc_graph_exec_arena_t* graph_exec_arena = _ccv_nnc_graph_exec_arena_new(symbolic_graph, sources, source_size, destinations, destination_size, graph_prep, tensor_arena);
 _ccv_nnc_graph_exec_arena_topsort(graph_prep->graph, graph_exec_arena);
 _ccv_nnc_graph_exec_arena_fixup_pair_ref(graph_exec_arena, graph_prep, graph_exec_arena);
 *graph_exec_arena_ref = graph_exec_arena;
 _ccv_nnc_symbolic_graph_prep_free(graph_prep);
}
