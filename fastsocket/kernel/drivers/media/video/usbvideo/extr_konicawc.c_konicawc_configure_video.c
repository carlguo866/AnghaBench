
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int colour; int hue; int brightness; int contrast; int whiteness; int depth; int channels; int name; int type; scalar_t__ channel; scalar_t__ tuners; scalar_t__ flags; int maxheight; int maxwidth; int minheight; int minwidth; scalar_t__ audios; int palette; } ;
struct uvd {TYPE_1__ vchan; TYPE_1__ vcap; TYPE_1__ vpic; TYPE_1__ vpic_old; scalar_t__ user_data; } ;
struct konicawc {int brightness; int contrast; int saturation; int sharpness; int white_bal; } ;
struct TYPE_4__ {int height; int width; } ;


 int DEBUG (int,char*,...) ;
 int MAX_BRIGHTNESS ;
 int MAX_CONTRAST ;
 int MAX_SATURATION ;
 int MAX_SHARPNESS ;
 int MAX_WHITEBAL ;
 int RESTRICT_TO_RANGE (int,int ,int ) ;
 size_t SIZE_160X120 ;
 size_t SIZE_320X240 ;
 int VIDEO_PALETTE_YUV420P ;
 int VIDEO_TYPE_CAMERA ;
 int VID_TYPE_CAPTURE ;
 int brightness ;
 TYPE_2__* camera_sizes ;
 int contrast ;
 int konicawc_get_misc (struct uvd*,int,int ,int,int *,int) ;
 scalar_t__ konicawc_set_misc (struct uvd*,int,int ,int) ;
 int memset (TYPE_1__*,int,int) ;
 int saturation ;
 int sharpness ;
 int strcpy (int ,char*) ;
 int whitebal ;

__attribute__((used)) static void konicawc_configure_video(struct uvd *uvd)
{
 struct konicawc *cam = (struct konicawc *)uvd->user_data;
 u8 buf[2];

 memset(&uvd->vpic, 0, sizeof(uvd->vpic));
 memset(&uvd->vpic_old, 0x55, sizeof(uvd->vpic_old));

 RESTRICT_TO_RANGE(brightness, 0, MAX_BRIGHTNESS);
 RESTRICT_TO_RANGE(contrast, 0, MAX_CONTRAST);
 RESTRICT_TO_RANGE(saturation, 0, MAX_SATURATION);
 RESTRICT_TO_RANGE(sharpness, 0, MAX_SHARPNESS);
 RESTRICT_TO_RANGE(whitebal, 0, MAX_WHITEBAL);

 cam->brightness = brightness / 11;
 cam->contrast = contrast / 11;
 cam->saturation = saturation / 11;
 cam->sharpness = sharpness / 11;
 cam->white_bal = whitebal / 11;

 uvd->vpic.colour = 108;
 uvd->vpic.hue = 108;
 uvd->vpic.brightness = brightness;
 uvd->vpic.contrast = contrast;
 uvd->vpic.whiteness = whitebal;
 uvd->vpic.depth = 6;
 uvd->vpic.palette = VIDEO_PALETTE_YUV420P;

 memset(&uvd->vcap, 0, sizeof(uvd->vcap));
 strcpy(uvd->vcap.name, "Konica Webcam");
 uvd->vcap.type = VID_TYPE_CAPTURE;
 uvd->vcap.channels = 1;
 uvd->vcap.audios = 0;
 uvd->vcap.minwidth = camera_sizes[SIZE_160X120].width;
 uvd->vcap.minheight = camera_sizes[SIZE_160X120].height;
 uvd->vcap.maxwidth = camera_sizes[SIZE_320X240].width;
 uvd->vcap.maxheight = camera_sizes[SIZE_320X240].height;

 memset(&uvd->vchan, 0, sizeof(uvd->vchan));
 uvd->vchan.flags = 0 ;
 uvd->vchan.tuners = 0;
 uvd->vchan.channel = 0;
 uvd->vchan.type = VIDEO_TYPE_CAMERA;
 strcpy(uvd->vchan.name, "Camera");


 DEBUG(1, "device init");
 if(!konicawc_get_misc(uvd, 0x3, 0, 0x10, buf, 2))
  DEBUG(2, "3,10 -> %2.2x %2.2x", buf[0], buf[1]);
 if(!konicawc_get_misc(uvd, 0x3, 0, 0x10, buf, 2))
  DEBUG(2, "3,10 -> %2.2x %2.2x", buf[0], buf[1]);
 if(konicawc_set_misc(uvd, 0x2, 0, 0xd))
  DEBUG(2, "2,0,d failed");
 DEBUG(1, "setting initial values");
}
