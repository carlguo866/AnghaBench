
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int do_tda9875_init (struct v4l2_subdev*) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (int ) ;
 int to_state (struct v4l2_subdev*) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int tda9875_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);

 do_tda9875_init(sd);
 v4l2_device_unregister_subdev(sd);
 kfree(to_state(sd));
 return 0;
}
