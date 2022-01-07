
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct sas_ha_struct {struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {scalar_t__ chip_id; size_t number_of_intr; int shost; TYPE_2__* phy; TYPE_1__* chip; int flags; int * irq_vector; int * tasklet; int name; } ;
struct pci_dev {int msix_cap; int current_state; } ;
struct TYPE_6__ {int (* chip_init ) (struct pm8001_hba_info*) ;int (* phy_start_req ) (struct pm8001_hba_info*,size_t) ;int (* interrupt_enable ) (struct pm8001_hba_info*,size_t) ;int (* interrupt_disable ) (struct pm8001_hba_info*,int) ;int (* chip_soft_rst ) (struct pm8001_hba_info*) ;} ;
struct TYPE_5__ {int * enable_completion; } ;
struct TYPE_4__ {size_t n_phy; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int PCI_D0 ;
 int PM8001F_RUN_TIME ;
 TYPE_3__* PM8001_CHIP_DISP ;
 int PM8001_INIT_DBG (struct pm8001_hba_info*,int ) ;
 size_t PM8001_MAX_MSIX_VEC ;
 scalar_t__ chip_8001 ;
 scalar_t__ chip_8070 ;
 scalar_t__ chip_8072 ;
 int completion ;
 int mdelay (int) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_wake (struct pci_dev*,int ,int ) ;
 struct sas_ha_struct* pci_get_drvdata (struct pci_dev*) ;
 int pci_go_44 (struct pci_dev*) ;
 int pci_msi_enabled () ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pm8001_printk (char*,...) ;
 int pm8001_request_irq (struct pm8001_hba_info*) ;
 int pm8001_tasklet ;
 int sas_prep_resume_ha (struct sas_ha_struct*) ;
 int sas_resume_ha (struct sas_ha_struct*) ;
 int scsi_remove_host (int ) ;
 int stub1 (struct pm8001_hba_info*) ;
 int stub2 (struct pm8001_hba_info*) ;
 int stub3 (struct pm8001_hba_info*,int) ;
 int stub4 (struct pm8001_hba_info*,size_t) ;
 int stub5 (struct pm8001_hba_info*,size_t) ;
 int stub6 (struct pm8001_hba_info*,size_t) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int pm8001_pci_resume(struct pci_dev *pdev)
{
 struct sas_ha_struct *sha = pci_get_drvdata(pdev);
 struct pm8001_hba_info *pm8001_ha;
 int rc;
 u8 i = 0, j;
 u32 device_state;
 DECLARE_COMPLETION_ONSTACK(completion);
 pm8001_ha = sha->lldd_ha;
 device_state = pdev->current_state;

 pm8001_printk("pdev=0x%p, slot=%s, resuming from previous "
  "operating state [D%d]\n", pdev, pm8001_ha->name, device_state);

 pci_set_power_state(pdev, PCI_D0);
 pci_enable_wake(pdev, PCI_D0, 0);
 pci_restore_state(pdev);
 rc = pci_enable_device(pdev);
 if (rc) {
  pm8001_printk("slot=%s Enable device failed during resume\n",
         pm8001_ha->name);
  goto err_out_enable;
 }

 pci_set_master(pdev);
 rc = pci_go_44(pdev);
 if (rc)
  goto err_out_disable;
 sas_prep_resume_ha(sha);

 if (pm8001_ha->chip_id == chip_8001) {
  PM8001_CHIP_DISP->chip_soft_rst(pm8001_ha);
  PM8001_INIT_DBG(pm8001_ha,
   pm8001_printk("chip soft reset successful\n"));
 }
 rc = PM8001_CHIP_DISP->chip_init(pm8001_ha);
 if (rc)
  goto err_out_disable;


 PM8001_CHIP_DISP->interrupt_disable(pm8001_ha, 0xFF);

 rc = pm8001_request_irq(pm8001_ha);
 if (rc)
  goto err_out_disable;
 PM8001_CHIP_DISP->interrupt_enable(pm8001_ha, 0);
 if (pm8001_ha->chip_id != chip_8001) {
  for (i = 1; i < pm8001_ha->number_of_intr; i++)
   PM8001_CHIP_DISP->interrupt_enable(pm8001_ha, i);
 }






 if (pm8001_ha->chip_id == chip_8070 ||
  pm8001_ha->chip_id == chip_8072) {
  mdelay(500);
 }



 pm8001_ha->flags = PM8001F_RUN_TIME;
 for (i = 0; i < pm8001_ha->chip->n_phy; i++) {
  pm8001_ha->phy[i].enable_completion = &completion;
  PM8001_CHIP_DISP->phy_start_req(pm8001_ha, i);
  wait_for_completion(&completion);
 }
 sas_resume_ha(sha);
 return 0;

err_out_disable:
 scsi_remove_host(pm8001_ha->shost);
 pci_disable_device(pdev);
err_out_enable:
 return rc;
}
