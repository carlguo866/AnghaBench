
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union parameter_info {int dummy; } parameter_info ;
struct TYPE_2__ {int member_0; } ;
struct ipcp_formal {TYPE_1__ member_1; int member_0; } ;
struct ipa_jump_func {int dummy; } ;
struct cgraph_node {struct cgraph_edge* callees; } ;
struct cgraph_edge {struct cgraph_edge* next_callee; } ;
typedef int ipa_methodlist_p ;
typedef enum jump_func_type { ____Placeholder_jump_func_type } jump_func_type ;


 int get_type (struct ipa_jump_func*) ;
 int ipa_add_method (int *,struct cgraph_node*) ;
 struct cgraph_node* ipa_callsite_callee (struct cgraph_edge*) ;
 struct ipa_jump_func* ipa_callsite_param (struct cgraph_edge*,int) ;
 int ipa_callsite_param_count (struct cgraph_edge*) ;
 union parameter_info* ipa_jf_get_info_type (struct ipa_jump_func*) ;
 int ipa_methodlist_init () ;
 scalar_t__ ipa_methodlist_not_empty (int ) ;
 struct cgraph_node* ipa_remove_method (int *) ;
 scalar_t__ ipcp_cval_changed (struct ipcp_formal*,struct ipcp_formal*) ;
 int ipcp_cval_compute (struct ipcp_formal*,struct cgraph_node*,int,union parameter_info*) ;
 int ipcp_cval_meet (struct ipcp_formal*,struct ipcp_formal*,struct ipcp_formal*) ;
 struct ipcp_formal* ipcp_method_cval (struct cgraph_node*,int) ;
 int ipcp_method_cval_set (struct cgraph_node*,int,struct ipcp_formal*) ;

__attribute__((used)) static void
ipcp_propagate_stage (void)
{
  int i;
  struct ipcp_formal cval1 = { 0, {0} }, cval = { 0,{0} };
  struct ipcp_formal *cval2;
  struct cgraph_node *mt, *callee;
  struct cgraph_edge *cs;
  struct ipa_jump_func *jump_func;
  enum jump_func_type type;
  union parameter_info *info_type;
  ipa_methodlist_p wl;
  int count;


  wl = ipa_methodlist_init ();
  while (ipa_methodlist_not_empty (wl))
    {
      mt = ipa_remove_method (&wl);
      for (cs = mt->callees; cs; cs = cs->next_callee)
 {
   callee = ipa_callsite_callee (cs);
   count = ipa_callsite_param_count (cs);
   for (i = 0; i < count; i++)
     {
       jump_func = ipa_callsite_param (cs, i);
       type = get_type (jump_func);
       info_type = ipa_jf_get_info_type (jump_func);
       ipcp_cval_compute (&cval1, mt, type, info_type);
       cval2 = ipcp_method_cval (callee, i);
       ipcp_cval_meet (&cval, &cval1, cval2);
       if (ipcp_cval_changed (&cval, cval2))
  {
    ipcp_method_cval_set (callee, i, &cval);
    ipa_add_method (&wl, callee);
  }
     }
 }
    }
}
