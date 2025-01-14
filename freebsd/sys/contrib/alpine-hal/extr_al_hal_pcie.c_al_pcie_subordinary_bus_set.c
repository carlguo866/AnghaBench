
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int cfg_control; } ;
struct TYPE_4__ {TYPE_1__ ob_ctrl; } ;
struct al_pcie_regs {TYPE_2__ axi; } ;
struct al_pcie_port {struct al_pcie_regs* regs; } ;


 int PCIE_AXI_MISC_OB_CTRL_CFG_CONTROL_SUBBUS_MASK ;
 int PCIE_AXI_MISC_OB_CTRL_CFG_CONTROL_SUBBUS_SHIFT ;
 int al_reg_write32_masked (int ,int ,int) ;

int
al_pcie_subordinary_bus_set(struct al_pcie_port *pcie_port, uint8_t subbus)
{
 struct al_pcie_regs *regs = pcie_port->regs;

 uint32_t subbus_val = (subbus <<
   PCIE_AXI_MISC_OB_CTRL_CFG_CONTROL_SUBBUS_SHIFT);

 al_reg_write32_masked(
  regs->axi.ob_ctrl.cfg_control,
  PCIE_AXI_MISC_OB_CTRL_CFG_CONTROL_SUBBUS_MASK,
  subbus_val);
 return 0;
}
