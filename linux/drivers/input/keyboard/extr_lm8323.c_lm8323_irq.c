
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lm8323_chip {int lock; int * pwm; TYPE_1__* client; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int INT_ERROR ;
 int INT_KEYPAD ;
 int INT_NOINIT ;
 int INT_PWM1 ;
 int INT_ROTATOR ;
 int IRQ_HANDLED ;
 int LM8323_CMD_READ_INT ;
 int LM8323_NUM_PWMS ;
 int dev_err (int *,char*) ;
 int dev_vdbg (int *,char*,...) ;
 scalar_t__ likely (int) ;
 int lm8323_configure (struct lm8323_chip*) ;
 int lm8323_process_error (struct lm8323_chip*) ;
 int lm8323_read (struct lm8323_chip*,int ,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int process_keys (struct lm8323_chip*) ;
 int pwm_done (int *) ;

__attribute__((used)) static irqreturn_t lm8323_irq(int irq, void *_lm)
{
 struct lm8323_chip *lm = _lm;
 u8 ints;
 int i;

 mutex_lock(&lm->lock);

 while ((lm8323_read(lm, LM8323_CMD_READ_INT, &ints, 1) == 1) && ints) {
  if (likely(ints & INT_KEYPAD))
   process_keys(lm);
  if (ints & INT_ROTATOR) {

   dev_vdbg(&lm->client->dev, "rotator fired\n");
  }
  if (ints & INT_ERROR) {
   dev_vdbg(&lm->client->dev, "error!\n");
   lm8323_process_error(lm);
  }
  if (ints & INT_NOINIT) {
   dev_err(&lm->client->dev, "chip lost config; "
        "reinitialising\n");
   lm8323_configure(lm);
  }
  for (i = 0; i < LM8323_NUM_PWMS; i++) {
   if (ints & (INT_PWM1 << i)) {
    dev_vdbg(&lm->client->dev,
      "pwm%d engine completed\n", i);
    pwm_done(&lm->pwm[i]);
   }
  }
 }

 mutex_unlock(&lm->lock);

 return IRQ_HANDLED;
}
