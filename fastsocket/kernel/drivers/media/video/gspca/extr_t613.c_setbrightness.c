
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {unsigned int brightness; } ;
struct gspca_dev {int dummy; } ;


 int reg_w_buf (struct gspca_dev*,int*,int) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 unsigned int brightness;
 u8 set6[4] = { 0x8f, 0x24, 0xc3, 0x00 };

 brightness = sd->brightness;
 if (brightness < 7) {
  set6[1] = 0x26;
  set6[3] = 0x70 - brightness * 0x10;
 } else {
  set6[3] = 0x00 + ((brightness - 7) * 0x10);
 }

 reg_w_buf(gspca_dev, set6, sizeof set6);
}
