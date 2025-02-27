
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8996_priv {int jack_mic; int detecting; int jack_flips; int jack; int (* polarity_cb ) (struct snd_soc_component*,int) ;} ;
struct snd_soc_component {int dev; } ;


 int SND_JACK_BTN_0 ;
 int SND_JACK_HEADSET ;
 int SND_JACK_LINEOUT ;
 int WM8996_ACCESSORY_DETECT_MODE_2 ;
 int WM8996_HPOUT1FB_SRC ;
 int WM8996_MICD_BIAS_SRC ;
 int WM8996_MICD_BIAS_STARTTIME_MASK ;
 int WM8996_MICD_BIAS_STARTTIME_SHIFT ;
 int WM8996_MICD_RATE_MASK ;
 int WM8996_MICD_RATE_SHIFT ;
 int WM8996_MICD_SRC ;
 int WM8996_MICD_STS ;
 int WM8996_MICD_VALID ;
 int WM8996_MIC_DETECT_1 ;
 int WM8996_MIC_DETECT_3 ;
 int dev_dbg (int ,char*,...) ;
 int dev_warn (int ,char*) ;
 struct wm8996_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_jack_report (int ,int,int) ;
 int stub1 (struct snd_soc_component*,int) ;
 int wm8996_hpdet_start (struct snd_soc_component*) ;
 int wm8996_report_headphone (struct snd_soc_component*) ;

__attribute__((used)) static void wm8996_micd(struct snd_soc_component *component)
{
 struct wm8996_priv *wm8996 = snd_soc_component_get_drvdata(component);
 int val, reg;

 val = snd_soc_component_read32(component, WM8996_MIC_DETECT_3);

 dev_dbg(component->dev, "Microphone event: %x\n", val);

 if (!(val & WM8996_MICD_VALID)) {
  dev_warn(component->dev, "Microphone detection state invalid\n");
  return;
 }


 if (!(val & WM8996_MICD_STS)) {
  dev_dbg(component->dev, "Jack removal detected\n");
  wm8996->jack_mic = 0;
  wm8996->detecting = 1;
  wm8996->jack_flips = 0;
  snd_soc_jack_report(wm8996->jack, 0,
        SND_JACK_LINEOUT | SND_JACK_HEADSET |
        SND_JACK_BTN_0);

  snd_soc_component_update_bits(component, WM8996_MIC_DETECT_1,
        WM8996_MICD_RATE_MASK |
        WM8996_MICD_BIAS_STARTTIME_MASK,
        WM8996_MICD_RATE_MASK |
        9 << WM8996_MICD_BIAS_STARTTIME_SHIFT);
  return;
 }





 if (val & 0x400) {
  if (wm8996->detecting) {
   dev_dbg(component->dev, "Microphone detected\n");
   wm8996->jack_mic = 1;
   wm8996_hpdet_start(component);



   snd_soc_component_update_bits(component, WM8996_MIC_DETECT_1,
         WM8996_MICD_RATE_MASK |
         WM8996_MICD_BIAS_STARTTIME_MASK,
         5 << WM8996_MICD_RATE_SHIFT |
         7 << WM8996_MICD_BIAS_STARTTIME_SHIFT);
  } else {
   dev_dbg(component->dev, "Mic button up\n");
   snd_soc_jack_report(wm8996->jack, 0, SND_JACK_BTN_0);
  }

  return;
 }







 if (wm8996->detecting && (val & 0x3f0)) {
  wm8996->jack_flips++;

  if (wm8996->jack_flips > 1) {
   wm8996_report_headphone(component);
   return;
  }

  reg = snd_soc_component_read32(component, WM8996_ACCESSORY_DETECT_MODE_2);
  reg ^= WM8996_HPOUT1FB_SRC | WM8996_MICD_SRC |
   WM8996_MICD_BIAS_SRC;
  snd_soc_component_update_bits(component, WM8996_ACCESSORY_DETECT_MODE_2,
        WM8996_HPOUT1FB_SRC | WM8996_MICD_SRC |
        WM8996_MICD_BIAS_SRC, reg);

  if (wm8996->polarity_cb)
   wm8996->polarity_cb(component,
         (reg & WM8996_MICD_SRC) != 0);

  dev_dbg(component->dev, "Set microphone polarity to %d\n",
   (reg & WM8996_MICD_SRC) != 0);

  return;
 }




 if (val & 0x3fc) {
  if (wm8996->jack_mic) {
   dev_dbg(component->dev, "Mic button detected\n");
   snd_soc_jack_report(wm8996->jack, SND_JACK_BTN_0,
         SND_JACK_BTN_0);
  } else if (wm8996->detecting) {
   wm8996_report_headphone(component);
  }
 }
}
