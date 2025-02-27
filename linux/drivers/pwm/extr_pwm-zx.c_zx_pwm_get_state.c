
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
typedef int u32 ;
struct zx_pwm_chip {int wclk; } ;
struct pwm_state {int enabled; void* duty_cycle; void* period; int polarity; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;


 void* DIV_ROUND_CLOSEST_ULL (unsigned int,unsigned long) ;
 unsigned int NSEC_PER_SEC ;
 int PWM_POLARITY_INVERSED ;
 int PWM_POLARITY_NORMAL ;
 int ZX_PWM_CLKDIV_MASK ;
 int ZX_PWM_CLKDIV_SHIFT ;
 int ZX_PWM_DUTY ;
 int ZX_PWM_EN ;
 int ZX_PWM_MODE ;
 int ZX_PWM_PERIOD ;
 int ZX_PWM_POLAR ;
 unsigned long clk_get_rate (int ) ;
 struct zx_pwm_chip* to_zx_pwm_chip (struct pwm_chip*) ;
 void* zx_pwm_readl (struct zx_pwm_chip*,int ,int ) ;

__attribute__((used)) static void zx_pwm_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
        struct pwm_state *state)
{
 struct zx_pwm_chip *zpc = to_zx_pwm_chip(chip);
 unsigned long rate;
 unsigned int div;
 u32 value;
 u64 tmp;

 value = zx_pwm_readl(zpc, pwm->hwpwm, ZX_PWM_MODE);

 if (value & ZX_PWM_POLAR)
  state->polarity = PWM_POLARITY_NORMAL;
 else
  state->polarity = PWM_POLARITY_INVERSED;

 if (value & ZX_PWM_EN)
  state->enabled = 1;
 else
  state->enabled = 0;

 div = (value & ZX_PWM_CLKDIV_MASK) >> ZX_PWM_CLKDIV_SHIFT;
 rate = clk_get_rate(zpc->wclk);

 tmp = zx_pwm_readl(zpc, pwm->hwpwm, ZX_PWM_PERIOD);
 tmp *= div * NSEC_PER_SEC;
 state->period = DIV_ROUND_CLOSEST_ULL(tmp, rate);

 tmp = zx_pwm_readl(zpc, pwm->hwpwm, ZX_PWM_DUTY);
 tmp *= div * NSEC_PER_SEC;
 state->duty_cycle = DIV_ROUND_CLOSEST_ULL(tmp, rate);
}
