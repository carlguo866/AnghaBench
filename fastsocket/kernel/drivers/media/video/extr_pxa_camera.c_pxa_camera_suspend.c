
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct soc_camera_host {struct pxa_camera_dev* priv; } ;
struct TYPE_4__ {int parent; } ;
struct soc_camera_device {TYPE_1__ dev; } ;
struct pxa_camera_dev {TYPE_3__* icd; scalar_t__ base; void** save_cicr; } ;
typedef int pm_message_t ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* suspend ) (TYPE_3__*,int ) ;} ;


 scalar_t__ CICR0 ;
 scalar_t__ CICR1 ;
 scalar_t__ CICR2 ;
 scalar_t__ CICR3 ;
 scalar_t__ CICR4 ;
 void* __raw_readl (scalar_t__) ;
 int stub1 (TYPE_3__*,int ) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int pxa_camera_suspend(struct soc_camera_device *icd, pm_message_t state)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct pxa_camera_dev *pcdev = ici->priv;
 int i = 0, ret = 0;

 pcdev->save_cicr[i++] = __raw_readl(pcdev->base + CICR0);
 pcdev->save_cicr[i++] = __raw_readl(pcdev->base + CICR1);
 pcdev->save_cicr[i++] = __raw_readl(pcdev->base + CICR2);
 pcdev->save_cicr[i++] = __raw_readl(pcdev->base + CICR3);
 pcdev->save_cicr[i++] = __raw_readl(pcdev->base + CICR4);

 if ((pcdev->icd) && (pcdev->icd->ops->suspend))
  ret = pcdev->icd->ops->suspend(pcdev->icd, state);

 return ret;
}
