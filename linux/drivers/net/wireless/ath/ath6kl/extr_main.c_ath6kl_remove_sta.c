
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct ath6kl {TYPE_1__* sta_list; } ;
struct TYPE_2__ {size_t* mac; int aid; } ;


 size_t AP_MAX_NUM_STA ;
 int ATH6KL_DBG_TRC ;
 int ETH_ALEN ;
 int ath6kl_dbg (int ,char*,...) ;
 int ath6kl_sta_cleanup (struct ath6kl*,size_t) ;
 scalar_t__ is_broadcast_ether_addr (size_t*) ;
 scalar_t__ is_zero_ether_addr (size_t*) ;
 scalar_t__ memcmp (size_t*,size_t*,int ) ;

__attribute__((used)) static u8 ath6kl_remove_sta(struct ath6kl *ar, u8 *mac, u16 reason)
{
 u8 i, removed = 0;

 if (is_zero_ether_addr(mac))
  return removed;

 if (is_broadcast_ether_addr(mac)) {
  ath6kl_dbg(ATH6KL_DBG_TRC, "deleting all station\n");

  for (i = 0; i < AP_MAX_NUM_STA; i++) {
   if (!is_zero_ether_addr(ar->sta_list[i].mac)) {
    ath6kl_sta_cleanup(ar, i);
    removed = 1;
   }
  }
 } else {
  for (i = 0; i < AP_MAX_NUM_STA; i++) {
   if (memcmp(ar->sta_list[i].mac, mac, ETH_ALEN) == 0) {
    ath6kl_dbg(ATH6KL_DBG_TRC,
        "deleting station %pM aid=%d reason=%d\n",
        mac, ar->sta_list[i].aid, reason);
    ath6kl_sta_cleanup(ar, i);
    removed = 1;
    break;
   }
  }
 }

 return removed;
}
