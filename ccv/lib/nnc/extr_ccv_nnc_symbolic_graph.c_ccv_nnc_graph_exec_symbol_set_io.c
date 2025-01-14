
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ccv_nnc_tensor_symbol_t ;
struct TYPE_7__ {TYPE_5__* exec_symbol_info; } ;
typedef TYPE_1__ ccv_nnc_symbolic_graph_t ;
struct TYPE_8__ {scalar_t__ d; TYPE_1__* const graph; } ;
typedef TYPE_2__ ccv_nnc_graph_exec_symbol_t ;
typedef int ccv_nnc_graph_exec_symbol_info_t ;
struct TYPE_9__ {scalar_t__ rnum; } ;


 int _ccv_nnc_graph_exec_symbol_set_io (TYPE_1__* const,int * const,int const* const,int const,int const* const,int const) ;
 int assert (int) ;
 scalar_t__ ccv_array_get (TYPE_5__*,scalar_t__) ;

void ccv_nnc_graph_exec_symbol_set_io(ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_graph_exec_symbol_t exec, const ccv_nnc_tensor_symbol_t* const inputs, const int input_size, const ccv_nnc_tensor_symbol_t* const outputs, const int output_size)
{
 assert(exec.graph == graph);
 assert(exec.d >= 0);
 assert(exec.d < graph->exec_symbol_info->rnum);
 ccv_nnc_graph_exec_symbol_info_t* const exec_info = (ccv_nnc_graph_exec_symbol_info_t*)ccv_array_get(graph->exec_symbol_info, exec.d);
 _ccv_nnc_graph_exec_symbol_set_io(graph, exec_info, inputs, input_size, outputs, output_size);
}
