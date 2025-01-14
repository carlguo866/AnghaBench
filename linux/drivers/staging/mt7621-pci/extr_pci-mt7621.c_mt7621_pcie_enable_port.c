
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7621_pcie_port {int slot; struct mt7621_pcie* pcie; } ;
struct mt7621_pcie {int dummy; } ;


 int MEMORY_BASE ;
 int MT7621_NEXT_PORT ;
 int MT7621_PCIE_OFFSET ;
 int PCIE_BAR_ENABLE ;
 int PCIE_BAR_MAP_MAX ;
 int PCIE_CLASS_CODE ;
 int PCIE_PORT_INT_EN (int) ;
 int PCIE_REVISION_ID ;
 int RALINK_PCI_BAR0SETUP_ADDR ;
 int RALINK_PCI_CLASS ;
 int RALINK_PCI_IMBASEBAR0_ADDR ;
 int RALINK_PCI_PCIMSK_ADDR ;
 int pcie_read (struct mt7621_pcie*,int) ;
 int pcie_write (struct mt7621_pcie*,int,int) ;

__attribute__((used)) static void mt7621_pcie_enable_port(struct mt7621_pcie_port *port)
{
 struct mt7621_pcie *pcie = port->pcie;
 u32 slot = port->slot;
 u32 offset = MT7621_PCIE_OFFSET + (slot * MT7621_NEXT_PORT);
 u32 val;


 val = pcie_read(pcie, RALINK_PCI_PCIMSK_ADDR);
 val |= PCIE_PORT_INT_EN(slot);
 pcie_write(pcie, val, RALINK_PCI_PCIMSK_ADDR);


 pcie_write(pcie, PCIE_BAR_MAP_MAX | PCIE_BAR_ENABLE,
     offset + RALINK_PCI_BAR0SETUP_ADDR);
 pcie_write(pcie, MEMORY_BASE,
     offset + RALINK_PCI_IMBASEBAR0_ADDR);


 pcie_write(pcie, PCIE_CLASS_CODE | PCIE_REVISION_ID,
     offset + RALINK_PCI_CLASS);
}
