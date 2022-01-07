
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int capability; int rangelow; int rangehigh; int signal; int afc; int audmode; int rxsubchans; int type; int name; } ;
struct si470x_device {int (* get_register ) (struct si470x_device*,size_t) ;int* registers; int status_rssi_auto_update; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int FREQ_MUL ;
 size_t POWERCFG ;
 int POWERCFG_MONO ;
 size_t STATUSRSSI ;
 int STATUSRSSI_AFCRL ;
 int STATUSRSSI_RSSI ;
 int STATUSRSSI_ST ;
 int V4L2_TUNER_CAP_HWSEEK_BOUNDED ;
 int V4L2_TUNER_CAP_HWSEEK_WRAP ;
 int V4L2_TUNER_CAP_LOW ;
 int V4L2_TUNER_CAP_RDS ;
 int V4L2_TUNER_CAP_RDS_BLOCK_IO ;
 int V4L2_TUNER_CAP_STEREO ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_RDS ;
 int V4L2_TUNER_SUB_STEREO ;
 int strscpy (int ,char*,int) ;
 int stub1 (struct si470x_device*,size_t) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static int si470x_vidioc_g_tuner(struct file *file, void *priv,
  struct v4l2_tuner *tuner)
{
 struct si470x_device *radio = video_drvdata(file);
 int retval = 0;

 if (tuner->index != 0)
  return -EINVAL;

 if (!radio->status_rssi_auto_update) {
  retval = radio->get_register(radio, STATUSRSSI);
  if (retval < 0)
   return retval;
 }


 strscpy(tuner->name, "FM", sizeof(tuner->name));
 tuner->type = V4L2_TUNER_RADIO;
 tuner->capability = V4L2_TUNER_CAP_LOW | V4L2_TUNER_CAP_STEREO |
       V4L2_TUNER_CAP_RDS | V4L2_TUNER_CAP_RDS_BLOCK_IO |
       V4L2_TUNER_CAP_HWSEEK_BOUNDED |
       V4L2_TUNER_CAP_HWSEEK_WRAP;
 tuner->rangelow = 76 * FREQ_MUL;
 tuner->rangehigh = 108 * FREQ_MUL;


 if ((radio->registers[STATUSRSSI] & STATUSRSSI_ST) == 0)
  tuner->rxsubchans = V4L2_TUNER_SUB_MONO;
 else
  tuner->rxsubchans = V4L2_TUNER_SUB_STEREO;



 tuner->rxsubchans |= V4L2_TUNER_SUB_RDS;


 if ((radio->registers[POWERCFG] & POWERCFG_MONO) == 0)
  tuner->audmode = V4L2_TUNER_MODE_STEREO;
 else
  tuner->audmode = V4L2_TUNER_MODE_MONO;



 tuner->signal = (radio->registers[STATUSRSSI] & STATUSRSSI_RSSI);

 tuner->signal = (tuner->signal * 873) + (8 * tuner->signal / 10);
 if (tuner->signal > 0xffff)
  tuner->signal = 0xffff;



 tuner->afc = (radio->registers[STATUSRSSI] & STATUSRSSI_AFCRL) ? 1 : 0;

 return retval;
}
