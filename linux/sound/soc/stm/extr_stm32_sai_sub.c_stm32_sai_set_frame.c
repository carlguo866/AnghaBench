
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_sai_sub_data {int fmt; int fs_length; int slot_width; int slots; int data_size; int regmap; } ;
struct snd_soc_dai {int dev; } ;


 int SAI_XFRCR_FRL_MASK ;
 int SAI_XFRCR_FRL_SET (int) ;
 int SAI_XFRCR_FSALL_MASK ;
 int SAI_XFRCR_FSALL_SET (int) ;
 int SAI_XSLOTR_FBOFF_MASK ;
 int SAI_XSLOTR_FBOFF_SET (int) ;
 int SND_SOC_DAIFMT_DSP_A ;
 int SND_SOC_DAIFMT_DSP_B ;
 int SND_SOC_DAIFMT_FORMAT_MASK ;
 int SND_SOC_DAIFMT_LSB ;
 int STM_SAI_FRCR_REGX ;
 int STM_SAI_SLOTR_REGX ;
 int dev_dbg (int ,char*,int,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct stm32_sai_sub_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void stm32_sai_set_frame(struct snd_soc_dai *cpu_dai)
{
 struct stm32_sai_sub_data *sai = snd_soc_dai_get_drvdata(cpu_dai);
 int fs_active, offset, format;
 int frcr, frcr_mask;

 format = sai->fmt & SND_SOC_DAIFMT_FORMAT_MASK;
 sai->fs_length = sai->slot_width * sai->slots;

 fs_active = sai->fs_length / 2;
 if ((format == SND_SOC_DAIFMT_DSP_A) ||
     (format == SND_SOC_DAIFMT_DSP_B))
  fs_active = 1;

 frcr = SAI_XFRCR_FRL_SET((sai->fs_length - 1));
 frcr |= SAI_XFRCR_FSALL_SET((fs_active - 1));
 frcr_mask = SAI_XFRCR_FRL_MASK | SAI_XFRCR_FSALL_MASK;

 dev_dbg(cpu_dai->dev, "Frame length %d, frame active %d\n",
  sai->fs_length, fs_active);

 regmap_update_bits(sai->regmap, STM_SAI_FRCR_REGX, frcr_mask, frcr);

 if ((sai->fmt & SND_SOC_DAIFMT_FORMAT_MASK) == SND_SOC_DAIFMT_LSB) {
  offset = sai->slot_width - sai->data_size;

  regmap_update_bits(sai->regmap, STM_SAI_SLOTR_REGX,
       SAI_XSLOTR_FBOFF_MASK,
       SAI_XSLOTR_FBOFF_SET(offset));
 }
}
