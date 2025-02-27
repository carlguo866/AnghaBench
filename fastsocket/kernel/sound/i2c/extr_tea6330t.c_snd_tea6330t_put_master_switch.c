
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tea6330t {unsigned char* regs; unsigned char mleft; unsigned char mright; int bus; int device; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 size_t TEA6330T_SADDR_VOLUME_LEFT ;
 size_t TEA6330T_SADDR_VOLUME_RIGHT ;
 int snd_i2c_lock (int ) ;
 int snd_i2c_sendbytes (int ,unsigned char*,int) ;
 int snd_i2c_unlock (int ) ;
 struct tea6330t* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_tea6330t_put_master_switch(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct tea6330t *tea = snd_kcontrol_chip(kcontrol);
 int change, err;
 unsigned char bytes[3];
 unsigned char oval1, oval2, val1, val2;

 val1 = ucontrol->value.integer.value[0] & 1;
 val2 = ucontrol->value.integer.value[1] & 1;
 snd_i2c_lock(tea->bus);
 oval1 = tea->regs[TEA6330T_SADDR_VOLUME_LEFT] == 0 ? 0 : 1;
 oval2 = tea->regs[TEA6330T_SADDR_VOLUME_RIGHT] == 0 ? 0 : 1;
 change = val1 != oval1 || val2 != oval2;
 tea->regs[TEA6330T_SADDR_VOLUME_LEFT] = val1 ? tea->mleft : 0;
 tea->regs[TEA6330T_SADDR_VOLUME_RIGHT] = val2 ? tea->mright : 0;
 bytes[0] = TEA6330T_SADDR_VOLUME_LEFT;
 bytes[1] = tea->regs[TEA6330T_SADDR_VOLUME_LEFT];
 bytes[2] = tea->regs[TEA6330T_SADDR_VOLUME_RIGHT];
 if ((err = snd_i2c_sendbytes(tea->device, bytes, 3)) < 0)
  change = err;
 snd_i2c_unlock(tea->bus);
 return change;
}
