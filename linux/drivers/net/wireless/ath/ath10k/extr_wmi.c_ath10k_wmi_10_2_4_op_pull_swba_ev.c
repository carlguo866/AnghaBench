
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct wmi_swba_ev_arg {TYPE_3__* tim_info; int vdev_map; } ;
struct wmi_10_2_4_host_swba_event {TYPE_2__* bcn_info; int vdev_map; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k {int dummy; } ;
struct TYPE_6__ {int tim_num_ps_pending; int tim_changed; int tim_bitmap; int tim_mcast; int tim_len; } ;
struct TYPE_4__ {int tim_num_ps_pending; int tim_changed; int tim_bitmap; int tim_mcast; int tim_len; } ;
struct TYPE_5__ {TYPE_1__ tim_info; } ;


 size_t ARRAY_SIZE (TYPE_3__*) ;
 int BIT (int ) ;
 int EPROTO ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __le32_to_cpu (int ) ;
 int ath10k_warn (struct ath10k*,char*) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int ath10k_wmi_10_2_4_op_pull_swba_ev(struct ath10k *ar,
          struct sk_buff *skb,
          struct wmi_swba_ev_arg *arg)
{
 struct wmi_10_2_4_host_swba_event *ev = (void *)skb->data;
 u32 map;
 size_t i;

 if (skb->len < sizeof(*ev))
  return -EPROTO;

 skb_pull(skb, sizeof(*ev));
 arg->vdev_map = ev->vdev_map;

 for (i = 0, map = __le32_to_cpu(ev->vdev_map); map; map >>= 1) {
  if (!(map & BIT(0)))
   continue;




  if (WARN_ON_ONCE(i == ARRAY_SIZE(arg->tim_info)))
   break;

  if (__le32_to_cpu(ev->bcn_info[i].tim_info.tim_len) >
       sizeof(ev->bcn_info[i].tim_info.tim_bitmap)) {
   ath10k_warn(ar, "refusing to parse invalid swba structure\n");
   return -EPROTO;
  }

  arg->tim_info[i].tim_len = ev->bcn_info[i].tim_info.tim_len;
  arg->tim_info[i].tim_mcast = ev->bcn_info[i].tim_info.tim_mcast;
  arg->tim_info[i].tim_bitmap =
    ev->bcn_info[i].tim_info.tim_bitmap;
  arg->tim_info[i].tim_changed =
    ev->bcn_info[i].tim_info.tim_changed;
  arg->tim_info[i].tim_num_ps_pending =
    ev->bcn_info[i].tim_info.tim_num_ps_pending;
  i++;
 }

 return 0;
}
