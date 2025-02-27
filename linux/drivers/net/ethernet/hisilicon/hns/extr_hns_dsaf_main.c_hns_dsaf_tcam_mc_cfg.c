
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_tbl_tcam_mcast_cfg {int dummy; } ;
struct dsaf_tbl_tcam_data {int dummy; } ;
struct dsaf_device {int tcam_lock; } ;


 int hns_dsaf_tbl_tcam_addr_cfg (struct dsaf_device*,int ) ;
 int hns_dsaf_tbl_tcam_data_cfg (struct dsaf_device*,struct dsaf_tbl_tcam_data*) ;
 int hns_dsaf_tbl_tcam_data_mcast_pul (struct dsaf_device*) ;
 int hns_dsaf_tbl_tcam_match_cfg (struct dsaf_device*,struct dsaf_tbl_tcam_data*) ;
 int hns_dsaf_tbl_tcam_mcast_cfg (struct dsaf_device*,struct dsaf_tbl_tcam_mcast_cfg*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void hns_dsaf_tcam_mc_cfg(
 struct dsaf_device *dsaf_dev, u32 address,
 struct dsaf_tbl_tcam_data *ptbl_tcam_data,
 struct dsaf_tbl_tcam_data *ptbl_tcam_mask,
 struct dsaf_tbl_tcam_mcast_cfg *ptbl_tcam_mcast)
{
 spin_lock_bh(&dsaf_dev->tcam_lock);


 hns_dsaf_tbl_tcam_addr_cfg(dsaf_dev, address);

 hns_dsaf_tbl_tcam_data_cfg(dsaf_dev, ptbl_tcam_data);

 hns_dsaf_tbl_tcam_mcast_cfg(dsaf_dev, ptbl_tcam_mcast);

 if (ptbl_tcam_mask)
  hns_dsaf_tbl_tcam_match_cfg(dsaf_dev, ptbl_tcam_mask);


 hns_dsaf_tbl_tcam_data_mcast_pul(dsaf_dev);

 spin_unlock_bh(&dsaf_dev->tcam_lock);
}
