
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_24__ {scalar_t__ user; } ;
struct TYPE_23__ {int flow; int idx; TYPE_1__* old; TYPE_1__* cur; } ;
struct TYPE_22__ {int content; int type; } ;
struct TYPE_21__ {scalar_t__ data; } ;
typedef TYPE_1__ RGraphNode ;
typedef TYPE_2__ RAnalEsilDFGNode ;
typedef TYPE_3__ RAnalEsilDFG ;
typedef TYPE_4__ RAnalEsil ;
typedef int (* AddConstraintStringConsume1UseOldNewCB ) (int ,int ,int ,int ) ;


 int R_ANAL_ESIL_DFG_BLOCK_CONST ;
 int R_ANAL_ESIL_DFG_BLOCK_GENERATIVE ;
 int R_ANAL_ESIL_DFG_BLOCK_RESULT ;
 int const R_ANAL_ESIL_PARM_NUM ;
 int const R_ANAL_ESIL_PARM_REG ;
 TYPE_1__* _edf_reg_get (TYPE_3__*,char*) ;
 TYPE_1__* _edf_var_get (TYPE_3__*,char*) ;
 int _edf_var_set (TYPE_3__*,int ,TYPE_1__*) ;
 int free (char*) ;
 TYPE_2__* r_anal_esil_dfg_node_new (TYPE_3__*,char*) ;
 int r_anal_esil_get_parm_type (TYPE_4__*,char*) ;
 char* r_anal_esil_pop (TYPE_4__*) ;
 int r_anal_esil_push (TYPE_4__*,int ) ;
 int r_graph_add_edge (int ,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* r_graph_add_node (int ,TYPE_2__*) ;
 int r_strbuf_appendf (int ,char*,char const*) ;
 int r_strbuf_get (int ) ;

__attribute__((used)) static bool edf_consume_1_use_old_new_push_1(RAnalEsil *esil, const char *op_string, AddConstraintStringConsume1UseOldNewCB cb) {
 RAnalEsilDFG *edf = (RAnalEsilDFG *)esil->user;
 char *src = r_anal_esil_pop (esil);

 if (!src) {
  return 0;
 }
 RAnalEsilDFGNode *eop_node = r_anal_esil_dfg_node_new (edf, src);



 r_strbuf_appendf (eop_node->content, ",%s", op_string);
 RGraphNode *op_node = r_graph_add_node (edf->flow, eop_node);
 const int src_type = r_anal_esil_get_parm_type (esil, src);
 RGraphNode *src_node = ((void*)0);
 if (src_type == R_ANAL_ESIL_PARM_REG) {
  src_node = _edf_reg_get (edf, src);
 } else if (src_type == R_ANAL_ESIL_PARM_NUM) {
  RGraphNode *n_value = r_graph_add_node (edf->flow, r_anal_esil_dfg_node_new (edf, src));
  RAnalEsilDFGNode *ec_node = r_anal_esil_dfg_node_new (edf, src);
  ec_node->type = R_ANAL_ESIL_DFG_BLOCK_CONST;
  r_strbuf_appendf (ec_node->content, ":const_%d", edf->idx++);
  src_node = r_graph_add_node (edf->flow, ec_node);
  r_graph_add_edge (edf->flow, n_value, src_node);
 } else {
  src_node = _edf_var_get (edf, src);
 }
 free (src);

 r_graph_add_edge (edf->flow, src_node, op_node);

 RGraphNode *latest_new = edf->cur;
 RGraphNode *latest_old = edf->old;
 RAnalEsilDFGNode *result = r_anal_esil_dfg_node_new (edf, "result_");
 result->type = R_ANAL_ESIL_DFG_BLOCK_RESULT;
 r_strbuf_appendf (result->content, "%d", edf->idx++);
 if (cb) {
  RAnalEsilDFGNode *e_src_node = (RAnalEsilDFGNode *)src_node->data;
  RAnalEsilDFGNode *e_new_node = (RAnalEsilDFGNode *)latest_new->data;
  RAnalEsilDFGNode *e_old_node = (RAnalEsilDFGNode *)latest_old->data;
  cb (result->content, r_strbuf_get (e_src_node->content),
   r_strbuf_get (e_new_node->content), r_strbuf_get (e_old_node->content));
 }
 RGraphNode *result_node = r_graph_add_node (edf->flow, result);
 _edf_var_set (edf, r_strbuf_get (result->content), result_node);
 r_graph_add_edge (edf->flow, latest_new, op_node);
 r_graph_add_edge (edf->flow, latest_old, op_node);
 r_graph_add_edge (edf->flow, op_node, result_node);
 return r_anal_esil_push (esil, r_strbuf_get (result->content));
}
