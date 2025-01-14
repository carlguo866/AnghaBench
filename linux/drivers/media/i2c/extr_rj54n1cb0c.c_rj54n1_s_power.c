
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct rj54n1 {scalar_t__ pwup_gpio; scalar_t__ enable_gpio; int clk; } ;
struct i2c_client {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int gpiod_set_value (scalar_t__,int) ;
 int msleep (int) ;
 struct rj54n1* to_rj54n1 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int rj54n1_s_power(struct v4l2_subdev *sd, int on)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct rj54n1 *rj54n1 = to_rj54n1(client);

 if (on) {
  if (rj54n1->pwup_gpio)
   gpiod_set_value(rj54n1->pwup_gpio, 1);
  if (rj54n1->enable_gpio)
   gpiod_set_value(rj54n1->enable_gpio, 1);

  msleep(1);

  return clk_prepare_enable(rj54n1->clk);
 }

 clk_disable_unprepare(rj54n1->clk);

 if (rj54n1->enable_gpio)
  gpiod_set_value(rj54n1->enable_gpio, 0);
 if (rj54n1->pwup_gpio)
  gpiod_set_value(rj54n1->pwup_gpio, 0);

 return 0;
}
