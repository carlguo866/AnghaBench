
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int ndev; } ;


 int link ;
 int netif_carrier_off (int ) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_set_mac_addr (struct ql_adapter*,int ) ;

void ql_link_off(struct ql_adapter *qdev)
{
 netif_err(qdev, link, qdev->ndev, "Link is down.\n");
 netif_carrier_off(qdev->ndev);
 ql_set_mac_addr(qdev, 0);
}
