
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct v4l2_subdev {int dummy; } ;


 int printk (char*,...) ;
 int tvp5150_read (struct v4l2_subdev*,scalar_t__) ;

__attribute__((used)) static void dump_reg_range(struct v4l2_subdev *sd, char *s, u8 init,
    const u8 end, int max_line)
{
 int i = 0;

 while (init != (u8)(end + 1)) {
  if ((i % max_line) == 0) {
   if (i > 0)
    printk("\n");
   printk("tvp5150: %s reg 0x%02x = ", s, init);
  }
  printk("%02x ", tvp5150_read(sd, init));

  init++;
  i++;
 }
 printk("\n");
}
