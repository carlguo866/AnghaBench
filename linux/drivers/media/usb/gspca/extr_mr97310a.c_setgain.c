
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ cam_type; int sensor_type; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 scalar_t__ CAM_TYPE_CIF ;
 scalar_t__ CAM_TYPE_VGA ;
 int sensor_write1 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setgain(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 gainreg;

 if (sd->cam_type == CAM_TYPE_CIF && sd->sensor_type == 1)
  sensor_write1(gspca_dev, 0x0e, val);
 else if (sd->cam_type == CAM_TYPE_VGA && sd->sensor_type == 2)
  for (gainreg = 0x0a; gainreg < 0x11; gainreg += 2) {
   sensor_write1(gspca_dev, gainreg, val >> 8);
   sensor_write1(gspca_dev, gainreg + 1, val & 0xff);
  }
 else
  sensor_write1(gspca_dev, 0x10, val);
}
