
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ timeout_fn ;
struct TYPE_8__ {unsigned long spinup; scalar_t__ select_delay; } ;
struct TYPE_7__ {unsigned long spinup_date; int flags; } ;
struct TYPE_6__ {int (* interrupt ) () ;int (* error ) () ;} ;
struct TYPE_5__ {int flags; int cmd_count; int * cmd; } ;


 TYPE_4__* DP ;
 TYPE_3__* DRS ;
 int FD_RAW_INTR ;
 int FD_RAW_NEED_DISK ;
 int FD_RAW_NO_MOTOR ;
 int FD_RAW_READ ;
 int FD_RAW_SPIN ;
 int FD_RAW_WRITE ;
 TYPE_2__* cont ;
 int debugt (char*) ;
 int do_floppy ;
 scalar_t__ fd_wait_for_completion (unsigned long,scalar_t__) ;
 int fd_watchdog () ;
 scalar_t__ floppy_start ;
 int inr ;
 scalar_t__ jiffies ;
 int main_command_interrupt ;
 int output_byte (int ) ;
 TYPE_1__* raw_cmd ;
 int reset_fdc () ;
 int result () ;
 int setup_DMA () ;
 int stub1 () ;
 int stub2 () ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;

__attribute__((used)) static void setup_rw_floppy(void)
{
 int i;
 int r;
 int flags;
 int dflags;
 unsigned long ready_date;
 timeout_fn function;

 flags = raw_cmd->flags;
 if (flags & (FD_RAW_READ | FD_RAW_WRITE))
  flags |= FD_RAW_INTR;

 if ((flags & FD_RAW_SPIN) && !(flags & FD_RAW_NO_MOTOR)) {
  ready_date = DRS->spinup_date + DP->spinup;




  if (time_after(ready_date, jiffies + DP->select_delay)) {
   ready_date -= DP->select_delay;
   function = (timeout_fn) floppy_start;
  } else
   function = (timeout_fn) setup_rw_floppy;


  if (fd_wait_for_completion(ready_date, function))
   return;
 }
 dflags = DRS->flags;

 if ((flags & FD_RAW_READ) || (flags & FD_RAW_WRITE))
  setup_DMA();

 if (flags & FD_RAW_INTR)
  do_floppy = main_command_interrupt;

 r = 0;
 for (i = 0; i < raw_cmd->cmd_count; i++)
  r |= output_byte(raw_cmd->cmd[i]);

 debugt("rw_command: ");

 if (r) {
  cont->error();
  reset_fdc();
  return;
 }

 if (!(flags & FD_RAW_INTR)) {
  inr = result();
  cont->interrupt();
 } else if (flags & FD_RAW_NEED_DISK)
  fd_watchdog();
}
