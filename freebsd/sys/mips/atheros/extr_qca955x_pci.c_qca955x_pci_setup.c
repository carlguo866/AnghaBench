
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ar71xx_pci_softc {int sc_pci_membase_limit; scalar_t__ sc_pci_ctrl_base; int sc_pci_crp_base; } ;
typedef int device_t ;


 int ATH_READ_REG (scalar_t__) ;
 int ATH_WRITE_REG (scalar_t__,int) ;
 int DELAY (int) ;
 int ENXIO ;
 int PCIM_CMD_BACKTOBACK ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_MWRICEN ;
 int PCIM_CMD_PERRESPEN ;
 int PCIM_CMD_SERRESPEN ;
 int PCIR_COMMAND ;
 scalar_t__ QCA955X_PCI_APP ;
 scalar_t__ QCA955X_PCI_RESET ;
 int QCA955X_PCI_RESET_LINK_UP ;
 struct ar71xx_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int qca955x_pci_write (int ,int,int,int) ;

__attribute__((used)) static int
qca955x_pci_setup(device_t dev)
{
 struct ar71xx_pci_softc *sc = device_get_softc(dev);
 uint32_t reg;


 reg = PCIM_CMD_BUSMASTEREN | PCIM_CMD_MEMEN | PCIM_CMD_SERRESPEN |
     PCIM_CMD_BACKTOBACK | PCIM_CMD_PERRESPEN | PCIM_CMD_MWRICEN;

 qca955x_pci_write(sc->sc_pci_crp_base, PCIR_COMMAND, reg, 2);


 qca955x_pci_write(sc->sc_pci_crp_base, 0x20, sc->sc_pci_membase_limit, 4);
 qca955x_pci_write(sc->sc_pci_crp_base, 0x24, sc->sc_pci_membase_limit, 4);

 reg = ATH_READ_REG(sc->sc_pci_ctrl_base + QCA955X_PCI_RESET);
 if (reg != 0x7) {
  DELAY(100000);
  ATH_WRITE_REG(sc->sc_pci_ctrl_base + QCA955X_PCI_RESET, 0);
  ATH_READ_REG(sc->sc_pci_ctrl_base + QCA955X_PCI_RESET);
  DELAY(100);
  ATH_WRITE_REG(sc->sc_pci_ctrl_base + QCA955X_PCI_RESET, 4);
  ATH_READ_REG(sc->sc_pci_ctrl_base + QCA955X_PCI_RESET);
  DELAY(100000);
 }

 ATH_WRITE_REG(sc->sc_pci_ctrl_base + QCA955X_PCI_APP, 0x1ffc1);

 (void) ATH_READ_REG(sc->sc_pci_ctrl_base + QCA955X_PCI_APP);

 DELAY(1000);

 reg = ATH_READ_REG(sc->sc_pci_ctrl_base + QCA955X_PCI_RESET);
 if ((reg & QCA955X_PCI_RESET_LINK_UP) == 0) {
  device_printf(dev, "no PCIe controller found\n");
  return (ENXIO);
 }

 return (0);
}
