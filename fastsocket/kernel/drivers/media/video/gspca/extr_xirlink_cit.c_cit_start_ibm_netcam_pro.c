
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int width; } ;


 int ARRAY_SIZE (int**) ;
 int cit_get_clock_div (struct gspca_dev*) ;
 int cit_model3_Packet1 (struct gspca_dev*,int,int) ;
 int cit_read_reg (struct gspca_dev*,int,int ) ;
 int cit_write_reg (struct gspca_dev*,unsigned short const,int) ;
 int** rca_initdata ;
 scalar_t__ rca_input ;

__attribute__((used)) static int cit_start_ibm_netcam_pro(struct gspca_dev *gspca_dev)
{
 const unsigned short compression = 0;
 int i, clock_div;

 clock_div = cit_get_clock_div(gspca_dev);
 if (clock_div < 0)
  return clock_div;

 cit_write_reg(gspca_dev, 0x0003, 0x0133);
 cit_write_reg(gspca_dev, 0x0000, 0x0117);
 cit_write_reg(gspca_dev, 0x0008, 0x0123);
 cit_write_reg(gspca_dev, 0x0000, 0x0100);
 cit_write_reg(gspca_dev, 0x0060, 0x0116);

 cit_write_reg(gspca_dev, 0x0000, 0x0133);
 cit_write_reg(gspca_dev, 0x0000, 0x0123);
 cit_write_reg(gspca_dev, 0x0001, 0x0117);
 cit_write_reg(gspca_dev, 0x0040, 0x0108);
 cit_write_reg(gspca_dev, 0x0019, 0x012c);
 cit_write_reg(gspca_dev, 0x0060, 0x0116);


 cit_model3_Packet1(gspca_dev, 0x0049, 0x0000);

 cit_write_reg(gspca_dev, 0x0000, 0x0101);
 cit_write_reg(gspca_dev, 0x003a, 0x0102);
 cit_write_reg(gspca_dev, 0x00a0, 0x0103);
 cit_write_reg(gspca_dev, 0x0078, 0x0105);
 cit_write_reg(gspca_dev, 0x0000, 0x010a);
 cit_write_reg(gspca_dev, 0x0002, 0x011d);
 cit_write_reg(gspca_dev, 0x0000, 0x0129);
 cit_write_reg(gspca_dev, 0x00fc, 0x012b);
 cit_write_reg(gspca_dev, 0x0022, 0x012a);

 switch (gspca_dev->width) {
 case 160:
  cit_write_reg(gspca_dev, 0x0024, 0x010b);
  cit_write_reg(gspca_dev, 0x0089, 0x0119);
  cit_write_reg(gspca_dev, 0x000a, 0x011b);
  cit_write_reg(gspca_dev, 0x0003, 0x011e);
  cit_write_reg(gspca_dev, 0x0007, 0x0104);
  cit_write_reg(gspca_dev, 0x0009, 0x011a);
  cit_write_reg(gspca_dev, 0x008b, 0x011c);
  cit_write_reg(gspca_dev, 0x0008, 0x0118);
  cit_write_reg(gspca_dev, 0x0000, 0x0132);
  break;
 case 320:
  cit_write_reg(gspca_dev, 0x0028, 0x010b);
  cit_write_reg(gspca_dev, 0x00d9, 0x0119);
  cit_write_reg(gspca_dev, 0x0006, 0x011b);
  cit_write_reg(gspca_dev, 0x0000, 0x011e);
  cit_write_reg(gspca_dev, 0x000e, 0x0104);
  cit_write_reg(gspca_dev, 0x0004, 0x011a);
  cit_write_reg(gspca_dev, 0x003f, 0x011c);
  cit_write_reg(gspca_dev, 0x000c, 0x0118);
  cit_write_reg(gspca_dev, 0x0000, 0x0132);
  break;
 }

 cit_model3_Packet1(gspca_dev, 0x0019, 0x0031);
 cit_model3_Packet1(gspca_dev, 0x001a, 0x0003);
 cit_model3_Packet1(gspca_dev, 0x001b, 0x0038);
 cit_model3_Packet1(gspca_dev, 0x001c, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x0024, 0x0001);
 cit_model3_Packet1(gspca_dev, 0x0027, 0x0001);
 cit_model3_Packet1(gspca_dev, 0x002a, 0x0004);
 cit_model3_Packet1(gspca_dev, 0x0035, 0x000b);
 cit_model3_Packet1(gspca_dev, 0x003f, 0x0001);
 cit_model3_Packet1(gspca_dev, 0x0044, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x0054, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x00c4, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x00e7, 0x0001);
 cit_model3_Packet1(gspca_dev, 0x00e9, 0x0001);
 cit_model3_Packet1(gspca_dev, 0x00ee, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x00f3, 0x00c0);

 cit_write_reg(gspca_dev, compression, 0x0109);
 cit_write_reg(gspca_dev, clock_div, 0x0111);


 if (rca_input) {
  for (i = 0; i < ARRAY_SIZE(rca_initdata); i++) {
   if (rca_initdata[i][0])
    cit_read_reg(gspca_dev, rca_initdata[i][2], 0);
   else
    cit_write_reg(gspca_dev, rca_initdata[i][1],
           rca_initdata[i][2]);
  }
 }

 return 0;
}
