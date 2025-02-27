
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hsi_msg {struct cs_hsi_iface* context; void* destructor; int channel; } ;
struct cs_hsi_iface {struct hsi_msg* data_tx_msg; struct hsi_msg* data_rx_msg; } ;
struct TYPE_2__ {int channel_id_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__ cs_char_data ;
 void* cs_hsi_data_destructor ;
 struct hsi_msg* hsi_alloc_msg (int,int ) ;
 int hsi_free_msg (struct hsi_msg*) ;

__attribute__((used)) static int cs_hsi_alloc_data(struct cs_hsi_iface *hi)
{
 struct hsi_msg *txmsg, *rxmsg;
 int res = 0;

 rxmsg = hsi_alloc_msg(1, GFP_KERNEL);
 if (!rxmsg) {
  res = -ENOMEM;
  goto out1;
 }
 rxmsg->channel = cs_char_data.channel_id_data;
 rxmsg->destructor = cs_hsi_data_destructor;
 rxmsg->context = hi;

 txmsg = hsi_alloc_msg(1, GFP_KERNEL);
 if (!txmsg) {
  res = -ENOMEM;
  goto out2;
 }
 txmsg->channel = cs_char_data.channel_id_data;
 txmsg->destructor = cs_hsi_data_destructor;
 txmsg->context = hi;

 hi->data_rx_msg = rxmsg;
 hi->data_tx_msg = txmsg;

 return 0;

out2:
 hsi_free_msg(rxmsg);
out1:
 return res;
}
