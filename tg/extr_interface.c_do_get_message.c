
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int msg_id; } ;


 int TLS ;
 int assert (int) ;
 int print_msg_gw ;
 int tgl_do_get_message (int ,int *,int ,struct in_ev*) ;

void do_get_message (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 1);
  if (ev) { ev->refcnt ++; }
  tgl_do_get_message (TLS, &args[0].msg_id, print_msg_gw, ev);
}
