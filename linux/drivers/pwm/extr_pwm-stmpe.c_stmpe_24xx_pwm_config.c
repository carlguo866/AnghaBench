
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct stmpe_pwm {int last_duty; TYPE_1__* stmpe; } ;
struct pwm_device {unsigned int hwpwm; } ;
struct pwm_chip {int dev; } ;
struct TYPE_3__ {scalar_t__ partnum; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int BIT (unsigned int) ;
 int BRANCH ;
 unsigned long DIV_ROUND_CLOSEST (unsigned long,int) ;
 int ENODEV ;
 int GTS ;
 int LOAD ;
 int PRESCALE_512 ;
 int RAMPDOWN ;
 int RAMPUP ;
 int SMAX ;
 int SMIN ;
 int STEPTIME_1 ;
 scalar_t__ STMPE2401 ;
 scalar_t__ STMPE2403 ;
 int STMPE24XX_PWMIC0 ;
 int STMPE24XX_PWMIC1 ;
 int STMPE24XX_PWMIC2 ;
 int STMPE_BLOCK_PWM ;
 scalar_t__ STMPE_PWM_24XX_PINBASE ;
 int dev_dbg (int ,char*,int,unsigned int,...) ;
 int dev_err (int ,char*,int,...) ;
 int msleep (int) ;
 scalar_t__ pwm_is_enabled (struct pwm_device*) ;
 int stmpe_24xx_pwm_disable (struct pwm_chip*,struct pwm_device*) ;
 int stmpe_24xx_pwm_enable (struct pwm_chip*,struct pwm_device*) ;
 int stmpe_reg_write (TYPE_1__*,int,int) ;
 int stmpe_set_altfunc (TYPE_1__*,int ,int ) ;
 struct stmpe_pwm* to_stmpe_pwm (struct pwm_chip*) ;

__attribute__((used)) static int stmpe_24xx_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
     int duty_ns, int period_ns)
{
 struct stmpe_pwm *stmpe_pwm = to_stmpe_pwm(chip);
 unsigned int i, pin;
 u16 program[3] = {
  SMAX,
  GTS,
  GTS,
 };
 u8 offset;
 int ret;


 if (pwm_is_enabled(pwm)) {
  stmpe_24xx_pwm_disable(chip, pwm);
 } else {

  pin = pwm->hwpwm;


  if (stmpe_pwm->stmpe->partnum == STMPE2401 ||
      stmpe_pwm->stmpe->partnum == STMPE2403)
   pin += STMPE_PWM_24XX_PINBASE;

  ret = stmpe_set_altfunc(stmpe_pwm->stmpe, BIT(pin),
     STMPE_BLOCK_PWM);
  if (ret) {
   dev_err(chip->dev, "unable to connect PWM#%u to pin\n",
    pwm->hwpwm);
   return ret;
  }
 }


 switch (pwm->hwpwm) {
 case 0:
  offset = STMPE24XX_PWMIC0;
  break;

 case 1:
  offset = STMPE24XX_PWMIC1;
  break;

 case 2:
  offset = STMPE24XX_PWMIC2;
  break;

 default:

  return -ENODEV;
 }

 dev_dbg(chip->dev, "PWM#%u: config duty %d ns, period %d ns\n",
  pwm->hwpwm, duty_ns, period_ns);

 if (duty_ns == 0) {
  if (stmpe_pwm->stmpe->partnum == STMPE2401)
   program[0] = SMAX;

  if (stmpe_pwm->stmpe->partnum == STMPE2403)
   program[0] = LOAD | 0xff;

  stmpe_pwm->last_duty = 0x00;
 } else if (duty_ns == period_ns) {
  if (stmpe_pwm->stmpe->partnum == STMPE2401)
   program[0] = SMIN;

  if (stmpe_pwm->stmpe->partnum == STMPE2403)
   program[0] = LOAD | 0x00;

  stmpe_pwm->last_duty = 0xff;
 } else {
  u8 value, last = stmpe_pwm->last_duty;
  unsigned long duty;
  duty = duty_ns * 256;
  duty = DIV_ROUND_CLOSEST(duty, period_ns);
  value = duty;

  if (value == last) {

   if (pwm_is_enabled(pwm))
    stmpe_24xx_pwm_enable(chip, pwm);

   return 0;
  } else if (stmpe_pwm->stmpe->partnum == STMPE2403) {

   program[0] = LOAD | value;
   program[1] = 0x0000;
  } else if (stmpe_pwm->stmpe->partnum == STMPE2401) {

   u16 incdec = 0x0000;

   if (last < value)

    incdec = RAMPUP | (value - last);
   else

    incdec = RAMPDOWN | (last - value);


   program[0] = PRESCALE_512 | STEPTIME_1 | incdec;


   program[1] = BRANCH;
  }

  dev_dbg(chip->dev,
   "PWM#%u: value = %02x, last_duty = %02x, program=%04x,%04x,%04x\n",
   pwm->hwpwm, value, last, program[0], program[1],
   program[2]);
  stmpe_pwm->last_duty = value;
 }




 for (i = 0; i < ARRAY_SIZE(program); i++) {
  u8 value;

  value = (program[i] >> 8) & 0xff;

  ret = stmpe_reg_write(stmpe_pwm->stmpe, offset, value);
  if (ret) {
   dev_err(chip->dev, "error writing register %02x: %d\n",
    offset, ret);
   return ret;
  }

  value = program[i] & 0xff;

  ret = stmpe_reg_write(stmpe_pwm->stmpe, offset, value);
  if (ret) {
   dev_err(chip->dev, "error writing register %02x: %d\n",
    offset, ret);
   return ret;
  }
 }


 if (pwm_is_enabled(pwm))
  stmpe_24xx_pwm_enable(chip, pwm);


 msleep(200);

 dev_dbg(chip->dev, "programmed PWM#%u, %u bytes\n", pwm->hwpwm, i);

 return 0;
}
