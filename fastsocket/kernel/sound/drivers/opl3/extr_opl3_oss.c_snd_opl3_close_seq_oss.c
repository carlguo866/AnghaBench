
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_oss_arg {struct snd_opl3* private_data; } ;
struct snd_opl3 {int dummy; } ;


 int ENXIO ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_opl3_synth_cleanup (struct snd_opl3*) ;
 int snd_opl3_synth_use_dec (struct snd_opl3*) ;

__attribute__((used)) static int snd_opl3_close_seq_oss(struct snd_seq_oss_arg *arg)
{
 struct snd_opl3 *opl3;

 if (snd_BUG_ON(!arg))
  return -ENXIO;
 opl3 = arg->private_data;

 snd_opl3_synth_cleanup(opl3);

 snd_opl3_synth_use_dec(opl3);
 return 0;
}
