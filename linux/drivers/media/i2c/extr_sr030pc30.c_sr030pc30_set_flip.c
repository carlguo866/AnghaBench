
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct sr030pc30_info {scalar_t__ vflip; scalar_t__ hflip; } ;
typedef int s32 ;


 int VDO_CTL2_REG ;
 int cam_i2c_read (struct v4l2_subdev*,int ) ;
 int cam_i2c_write (struct v4l2_subdev*,int ,int) ;
 struct sr030pc30_info* to_sr030pc30 (struct v4l2_subdev*) ;

__attribute__((used)) static int sr030pc30_set_flip(struct v4l2_subdev *sd)
{
 struct sr030pc30_info *info = to_sr030pc30(sd);

 s32 reg = cam_i2c_read(sd, VDO_CTL2_REG);
 if (reg < 0)
  return reg;

 reg &= 0x7C;
 if (info->hflip)
  reg |= 0x01;
 if (info->vflip)
  reg |= 0x02;
 return cam_i2c_write(sd, VDO_CTL2_REG, reg | 0x80);
}
