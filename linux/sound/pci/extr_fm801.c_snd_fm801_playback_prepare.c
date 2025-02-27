
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; scalar_t__ dma_addr; int rate; int format; } ;
struct fm801 {int ply_size; int ply_count; int ply_ctrl; int reg_lock; scalar_t__ ply_buffer; scalar_t__ ply_pos; scalar_t__ ply_buf; } ;


 int FM801_16BIT ;
 int FM801_CHANNELS_4 ;
 int FM801_CHANNELS_6 ;
 int FM801_CHANNELS_MASK ;
 int FM801_RATE_MASK ;
 int FM801_RATE_SHIFT ;
 int FM801_START ;
 int FM801_STEREO ;
 int PLY_BUF1 ;
 int PLY_BUF2 ;
 int PLY_COUNT ;
 int PLY_CTRL ;
 int fm801_writel (struct fm801*,int ,scalar_t__) ;
 int fm801_writew (struct fm801*,int ,int) ;
 int snd_fm801_rate_bits (int ) ;
 int snd_pcm_format_width (int ) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct fm801* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_fm801_playback_prepare(struct snd_pcm_substream *substream)
{
 struct fm801 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 chip->ply_size = snd_pcm_lib_buffer_bytes(substream);
 chip->ply_count = snd_pcm_lib_period_bytes(substream);
 spin_lock_irq(&chip->reg_lock);
 chip->ply_ctrl &= ~(FM801_START | FM801_16BIT |
        FM801_STEREO | FM801_RATE_MASK |
        FM801_CHANNELS_MASK);
 if (snd_pcm_format_width(runtime->format) == 16)
  chip->ply_ctrl |= FM801_16BIT;
 if (runtime->channels > 1) {
  chip->ply_ctrl |= FM801_STEREO;
  if (runtime->channels == 4)
   chip->ply_ctrl |= FM801_CHANNELS_4;
  else if (runtime->channels == 6)
   chip->ply_ctrl |= FM801_CHANNELS_6;
 }
 chip->ply_ctrl |= snd_fm801_rate_bits(runtime->rate) << FM801_RATE_SHIFT;
 chip->ply_buf = 0;
 fm801_writew(chip, PLY_CTRL, chip->ply_ctrl);
 fm801_writew(chip, PLY_COUNT, chip->ply_count - 1);
 chip->ply_buffer = runtime->dma_addr;
 chip->ply_pos = 0;
 fm801_writel(chip, PLY_BUF1, chip->ply_buffer);
 fm801_writel(chip, PLY_BUF2,
       chip->ply_buffer + (chip->ply_count % chip->ply_size));
 spin_unlock_irq(&chip->reg_lock);
 return 0;
}
