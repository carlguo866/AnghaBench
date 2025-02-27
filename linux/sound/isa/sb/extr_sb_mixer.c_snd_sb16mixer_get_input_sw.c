
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sb {int mixer_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned char* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_sb* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned char snd_sbmixer_read (struct snd_sb*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb16mixer_get_input_sw(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_sb *sb = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int reg1 = kcontrol->private_value & 0xff;
 int reg2 = (kcontrol->private_value >> 8) & 0xff;
 int left_shift = (kcontrol->private_value >> 16) & 0x0f;
 int right_shift = (kcontrol->private_value >> 24) & 0x0f;
 unsigned char val1, val2;

 spin_lock_irqsave(&sb->mixer_lock, flags);
 val1 = snd_sbmixer_read(sb, reg1);
 val2 = snd_sbmixer_read(sb, reg2);
 spin_unlock_irqrestore(&sb->mixer_lock, flags);
 ucontrol->value.integer.value[0] = (val1 >> left_shift) & 0x01;
 ucontrol->value.integer.value[1] = (val2 >> left_shift) & 0x01;
 ucontrol->value.integer.value[2] = (val1 >> right_shift) & 0x01;
 ucontrol->value.integer.value[3] = (val2 >> right_shift) & 0x01;
 return 0;
}
