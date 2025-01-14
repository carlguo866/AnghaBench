
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sd {scalar_t__* sensor_priv; } ;
struct gspca_dev {int dummy; } ;
typedef scalar_t__ s32 ;
typedef scalar_t__ __s32 ;


 int D_V4L2 ;
 size_t HFLIP_IDX ;
 int PDEBUG (int ,char*,scalar_t__) ;
 int VV6410_DATAFORMAT ;
 int VV6410_HFLIP ;
 int stv06xx_read_sensor (struct sd*,int ,int *) ;
 int stv06xx_write_sensor (struct sd*,int ,int ) ;

__attribute__((used)) static int vv6410_set_hflip(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 u16 i2c_data;
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 sensor_settings[HFLIP_IDX] = val;
 err = stv06xx_read_sensor(sd, VV6410_DATAFORMAT, &i2c_data);
 if (err < 0)
  return err;

 if (val)
  i2c_data |= VV6410_HFLIP;
 else
  i2c_data &= ~VV6410_HFLIP;

 PDEBUG(D_V4L2, "Set horizontal flip to %d", val);
 err = stv06xx_write_sensor(sd, VV6410_DATAFORMAT, i2c_data);

 return (err < 0) ? err : 0;
}
