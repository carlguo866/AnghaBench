
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct snd_cs46xx_pcm {size_t shift; TYPE_1__ hw_buf; TYPE_3__* pcm_channel; } ;
struct snd_cs46xx {int dummy; } ;
typedef size_t snd_pcm_uframes_t ;
struct TYPE_8__ {int address; } ;
struct TYPE_7__ {TYPE_4__* pcm_reader_scb; } ;
struct TYPE_6__ {struct snd_cs46xx_pcm* private_data; } ;


 int BA1_PBA ;
 size_t ENXIO ;
 scalar_t__ snd_BUG_ON (int) ;
 size_t snd_cs46xx_peek (struct snd_cs46xx*,int) ;
 struct snd_cs46xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_cs46xx_playback_direct_pointer(struct snd_pcm_substream *substream)
{
 struct snd_cs46xx *chip = snd_pcm_substream_chip(substream);
 size_t ptr;
 struct snd_cs46xx_pcm *cpcm = substream->runtime->private_data;

 if (snd_BUG_ON(!cpcm->pcm_channel))
  return -ENXIO;




 ptr = snd_cs46xx_peek(chip, BA1_PBA);

 ptr -= cpcm->hw_buf.addr;
 return ptr >> cpcm->shift;
}
