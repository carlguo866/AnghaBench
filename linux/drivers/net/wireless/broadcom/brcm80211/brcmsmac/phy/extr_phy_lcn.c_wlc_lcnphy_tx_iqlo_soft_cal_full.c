
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcnphy_unsign16_struct {int dummy; } ;
struct brcms_phy {int dummy; } ;


 int wlc_lcnphy_a1 (struct brcms_phy*,int,int,int) ;
 struct lcnphy_unsign16_struct wlc_lcnphy_get_cc (struct brcms_phy*,int) ;
 int wlc_lcnphy_set_cc (struct brcms_phy*,int,int ,int ) ;

__attribute__((used)) static void wlc_lcnphy_tx_iqlo_soft_cal_full(struct brcms_phy *pi)
{
 struct lcnphy_unsign16_struct iqcc0, locc2, locc3, locc4;

 wlc_lcnphy_set_cc(pi, 0, 0, 0);
 wlc_lcnphy_set_cc(pi, 2, 0, 0);
 wlc_lcnphy_set_cc(pi, 3, 0, 0);
 wlc_lcnphy_set_cc(pi, 4, 0, 0);

 wlc_lcnphy_a1(pi, 4, 0, 0);
 wlc_lcnphy_a1(pi, 3, 0, 0);
 wlc_lcnphy_a1(pi, 2, 3, 2);
 wlc_lcnphy_a1(pi, 0, 5, 8);
 wlc_lcnphy_a1(pi, 2, 2, 1);
 wlc_lcnphy_a1(pi, 0, 4, 3);

 iqcc0 = wlc_lcnphy_get_cc(pi, 0);
 locc2 = wlc_lcnphy_get_cc(pi, 2);
 locc3 = wlc_lcnphy_get_cc(pi, 3);
 locc4 = wlc_lcnphy_get_cc(pi, 4);
}
