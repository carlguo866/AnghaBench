
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm2200_priv {int fll_fout; int fll_src; unsigned int fll_fref; int fll_lock; } ;
struct snd_soc_component {int dev; } ;
struct i2c_client {scalar_t__ irq; } ;
struct _fll_div {int fll_outdiv; int fll_fratio; int theta; int n; int fll_refclk_div; int lambda; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int WM2200_CLOCKING_3 ;
 int WM2200_FLL_CLK_REF_DIV_MASK ;
 int WM2200_FLL_CLK_REF_DIV_SHIFT ;
 int WM2200_FLL_CLK_REF_SRC_MASK ;
 int WM2200_FLL_CONTROL_1 ;
 int WM2200_FLL_CONTROL_2 ;
 int WM2200_FLL_CONTROL_3 ;
 int WM2200_FLL_CONTROL_4 ;
 int WM2200_FLL_CONTROL_6 ;
 int WM2200_FLL_CONTROL_7 ;
 int WM2200_FLL_EFS_1 ;
 int WM2200_FLL_EFS_2 ;
 int WM2200_FLL_EFS_ENA ;
 int WM2200_FLL_ENA ;
 int WM2200_FLL_FRACN_ENA ;
 int WM2200_FLL_FRATIO_MASK ;
 int WM2200_FLL_LAMBDA_MASK ;
 int WM2200_FLL_LOCK_STS ;
 int WM2200_FLL_N_MASK ;
 int WM2200_FLL_OUTDIV_MASK ;
 int WM2200_FLL_OUTDIV_SHIFT ;



 int WM2200_FLL_THETA_MASK ;
 int WM2200_INTERRUPT_RAW_STATUS_2 ;
 int WM2200_SYSCLK_ENA ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,...) ;
 int fll_factors (struct _fll_div*,unsigned int,unsigned int) ;
 int msecs_to_jiffies (int) ;
 int msleep (int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 struct wm2200_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct i2c_client* to_i2c_client (int ) ;
 int try_wait_for_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int wm2200_set_fll(struct snd_soc_component *component, int fll_id, int source,
     unsigned int Fref, unsigned int Fout)
{
 struct i2c_client *i2c = to_i2c_client(component->dev);
 struct wm2200_priv *wm2200 = snd_soc_component_get_drvdata(component);
 struct _fll_div factors;
 int ret, i, timeout;
 unsigned long time_left;

 if (!Fout) {
  dev_dbg(component->dev, "FLL disabled");

  if (wm2200->fll_fout)
   pm_runtime_put(component->dev);

  wm2200->fll_fout = 0;
  snd_soc_component_update_bits(component, WM2200_FLL_CONTROL_1,
        WM2200_FLL_ENA, 0);
  return 0;
 }

 switch (source) {
 case 129:
 case 128:
 case 130:
  break;
 default:
  dev_err(component->dev, "Invalid FLL source %d\n", source);
  return -EINVAL;
 }

 ret = fll_factors(&factors, Fref, Fout);
 if (ret < 0)
  return ret;


 snd_soc_component_update_bits(component, WM2200_FLL_CONTROL_1, WM2200_FLL_ENA, 0);

 snd_soc_component_update_bits(component, WM2200_FLL_CONTROL_2,
       WM2200_FLL_OUTDIV_MASK | WM2200_FLL_FRATIO_MASK,
       (factors.fll_outdiv << WM2200_FLL_OUTDIV_SHIFT) |
       factors.fll_fratio);
 if (factors.theta) {
  snd_soc_component_update_bits(component, WM2200_FLL_CONTROL_3,
        WM2200_FLL_FRACN_ENA,
        WM2200_FLL_FRACN_ENA);
  snd_soc_component_update_bits(component, WM2200_FLL_EFS_2,
        WM2200_FLL_EFS_ENA,
        WM2200_FLL_EFS_ENA);
 } else {
  snd_soc_component_update_bits(component, WM2200_FLL_CONTROL_3,
        WM2200_FLL_FRACN_ENA, 0);
  snd_soc_component_update_bits(component, WM2200_FLL_EFS_2,
        WM2200_FLL_EFS_ENA, 0);
 }

 snd_soc_component_update_bits(component, WM2200_FLL_CONTROL_4, WM2200_FLL_THETA_MASK,
       factors.theta);
 snd_soc_component_update_bits(component, WM2200_FLL_CONTROL_6, WM2200_FLL_N_MASK,
       factors.n);
 snd_soc_component_update_bits(component, WM2200_FLL_CONTROL_7,
       WM2200_FLL_CLK_REF_DIV_MASK |
       WM2200_FLL_CLK_REF_SRC_MASK,
       (factors.fll_refclk_div
        << WM2200_FLL_CLK_REF_DIV_SHIFT) | source);
 snd_soc_component_update_bits(component, WM2200_FLL_EFS_1,
       WM2200_FLL_LAMBDA_MASK, factors.lambda);


 try_wait_for_completion(&wm2200->fll_lock);

 pm_runtime_get_sync(component->dev);

 snd_soc_component_update_bits(component, WM2200_FLL_CONTROL_1,
       WM2200_FLL_ENA, WM2200_FLL_ENA);

 if (i2c->irq)
  timeout = 2;
 else
  timeout = 50;

 snd_soc_component_update_bits(component, WM2200_CLOCKING_3, WM2200_SYSCLK_ENA,
       WM2200_SYSCLK_ENA);


 for (i = 0; i < timeout; i++) {
  if (i2c->irq) {
   time_left = wait_for_completion_timeout(
       &wm2200->fll_lock,
       msecs_to_jiffies(25));
   if (time_left > 0)
    break;
  } else {
   msleep(1);
  }

  ret = snd_soc_component_read32(component,
       WM2200_INTERRUPT_RAW_STATUS_2);
  if (ret < 0) {
   dev_err(component->dev,
    "Failed to read FLL status: %d\n",
    ret);
   continue;
  }
  if (ret & WM2200_FLL_LOCK_STS)
   break;
 }
 if (i == timeout) {
  dev_err(component->dev, "FLL lock timed out\n");
  pm_runtime_put(component->dev);
  return -ETIMEDOUT;
 }

 wm2200->fll_src = source;
 wm2200->fll_fref = Fref;
 wm2200->fll_fout = Fout;

 dev_dbg(component->dev, "FLL running %dHz->%dHz\n", Fref, Fout);

 return 0;
}
