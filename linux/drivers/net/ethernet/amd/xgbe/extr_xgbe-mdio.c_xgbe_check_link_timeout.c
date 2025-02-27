
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned long link_check; int netdev; } ;


 unsigned long HZ ;
 unsigned long XGBE_LINK_TIMEOUT ;
 int jiffies ;
 int link ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 scalar_t__ time_after (int ,unsigned long) ;
 int xgbe_phy_config_aneg (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_check_link_timeout(struct xgbe_prv_data *pdata)
{
 unsigned long link_timeout;

 link_timeout = pdata->link_check + (XGBE_LINK_TIMEOUT * HZ);
 if (time_after(jiffies, link_timeout)) {
  netif_dbg(pdata, link, pdata->netdev, "AN link timeout\n");
  xgbe_phy_config_aneg(pdata);
 }
}
