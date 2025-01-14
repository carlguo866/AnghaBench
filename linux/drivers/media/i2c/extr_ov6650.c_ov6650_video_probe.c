
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct v4l2_subdev {int dummy; } ;
struct ov6650 {int clk; int hdl; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ OV6650_PIDH ;
 scalar_t__ OV6650_PIDL ;
 int PTR_ERR (int ) ;
 int REG_MIDH ;
 int REG_MIDL ;
 int REG_PIDH ;
 int REG_PIDL ;
 int dev_err (int *,char*,scalar_t__,...) ;
 int dev_info (int *,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int msleep (int) ;
 int ov6650_prog_dflt (struct i2c_client*) ;
 int ov6650_reg_read (struct i2c_client*,int ,scalar_t__*) ;
 int ov6650_reset (struct i2c_client*) ;
 int ov6650_s_power (struct v4l2_subdev*,int) ;
 struct ov6650* to_ov6650 (struct i2c_client*) ;
 int v4l2_clk_get (int *,int *) ;
 int v4l2_clk_put (int ) ;
 int v4l2_ctrl_handler_setup (int *) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov6650_video_probe(struct v4l2_subdev *sd)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov6650 *priv = to_ov6650(client);
 u8 pidh, pidl, midh, midl;
 int ret;

 priv->clk = v4l2_clk_get(&client->dev, ((void*)0));
 if (IS_ERR(priv->clk)) {
  ret = PTR_ERR(priv->clk);
  dev_err(&client->dev, "v4l2_clk request err: %d\n", ret);
  return ret;
 }

 ret = ov6650_s_power(sd, 1);
 if (ret < 0)
  goto eclkput;

 msleep(20);




 ret = ov6650_reg_read(client, REG_PIDH, &pidh);
 if (!ret)
  ret = ov6650_reg_read(client, REG_PIDL, &pidl);
 if (!ret)
  ret = ov6650_reg_read(client, REG_MIDH, &midh);
 if (!ret)
  ret = ov6650_reg_read(client, REG_MIDL, &midl);

 if (ret)
  goto done;

 if ((pidh != OV6650_PIDH) || (pidl != OV6650_PIDL)) {
  dev_err(&client->dev, "Product ID error 0x%02x:0x%02x\n",
    pidh, pidl);
  ret = -ENODEV;
  goto done;
 }

 dev_info(&client->dev,
  "ov6650 Product ID 0x%02x:0x%02x Manufacturer ID 0x%02x:0x%02x\n",
  pidh, pidl, midh, midl);

 ret = ov6650_reset(client);
 if (!ret)
  ret = ov6650_prog_dflt(client);
 if (!ret)
  ret = v4l2_ctrl_handler_setup(&priv->hdl);

done:
 ov6650_s_power(sd, 0);
 if (!ret)
  return 0;
eclkput:
 v4l2_clk_put(priv->clk);

 return ret;
}
