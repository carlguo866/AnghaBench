
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1 {unsigned int p16v_capture_source; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int BASIC_INTERRUPT ;
 int EINVAL ;
 int snd_emu10k1_ptr20_read (struct snd_emu10k1*,int ,int ) ;
 int snd_emu10k1_ptr20_write (struct snd_emu10k1*,int ,int ,int) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_p16v_capture_source_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 int change = 0;
 u32 mask;
 u32 source;

 val = ucontrol->value.enumerated.item[0] ;
 if (val > 7)
  return -EINVAL;
 change = (emu->p16v_capture_source != val);
 if (change) {
  emu->p16v_capture_source = val;
  source = (val << 28) | (val << 24) | (val << 20) | (val << 16);
  mask = snd_emu10k1_ptr20_read(emu, BASIC_INTERRUPT, 0) & 0xffff;
  snd_emu10k1_ptr20_write(emu, BASIC_INTERRUPT, 0, source | mask);
 }
        return change;
}
