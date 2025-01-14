
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_policy {int defined; unsigned int retry_count; int * tbl; } ;
struct ieee80211_tx_rate {scalar_t__ idx; unsigned int count; int flags; } ;
struct cw1200_common {unsigned int short_frame_max_tx_count; } ;
struct TYPE_2__ {int hw_value; } ;


 int BUG_ON (int) ;
 int IEEE80211_TX_RC_MCS ;
 int __cpu_to_le32 (unsigned int) ;
 TYPE_1__* cw1200_get_tx_rate (struct cw1200_common const*,struct ieee80211_tx_rate*) ;
 int memset (struct tx_policy*,int ,int) ;
 int pr_debug (char*,size_t,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static void tx_policy_build(const struct cw1200_common *priv,
             struct tx_policy *policy,
 struct ieee80211_tx_rate *rates, size_t count)
{
 int i, j;
 unsigned limit = priv->short_frame_max_tx_count;
 unsigned total = 0;
 BUG_ON(rates[0].idx < 0);
 memset(policy, 0, sizeof(*policy));


 for (i = 1; i < count; ++i) {
  if (rates[i].idx < 0) {
   count = i;
   break;
  }
  if (rates[i].idx > rates[i - 1].idx) {
   struct ieee80211_tx_rate tmp = rates[i - 1];
   rates[i - 1] = rates[i];
   rates[i] = tmp;
  }
 }


 total = rates[0].count;
 for (i = 0, j = 1; j < count; ++j) {
  if (rates[j].idx == rates[i].idx) {
   rates[i].count += rates[j].count;
  } else if (rates[j].idx > rates[i].idx) {
   break;
  } else {
   ++i;
   if (i != j)
    rates[i] = rates[j];
  }
  total += rates[j].count;
 }
 count = i + 1;




 if (limit < count)
  limit = count;
 if (total > limit) {
  for (i = 0; i < count; ++i) {
   int left = count - i - 1;
   if (rates[i].count > limit - left)
    rates[i].count = limit - left;
   limit -= rates[i].count;
  }
 }







 if (count == 2 && !(rates[0].flags & IEEE80211_TX_RC_MCS) &&
     rates[0].idx > 4 && rates[0].count > 2 &&
     rates[1].idx < 2) {
  int mid_rate = (rates[0].idx + 4) >> 1;


  rates[0].count -= 2;

  if (mid_rate != 4) {

   rates[3] = rates[1];


   rates[2].idx = 4;
   rates[2].count = 1;
   rates[2].flags = rates[1].flags;


   rates[1].idx = mid_rate;
   rates[1].count = 1;






   if (rates[0].count >= 3) {
    --rates[0].count;
    ++rates[2].count;
   }


   count += 2;
  } else {

   rates[2] = rates[1];


   rates[1].idx = 4;
   rates[1].count = 2;


   count += 1;
  }
 }

 policy->defined = cw1200_get_tx_rate(priv, &rates[0])->hw_value + 1;

 for (i = 0; i < count; ++i) {
  register unsigned rateid, off, shift, retries;

  rateid = cw1200_get_tx_rate(priv, &rates[i])->hw_value;
  off = rateid >> 3;
  shift = (rateid & 0x07) << 2;

  retries = rates[i].count;
  if (retries > 0x0F) {
   rates[i].count = 0x0f;
   retries = 0x0F;
  }
  policy->tbl[off] |= __cpu_to_le32(retries << shift);
  policy->retry_count += retries;
 }

 pr_debug("[TX policy] Policy (%zu): %d:%d, %d:%d, %d:%d, %d:%d\n",
   count,
   rates[0].idx, rates[0].count,
   rates[1].idx, rates[1].count,
   rates[2].idx, rates[2].count,
   rates[3].idx, rates[3].count);
}
