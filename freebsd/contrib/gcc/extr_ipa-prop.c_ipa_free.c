
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cgraph_node {struct cgraph_edge* callees; int * aux; struct cgraph_node* next; } ;
struct cgraph_edge {scalar_t__ aux; struct cgraph_edge* next_callee; } ;
struct TYPE_4__ {scalar_t__ ipa_param_map; } ;
struct TYPE_3__ {scalar_t__ ipa_mod; scalar_t__ ipa_param_tree; scalar_t__ ipcp_cval; } ;


 TYPE_2__* IPA_EDGE_REF (struct cgraph_edge*) ;
 TYPE_1__* IPA_NODE_REF (struct cgraph_node*) ;
 struct cgraph_node* cgraph_nodes ;
 int free (scalar_t__) ;

void
ipa_free (void)
{
  struct cgraph_node *node;
  struct cgraph_edge *cs;

  for (node = cgraph_nodes; node; node = node->next)
    {
      if (node->aux == ((void*)0))
 continue;
      if (IPA_NODE_REF (node)->ipcp_cval)
 free (IPA_NODE_REF (node)->ipcp_cval);
      if (IPA_NODE_REF (node)->ipa_param_tree)
 free (IPA_NODE_REF (node)->ipa_param_tree);
      if (IPA_NODE_REF (node)->ipa_mod)
 free (IPA_NODE_REF (node)->ipa_mod);
      for (cs = node->callees; cs; cs = cs->next_callee)
 {
   if (cs->aux)
     if (IPA_EDGE_REF (cs)->ipa_param_map)
       free (IPA_EDGE_REF (cs)->ipa_param_map);
 }
    }
}
