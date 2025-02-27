
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wl12xx_rx_filter {int action; } ;
struct cfg80211_pkt_pattern {int pattern_len; int * pattern; scalar_t__ mask; } ;


 int ENOMEM ;
 int FILTER_SIGNAL ;
 int WL1271_RX_FILTER_ETH_HEADER_SIZE ;
 int WL1271_RX_FILTER_FLAG_ETHERNET_HEADER ;
 int WL1271_RX_FILTER_FLAG_IP_HEADER ;
 int test_bit (int,unsigned long*) ;
 struct wl12xx_rx_filter* wl1271_rx_filter_alloc () ;
 int wl1271_rx_filter_alloc_field (struct wl12xx_rx_filter*,int,int,int *,int) ;
 int wl1271_rx_filter_free (struct wl12xx_rx_filter*) ;
 int wl1271_warning (char*) ;

__attribute__((used)) static int
wl1271_convert_wowlan_pattern_to_rx_filter(struct cfg80211_pkt_pattern *p,
        struct wl12xx_rx_filter **f)
{
 int i, j, ret = 0;
 struct wl12xx_rx_filter *filter;
 u16 offset;
 u8 flags, len;

 filter = wl1271_rx_filter_alloc();
 if (!filter) {
  wl1271_warning("Failed to alloc rx filter");
  ret = -ENOMEM;
  goto err;
 }

 i = 0;
 while (i < p->pattern_len) {
  if (!test_bit(i, (unsigned long *)p->mask)) {
   i++;
   continue;
  }

  for (j = i; j < p->pattern_len; j++) {
   if (!test_bit(j, (unsigned long *)p->mask))
    break;

   if (i < WL1271_RX_FILTER_ETH_HEADER_SIZE &&
       j >= WL1271_RX_FILTER_ETH_HEADER_SIZE)
    break;
  }

  if (i < WL1271_RX_FILTER_ETH_HEADER_SIZE) {
   offset = i;
   flags = WL1271_RX_FILTER_FLAG_ETHERNET_HEADER;
  } else {
   offset = i - WL1271_RX_FILTER_ETH_HEADER_SIZE;
   flags = WL1271_RX_FILTER_FLAG_IP_HEADER;
  }

  len = j - i;

  ret = wl1271_rx_filter_alloc_field(filter,
         offset,
         flags,
         &p->pattern[i], len);
  if (ret)
   goto err;

  i = j;
 }

 filter->action = FILTER_SIGNAL;

 *f = filter;
 return 0;

err:
 wl1271_rx_filter_free(filter);
 *f = ((void*)0);

 return ret;
}
