
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ SENSOR_OV7620 ;
 int i2c_write (struct gspca_dev*,int,int,int) ;
 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setautogain(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor == SENSOR_OV7620)
  i2c_write(gspca_dev, 0x13, val ? 0xa3 : 0x80, 0x00);
 else
  reg_w(gspca_dev, val ? 0x42 : 0x02, 0x0180);
}
