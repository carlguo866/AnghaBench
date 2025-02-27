
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {size_t number; size_t stream; struct loopback* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {void* hw; int private_free; struct loopback_pcm* private_data; } ;
struct loopback_pcm {struct loopback_cable* cable; int timer; struct snd_pcm_substream* substream; struct loopback* loopback; } ;
struct loopback_cable {void* hw; struct loopback_pcm** streams; int lock; } ;
struct loopback {int cable_lock; struct loopback_cable*** cables; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int get_cable_index (struct snd_pcm_substream*) ;
 scalar_t__ get_notify (struct loopback_pcm*) ;
 int kfree (struct loopback_pcm*) ;
 void* kzalloc (int,int ) ;
 void* loopback_pcm_hardware ;
 int loopback_runtime_free ;
 int loopback_timer_function ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rule_channels ;
 int rule_format ;
 int rule_rate ;
 int setup_timer (int *,int ,unsigned long) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,void**,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int loopback_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct loopback *loopback = substream->private_data;
 struct loopback_pcm *dpcm;
 struct loopback_cable *cable;
 int err = 0;
 int dev = get_cable_index(substream);

 mutex_lock(&loopback->cable_lock);
 dpcm = kzalloc(sizeof(*dpcm), GFP_KERNEL);
 if (!dpcm) {
  err = -ENOMEM;
  goto unlock;
 }
 dpcm->loopback = loopback;
 dpcm->substream = substream;
 setup_timer(&dpcm->timer, loopback_timer_function,
      (unsigned long)dpcm);

 cable = loopback->cables[substream->number][dev];
 if (!cable) {
  cable = kzalloc(sizeof(*cable), GFP_KERNEL);
  if (!cable) {
   kfree(dpcm);
   err = -ENOMEM;
   goto unlock;
  }
  spin_lock_init(&cable->lock);
  cable->hw = loopback_pcm_hardware;
  loopback->cables[substream->number][dev] = cable;
 }
 dpcm->cable = cable;
 cable->streams[substream->stream] = dpcm;

 snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIODS);




 err = snd_pcm_hw_rule_add(runtime, 0,
      SNDRV_PCM_HW_PARAM_FORMAT,
      rule_format, &runtime->hw,
      SNDRV_PCM_HW_PARAM_FORMAT, -1);
 if (err < 0)
  goto unlock;
 err = snd_pcm_hw_rule_add(runtime, 0,
      SNDRV_PCM_HW_PARAM_RATE,
      rule_rate, &runtime->hw,
      SNDRV_PCM_HW_PARAM_RATE, -1);
 if (err < 0)
  goto unlock;
 err = snd_pcm_hw_rule_add(runtime, 0,
      SNDRV_PCM_HW_PARAM_CHANNELS,
      rule_channels, &runtime->hw,
      SNDRV_PCM_HW_PARAM_CHANNELS, -1);
 if (err < 0)
  goto unlock;

 runtime->private_data = dpcm;
 runtime->private_free = loopback_runtime_free;
 if (get_notify(dpcm))
  runtime->hw = loopback_pcm_hardware;
 else
  runtime->hw = cable->hw;
 unlock:
 mutex_unlock(&loopback->cable_lock);
 return err;
}
