
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;


 int D_CONF ;
 int S5K4AA_EXPOSURE_HI ;
 int S5K4AA_EXPOSURE_LO ;
 int S5K4AA_PAGE_MAP ;
 int S5K4AA_PAGE_MAP_2 ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int s5k4aa_set_exposure(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 data = S5K4AA_PAGE_MAP_2;
 int err;

 gspca_dbg(gspca_dev, D_CONF, "Set exposure to %d\n", val);
 err = m5602_write_sensor(sd, S5K4AA_PAGE_MAP, &data, 1);
 if (err < 0)
  return err;
 data = (val >> 8) & 0xff;
 err = m5602_write_sensor(sd, S5K4AA_EXPOSURE_HI, &data, 1);
 if (err < 0)
  return err;
 data = val & 0xff;
 err = m5602_write_sensor(sd, S5K4AA_EXPOSURE_LO, &data, 1);

 return err;
}
