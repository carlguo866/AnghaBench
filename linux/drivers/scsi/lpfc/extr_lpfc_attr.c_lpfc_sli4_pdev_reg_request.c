
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ conf_regs_memmap_p; int sli_intf; } ;
struct lpfc_hba {scalar_t__ sli_rev; scalar_t__ cfg_sriov_nr_virtfn; TYPE_2__ sli4_hba; int hba_flag; TYPE_1__* pport; int cfg_enable_hba_reset; struct pci_dev* pcidev; } ;
struct completion {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ fc_flag; } ;


 int EACCES ;
 int EIO ;
 int ENOMEM ;
 int EPERM ;
 scalar_t__ FC_OFFLINE_MODE ;
 int HBA_FW_DUMP_OP ;
 int KERN_ERR ;
 int LOG_SLI ;
 scalar_t__ LPFC_CTL_PDEV_CTL_DRST ;
 scalar_t__ LPFC_CTL_PDEV_CTL_FRST ;
 scalar_t__ LPFC_CTL_PDEV_CTL_OFFSET ;
 scalar_t__ LPFC_DV_RESET ;
 int LPFC_EVT_OFFLINE ;
 int LPFC_EVT_ONLINE ;
 scalar_t__ LPFC_FW_DUMP ;
 scalar_t__ LPFC_FW_DUMP_REQUEST ;
 scalar_t__ LPFC_FW_RESET ;
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ;
 scalar_t__ LPFC_SLI_REV4 ;
 scalar_t__ bf_get (int ,int *) ;
 int init_completion (struct completion*) ;
 int lpfc_do_offline (struct lpfc_hba*,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,scalar_t__) ;
 int lpfc_sli4_pdev_status_reg_wait (struct lpfc_hba*) ;
 int lpfc_sli_intf_if_type ;
 int lpfc_sli_probe_sriov_nr_virtfn (struct lpfc_hba*,scalar_t__) ;
 int lpfc_workq_post_event (struct lpfc_hba*,int*,struct completion*,int ) ;
 int msleep (int) ;
 int pci_disable_sriov (struct pci_dev*) ;
 scalar_t__ readl (scalar_t__) ;
 int wait_for_completion (struct completion*) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static ssize_t
lpfc_sli4_pdev_reg_request(struct lpfc_hba *phba, uint32_t opcode)
{
 struct completion online_compl;
 struct pci_dev *pdev = phba->pcidev;
 uint32_t before_fc_flag;
 uint32_t sriov_nr_virtfn;
 uint32_t reg_val;
 int status = 0, rc = 0;
 int job_posted = 1, sriov_err;

 if (!phba->cfg_enable_hba_reset)
  return -EACCES;

 if ((phba->sli_rev < LPFC_SLI_REV4) ||
     (bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) <
      LPFC_SLI_INTF_IF_TYPE_2))
  return -EPERM;


 before_fc_flag = phba->pport->fc_flag;
 sriov_nr_virtfn = phba->cfg_sriov_nr_virtfn;


 if (phba->cfg_sriov_nr_virtfn) {
  pci_disable_sriov(pdev);
  phba->cfg_sriov_nr_virtfn = 0;
 }

 if (opcode == LPFC_FW_DUMP)
  phba->hba_flag |= HBA_FW_DUMP_OP;

 status = lpfc_do_offline(phba, LPFC_EVT_OFFLINE);

 if (status != 0) {
  phba->hba_flag &= ~HBA_FW_DUMP_OP;
  return status;
 }


 msleep(100);

 reg_val = readl(phba->sli4_hba.conf_regs_memmap_p +
   LPFC_CTL_PDEV_CTL_OFFSET);

 if (opcode == LPFC_FW_DUMP)
  reg_val |= LPFC_FW_DUMP_REQUEST;
 else if (opcode == LPFC_FW_RESET)
  reg_val |= LPFC_CTL_PDEV_CTL_FRST;
 else if (opcode == LPFC_DV_RESET)
  reg_val |= LPFC_CTL_PDEV_CTL_DRST;

 writel(reg_val, phba->sli4_hba.conf_regs_memmap_p +
        LPFC_CTL_PDEV_CTL_OFFSET);

 readl(phba->sli4_hba.conf_regs_memmap_p + LPFC_CTL_PDEV_CTL_OFFSET);


 rc = lpfc_sli4_pdev_status_reg_wait(phba);

 if (rc == -EPERM) {

  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "3150 No privilege to perform the requested "
    "access: x%x\n", reg_val);
 } else if (rc == -EIO) {

  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "3153 Fail to perform the requested "
    "access: x%x\n", reg_val);
  return rc;
 }


 if (before_fc_flag & FC_OFFLINE_MODE)
  goto out;

 init_completion(&online_compl);
 job_posted = lpfc_workq_post_event(phba, &status, &online_compl,
        LPFC_EVT_ONLINE);
 if (!job_posted)
  goto out;

 wait_for_completion(&online_compl);

out:

 if (sriov_nr_virtfn) {
  sriov_err =
   lpfc_sli_probe_sriov_nr_virtfn(phba, sriov_nr_virtfn);
  if (!sriov_err)
   phba->cfg_sriov_nr_virtfn = sriov_nr_virtfn;
 }


 if (!rc) {
  if (!job_posted)
   rc = -ENOMEM;
  else if (status)
   rc = -EIO;
 }
 return rc;
}
