
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sd {unsigned int contrast; } ;
struct gspca_dev {int dummy; } ;


 int reg_w (struct gspca_dev*,int) ;

__attribute__((used)) static void setcontrast(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 unsigned int contrast = sd->contrast;
 u16 reg_to_write;

 if (contrast < 7)
  reg_to_write = 0x8ea9 - contrast * 0x200;
 else
  reg_to_write = 0x00a9 + (contrast - 7) * 0x200;

 reg_w(gspca_dev, reg_to_write);
}
