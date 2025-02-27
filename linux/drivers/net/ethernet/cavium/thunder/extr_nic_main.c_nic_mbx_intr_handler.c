
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u8 ;
typedef unsigned long long u64 ;
struct nicpf {TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int NIC_PF_INTR_ID_MBOX0 ;
 scalar_t__ NIC_PF_MAILBOX_INT ;
 unsigned long long NIC_VF_PER_MBX_REG ;
 int dev_dbg (int *,char*,unsigned long long,...) ;
 int nic_clear_mbx_intr (struct nicpf*,unsigned long long,int) ;
 int nic_handle_mbx_intr (struct nicpf*,unsigned long long) ;
 unsigned long long nic_reg_read (struct nicpf*,scalar_t__) ;
 int pci_irq_vector (TYPE_1__*,int ) ;

__attribute__((used)) static irqreturn_t nic_mbx_intr_handler(int irq, void *nic_irq)
{
 struct nicpf *nic = (struct nicpf *)nic_irq;
 int mbx;
 u64 intr;
 u8 vf;

 if (irq == pci_irq_vector(nic->pdev, NIC_PF_INTR_ID_MBOX0))
  mbx = 0;
 else
  mbx = 1;

 intr = nic_reg_read(nic, NIC_PF_MAILBOX_INT + (mbx << 3));
 dev_dbg(&nic->pdev->dev, "PF interrupt Mbox%d 0x%llx\n", mbx, intr);
 for (vf = 0; vf < NIC_VF_PER_MBX_REG; vf++) {
  if (intr & (1ULL << vf)) {
   dev_dbg(&nic->pdev->dev, "Intr from VF %d\n",
    vf + (mbx * NIC_VF_PER_MBX_REG));

   nic_handle_mbx_intr(nic, vf +
         (mbx * NIC_VF_PER_MBX_REG));
   nic_clear_mbx_intr(nic, vf, mbx);
  }
 }
 return IRQ_HANDLED;
}
