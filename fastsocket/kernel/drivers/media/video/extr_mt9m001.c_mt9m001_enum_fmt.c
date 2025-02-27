
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct mt9m001 {unsigned int num_fmts; TYPE_1__* fmts; } ;
struct i2c_client {int dummy; } ;
typedef enum v4l2_mbus_pixelcode { ____Placeholder_v4l2_mbus_pixelcode } v4l2_mbus_pixelcode ;
struct TYPE_2__ {int code; } ;


 int EINVAL ;
 struct mt9m001* to_mt9m001 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m001_enum_fmt(struct v4l2_subdev *sd, unsigned int index,
       enum v4l2_mbus_pixelcode *code)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9m001 *mt9m001 = to_mt9m001(client);

 if (index >= mt9m001->num_fmts)
  return -EINVAL;

 *code = mt9m001->fmts[index].code;
 return 0;
}
