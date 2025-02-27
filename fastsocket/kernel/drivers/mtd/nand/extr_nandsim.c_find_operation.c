
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct nandsim {int options; size_t npstates; int state; int* pstates; int* op; int stateidx; int nxstate; } ;
struct TYPE_2__ {int reqopts; int* states; } ;


 int NS_DBG (char*,...) ;
 int NS_OPER_NUM ;
 scalar_t__ NS_STATE (int) ;
 int NS_STATUS_FAILED (struct nandsim*) ;
 int STATE_ADDR_MASK ;
 int get_state_name (int) ;
 TYPE_1__* ops ;
 int switch_to_ready_state (struct nandsim*,int ) ;

__attribute__((used)) static int find_operation(struct nandsim *ns, uint32_t flag)
{
 int opsfound = 0;
 int i, j, idx = 0;

 for (i = 0; i < NS_OPER_NUM; i++) {

  int found = 1;

  if (!(ns->options & ops[i].reqopts))

   continue;

  if (flag) {
   if (!(ops[i].states[ns->npstates] & STATE_ADDR_MASK))
    continue;
  } else {
   if (NS_STATE(ns->state) != NS_STATE(ops[i].states[ns->npstates]))
    continue;
  }

  for (j = 0; j < ns->npstates; j++)
   if (NS_STATE(ops[i].states[j]) != NS_STATE(ns->pstates[j])
    && (ns->options & ops[idx].reqopts)) {
    found = 0;
    break;
   }

  if (found) {
   idx = i;
   opsfound += 1;
  }
 }

 if (opsfound == 1) {

  ns->op = &ops[idx].states[0];
  if (flag) {







   ns->stateidx = ns->npstates - 1;
  } else {
   ns->stateidx = ns->npstates;
  }
  ns->npstates = 0;
  ns->state = ns->op[ns->stateidx];
  ns->nxstate = ns->op[ns->stateidx + 1];
  NS_DBG("find_operation: operation found, index: %d, state: %s, nxstate %s\n",
    idx, get_state_name(ns->state), get_state_name(ns->nxstate));
  return 0;
 }

 if (opsfound == 0) {

  if (ns->npstates != 0) {
   NS_DBG("find_operation: no operation found, try again with state %s\n",
     get_state_name(ns->state));
   ns->npstates = 0;
   return find_operation(ns, 0);

  }
  NS_DBG("find_operation: no operations found\n");
  switch_to_ready_state(ns, NS_STATUS_FAILED(ns));
  return -2;
 }

 if (flag) {

  NS_DBG("find_operation: BUG, operation must be known if address is input\n");
  return -2;
 }

 NS_DBG("find_operation: there is still ambiguity\n");

 ns->pstates[ns->npstates++] = ns->state;

 return -1;
}
