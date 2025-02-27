
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int completion_timeout; } ;
struct efa_com_dev {TYPE_1__ aq; int efa_dev; scalar_t__ reg_bar; } ;
typedef enum efa_regs_reset_reason_types { ____Placeholder_efa_regs_reset_reason_types } efa_regs_reset_reason_types ;


 int ADMIN_CMD_TIMEOUT_US ;
 int EFA_REGS_CAPS_ADMIN_CMD_TO_MASK ;
 int EFA_REGS_CAPS_ADMIN_CMD_TO_SHIFT ;
 int EFA_REGS_CAPS_OFF ;
 int EFA_REGS_CAPS_RESET_TIMEOUT_MASK ;
 int EFA_REGS_CAPS_RESET_TIMEOUT_SHIFT ;
 int EFA_REGS_DEV_CTL_DEV_RESET_MASK ;
 scalar_t__ EFA_REGS_DEV_CTL_OFF ;
 int EFA_REGS_DEV_CTL_RESET_REASON_MASK ;
 int EFA_REGS_DEV_CTL_RESET_REASON_SHIFT ;
 int EFA_REGS_DEV_STS_OFF ;
 int EFA_REGS_DEV_STS_READY_MASK ;
 int EFA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK ;
 int EINVAL ;
 int efa_com_mmio_reg_read_resp_addr_init (struct efa_com_dev*) ;
 int efa_com_reg_read32 (struct efa_com_dev*,int ) ;
 int ibdev_err (int ,char*) ;
 int wait_for_reset_state (struct efa_com_dev*,int,int ) ;
 int writel (int,scalar_t__) ;

int efa_com_dev_reset(struct efa_com_dev *edev,
        enum efa_regs_reset_reason_types reset_reason)
{
 u32 stat, timeout, cap, reset_val;
 int err;

 stat = efa_com_reg_read32(edev, EFA_REGS_DEV_STS_OFF);
 cap = efa_com_reg_read32(edev, EFA_REGS_CAPS_OFF);

 if (!(stat & EFA_REGS_DEV_STS_READY_MASK)) {
  ibdev_err(edev->efa_dev,
     "Device isn't ready, can't reset device\n");
  return -EINVAL;
 }

 timeout = (cap & EFA_REGS_CAPS_RESET_TIMEOUT_MASK) >>
    EFA_REGS_CAPS_RESET_TIMEOUT_SHIFT;
 if (!timeout) {
  ibdev_err(edev->efa_dev, "Invalid timeout value\n");
  return -EINVAL;
 }


 reset_val = EFA_REGS_DEV_CTL_DEV_RESET_MASK;
 reset_val |= (reset_reason << EFA_REGS_DEV_CTL_RESET_REASON_SHIFT) &
       EFA_REGS_DEV_CTL_RESET_REASON_MASK;
 writel(reset_val, edev->reg_bar + EFA_REGS_DEV_CTL_OFF);


 efa_com_mmio_reg_read_resp_addr_init(edev);

 err = wait_for_reset_state(edev, timeout,
       EFA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK);
 if (err) {
  ibdev_err(edev->efa_dev, "Reset indication didn't turn on\n");
  return err;
 }


 writel(0, edev->reg_bar + EFA_REGS_DEV_CTL_OFF);
 err = wait_for_reset_state(edev, timeout, 0);
 if (err) {
  ibdev_err(edev->efa_dev, "Reset indication didn't turn off\n");
  return err;
 }

 timeout = (cap & EFA_REGS_CAPS_ADMIN_CMD_TO_MASK) >>
    EFA_REGS_CAPS_ADMIN_CMD_TO_SHIFT;
 if (timeout)

  edev->aq.completion_timeout = timeout * 100000;
 else
  edev->aq.completion_timeout = ADMIN_CMD_TIMEOUT_US;

 return 0;
}
