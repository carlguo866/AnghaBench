
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa6588_command {int poll_mask; int * event_list; struct file* instance; } ;
struct file {struct bttv_fh* private_data; } ;
struct TYPE_2__ {int wait; } ;
struct bttv_fh {TYPE_1__ fh; struct bttv* btv; } ;
struct bttv {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLPRI ;
 int SAA6588_CMD_POLL ;
 int bttv_call_all (struct bttv*,int ,int ,int ,struct saa6588_command*) ;
 int core ;
 int ioctl ;
 int poll_requested_events (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int radio_enable (struct bttv*) ;
 scalar_t__ v4l2_event_pending (TYPE_1__*) ;

__attribute__((used)) static __poll_t radio_poll(struct file *file, poll_table *wait)
{
 struct bttv_fh *fh = file->private_data;
 struct bttv *btv = fh->btv;
 __poll_t req_events = poll_requested_events(wait);
 struct saa6588_command cmd;
 __poll_t res = 0;

 if (v4l2_event_pending(&fh->fh))
  res = EPOLLPRI;
 else if (req_events & EPOLLPRI)
  poll_wait(file, &fh->fh.wait, wait);
 radio_enable(btv);
 cmd.instance = file;
 cmd.event_list = wait;
 cmd.poll_mask = res;
 bttv_call_all(btv, core, ioctl, SAA6588_CMD_POLL, &cmd);

 return cmd.poll_mask;
}
