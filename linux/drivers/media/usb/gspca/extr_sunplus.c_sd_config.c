
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int driver_info; } ;
struct sd {int bridge; int subtype; } ;
struct cam {void* nmodes; void* cam_mode; } ;
struct gspca_dev {int* usb_buf; struct cam cam; } ;


 void* ARRAY_SIZE (void*) ;
 int AiptekMiniPenCam13 ;
 int BRIDGE_SPCA504B ;


 int ENODEV ;
 int MegaImageVI ;
 void* custom_mode ;
 int reg_r (struct gspca_dev*,int,int ,int) ;
 void* vga_mode ;
 void* vga_mode2 ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 cam = &gspca_dev->cam;

 sd->bridge = id->driver_info >> 8;
 sd->subtype = id->driver_info;

 if (sd->subtype == AiptekMiniPenCam13) {



  reg_r(gspca_dev, 0x20, 0, 1);
  switch (gspca_dev->usb_buf[0]) {
  case 1:
   break;
  case 2:
   sd->bridge = BRIDGE_SPCA504B;
   sd->subtype = 0;
   break;
  default:
   return -ENODEV;
  }
 }

 switch (sd->bridge) {
 default:



  cam->cam_mode = vga_mode;
  cam->nmodes = ARRAY_SIZE(vga_mode);
  break;
 case 128:
  cam->cam_mode = custom_mode;
  if (sd->subtype == MegaImageVI)
   cam->nmodes = ARRAY_SIZE(custom_mode) - 1;
  else
   cam->nmodes = ARRAY_SIZE(custom_mode);
  break;
 case 129:
  cam->cam_mode = vga_mode2;
  cam->nmodes = ARRAY_SIZE(vga_mode2);
  break;
 }
 return 0;
}
