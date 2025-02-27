
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int dummy; } ;


 int PHY_CFG ;
 int PHY_CFG_DC_OPT_MSK ;
 int PHY_CFG_DC_OPT_OFF ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;

__attribute__((used)) static void config_phy_opt_mode_v3_hw(struct hisi_hba *hisi_hba, int phy_no)
{
 u32 cfg = hisi_sas_phy_read32(hisi_hba, phy_no, PHY_CFG);

 cfg &= ~PHY_CFG_DC_OPT_MSK;
 cfg |= 1 << PHY_CFG_DC_OPT_OFF;
 hisi_sas_phy_write32(hisi_hba, phy_no, PHY_CFG, cfg);
}
