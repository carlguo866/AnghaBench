
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int ov7670_read (struct v4l2_subdev*,unsigned char,unsigned char*) ;
 int ov7670_write (struct v4l2_subdev*,unsigned char,unsigned char) ;

__attribute__((used)) static int ov7670_update_bits(struct v4l2_subdev *sd, unsigned char reg,
  unsigned char mask, unsigned char value)
{
 unsigned char orig;
 int ret;

 ret = ov7670_read(sd, reg, &orig);
 if (ret)
  return ret;

 return ov7670_write(sd, reg, (orig & ~mask) | (value & mask));
}
