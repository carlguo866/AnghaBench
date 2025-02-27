
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ifnet {int if_capenable; } ;
struct ale_softc {int ale_flags; int ale_dev; struct ifnet* ale_ifp; } ;


 int ALE_FLAG_FASTETHER ;
 int ALE_GPHY_CTRL ;
 int ALE_LOCK_ASSERT (struct ale_softc*) ;
 int ALE_MAC_CFG ;
 int ALE_PCIE_PHYMISC ;
 int ALE_WOL_CFG ;
 int CSR_READ_4 (struct ale_softc*,int ) ;
 int CSR_WRITE_2 (struct ale_softc*,int ,int) ;
 int CSR_WRITE_4 (struct ale_softc*,int ,int) ;
 int GPHY_CTRL_EXT_RESET ;
 int GPHY_CTRL_HIB_EN ;
 int GPHY_CTRL_HIB_PULSE ;
 int GPHY_CTRL_PCLK_SEL_DIS ;
 int GPHY_CTRL_PHY_IDDQ ;
 int GPHY_CTRL_PHY_PLL_ON ;
 int GPHY_CTRL_PWDOWN_HW ;
 int GPHY_CTRL_SEL_ANA_RESET ;
 int IFCAP_WOL ;
 int IFCAP_WOL_MAGIC ;
 int IFCAP_WOL_MCAST ;
 int MAC_CFG_ALLMULTI ;
 int MAC_CFG_BCAST ;
 int MAC_CFG_DBG ;
 int MAC_CFG_PROMISC ;
 int MAC_CFG_RX_ENB ;
 int PCIE_PHYMISC_FORCE_RCV_DET ;
 int PCIM_PSTAT_PME ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;
 int PCIY_PMG ;
 int WOL_CFG_MAGIC ;
 int WOL_CFG_MAGIC_ENB ;
 int ale_setlinkspeed (struct ale_softc*) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;

__attribute__((used)) static void
ale_setwol(struct ale_softc *sc)
{
 struct ifnet *ifp;
 uint32_t reg, pmcs;
 uint16_t pmstat;
 int pmc;

 ALE_LOCK_ASSERT(sc);

 if (pci_find_cap(sc->ale_dev, PCIY_PMG, &pmc) != 0) {

  CSR_WRITE_4(sc, ALE_WOL_CFG, 0);
  reg = CSR_READ_4(sc, ALE_PCIE_PHYMISC);
  reg |= PCIE_PHYMISC_FORCE_RCV_DET;
  CSR_WRITE_4(sc, ALE_PCIE_PHYMISC, reg);

  CSR_WRITE_2(sc, ALE_GPHY_CTRL,
      GPHY_CTRL_EXT_RESET | GPHY_CTRL_HIB_EN |
      GPHY_CTRL_HIB_PULSE | GPHY_CTRL_PHY_PLL_ON |
      GPHY_CTRL_SEL_ANA_RESET | GPHY_CTRL_PHY_IDDQ |
      GPHY_CTRL_PCLK_SEL_DIS | GPHY_CTRL_PWDOWN_HW);
  return;
 }

 ifp = sc->ale_ifp;
 if ((ifp->if_capenable & IFCAP_WOL) != 0) {
  if ((sc->ale_flags & ALE_FLAG_FASTETHER) == 0)
   ale_setlinkspeed(sc);
 }

 pmcs = 0;
 if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
  pmcs |= WOL_CFG_MAGIC | WOL_CFG_MAGIC_ENB;
 CSR_WRITE_4(sc, ALE_WOL_CFG, pmcs);
 reg = CSR_READ_4(sc, ALE_MAC_CFG);
 reg &= ~(MAC_CFG_DBG | MAC_CFG_PROMISC | MAC_CFG_ALLMULTI |
     MAC_CFG_BCAST);
 if ((ifp->if_capenable & IFCAP_WOL_MCAST) != 0)
  reg |= MAC_CFG_ALLMULTI | MAC_CFG_BCAST;
 if ((ifp->if_capenable & IFCAP_WOL) != 0)
  reg |= MAC_CFG_RX_ENB;
 CSR_WRITE_4(sc, ALE_MAC_CFG, reg);

 if ((ifp->if_capenable & IFCAP_WOL) == 0) {

  reg = CSR_READ_4(sc, ALE_PCIE_PHYMISC);
  reg |= PCIE_PHYMISC_FORCE_RCV_DET;
  CSR_WRITE_4(sc, ALE_PCIE_PHYMISC, reg);
  CSR_WRITE_2(sc, ALE_GPHY_CTRL,
      GPHY_CTRL_EXT_RESET | GPHY_CTRL_HIB_EN |
      GPHY_CTRL_HIB_PULSE | GPHY_CTRL_SEL_ANA_RESET |
      GPHY_CTRL_PHY_IDDQ | GPHY_CTRL_PCLK_SEL_DIS |
      GPHY_CTRL_PWDOWN_HW);
 }

 pmstat = pci_read_config(sc->ale_dev, pmc + PCIR_POWER_STATUS, 2);
 pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
 if ((ifp->if_capenable & IFCAP_WOL) != 0)
  pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
 pci_write_config(sc->ale_dev, pmc + PCIR_POWER_STATUS, pmstat, 2);
}
