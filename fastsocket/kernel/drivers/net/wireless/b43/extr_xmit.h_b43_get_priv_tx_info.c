
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_info {scalar_t__ rate_driver_data; } ;
struct b43_private_tx_info {int dummy; } ;


 int BUILD_BUG_ON (int) ;

__attribute__((used)) static inline struct b43_private_tx_info *
b43_get_priv_tx_info(struct ieee80211_tx_info *info)
{
 BUILD_BUG_ON(sizeof(struct b43_private_tx_info) >
       sizeof(info->rate_driver_data));
 return (struct b43_private_tx_info *)info->rate_driver_data;
}
