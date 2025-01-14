
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8904_priv {int retune_mobile_cfg; scalar_t__ fs; int * retune_mobile_texts; int num_retune_mobile_texts; struct wm8904_pdata* pdata; } ;
struct wm8904_pdata {int num_retune_mobile_cfgs; TYPE_1__* retune_mobile_cfgs; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int* regs; scalar_t__ rate; int name; } ;


 int INT_MAX ;
 scalar_t__ WM8904_EQ1 ;
 int WM8904_EQ_ENA ;
 int WM8904_EQ_REGS ;
 int abs (scalar_t__) ;
 int dev_dbg (int ,char*,int ,scalar_t__,scalar_t__) ;
 struct wm8904_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,scalar_t__) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,scalar_t__,int,int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void wm8904_set_retune_mobile(struct snd_soc_component *component)
{
 struct wm8904_priv *wm8904 = snd_soc_component_get_drvdata(component);
 struct wm8904_pdata *pdata = wm8904->pdata;
 int best, best_val, save, i, cfg;

 if (!pdata || !wm8904->num_retune_mobile_texts)
  return;



 cfg = wm8904->retune_mobile_cfg;
 best = 0;
 best_val = INT_MAX;
 for (i = 0; i < pdata->num_retune_mobile_cfgs; i++) {
  if (strcmp(pdata->retune_mobile_cfgs[i].name,
      wm8904->retune_mobile_texts[cfg]) == 0 &&
      abs(pdata->retune_mobile_cfgs[i].rate
   - wm8904->fs) < best_val) {
   best = i;
   best_val = abs(pdata->retune_mobile_cfgs[i].rate
           - wm8904->fs);
  }
 }

 dev_dbg(component->dev, "ReTune Mobile %s/%dHz for %dHz sample rate\n",
  pdata->retune_mobile_cfgs[best].name,
  pdata->retune_mobile_cfgs[best].rate,
  wm8904->fs);




 save = snd_soc_component_read32(component, WM8904_EQ1);

 for (i = 0; i < WM8904_EQ_REGS; i++)
  snd_soc_component_update_bits(component, WM8904_EQ1 + i, 0xffff,
    pdata->retune_mobile_cfgs[best].regs[i]);

 snd_soc_component_update_bits(component, WM8904_EQ1, WM8904_EQ_ENA, save);
}
