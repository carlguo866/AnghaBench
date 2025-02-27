
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_azf3328 {TYPE_1__* card; } ;
struct snd_ac97 {struct snd_azf3328* private_data; } ;
struct TYPE_2__ {int dev; } ;
 unsigned short AZF_AC97_REG_EMU_IO_READ ;
 unsigned short AZF_AC97_REG_REAL_IO_READ ;
 unsigned short AZF_AC97_REG_UNSUPPORTED ;
 unsigned short AZF_REG_MASK ;
 unsigned short IDX_MIXER_SOMETHING30H ;
 unsigned short azf_emulated_ac97_caps ;
 unsigned short azf_emulated_ac97_powerdown ;
 int azf_emulated_ac97_vendor_id ;
 int dev_dbg (int ,char*,unsigned short) ;
 unsigned short snd_azf3328_mixer_ac97_map_reg_idx (unsigned short) ;
 int snd_azf3328_mixer_ac97_map_unsupported (struct snd_azf3328 const*,unsigned short,char*) ;
 unsigned short snd_azf3328_mixer_inw (struct snd_azf3328 const*,unsigned short) ;

__attribute__((used)) static unsigned short
snd_azf3328_mixer_ac97_read(struct snd_ac97 *ac97, unsigned short reg_ac97)
{
 const struct snd_azf3328 *chip = ac97->private_data;
 unsigned short reg_azf = snd_azf3328_mixer_ac97_map_reg_idx(reg_ac97);
 unsigned short reg_val = 0;
 bool unsupported = 0;

 dev_dbg(chip->card->dev, "snd_azf3328_mixer_ac97_read reg_ac97 %u\n",
  reg_ac97);
 if (reg_azf & AZF_AC97_REG_UNSUPPORTED)
  unsupported = 1;
 else {
  if (reg_azf & AZF_AC97_REG_REAL_IO_READ)
   reg_val = snd_azf3328_mixer_inw(chip,
      reg_azf & AZF_REG_MASK);
  else {
   snd_azf3328_mixer_inw(chip, IDX_MIXER_SOMETHING30H);
  }

  if (reg_azf & AZF_AC97_REG_EMU_IO_READ) {
   switch (reg_ac97) {
   case 130:
    reg_val |= azf_emulated_ac97_caps;
    break;
   case 131:
    reg_val |= azf_emulated_ac97_powerdown;
    break;
   case 133:
   case 132:

    reg_val |= 0;
    break;
   case 129:
    reg_val = azf_emulated_ac97_vendor_id >> 16;
    break;
   case 128:
    reg_val = azf_emulated_ac97_vendor_id & 0xffff;
    break;
   default:
    unsupported = 1;
    break;
   }
  }
 }
 if (unsupported)
  snd_azf3328_mixer_ac97_map_unsupported(chip, reg_ac97, "read");

 return reg_val;
}
