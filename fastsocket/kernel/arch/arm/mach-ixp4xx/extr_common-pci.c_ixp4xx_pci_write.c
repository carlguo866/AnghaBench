
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;


 void** PCI_NP_AD ;
 void** PCI_NP_CBE ;
 void** PCI_NP_WDATA ;
 scalar_t__ check_master_abort () ;
 int ixp4xx_pci_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ixp4xx_pci_write(u32 addr, u32 cmd, u32 data)
{
 unsigned long flags;
 int retval = 0;

 spin_lock_irqsave(&ixp4xx_pci_lock, flags);

 *PCI_NP_AD = addr;


 *PCI_NP_CBE = cmd;


 *PCI_NP_WDATA = data;

 if(check_master_abort())
  retval = 1;

 spin_unlock_irqrestore(&ixp4xx_pci_lock, flags);
 return retval;
}
