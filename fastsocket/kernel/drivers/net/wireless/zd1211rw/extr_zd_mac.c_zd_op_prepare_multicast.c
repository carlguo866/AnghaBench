
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zd_mc_hash {int low; scalar_t__ high; } ;
struct zd_mac {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct dev_addr_list {struct dev_addr_list* next; int dmi_addr; } ;


 int dev_dbg_f (int ,char*,int ) ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;
 int zd_mac_dev (struct zd_mac*) ;
 int zd_mc_add_addr (struct zd_mc_hash*,int ) ;
 int zd_mc_clear (struct zd_mc_hash*) ;

__attribute__((used)) static u64 zd_op_prepare_multicast(struct ieee80211_hw *hw,
       int mc_count, struct dev_addr_list *ha)
{
 struct zd_mac *mac = zd_hw_mac(hw);
 struct zd_mc_hash hash;
 int i;

 zd_mc_clear(&hash);

 for (i = 0; i < mc_count; i++) {
  if (!ha)
   break;
  dev_dbg_f(zd_mac_dev(mac), "mc addr %pM\n", ha->dmi_addr);
  zd_mc_add_addr(&hash, ha->dmi_addr);
  ha = ha->next;
 }

 return hash.low | ((u64)hash.high << 32);
}
