
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int error; } ;
struct TYPE_6__ {int * dev; TYPE_2__* ctrl_handler; } ;
struct ov9640_priv {TYPE_2__ hdl; void* clk; TYPE_1__ subdev; void* gpio_reset; void* gpio_power; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_VFLIP ;
 void* devm_gpiod_get (int *,char*,int ) ;
 struct ov9640_priv* devm_kzalloc (int *,int,int ) ;
 int ov9640_ctrl_ops ;
 int ov9640_subdev_ops ;
 int ov9640_video_probe (struct i2c_client*) ;
 int v4l2_async_register_subdev (TYPE_1__*) ;
 void* v4l2_clk_get (int *,char*) ;
 int v4l2_clk_put (void*) ;
 int v4l2_ctrl_handler_free (TYPE_2__*) ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int) ;
 int v4l2_ctrl_new_std (TYPE_2__*,int *,int ,int ,int,int,int ) ;
 int v4l2_i2c_subdev_init (TYPE_1__*,struct i2c_client*,int *) ;

__attribute__((used)) static int ov9640_probe(struct i2c_client *client,
   const struct i2c_device_id *did)
{
 struct ov9640_priv *priv;
 int ret;

 priv = devm_kzalloc(&client->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->gpio_power = devm_gpiod_get(&client->dev, "Camera power",
       GPIOD_OUT_LOW);
 if (IS_ERR(priv->gpio_power)) {
  ret = PTR_ERR(priv->gpio_power);
  return ret;
 }

 priv->gpio_reset = devm_gpiod_get(&client->dev, "Camera reset",
       GPIOD_OUT_HIGH);
 if (IS_ERR(priv->gpio_reset)) {
  ret = PTR_ERR(priv->gpio_reset);
  return ret;
 }

 v4l2_i2c_subdev_init(&priv->subdev, client, &ov9640_subdev_ops);

 v4l2_ctrl_handler_init(&priv->hdl, 2);
 v4l2_ctrl_new_std(&priv->hdl, &ov9640_ctrl_ops,
     V4L2_CID_VFLIP, 0, 1, 1, 0);
 v4l2_ctrl_new_std(&priv->hdl, &ov9640_ctrl_ops,
     V4L2_CID_HFLIP, 0, 1, 1, 0);

 if (priv->hdl.error) {
  ret = priv->hdl.error;
  goto ectrlinit;
 }

 priv->subdev.ctrl_handler = &priv->hdl;

 priv->clk = v4l2_clk_get(&client->dev, "mclk");
 if (IS_ERR(priv->clk)) {
  ret = PTR_ERR(priv->clk);
  goto ectrlinit;
 }

 ret = ov9640_video_probe(client);
 if (ret)
  goto eprobe;

 priv->subdev.dev = &client->dev;
 ret = v4l2_async_register_subdev(&priv->subdev);
 if (ret)
  goto eprobe;

 return 0;

eprobe:
 v4l2_clk_put(priv->clk);
ectrlinit:
 v4l2_ctrl_handler_free(&priv->hdl);

 return ret;
}
