
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int dummy; } ;
struct sd {int* gpio; struct gspca_dev gspca_dev; } ;


 int SQ930_CTRL_GPIO ;
 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void gpio_set(struct sd *sd, u16 val, u16 mask)
{
 struct gspca_dev *gspca_dev = &sd->gspca_dev;

 if (mask & 0x00ff) {
  sd->gpio[0] &= ~mask;
  sd->gpio[0] |= val;
  reg_w(gspca_dev, 0x0100 | SQ930_CTRL_GPIO,
   ~sd->gpio[0] << 8);
 }
 mask >>= 8;
 val >>= 8;
 if (mask) {
  sd->gpio[1] &= ~mask;
  sd->gpio[1] |= val;
  reg_w(gspca_dev, 0x0300 | SQ930_CTRL_GPIO,
   ~sd->gpio[1] << 8);
 }
}
