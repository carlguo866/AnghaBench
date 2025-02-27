
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct komeda_kms_dev {size_t n_crtcs; int * crtcs; } ;
struct komeda_events {int dummy; } ;
struct komeda_dev {TYPE_1__* funcs; } ;
struct drm_device {struct komeda_dev* dev_private; } ;
typedef int irqreturn_t ;
typedef int evts ;
struct TYPE_2__ {int (* irq_handler ) (struct komeda_dev*,struct komeda_events*) ;} ;


 int komeda_crtc_handle_event (int *,struct komeda_events*) ;
 int memset (struct komeda_events*,int ,int) ;
 int stub1 (struct komeda_dev*,struct komeda_events*) ;
 struct komeda_kms_dev* to_kdev (struct drm_device*) ;

__attribute__((used)) static irqreturn_t komeda_kms_irq_handler(int irq, void *data)
{
 struct drm_device *drm = data;
 struct komeda_dev *mdev = drm->dev_private;
 struct komeda_kms_dev *kms = to_kdev(drm);
 struct komeda_events evts;
 irqreturn_t status;
 u32 i;


 memset(&evts, 0, sizeof(evts));
 status = mdev->funcs->irq_handler(mdev, &evts);


 for (i = 0; i < kms->n_crtcs; i++)
  komeda_crtc_handle_event(&kms->crtcs[i], &evts);

 return status;
}
