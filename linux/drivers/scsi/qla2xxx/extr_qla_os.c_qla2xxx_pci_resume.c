
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ eeh_busy; } ;
struct qla_hw_data {TYPE_1__ flags; } ;
struct pci_dev {int dummy; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int QLA_SUCCESS ;
 TYPE_2__* pci_get_drvdata (struct pci_dev*) ;
 int ql_dbg (int ,TYPE_2__*,int,char*) ;
 int ql_dbg_aer ;
 int ql_log (int ,TYPE_2__*,int,char*) ;
 int ql_log_fatal ;
 int qla2x00_wait_for_hba_online (TYPE_2__*) ;

__attribute__((used)) static void
qla2xxx_pci_resume(struct pci_dev *pdev)
{
 scsi_qla_host_t *base_vha = pci_get_drvdata(pdev);
 struct qla_hw_data *ha = base_vha->hw;
 int ret;

 ql_dbg(ql_dbg_aer, base_vha, 0x900f,
     "pci_resume.\n");

 ha->flags.eeh_busy = 0;

 ret = qla2x00_wait_for_hba_online(base_vha);
 if (ret != QLA_SUCCESS) {
  ql_log(ql_log_fatal, base_vha, 0x9002,
      "The device failed to resume I/O from slot/link_reset.\n");
 }
}
