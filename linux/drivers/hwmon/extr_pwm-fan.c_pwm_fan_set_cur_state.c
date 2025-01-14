
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int device; struct pwm_fan_ctx* devdata; } ;
struct pwm_fan_ctx {unsigned long pwm_fan_max_state; unsigned long pwm_fan_state; int * pwm_fan_cooling_levels; } ;


 int EINVAL ;
 int __set_pwm (struct pwm_fan_ctx*,int ) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int
pwm_fan_set_cur_state(struct thermal_cooling_device *cdev, unsigned long state)
{
 struct pwm_fan_ctx *ctx = cdev->devdata;
 int ret;

 if (!ctx || (state > ctx->pwm_fan_max_state))
  return -EINVAL;

 if (state == ctx->pwm_fan_state)
  return 0;

 ret = __set_pwm(ctx, ctx->pwm_fan_cooling_levels[state]);
 if (ret) {
  dev_err(&cdev->device, "Cannot set pwm!\n");
  return ret;
 }

 ctx->pwm_fan_state = state;

 return ret;
}
