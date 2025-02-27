
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct cx25840_state {int dummy; } ;


 char const* firmware ;
 int i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ is_cx231xx (struct cx25840_state*) ;
 scalar_t__ is_cx2388x (struct cx25840_state*) ;
 struct cx25840_state* to_state (int ) ;

__attribute__((used)) static const char *get_fw_name(struct i2c_client *client)
{
 struct cx25840_state *state = to_state(i2c_get_clientdata(client));

 if (firmware[0])
  return firmware;
 if (is_cx2388x(state))
  return "v4l-cx23885-avcore-01.fw";
 if (is_cx231xx(state))
  return "v4l-cx231xx-avcore-01.fw";
 return "v4l-cx25840.fw";
}
