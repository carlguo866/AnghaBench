
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;


 int STAC946X_GENERAL_PURPOSE ;
 int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned char stac9460_2_get (struct snd_ice1712*,int ) ;
 int stac9460_2_put (struct snd_ice1712*,int ,unsigned char) ;
 unsigned char stac9460_get (struct snd_ice1712*,int ) ;
 int stac9460_put (struct snd_ice1712*,int ,unsigned char) ;

__attribute__((used)) static int stac9460_mic_sw_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned char new, old;
 int change, id;

 id = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 if (id == 0)
  old = stac9460_get(ice, STAC946X_GENERAL_PURPOSE);
 else
  old = stac9460_2_get(ice, STAC946X_GENERAL_PURPOSE);
 new = (ucontrol->value.enumerated.item[0] << 7 & 0x80) | (old & ~0x80);
 change = (new != old);
 if (change) {
  if (id == 0)
   stac9460_put(ice, STAC946X_GENERAL_PURPOSE, new);
  else
   stac9460_2_put(ice, STAC946X_GENERAL_PURPOSE, new);
 }
 return change;
}
