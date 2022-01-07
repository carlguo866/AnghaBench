
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct hdmi_platform_config {int hpd_reg_cnt; int * hpd_reg_names; } ;
struct hdmi_connector {struct hdmi* hdmi; } ;
struct hdmi {int reg_lock; int * hpd_regs; TYPE_1__* pdev; struct hdmi_platform_config* config; } ;
struct drm_connector {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DRM_DEV_ERROR (struct device*,char*,int,...) ;
 int HDMI_HPD_CTRL_ENABLE ;
 int HDMI_HPD_CTRL_TIMEOUT (int) ;
 int HDMI_HPD_INT_CTRL_INT_CONNECT ;
 int HDMI_HPD_INT_CTRL_INT_EN ;
 int REG_HDMI_HPD_CTRL ;
 int REG_HDMI_HPD_INT_CTRL ;
 int REG_HDMI_USEC_REFTIMER ;
 int enable_hpd_clocks (struct hdmi*,int) ;
 int gpio_config (struct hdmi*,int) ;
 int hdmi_read (struct hdmi*,int ) ;
 int hdmi_write (struct hdmi*,int ,int) ;
 int msm_hdmi_phy_reset (struct hdmi*) ;
 int msm_hdmi_set_mode (struct hdmi*,int) ;
 int pinctrl_pm_select_default_state (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int regulator_enable (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct hdmi_connector* to_hdmi_connector (struct drm_connector*) ;

int msm_hdmi_hpd_enable(struct drm_connector *connector)
{
 struct hdmi_connector *hdmi_connector = to_hdmi_connector(connector);
 struct hdmi *hdmi = hdmi_connector->hdmi;
 const struct hdmi_platform_config *config = hdmi->config;
 struct device *dev = &hdmi->pdev->dev;
 uint32_t hpd_ctrl;
 int i, ret;
 unsigned long flags;

 for (i = 0; i < config->hpd_reg_cnt; i++) {
  ret = regulator_enable(hdmi->hpd_regs[i]);
  if (ret) {
   DRM_DEV_ERROR(dev, "failed to enable hpd regulator: %s (%d)\n",
     config->hpd_reg_names[i], ret);
   goto fail;
  }
 }

 ret = pinctrl_pm_select_default_state(dev);
 if (ret) {
  DRM_DEV_ERROR(dev, "pinctrl state chg failed: %d\n", ret);
  goto fail;
 }

 ret = gpio_config(hdmi, 1);
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to configure GPIOs: %d\n", ret);
  goto fail;
 }

 pm_runtime_get_sync(dev);
 enable_hpd_clocks(hdmi, 1);

 msm_hdmi_set_mode(hdmi, 0);
 msm_hdmi_phy_reset(hdmi);
 msm_hdmi_set_mode(hdmi, 1);

 hdmi_write(hdmi, REG_HDMI_USEC_REFTIMER, 0x0001001b);


 hdmi_write(hdmi, REG_HDMI_HPD_INT_CTRL,
   HDMI_HPD_INT_CTRL_INT_CONNECT |
   HDMI_HPD_INT_CTRL_INT_EN);


 spin_lock_irqsave(&hdmi->reg_lock, flags);
 hpd_ctrl = hdmi_read(hdmi, REG_HDMI_HPD_CTRL);
 hpd_ctrl |= HDMI_HPD_CTRL_TIMEOUT(0x1fff);


 hdmi_write(hdmi, REG_HDMI_HPD_CTRL,
   ~HDMI_HPD_CTRL_ENABLE & hpd_ctrl);
 hdmi_write(hdmi, REG_HDMI_HPD_CTRL,
   HDMI_HPD_CTRL_ENABLE | hpd_ctrl);
 spin_unlock_irqrestore(&hdmi->reg_lock, flags);

 return 0;

fail:
 return ret;
}
