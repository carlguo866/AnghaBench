
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {struct phy_device* phydev; } ;
struct phy_device {int dummy; } ;


 int phy_modify_paged (struct phy_device*,int,int,int,int) ;
 int rtl8168g_config_eee_phy (struct rtl8169_private*) ;

__attribute__((used)) static void rtl8168h_config_eee_phy(struct rtl8169_private *tp)
{
 struct phy_device *phydev = tp->phydev;

 rtl8168g_config_eee_phy(tp);

 phy_modify_paged(phydev, 0xa4a, 0x11, 0x0000, 0x0200);
 phy_modify_paged(phydev, 0xa42, 0x14, 0x0000, 0x0080);
}
