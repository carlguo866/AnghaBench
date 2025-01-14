
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hns_mac_cb {TYPE_2__* dsaf_dev; } ;
struct TYPE_3__ {int buf_size; } ;
struct hnae_queue {TYPE_1__ rx_ring; } ;
struct hnae_handle {int q_num; struct hnae_queue** qs; } ;
struct TYPE_4__ {int buf_size; int dsaf_ver; } ;


 int AE_IS_VER1 (int ) ;
 int BD_SIZE_2048_MAX_MTU ;
 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_set_mtu (struct hns_mac_cb*,int,int) ;
 int hns_rcb_set_rx_ring_bs (struct hnae_queue*,int) ;

__attribute__((used)) static int hns_ae_set_mtu(struct hnae_handle *handle, int new_mtu)
{
 struct hns_mac_cb *mac_cb = hns_get_mac_cb(handle);
 struct hnae_queue *q;
 u32 rx_buf_size;
 int i, ret;


 if (!AE_IS_VER1(mac_cb->dsaf_dev->dsaf_ver)) {
  if (new_mtu <= BD_SIZE_2048_MAX_MTU)
   rx_buf_size = 2048;
  else
   rx_buf_size = 4096;
 } else {
  rx_buf_size = mac_cb->dsaf_dev->buf_size;
 }

 ret = hns_mac_set_mtu(mac_cb, new_mtu, rx_buf_size);

 if (!ret) {

  for (i = 0; i < handle->q_num; i++) {
   q = handle->qs[i];
   q->rx_ring.buf_size = rx_buf_size;
   hns_rcb_set_rx_ring_bs(q, rx_buf_size);
  }
 }

 return ret;
}
