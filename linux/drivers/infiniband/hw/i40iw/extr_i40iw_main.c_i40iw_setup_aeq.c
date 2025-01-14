
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_sc_dev {int dummy; } ;
struct i40iw_device {TYPE_1__* iw_msixtbl; int msix_shared; struct i40iw_sc_dev sc_dev; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {int idx; } ;


 int i40iw_configure_aeq_vector (struct i40iw_device*) ;
 int i40iw_create_aeq (struct i40iw_device*) ;
 int i40iw_destroy_aeq (struct i40iw_device*) ;
 int i40iw_enable_intr (struct i40iw_sc_dev*,int ) ;

__attribute__((used)) static enum i40iw_status_code i40iw_setup_aeq(struct i40iw_device *iwdev)
{
 struct i40iw_sc_dev *dev = &iwdev->sc_dev;
 enum i40iw_status_code status;

 status = i40iw_create_aeq(iwdev);
 if (status)
  return status;

 status = i40iw_configure_aeq_vector(iwdev);
 if (status) {
  i40iw_destroy_aeq(iwdev);
  return status;
 }

 if (!iwdev->msix_shared)
  i40iw_enable_intr(dev, iwdev->iw_msixtbl[0].idx);
 return 0;
}
