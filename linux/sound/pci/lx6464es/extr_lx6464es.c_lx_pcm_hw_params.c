
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_4__ {struct snd_pcm_substream* stream; } ;
struct TYPE_6__ {struct snd_pcm_substream* stream; } ;
struct lx6464es {int setup_mutex; TYPE_1__ playback_stream; TYPE_3__ capture_stream; TYPE_2__* card; } ;
struct TYPE_5__ {int dev; } ;


 int dev_dbg (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct lx6464es* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int lx_pcm_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *hw_params, int is_capture)
{
 struct lx6464es *chip = snd_pcm_substream_chip(substream);
 int err = 0;

 dev_dbg(chip->card->dev, "->lx_pcm_hw_params\n");

 mutex_lock(&chip->setup_mutex);


 err = snd_pcm_lib_malloc_pages(substream,
           params_buffer_bytes(hw_params));

 if (is_capture)
  chip->capture_stream.stream = substream;
 else
  chip->playback_stream.stream = substream;

 mutex_unlock(&chip->setup_mutex);
 return err;
}
