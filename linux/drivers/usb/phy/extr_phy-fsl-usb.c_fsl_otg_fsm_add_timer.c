
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otg_fsm {int dummy; } ;
struct fsl_otg_timer {int dummy; } ;
typedef enum otg_fsm_timer { ____Placeholder_otg_fsm_timer } otg_fsm_timer ;


 int fsl_otg_add_timer (struct otg_fsm*,struct fsl_otg_timer*) ;
 struct fsl_otg_timer* fsl_otg_get_timer (int) ;

__attribute__((used)) static void fsl_otg_fsm_add_timer(struct otg_fsm *fsm, enum otg_fsm_timer t)
{
 struct fsl_otg_timer *timer;

 timer = fsl_otg_get_timer(t);
 if (!timer)
  return;

 fsl_otg_add_timer(fsm, timer);
}
