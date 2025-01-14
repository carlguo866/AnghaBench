
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htb_sched {int overlimits; } ;
struct htb_class {int cmode; scalar_t__ prio_activity; int overlimits; } ;
typedef int s64 ;
typedef enum htb_cmode { ____Placeholder_htb_cmode } htb_cmode ;


 int HTB_CANT_SEND ;
 int htb_activate_prios (struct htb_sched*,struct htb_class*) ;
 int htb_class_mode (struct htb_class*,int *) ;
 int htb_deactivate_prios (struct htb_sched*,struct htb_class*) ;

__attribute__((used)) static void
htb_change_class_mode(struct htb_sched *q, struct htb_class *cl, s64 *diff)
{
 enum htb_cmode new_mode = htb_class_mode(cl, diff);

 if (new_mode == cl->cmode)
  return;

 if (new_mode == HTB_CANT_SEND) {
  cl->overlimits++;
  q->overlimits++;
 }

 if (cl->prio_activity) {
  if (cl->cmode != HTB_CANT_SEND)
   htb_deactivate_prios(q, cl);
  cl->cmode = new_mode;
  if (new_mode != HTB_CANT_SEND)
   htb_activate_prios(q, cl);
 } else
  cl->cmode = new_mode;
}
