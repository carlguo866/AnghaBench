
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_trans {TYPE_3__* trans_cfg; TYPE_1__* cfg; int status; } ;
struct TYPE_6__ {scalar_t__ device_family; TYPE_2__* csr; } ;
struct TYPE_5__ {int flag_init_done; } ;
struct TYPE_4__ {scalar_t__ lp_xtal_workaround; } ;


 int APMG_PCIDEV_STT_REG ;
 int APMG_PCIDEV_STT_VAL_WAKE_ME ;
 int BIT (int ) ;
 int CSR_DBG_LINK_PWR_MGMT_REG ;
 int CSR_GP_CNTRL ;
 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_ENABLE_PME ;
 int CSR_HW_IF_CONFIG_REG_PREPARE ;
 int CSR_RESET_LINK_PWR_MGMT_DISABLED ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 scalar_t__ IWL_DEVICE_FAMILY_7000 ;
 scalar_t__ IWL_DEVICE_FAMILY_8000 ;
 int STATUS_DEVICE_ENABLED ;
 int clear_bit (int ,int *) ;
 int iwl_clear_bit (struct iwl_trans*,int ,int) ;
 int iwl_pcie_apm_init (struct iwl_trans*) ;
 int iwl_pcie_apm_lp_xtal_enable (struct iwl_trans*) ;
 int iwl_pcie_apm_stop_master (struct iwl_trans*) ;
 int iwl_set_bit (struct iwl_trans*,int ,int) ;
 int iwl_set_bits_prph (struct iwl_trans*,int ,int ) ;
 int iwl_trans_pcie_sw_reset (struct iwl_trans*) ;
 int mdelay (int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void iwl_pcie_apm_stop(struct iwl_trans *trans, bool op_mode_leave)
{
 IWL_DEBUG_INFO(trans, "Stop card, put in low power state\n");

 if (op_mode_leave) {
  if (!test_bit(STATUS_DEVICE_ENABLED, &trans->status))
   iwl_pcie_apm_init(trans);


  if (trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_7000)
   iwl_set_bits_prph(trans, APMG_PCIDEV_STT_REG,
       APMG_PCIDEV_STT_VAL_WAKE_ME);
  else if (trans->trans_cfg->device_family >=
    IWL_DEVICE_FAMILY_8000) {
   iwl_set_bit(trans, CSR_DBG_LINK_PWR_MGMT_REG,
        CSR_RESET_LINK_PWR_MGMT_DISABLED);
   iwl_set_bit(trans, CSR_HW_IF_CONFIG_REG,
        CSR_HW_IF_CONFIG_REG_PREPARE |
        CSR_HW_IF_CONFIG_REG_ENABLE_PME);
   mdelay(1);
   iwl_clear_bit(trans, CSR_DBG_LINK_PWR_MGMT_REG,
          CSR_RESET_LINK_PWR_MGMT_DISABLED);
  }
  mdelay(5);
 }

 clear_bit(STATUS_DEVICE_ENABLED, &trans->status);


 iwl_pcie_apm_stop_master(trans);

 if (trans->cfg->lp_xtal_workaround) {
  iwl_pcie_apm_lp_xtal_enable(trans);
  return;
 }

 iwl_trans_pcie_sw_reset(trans);





 iwl_clear_bit(trans, CSR_GP_CNTRL,
        BIT(trans->trans_cfg->csr->flag_init_done));
}
