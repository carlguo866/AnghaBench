
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_ios {scalar_t__ signal_voltage; } ;
struct TYPE_2__ {int vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;
struct k3_priv {int reg; } ;
struct dw_mci_slot {struct dw_mci* host; } ;
struct dw_mci {int dev; struct k3_priv* priv; } ;


 int AO_SCTRL_CTRL3 ;
 int AO_SCTRL_SEL18 ;
 int EINVAL ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 scalar_t__ MMC_SIGNAL_VOLTAGE_180 ;
 scalar_t__ MMC_SIGNAL_VOLTAGE_330 ;
 int dev_dbg (int ,char*,...) ;
 struct dw_mci_slot* mmc_priv (struct mmc_host*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regulator_set_voltage (int ,int,int) ;

__attribute__((used)) static int dw_mci_hi6220_switch_voltage(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct dw_mci_slot *slot = mmc_priv(mmc);
 struct k3_priv *priv;
 struct dw_mci *host;
 int min_uv, max_uv;
 int ret;

 host = slot->host;
 priv = host->priv;

 if (!priv || !priv->reg)
  return 0;

 if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_330) {
  ret = regmap_update_bits(priv->reg, AO_SCTRL_CTRL3,
      AO_SCTRL_SEL18, 0);
  min_uv = 3000000;
  max_uv = 3000000;
 } else if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_180) {
  ret = regmap_update_bits(priv->reg, AO_SCTRL_CTRL3,
      AO_SCTRL_SEL18, AO_SCTRL_SEL18);
  min_uv = 1800000;
  max_uv = 1800000;
 } else {
  dev_dbg(host->dev, "voltage not supported\n");
  return -EINVAL;
 }

 if (ret) {
  dev_dbg(host->dev, "switch voltage failed\n");
  return ret;
 }

 if (IS_ERR_OR_NULL(mmc->supply.vqmmc))
  return 0;

 ret = regulator_set_voltage(mmc->supply.vqmmc, min_uv, max_uv);
 if (ret) {
  dev_dbg(host->dev, "Regulator set error %d: %d - %d\n",
     ret, min_uv, max_uv);
  return ret;
 }

 return 0;
}
