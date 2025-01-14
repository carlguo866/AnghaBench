
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int i2c; struct ews_spec* spec; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ews_spec {int * i2cdevs; } ;


 int EIO ;
 size_t EWS_I2C_PCF2 ;
 unsigned char ICE1712_EWS88MT_OUTPUT_SENSE ;
 int snd_i2c_lock (int ) ;
 int snd_i2c_readbytes (int ,unsigned char*,int) ;
 int snd_i2c_sendbytes (int ,unsigned char*,int) ;
 int snd_i2c_unlock (int ) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ice1712_ews88mt_output_sense_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 struct ews_spec *spec = ice->spec;
 unsigned char data, ndata;

 snd_i2c_lock(ice->i2c);
 if (snd_i2c_readbytes(spec->i2cdevs[EWS_I2C_PCF2], &data, 1) != 1) {
  snd_i2c_unlock(ice->i2c);
  return -EIO;
 }
 ndata = (data & ~ICE1712_EWS88MT_OUTPUT_SENSE) | (ucontrol->value.enumerated.item[0] ? ICE1712_EWS88MT_OUTPUT_SENSE : 0);
 if (ndata != data && snd_i2c_sendbytes(spec->i2cdevs[EWS_I2C_PCF2],
            &ndata, 1) != 1) {
  snd_i2c_unlock(ice->i2c);
  return -EIO;
 }
 snd_i2c_unlock(ice->i2c);
 return ndata != data;
}
