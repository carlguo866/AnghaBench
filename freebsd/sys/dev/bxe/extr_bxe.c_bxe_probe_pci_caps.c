
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int pcie_pm_cap_reg; int pcie_link_speed; int pcie_link_width; int pcie_pcie_cap_reg; int pcie_msi_cap_reg; int pcie_msix_cap_reg; int pcie_cap_flags; } ;
struct bxe_softc {TYPE_1__ devinfo; int dev; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int,...) ;
 int BXE_MSIX_CAPABLE_FLAG ;
 int BXE_MSI_CAPABLE_FLAG ;
 int BXE_PCIE_CAPABLE_FLAG ;
 int BXE_PM_CAPABLE_FLAG ;
 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 int DBG_LOAD ;
 int PCIM_LINK_STA_SPEED ;
 int PCIM_LINK_STA_WIDTH ;
 int PCIR_EXPRESS_LINK_STA ;
 int PCIY_MSI ;
 int PCIY_MSIX ;
 int PCIY_PMG ;
 int REG_RD (struct bxe_softc*,int) ;
 int bxe_pcie_capability_read (struct bxe_softc*,int ,int) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;

__attribute__((used)) static void
bxe_probe_pci_caps(struct bxe_softc *sc)
{
    uint16_t link_status;
    int reg;


    if (pci_find_cap(sc->dev, PCIY_PMG, &reg) == 0) {
        if (reg != 0) {
            BLOGD(sc, DBG_LOAD, "Found PM capability at 0x%04x\n", reg);

            sc->devinfo.pcie_cap_flags |= BXE_PM_CAPABLE_FLAG;
            sc->devinfo.pcie_pm_cap_reg = (uint16_t)reg;
        }
    }

    link_status = bxe_pcie_capability_read(sc, PCIR_EXPRESS_LINK_STA, 2);


    if (CHIP_IS_E1(sc)) {

        sc->devinfo.pcie_link_speed =
            (REG_RD(sc, 0x3d04) & (1 << 24)) ? 2 : 1;


        sc->devinfo.pcie_link_width =
            ((link_status & PCIM_LINK_STA_WIDTH) >> 4);
        if (sc->devinfo.pcie_link_speed > 1) {
            sc->devinfo.pcie_link_width =
                ((link_status & PCIM_LINK_STA_WIDTH) >> 4) >> 1;
        }
    } else {
        sc->devinfo.pcie_link_speed =
            (link_status & PCIM_LINK_STA_SPEED);
        sc->devinfo.pcie_link_width =
            ((link_status & PCIM_LINK_STA_WIDTH) >> 4);
    }

    BLOGD(sc, DBG_LOAD, "PCIe link speed=%d width=%d\n",
          sc->devinfo.pcie_link_speed, sc->devinfo.pcie_link_width);

    sc->devinfo.pcie_cap_flags |= BXE_PCIE_CAPABLE_FLAG;
    sc->devinfo.pcie_pcie_cap_reg = (uint16_t)reg;


    if (pci_find_cap(sc->dev, PCIY_MSI, &reg) == 0) {
        if (reg != 0) {
            BLOGD(sc, DBG_LOAD, "Found MSI capability at 0x%04x\n", reg);

            sc->devinfo.pcie_cap_flags |= BXE_MSI_CAPABLE_FLAG;
            sc->devinfo.pcie_msi_cap_reg = (uint16_t)reg;
        }
    }


    if (pci_find_cap(sc->dev, PCIY_MSIX, &reg) == 0) {
        if (reg != 0) {
            BLOGD(sc, DBG_LOAD, "Found MSI-X capability at 0x%04x\n", reg);

            sc->devinfo.pcie_cap_flags |= BXE_MSIX_CAPABLE_FLAG;
            sc->devinfo.pcie_msix_cap_reg = (uint16_t)reg;
        }
    }
}
