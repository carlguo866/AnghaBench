
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_input {int index; int audioset; int tuner; void* std; int name; void* type; } ;
struct usb_usbvision {int video_inputs; size_t dev_model; scalar_t__ have_tuner; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int video_channels; } ;


 int EINVAL ;
 void* USBVISION_NORMS ;
 void* V4L2_INPUT_TYPE_CAMERA ;
 void* V4L2_INPUT_TYPE_TUNER ;
 void* V4L2_STD_PAL ;
 int strcpy (int ,char*) ;
 TYPE_1__* usbvision_device_data ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *priv,
    struct v4l2_input *vi)
{
 struct usb_usbvision *usbvision = video_drvdata(file);
 int chan;

 if (vi->index >= usbvision->video_inputs)
  return -EINVAL;
 if (usbvision->have_tuner)
  chan = vi->index;
 else
  chan = vi->index + 1;



 switch (chan) {
 case 0:
  if (usbvision_device_data[usbvision->dev_model].video_channels == 4) {
   strcpy(vi->name, "White Video Input");
  } else {
   strcpy(vi->name, "Television");
   vi->type = V4L2_INPUT_TYPE_TUNER;
   vi->audioset = 1;
   vi->tuner = chan;
   vi->std = USBVISION_NORMS;
  }
  break;
 case 1:
  vi->type = V4L2_INPUT_TYPE_CAMERA;
  if (usbvision_device_data[usbvision->dev_model].video_channels == 4)
   strcpy(vi->name, "Green Video Input");
  else
   strcpy(vi->name, "Composite Video Input");
  vi->std = V4L2_STD_PAL;
  break;
 case 2:
  vi->type = V4L2_INPUT_TYPE_CAMERA;
  if (usbvision_device_data[usbvision->dev_model].video_channels == 4)
   strcpy(vi->name, "Yellow Video Input");
  else
   strcpy(vi->name, "S-Video Input");
  vi->std = V4L2_STD_PAL;
  break;
 case 3:
  vi->type = V4L2_INPUT_TYPE_CAMERA;
  strcpy(vi->name, "Red Video Input");
  vi->std = V4L2_STD_PAL;
  break;
 }
 return 0;
}
