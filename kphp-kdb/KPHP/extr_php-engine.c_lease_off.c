
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ has_pending_scripts () ;
 scalar_t__ lease_ready_flag ;
 scalar_t__ lease_state ;
 scalar_t__ lst_off ;
 int rpc_main_target ;
 scalar_t__ rpct_ready (int ) ;

int lease_off (void) {
  assert (lease_state == lst_off);
  if (!lease_ready_flag) {
    return 0;
  }
  if (has_pending_scripts()) {
    return 0;
  }
  if (rpct_ready (rpc_main_target) >= 0) {
    lease_ready_flag = 0;
    return 1;
  }
  return 0;
}
