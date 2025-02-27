
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdsp {int use_midi_tasklet; int lock; } ;


 int EBUSY ;
 int hdsp_set_use_midi_tasklet (struct hdsp*,unsigned int) ;
 int snd_hdsp_use_is_exclusive (struct hdsp*) ;
 struct hdsp* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdsp_put_use_midi_tasklet(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct hdsp *hdsp = snd_kcontrol_chip(kcontrol);
 int change;
 unsigned int val;

 if (!snd_hdsp_use_is_exclusive(hdsp))
  return -EBUSY;
 val = ucontrol->value.integer.value[0] & 1;
 spin_lock_irq(&hdsp->lock);
 change = (int)val != hdsp->use_midi_tasklet;
 hdsp_set_use_midi_tasklet(hdsp, val);
 spin_unlock_irq(&hdsp->lock);
 return change;
}
