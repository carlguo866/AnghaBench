
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct ivtv {TYPE_2__* card; } ;
struct TYPE_3__ {int mask; int f32000; int f44100; int f48000; } ;
struct TYPE_4__ {TYPE_1__ gpio_audio_freq; } ;


 int IVTV_REG_GPIO_OUT ;
 int read_reg (int ) ;
 struct ivtv* sd_to_ivtv (struct v4l2_subdev*) ;
 int write_reg (int,int ) ;

__attribute__((used)) static int subdev_s_clock_freq(struct v4l2_subdev *sd, u32 freq)
{
 struct ivtv *itv = sd_to_ivtv(sd);
 u16 mask, data;

 mask = itv->card->gpio_audio_freq.mask;
 switch (freq) {
 case 32000:
  data = itv->card->gpio_audio_freq.f32000;
  break;
 case 44100:
  data = itv->card->gpio_audio_freq.f44100;
  break;
 case 48000:
 default:
  data = itv->card->gpio_audio_freq.f48000;
  break;
 }
 if (mask)
  write_reg((read_reg(IVTV_REG_GPIO_OUT) & ~mask) | (data & mask), IVTV_REG_GPIO_OUT);
 return 0;
}
