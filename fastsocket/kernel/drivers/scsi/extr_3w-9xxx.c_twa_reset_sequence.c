
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int host; } ;
typedef TYPE_1__ TW_Device_Extension ;


 int TW_DRIVER ;
 int TW_MAX_RESET_TRIES ;
 int TW_PRINTK (int ,int ,int,char*) ;
 int TW_SOFT_RESET (TYPE_1__*) ;
 int TW_STATUS_ATTENTION_INTERRUPT ;
 int TW_STATUS_MICROCONTROLLER_READY ;
 scalar_t__ twa_aen_drain_queue (TYPE_1__*,int) ;
 scalar_t__ twa_check_srl (TYPE_1__*,int*) ;
 scalar_t__ twa_empty_response_queue (TYPE_1__*) ;
 scalar_t__ twa_empty_response_queue_large (TYPE_1__*) ;
 scalar_t__ twa_poll_status (TYPE_1__*,int,int) ;

__attribute__((used)) static int twa_reset_sequence(TW_Device_Extension *tw_dev, int soft_reset)
{
 int tries = 0, retval = 1, flashed = 0, do_soft_reset = soft_reset;

 while (tries < TW_MAX_RESET_TRIES) {
  if (do_soft_reset) {
   TW_SOFT_RESET(tw_dev);

   if (twa_empty_response_queue_large(tw_dev)) {
    TW_PRINTK(tw_dev->host, TW_DRIVER, 0x36, "Response queue (large) empty failed during reset sequence");
    do_soft_reset = 1;
    tries++;
    continue;
   }
  }


  if (twa_poll_status(tw_dev, TW_STATUS_MICROCONTROLLER_READY | (do_soft_reset == 1 ? TW_STATUS_ATTENTION_INTERRUPT : 0), 60)) {
   TW_PRINTK(tw_dev->host, TW_DRIVER, 0x1f, "Microcontroller not ready during reset sequence");
   do_soft_reset = 1;
   tries++;
   continue;
  }


  if (twa_empty_response_queue(tw_dev)) {
   TW_PRINTK(tw_dev->host, TW_DRIVER, 0x20, "Response queue empty failed during reset sequence");
   do_soft_reset = 1;
   tries++;
   continue;
  }

  flashed = 0;


  if (twa_check_srl(tw_dev, &flashed)) {
   TW_PRINTK(tw_dev->host, TW_DRIVER, 0x21, "Compatibility check failed during reset sequence");
   do_soft_reset = 1;
   tries++;
   continue;
  } else {
   if (flashed) {
    tries++;
    continue;
   }
  }


  if (twa_aen_drain_queue(tw_dev, soft_reset)) {
   TW_PRINTK(tw_dev->host, TW_DRIVER, 0x22, "AEN drain failed during reset sequence");
   do_soft_reset = 1;
   tries++;
   continue;
  }


  retval = 0;
  goto out;
 }
out:
 return retval;
}
