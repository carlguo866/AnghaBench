
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wil_ring {int swhead; int swtail; int hwtail; } ;
struct wil6210_priv {struct wil_ring ring_rx; struct net_device* main_ndev; } ;
struct net_device {scalar_t__ type; } ;


 scalar_t__ ARPHRD_IEEE80211_RADIOTAP ;
 int WIL6210_RTAP_SIZE ;
 scalar_t__ unlikely (int) ;
 int wil_err_ratelimited (struct wil6210_priv*,char*,int,int) ;
 int wil_ring_next_tail (struct wil_ring*) ;
 int wil_vring_alloc_skb (struct wil6210_priv*,struct wil_ring*,int,int) ;
 int wil_w (struct wil6210_priv*,int ,int) ;
 int wmb () ;

__attribute__((used)) static int wil_rx_refill(struct wil6210_priv *wil, int count)
{
 struct net_device *ndev = wil->main_ndev;
 struct wil_ring *v = &wil->ring_rx;
 u32 next_tail;
 int rc = 0;
 int headroom = ndev->type == ARPHRD_IEEE80211_RADIOTAP ?
   WIL6210_RTAP_SIZE : 0;

 for (; next_tail = wil_ring_next_tail(v),
      (next_tail != v->swhead) && (count-- > 0);
      v->swtail = next_tail) {
  rc = wil_vring_alloc_skb(wil, v, v->swtail, headroom);
  if (unlikely(rc)) {
   wil_err_ratelimited(wil, "Error %d in rx refill[%d]\n",
         rc, v->swtail);
   break;
  }
 }




 wmb();

 wil_w(wil, v->hwtail, v->swtail);

 return rc;
}
