
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v4l2_subdev {TYPE_1__* ctrl_handler; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; TYPE_5__* adapter; } ;
struct TYPE_6__ {int error; } ;
struct cs5345_state {TYPE_1__ hdl; struct v4l2_subdev sd; } ;
struct TYPE_7__ {int name; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int V4L2_CID_AUDIO_MUTE ;
 int V4L2_CID_AUDIO_VOLUME ;
 int cs5345_ctrl_ops ;
 int cs5345_ops ;
 int cs5345_write (struct v4l2_subdev*,int,int) ;
 struct cs5345_state* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_5__*,int ) ;
 int v4l2_ctrl_handler_free (TYPE_1__*) ;
 int v4l2_ctrl_handler_init (TYPE_1__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_1__*) ;
 int v4l2_ctrl_new_std (TYPE_1__*,int *,int ,int,int,int,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int cs5345_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct cs5345_state *state;
 struct v4l2_subdev *sd;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 state = devm_kzalloc(&client->dev, sizeof(*state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;
 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &cs5345_ops);

 v4l2_ctrl_handler_init(&state->hdl, 2);
 v4l2_ctrl_new_std(&state->hdl, &cs5345_ctrl_ops,
   V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
 v4l2_ctrl_new_std(&state->hdl, &cs5345_ctrl_ops,
   V4L2_CID_AUDIO_VOLUME, -24, 24, 1, 0);
 sd->ctrl_handler = &state->hdl;
 if (state->hdl.error) {
  int err = state->hdl.error;

  v4l2_ctrl_handler_free(&state->hdl);
  return err;
 }

 v4l2_ctrl_handler_setup(&state->hdl);

 cs5345_write(sd, 0x02, 0x00);
 cs5345_write(sd, 0x04, 0x01);
 cs5345_write(sd, 0x09, 0x01);
 return 0;
}
