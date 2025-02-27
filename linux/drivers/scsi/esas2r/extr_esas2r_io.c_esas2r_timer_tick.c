
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct esas2r_adapter {scalar_t__ last_tick_time; scalar_t__ chip_uptime; scalar_t__ heartbeat_time; int disable_cnt; int flags; } ;


 int AF_CHPRST_DETECTED ;
 int AF_CHPRST_NEEDED ;
 int AF_CHPRST_PENDING ;
 int AF_DISC_PENDING ;
 int AF_HEARTBEAT ;
 int AF_HEARTBEAT_ENB ;
 scalar_t__ ESAS2R_HEARTBEAT_TIME ;
 int ESAS2R_LOG_CRIT ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int esas2r_bugon () ;
 int esas2r_disc_check_complete (struct esas2r_adapter*) ;
 int esas2r_do_deferred_processes (struct esas2r_adapter*) ;
 int esas2r_force_interrupt (struct esas2r_adapter*) ;
 int esas2r_handle_pending_reset (struct esas2r_adapter*,scalar_t__) ;
 int esas2r_hdebug (char*) ;
 int esas2r_local_reset_adapter (struct esas2r_adapter*) ;
 int esas2r_log (int ,char*) ;
 int jiffies ;
 scalar_t__ jiffies_to_msecs (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void esas2r_timer_tick(struct esas2r_adapter *a)
{
 u32 currtime = jiffies_to_msecs(jiffies);
 u32 deltatime = currtime - a->last_tick_time;

 a->last_tick_time = currtime;


 if (a->chip_uptime &&
     !test_bit(AF_CHPRST_PENDING, &a->flags) &&
     !test_bit(AF_DISC_PENDING, &a->flags)) {
  if (deltatime >= a->chip_uptime)
   a->chip_uptime = 0;
  else
   a->chip_uptime -= deltatime;
 }

 if (test_bit(AF_CHPRST_PENDING, &a->flags)) {
  if (!test_bit(AF_CHPRST_NEEDED, &a->flags) &&
      !test_bit(AF_CHPRST_DETECTED, &a->flags))
   esas2r_handle_pending_reset(a, currtime);
 } else {
  if (test_bit(AF_DISC_PENDING, &a->flags))
   esas2r_disc_check_complete(a);
  if (test_bit(AF_HEARTBEAT_ENB, &a->flags)) {
   if (test_bit(AF_HEARTBEAT, &a->flags)) {
    if ((currtime - a->heartbeat_time) >=
        ESAS2R_HEARTBEAT_TIME) {
     clear_bit(AF_HEARTBEAT, &a->flags);
     esas2r_hdebug("heartbeat failed");
     esas2r_log(ESAS2R_LOG_CRIT,
         "heartbeat failed");
     esas2r_bugon();
     esas2r_local_reset_adapter(a);
    }
   } else {
    set_bit(AF_HEARTBEAT, &a->flags);
    a->heartbeat_time = currtime;
    esas2r_force_interrupt(a);
   }
  }
 }

 if (atomic_read(&a->disable_cnt) == 0)
  esas2r_do_deferred_processes(a);
}
