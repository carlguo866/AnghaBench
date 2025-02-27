
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct max2175 {int ctrl_hdl; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 struct max2175* max2175_from_sd (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int max2175_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct max2175 *ctx = max2175_from_sd(sd);

 v4l2_ctrl_handler_free(&ctx->ctrl_hdl);
 v4l2_async_unregister_subdev(sd);

 return 0;
}
