
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sensor_info {int m1; int m2; int I2cAdd; int op; int IdAdd; int VpId; int sensorId; } ;
struct sd {int flags; scalar_t__ bridge; } ;
struct gspca_dev {int* usb_buf; } ;


 int ARRAY_SIZE (struct sensor_info*) ;
 scalar_t__ BRIDGE_VC0321 ;
 int D_ERR ;
 int D_PROBE ;
 int FL_SAMSUNG ;
 int PDEBUG (int,char*,int,int) ;
 int SENSOR_MI0360 ;
 int SENSOR_OV7670 ;
 int SENSOR_PO3130NC ;
 int read_sensor_register (struct gspca_dev*,int) ;
 int reg_r (struct gspca_dev*,int,int,int) ;
 int reg_w (struct gspca_dev*,int,int,int) ;
 struct sensor_info* vc0321_probe_data ;
 struct sensor_info* vc0323_probe_data ;

__attribute__((used)) static int vc032x_probe_sensor(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i, n;
 u16 value;
 const struct sensor_info *ptsensor_info;


 if (sd->flags & FL_SAMSUNG) {
  reg_w(gspca_dev, 0xa0, 0x01, 0xb301);
  reg_w(gspca_dev, 0x89, 0xf0ff, 0xffff);

 }

 reg_r(gspca_dev, 0xa1, 0xbfcf, 1);
 PDEBUG(D_PROBE, "vc032%d check sensor header %02x",
  sd->bridge == BRIDGE_VC0321 ? 1 : 3, gspca_dev->usb_buf[0]);
 if (sd->bridge == BRIDGE_VC0321) {
  ptsensor_info = vc0321_probe_data;
  n = ARRAY_SIZE(vc0321_probe_data);
 } else {
  ptsensor_info = vc0323_probe_data;
  n = ARRAY_SIZE(vc0323_probe_data);
 }
 for (i = 0; i < n; i++) {
  reg_w(gspca_dev, 0xa0, 0x02, 0xb334);
  reg_w(gspca_dev, 0xa0, ptsensor_info->m1, 0xb300);
  reg_w(gspca_dev, 0xa0, ptsensor_info->m2, 0xb300);
  reg_w(gspca_dev, 0xa0, 0x01, 0xb308);
  reg_w(gspca_dev, 0xa0, 0x0c, 0xb309);
  reg_w(gspca_dev, 0xa0, ptsensor_info->I2cAdd, 0xb335);
  reg_w(gspca_dev, 0xa0, ptsensor_info->op, 0xb301);
  value = read_sensor_register(gspca_dev, ptsensor_info->IdAdd);
  if (value == 0 && ptsensor_info->IdAdd == 0x82)
   value = read_sensor_register(gspca_dev, 0x83);
  if (value != 0) {
   PDEBUG(D_ERR|D_PROBE, "Sensor ID %04x (%d)",
    value, i);
   if (value == ptsensor_info->VpId)
    return ptsensor_info->sensorId;

   switch (value) {
   case 0x3130:
    return SENSOR_PO3130NC;
   case 0x7673:
    return SENSOR_OV7670;
   case 0x8243:
    return SENSOR_MI0360;
   }
  }
  ptsensor_info++;
 }
 return -1;
}
