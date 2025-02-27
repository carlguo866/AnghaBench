
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_7__ {unsigned int* input_source; } ;
struct snd_emu10k1 {TYPE_4__* card_capabilities; TYPE_3__ emu1010; } ;
struct TYPE_5__ {unsigned int* item; } ;
struct TYPE_6__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_8__ {scalar_t__ emu_model; } ;


 int EINVAL ;
 scalar_t__ EMU_MODEL_EMU1616 ;
 int * emu1010_input_dst ;
 int * emu1010_src_regs ;
 int * emu1616_src_regs ;
 int snd_emu1010_fpga_link_dst_src_write (struct snd_emu10k1*,int ,int ) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_emu1010_input_source_put(struct snd_kcontrol *kcontrol,
                                 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 unsigned int channel;

 val = ucontrol->value.enumerated.item[0];
 if (val >= 53 ||
     (emu->card_capabilities->emu_model == EMU_MODEL_EMU1616 &&
      val >= 49))
  return -EINVAL;
 channel = (kcontrol->private_value) & 0xff;

 if (channel >= 22)
  return -EINVAL;
 if (emu->emu1010.input_source[channel] == val)
  return 0;
 emu->emu1010.input_source[channel] = val;
 if (emu->card_capabilities->emu_model == EMU_MODEL_EMU1616)
  snd_emu1010_fpga_link_dst_src_write(emu,
   emu1010_input_dst[channel], emu1616_src_regs[val]);
 else
  snd_emu1010_fpga_link_dst_src_write(emu,
   emu1010_input_dst[channel], emu1010_src_regs[val]);
 return 1;
}
