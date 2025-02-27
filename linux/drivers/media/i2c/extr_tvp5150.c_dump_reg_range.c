
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dev; } ;


 int dprintk0 (int ,char*,...) ;
 int tvp5150_read (struct v4l2_subdev*,int) ;

__attribute__((used)) static void dump_reg_range(struct v4l2_subdev *sd, char *s, u8 init,
    const u8 end, int max_line)
{
 u8 buf[16];
 int i = 0, j, len;

 if (max_line > 16) {
  dprintk0(sd->dev, "too much data to dump\n");
  return;
 }

 for (i = init; i < end; i += max_line) {
  len = (end - i > max_line) ? max_line : end - i;

  for (j = 0; j < len; j++)
   buf[j] = tvp5150_read(sd, i + j);

  dprintk0(sd->dev, "%s reg %02x = %*ph\n", s, i, len, buf);
 }
}
