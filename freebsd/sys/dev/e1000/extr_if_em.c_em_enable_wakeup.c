
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_8__ {scalar_t__ media_type; scalar_t__ type; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_9__ {TYPE_2__ phy; TYPE_1__ mac; } ;
struct adapter {int wol; TYPE_3__ hw; } ;
typedef int if_t ;
typedef int if_ctx_t ;
typedef int device_t ;


 int E1000_CTRL ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_SDP3_DATA ;
 int E1000_CTRL_SWDPIN2 ;
 int E1000_CTRL_SWDPIN3 ;
 int E1000_RCTL ;
 int E1000_RCTL_MPE ;
 int E1000_READ_REG (TYPE_3__*,int ) ;
 int E1000_WRITE_REG (TYPE_3__*,int ,int) ;
 int E1000_WUC ;
 int E1000_WUC_PME_EN ;
 int E1000_WUFC ;
 int E1000_WUFC_EX ;
 int E1000_WUFC_MAG ;
 int E1000_WUFC_MC ;
 int IFCAP_WOL ;
 int IFCAP_WOL_MAGIC ;
 int IFCAP_WOL_MCAST ;
 int IFCAP_WOL_UCAST ;
 int PCIM_PSTAT_PME ;
 int PCIM_PSTAT_PMEENABLE ;
 int PCIR_POWER_STATUS ;
 int PCIY_PMG ;
 scalar_t__ e1000_ich10lan ;
 scalar_t__ e1000_ich8lan ;
 scalar_t__ e1000_ich9lan ;
 int e1000_igp3_phy_powerdown_workaround_ich8lan (TYPE_3__*) ;
 scalar_t__ e1000_media_type_fiber ;
 scalar_t__ e1000_media_type_internal_serdes ;
 scalar_t__ e1000_pchlan ;
 scalar_t__ e1000_phy_igp_3 ;
 int e1000_suspend_workarounds_ich8lan (TYPE_3__*) ;
 int em_enable_phy_wakeup (struct adapter*) ;
 int if_getcapenable (int ) ;
 int iflib_get_dev (int ) ;
 int iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static void
em_enable_wakeup(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 device_t dev = iflib_get_dev(ctx);
 if_t ifp = iflib_get_ifp(ctx);
 int error = 0;
 u32 pmc, ctrl, ctrl_ext, rctl;
 u16 status;

 if (pci_find_cap(dev, PCIY_PMG, &pmc) != 0)
  return;





 if ((if_getcapenable(ifp) & IFCAP_WOL_MAGIC) == 0)
  adapter->wol &= ~E1000_WUFC_MAG;

 if ((if_getcapenable(ifp) & IFCAP_WOL_UCAST) == 0)
  adapter->wol &= ~E1000_WUFC_EX;

 if ((if_getcapenable(ifp) & IFCAP_WOL_MCAST) == 0)
  adapter->wol &= ~E1000_WUFC_MC;
 else {
  rctl = E1000_READ_REG(&adapter->hw, E1000_RCTL);
  rctl |= E1000_RCTL_MPE;
  E1000_WRITE_REG(&adapter->hw, E1000_RCTL, rctl);
 }

 if (!(adapter->wol & (E1000_WUFC_EX | E1000_WUFC_MAG | E1000_WUFC_MC)))
  goto pme;


 ctrl = E1000_READ_REG(&adapter->hw, E1000_CTRL);
 ctrl |= (E1000_CTRL_SWDPIN2 | E1000_CTRL_SWDPIN3);
 E1000_WRITE_REG(&adapter->hw, E1000_CTRL, ctrl);


 if (adapter->hw.phy.media_type == e1000_media_type_fiber ||
     adapter->hw.phy.media_type == e1000_media_type_internal_serdes) {
  ctrl_ext = E1000_READ_REG(&adapter->hw, E1000_CTRL_EXT);
  ctrl_ext |= E1000_CTRL_EXT_SDP3_DATA;
  E1000_WRITE_REG(&adapter->hw, E1000_CTRL_EXT, ctrl_ext);
 }

 if ((adapter->hw.mac.type == e1000_ich8lan) ||
     (adapter->hw.mac.type == e1000_pchlan) ||
     (adapter->hw.mac.type == e1000_ich9lan) ||
     (adapter->hw.mac.type == e1000_ich10lan))
  e1000_suspend_workarounds_ich8lan(&adapter->hw);

 if ( adapter->hw.mac.type >= e1000_pchlan) {
  error = em_enable_phy_wakeup(adapter);
  if (error)
   goto pme;
 } else {

  E1000_WRITE_REG(&adapter->hw, E1000_WUC, E1000_WUC_PME_EN);
  E1000_WRITE_REG(&adapter->hw, E1000_WUFC, adapter->wol);
 }

 if (adapter->hw.phy.type == e1000_phy_igp_3)
  e1000_igp3_phy_powerdown_workaround_ich8lan(&adapter->hw);

pme:
 status = pci_read_config(dev, pmc + PCIR_POWER_STATUS, 2);
 status &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
 if (!error && (if_getcapenable(ifp) & IFCAP_WOL))
  status |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
 pci_write_config(dev, pmc + PCIR_POWER_STATUS, status, 2);

 return;
}
