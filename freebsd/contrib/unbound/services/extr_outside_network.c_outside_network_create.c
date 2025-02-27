
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_randstate {int dummy; } ;
struct port_if {int dummy; } ;
struct port_comm {struct port_comm* next; int cp; } ;
struct TYPE_2__ {int tv_sec; int tv_usec; } ;
struct outside_network {size_t num_tcp; size_t unwanted_threshold; void (* unwanted_action ) (void*) ;int use_caps_for_id; int do_udp; int tcp_mss; int delayclose; scalar_t__ num_ip4; scalar_t__ num_ip6; struct port_if* ip4_ifs; struct port_if* ip6_ifs; struct port_comm* unused_fds; int udp_buff; struct comm_base* base; void* serviced; void* pending; TYPE_1__ delay_tv; void* unwanted_param; scalar_t__ want_to_quit; scalar_t__ svcd_overhead; struct dt_env* dtenv; void* sslctx; struct ub_randstate* rnd; struct infra_cache* infra; scalar_t__ num_tcp_outgoing; int now_tv; int now_secs; } ;
struct infra_cache {int dummy; } ;
struct dt_env {int dummy; } ;
struct comm_base {int dummy; } ;


 int calc_num46 (char**,int,int,int,scalar_t__*,scalar_t__*) ;
 scalar_t__ calloc (int,int) ;
 int comm_base_timept (struct comm_base*,int *,int *) ;
 int comm_point_create_udp (struct comm_base*,int,int ,int ,struct outside_network*) ;
 int create_pending_tcp (struct outside_network*,size_t) ;
 int free (struct port_comm*) ;
 int log_err (char*) ;
 int outnet_udp_cb ;
 int outside_network_delete (struct outside_network*) ;
 int pending_cmp ;
 void* rbtree_create (int ) ;
 int serviced_cmp ;
 int setup_if (struct port_if*,char*,int*,int,size_t) ;
 int sldns_buffer_new (size_t) ;
 scalar_t__ str_is_ip6 (char*) ;

struct outside_network*
outside_network_create(struct comm_base *base, size_t bufsize,
 size_t num_ports, char** ifs, int num_ifs, int do_ip4,
 int do_ip6, size_t num_tcp, struct infra_cache* infra,
 struct ub_randstate* rnd, int use_caps_for_id, int* availports,
 int numavailports, size_t unwanted_threshold, int tcp_mss,
 void (*unwanted_action)(void*), void* unwanted_param, int do_udp,
 void* sslctx, int delayclose, struct dt_env* dtenv)
{
 struct outside_network* outnet = (struct outside_network*)
  calloc(1, sizeof(struct outside_network));
 size_t k;
 if(!outnet) {
  log_err("malloc failed");
  return ((void*)0);
 }
 comm_base_timept(base, &outnet->now_secs, &outnet->now_tv);
 outnet->base = base;
 outnet->num_tcp = num_tcp;
 outnet->num_tcp_outgoing = 0;
 outnet->infra = infra;
 outnet->rnd = rnd;
 outnet->sslctx = sslctx;



 (void)dtenv;

 outnet->svcd_overhead = 0;
 outnet->want_to_quit = 0;
 outnet->unwanted_threshold = unwanted_threshold;
 outnet->unwanted_action = unwanted_action;
 outnet->unwanted_param = unwanted_param;
 outnet->use_caps_for_id = use_caps_for_id;
 outnet->do_udp = do_udp;
 outnet->tcp_mss = tcp_mss;

 if(delayclose) {
  outnet->delayclose = 1;
  outnet->delay_tv.tv_sec = delayclose/1000;
  outnet->delay_tv.tv_usec = (delayclose%1000)*1000;
 }

 if(numavailports == 0 || num_ports == 0) {
  log_err("no outgoing ports available");
  outside_network_delete(outnet);
  return ((void*)0);
 }

 do_ip6 = 0;

 calc_num46(ifs, num_ifs, do_ip4, do_ip6,
  &outnet->num_ip4, &outnet->num_ip6);
 if(outnet->num_ip4 != 0) {
  if(!(outnet->ip4_ifs = (struct port_if*)calloc(
   (size_t)outnet->num_ip4, sizeof(struct port_if)))) {
   log_err("malloc failed");
   outside_network_delete(outnet);
   return ((void*)0);
  }
 }
 if(outnet->num_ip6 != 0) {
  if(!(outnet->ip6_ifs = (struct port_if*)calloc(
   (size_t)outnet->num_ip6, sizeof(struct port_if)))) {
   log_err("malloc failed");
   outside_network_delete(outnet);
   return ((void*)0);
  }
 }
 if( !(outnet->udp_buff = sldns_buffer_new(bufsize)) ||
  !(outnet->pending = rbtree_create(pending_cmp)) ||
  !(outnet->serviced = rbtree_create(serviced_cmp)) ||
  !create_pending_tcp(outnet, bufsize)) {
  log_err("malloc failed");
  outside_network_delete(outnet);
  return ((void*)0);
 }


 for(k=0; k<num_ports; k++) {
  struct port_comm* pc;
  pc = (struct port_comm*)calloc(1, sizeof(*pc));
  if(!pc) {
   log_err("malloc failed");
   outside_network_delete(outnet);
   return ((void*)0);
  }
  pc->cp = comm_point_create_udp(outnet->base, -1,
   outnet->udp_buff, outnet_udp_cb, outnet);
  if(!pc->cp) {
   log_err("malloc failed");
   free(pc);
   outside_network_delete(outnet);
   return ((void*)0);
  }
  pc->next = outnet->unused_fds;
  outnet->unused_fds = pc;
 }


 if(num_ifs == 0) {
  if(do_ip4 && !setup_if(&outnet->ip4_ifs[0], "0.0.0.0",
   availports, numavailports, num_ports)) {
   log_err("malloc failed");
   outside_network_delete(outnet);
   return ((void*)0);
  }
  if(do_ip6 && !setup_if(&outnet->ip6_ifs[0], "::",
   availports, numavailports, num_ports)) {
   log_err("malloc failed");
   outside_network_delete(outnet);
   return ((void*)0);
  }
 } else {
  size_t done_4 = 0, done_6 = 0;
  int i;
  for(i=0; i<num_ifs; i++) {
   if(str_is_ip6(ifs[i]) && do_ip6) {
    if(!setup_if(&outnet->ip6_ifs[done_6], ifs[i],
     availports, numavailports, num_ports)){
     log_err("malloc failed");
     outside_network_delete(outnet);
     return ((void*)0);
    }
    done_6++;
   }
   if(!str_is_ip6(ifs[i]) && do_ip4) {
    if(!setup_if(&outnet->ip4_ifs[done_4], ifs[i],
     availports, numavailports, num_ports)){
     log_err("malloc failed");
     outside_network_delete(outnet);
     return ((void*)0);
    }
    done_4++;
   }
  }
 }
 return outnet;
}
