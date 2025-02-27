
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int tx_rate; size_t tx_rate_idx; scalar_t__ tx_since_last_failure; int tx_max_rate; int addr; scalar_t__ tx_consecutive_exc; int * tx_count; } ;
struct net_device {int name; } ;
struct hostap_interface {int * local; } ;
typedef int local_info_t ;


 int DEBUG_AP ;
 int PDEBUG (int ,char*,int ,int ,int) ;
 scalar_t__ WLAN_RATE_UPDATE_COUNT ;
 scalar_t__ ap_tx_rate_ok (int,struct sta_info*,int *) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ap_update_sta_tx_rate(struct sta_info *sta, struct net_device *dev)
{
 int ret = sta->tx_rate;
 struct hostap_interface *iface;
 local_info_t *local;

 iface = netdev_priv(dev);
 local = iface->local;

 sta->tx_count[sta->tx_rate_idx]++;
 sta->tx_since_last_failure++;
 sta->tx_consecutive_exc = 0;
 if (sta->tx_since_last_failure >= WLAN_RATE_UPDATE_COUNT &&
     sta->tx_rate_idx < sta->tx_max_rate) {

  int old_rate, new_rate;
  old_rate = new_rate = sta->tx_rate_idx;
  while (new_rate < sta->tx_max_rate) {
   new_rate++;
   if (ap_tx_rate_ok(new_rate, sta, local)) {
    sta->tx_rate_idx = new_rate;
    break;
   }
  }
  if (old_rate != sta->tx_rate_idx) {
   switch (sta->tx_rate_idx) {
   case 0: sta->tx_rate = 10; break;
   case 1: sta->tx_rate = 20; break;
   case 2: sta->tx_rate = 55; break;
   case 3: sta->tx_rate = 110; break;
   default: sta->tx_rate = 0; break;
   }
   PDEBUG(DEBUG_AP, "%s: STA %pM TX rate raised to %d\n",
          dev->name, sta->addr, sta->tx_rate);
  }
  sta->tx_since_last_failure = 0;
 }

 return ret;
}
