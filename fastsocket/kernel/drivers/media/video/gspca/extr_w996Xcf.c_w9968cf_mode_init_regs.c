
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; size_t curr_mode; scalar_t__ empty_packet; } ;
struct sd {scalar_t__ sensor; TYPE_1__ gspca_dev; int quality; int jpeg_hdr; } ;
struct TYPE_4__ {scalar_t__ pixelformat; } ;


 scalar_t__ SEN_OV7620 ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 int jpeg_define (int ,int,int,int) ;
 int jpeg_set_qual (int ,int ) ;
 int reg_w (struct sd*,int,int) ;
 int w9968cf_set_crop_window (struct sd*) ;
 int w9968cf_upload_quantizationtables (struct sd*) ;
 TYPE_2__* w9968cf_vga_mode ;

__attribute__((used)) static void w9968cf_mode_init_regs(struct sd *sd)
{
 int val, vs_polarity, hs_polarity;

 w9968cf_set_crop_window(sd);

 reg_w(sd, 0x14, sd->gspca_dev.width);
 reg_w(sd, 0x15, sd->gspca_dev.height);


 reg_w(sd, 0x30, sd->gspca_dev.width);
 reg_w(sd, 0x31, sd->gspca_dev.height);


 if (w9968cf_vga_mode[sd->gspca_dev.curr_mode].pixelformat ==
     V4L2_PIX_FMT_JPEG) {
  reg_w(sd, 0x2c, sd->gspca_dev.width / 2);
  reg_w(sd, 0x2d, sd->gspca_dev.width / 4);
 } else
  reg_w(sd, 0x2c, sd->gspca_dev.width);

 reg_w(sd, 0x00, 0xbf17);
 reg_w(sd, 0x00, 0xbf10);


 val = sd->gspca_dev.width * sd->gspca_dev.height;
 reg_w(sd, 0x3d, val & 0xffff);
 reg_w(sd, 0x3e, val >> 16);

 if (w9968cf_vga_mode[sd->gspca_dev.curr_mode].pixelformat ==
     V4L2_PIX_FMT_JPEG) {

  jpeg_define(sd->jpeg_hdr, sd->gspca_dev.height,
       sd->gspca_dev.width, 0x22);
  jpeg_set_qual(sd->jpeg_hdr, sd->quality);
  w9968cf_upload_quantizationtables(sd);
 }


 if (sd->sensor == SEN_OV7620) {

  vs_polarity = 1;
  hs_polarity = 1;
 } else {
  vs_polarity = 1;
  hs_polarity = 0;
 }

 val = (vs_polarity << 12) | (hs_polarity << 11);





 if (w9968cf_vga_mode[sd->gspca_dev.curr_mode].pixelformat ==
     V4L2_PIX_FMT_JPEG) {

  val |= 0x0003;
 } else
  val |= 0x0080;





 val |= 0x8000;

 reg_w(sd, 0x16, val);

 sd->gspca_dev.empty_packet = 0;
}
