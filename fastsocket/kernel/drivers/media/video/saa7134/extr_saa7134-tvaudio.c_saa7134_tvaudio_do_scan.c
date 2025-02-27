
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ thread; int stopped; int scan2; int mode; } ;
struct saa7134_dev {scalar_t__ automute; TYPE_2__ thread; int insuspend; TYPE_1__* input; } ;
struct TYPE_3__ {scalar_t__ amux; } ;


 scalar_t__ TV ;
 int UNSET ;
 int dprintk (char*) ;
 int saa7134_tvaudio_setmute (struct saa7134_dev*) ;
 int wake_up_process (scalar_t__) ;

int saa7134_tvaudio_do_scan(struct saa7134_dev *dev)
{
 if (dev->input->amux != TV) {
  dprintk("sound IF not in use, skipping scan\n");
  dev->automute = 0;
  saa7134_tvaudio_setmute(dev);
 } else if (dev->thread.thread) {
  dev->thread.mode = UNSET;
  dev->thread.scan2++;

  if (!dev->insuspend && !dev->thread.stopped)
   wake_up_process(dev->thread.thread);
 } else {
  dev->automute = 0;
  saa7134_tvaudio_setmute(dev);
 }
 return 0;
}
