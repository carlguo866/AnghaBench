
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int target; void* last_response_time; void* last_query_sent_time; } ;


 int Targets ;
 int get_current_target () ;
 int has_pending_scripts () ;
 int lease_ready_flag ;
 void* precise_now ;
 int run_rpc_lease () ;

int rpcc_func_ready (struct connection *c) {
  c->last_query_sent_time = precise_now;
  c->last_response_time = precise_now;

  int target_fd = c->target - Targets;
  if (target_fd == get_current_target() && !has_pending_scripts()) {
    lease_ready_flag = 1;
    run_rpc_lease();
  }
  return 0;
}
