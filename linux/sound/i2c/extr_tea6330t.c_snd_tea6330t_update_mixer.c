
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct tea6330t {int equalizer; int fader; int* regs; int max_bass; int max_treble; int bass; int treble; int mleft; int mright; struct snd_i2c_bus* bus; struct snd_i2c_device* device; } ;
struct snd_kcontrol_new {int name; } ;
struct snd_i2c_device {int private_free; struct tea6330t* private_data; } ;
struct snd_i2c_bus {int dummy; } ;
struct snd_card {int mixername; } ;


 unsigned int ARRAY_SIZE (struct snd_kcontrol_new*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TEA6330T_ADDR ;
 int TEA6330T_EQN ;
 size_t TEA6330T_SADDR_AUDIO_SWITCH ;
 size_t TEA6330T_SADDR_BASS ;
 size_t TEA6330T_SADDR_FADER ;
 size_t TEA6330T_SADDR_TREBLE ;
 unsigned char TEA6330T_SADDR_VOLUME_LEFT ;
 int kfree (struct tea6330t*) ;
 struct tea6330t* kzalloc (int,int ) ;
 int snd_component_add (struct snd_card*,char*) ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct tea6330t*) ;
 int snd_i2c_device_create (struct snd_i2c_bus*,char*,int ,struct snd_i2c_device**) ;
 int snd_i2c_device_free (struct snd_i2c_device*) ;
 int snd_i2c_lock (struct snd_i2c_bus*) ;
 int snd_i2c_sendbytes (struct snd_i2c_device*,unsigned char*,int) ;
 int snd_i2c_unlock (struct snd_i2c_bus*) ;
 int snd_tea6330_free ;
 struct snd_kcontrol_new* snd_tea6330t_controls ;
 int strcat (int ,char*) ;
 int strcmp (int ,char*) ;

int snd_tea6330t_update_mixer(struct snd_card *card,
         struct snd_i2c_bus *bus,
         int equalizer, int fader)
{
 struct snd_i2c_device *device;
 struct tea6330t *tea;
 struct snd_kcontrol_new *knew;
 unsigned int idx;
 int err = -ENOMEM;
 u8 default_treble, default_bass;
 unsigned char bytes[7];

 tea = kzalloc(sizeof(*tea), GFP_KERNEL);
 if (tea == ((void*)0))
  return -ENOMEM;
 if ((err = snd_i2c_device_create(bus, "TEA6330T", TEA6330T_ADDR, &device)) < 0) {
  kfree(tea);
  return err;
 }
 tea->device = device;
 tea->bus = bus;
 tea->equalizer = equalizer;
 tea->fader = fader;
 device->private_data = tea;
 device->private_free = snd_tea6330_free;

 snd_i2c_lock(bus);


 tea->regs[TEA6330T_SADDR_FADER] = 0x3f;
 tea->regs[TEA6330T_SADDR_AUDIO_SWITCH] = equalizer ? 0 : TEA6330T_EQN;

 if (!tea->equalizer) {
  tea->max_bass = 9;
  tea->max_treble = 8;
  default_bass = 3 + 4;
  tea->bass = 4;
  default_treble = 3 + 4;
  tea->treble = 4;
 } else {
  tea->max_bass = 5;
  tea->max_treble = 0;
  default_bass = 7 + 4;
  tea->bass = 4;
  default_treble = 3;
  tea->treble = 0;
 }
 tea->mleft = tea->mright = 0x14;
 tea->regs[TEA6330T_SADDR_BASS] = default_bass;
 tea->regs[TEA6330T_SADDR_TREBLE] = default_treble;


 bytes[0] = TEA6330T_SADDR_VOLUME_LEFT;
 for (idx = 0; idx < 6; idx++)
  bytes[idx+1] = tea->regs[idx];
 if ((err = snd_i2c_sendbytes(device, bytes, 7)) < 0)
  goto __error;

 strcat(card->mixername, ",TEA6330T");
 if ((err = snd_component_add(card, "TEA6330T")) < 0)
  goto __error;

 for (idx = 0; idx < ARRAY_SIZE(snd_tea6330t_controls); idx++) {
  knew = &snd_tea6330t_controls[idx];
  if (tea->treble == 0 && !strcmp(knew->name, "Tone Control - Treble"))
   continue;
  if ((err = snd_ctl_add(card, snd_ctl_new1(knew, tea))) < 0)
   goto __error;
 }

 snd_i2c_unlock(bus);
 return 0;

      __error:
       snd_i2c_unlock(bus);
       snd_i2c_device_free(device);
       return err;
}
