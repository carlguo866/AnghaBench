
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_2__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_key_conf {int keyidx; int tx_pn; } ;


 int atomic64_inc_return (int *) ;

__attribute__((used)) static inline void iwl_mvm_set_tx_cmd_pn(struct ieee80211_tx_info *info,
      u8 *crypto_hdr)
{
 struct ieee80211_key_conf *keyconf = info->control.hw_key;
 u64 pn;

 pn = atomic64_inc_return(&keyconf->tx_pn);
 crypto_hdr[0] = pn;
 crypto_hdr[2] = 0;
 crypto_hdr[3] = 0x20 | (keyconf->keyidx << 6);
 crypto_hdr[1] = pn >> 8;
 crypto_hdr[4] = pn >> 16;
 crypto_hdr[5] = pn >> 24;
 crypto_hdr[6] = pn >> 32;
 crypto_hdr[7] = pn >> 40;
}
