
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int adv_smbus_read_byte_data (struct i2c_client*,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static inline int io_read(struct v4l2_subdev *sd, u8 reg)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 return adv_smbus_read_byte_data(client, reg);
}
