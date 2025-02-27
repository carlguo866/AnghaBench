
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dbg_chip_ident {int dummy; } ;
struct indycam {int version; } ;
struct i2c_client {int dummy; } ;


 int V4L2_IDENT_INDYCAM ;
 struct indycam* to_indycam (struct v4l2_subdev*) ;
 int v4l2_chip_ident_i2c_client (struct i2c_client*,struct v4l2_dbg_chip_ident*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int indycam_g_chip_ident(struct v4l2_subdev *sd,
  struct v4l2_dbg_chip_ident *chip)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct indycam *camera = to_indycam(sd);

 return v4l2_chip_ident_i2c_client(client, chip, V4L2_IDENT_INDYCAM,
         camera->version);
}
