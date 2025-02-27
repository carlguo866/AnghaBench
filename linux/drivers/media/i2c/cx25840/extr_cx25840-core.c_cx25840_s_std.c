
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {scalar_t__ radio; scalar_t__ std; } ;


 int set_v4lstd (struct i2c_client*) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_s_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct cx25840_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 if (state->radio == 0 && state->std == std)
  return 0;
 state->radio = 0;
 state->std = std;
 return set_v4lstd(client);
}
