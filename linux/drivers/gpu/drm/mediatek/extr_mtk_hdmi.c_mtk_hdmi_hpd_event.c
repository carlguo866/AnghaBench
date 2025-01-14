
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* encoder; } ;
struct mtk_hdmi {TYPE_2__ bridge; } ;
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ dev; } ;


 struct mtk_hdmi* dev_get_drvdata (struct device*) ;
 int drm_helper_hpd_irq_event (scalar_t__) ;

__attribute__((used)) static void mtk_hdmi_hpd_event(bool hpd, struct device *dev)
{
 struct mtk_hdmi *hdmi = dev_get_drvdata(dev);

 if (hdmi && hdmi->bridge.encoder && hdmi->bridge.encoder->dev)
  drm_helper_hpd_irq_event(hdmi->bridge.encoder->dev);
}
