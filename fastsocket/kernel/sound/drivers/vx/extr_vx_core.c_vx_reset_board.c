
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vx_core {int freq; int uer_bits; TYPE_1__* ops; int uer_detected; int clock_mode; int clock_source; int audio_source; int audio_source_target; } ;
struct TYPE_2__ {int (* reset_board ) (struct vx_core*,int) ;} ;


 int INTERNAL_QUARTZ ;
 int SNDRV_PCM_DEFAULT_CON_SPDIF ;
 int VX_AUDIO_SRC_LINE ;
 int VX_CLOCK_MODE_AUTO ;
 int VX_UER_MODE_NOT_PRESENT ;
 scalar_t__ snd_BUG_ON (int) ;
 int stub1 (struct vx_core*,int) ;
 scalar_t__ vx_is_pcmcia (struct vx_core*) ;
 int vx_reset_codec (struct vx_core*,int) ;
 int vx_reset_dsp (struct vx_core*) ;
 int vx_set_iec958_status (struct vx_core*,int ) ;
 int vx_set_internal_clock (struct vx_core*,int) ;
 int vx_test_and_ack (struct vx_core*) ;
 int vx_validate_irq (struct vx_core*,int) ;

__attribute__((used)) static void vx_reset_board(struct vx_core *chip, int cold_reset)
{
 if (snd_BUG_ON(!chip->ops->reset_board))
  return;


 chip->audio_source = VX_AUDIO_SRC_LINE;
 if (cold_reset) {
  chip->audio_source_target = chip->audio_source;
  chip->clock_source = INTERNAL_QUARTZ;
  chip->clock_mode = VX_CLOCK_MODE_AUTO;
  chip->freq = 48000;
  chip->uer_detected = VX_UER_MODE_NOT_PRESENT;
  chip->uer_bits = SNDRV_PCM_DEFAULT_CON_SPDIF;
 }

 chip->ops->reset_board(chip, cold_reset);

 vx_reset_codec(chip, cold_reset);

 vx_set_internal_clock(chip, chip->freq);


 vx_reset_dsp(chip);

 if (vx_is_pcmcia(chip)) {

  vx_test_and_ack(chip);
  vx_validate_irq(chip, 1);
 }


 vx_set_iec958_status(chip, chip->uer_bits);
}
