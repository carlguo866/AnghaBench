
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; } ;
struct ath10k_sdio {int wr_async_work; int workqueue; scalar_t__* mbox_size; scalar_t__* mbox_addr; } ;
struct ath10k_hif_sg_item {struct sk_buff* transfer_context; } ;
struct ath10k {int dummy; } ;
typedef enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;


 size_t ath10k_sdio_calc_txrx_padded_len (struct ath10k_sdio*,scalar_t__) ;
 int ath10k_sdio_prep_async_req (struct ath10k*,scalar_t__,struct sk_buff*,int *,int,int) ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int pipe_id_to_eid (int ) ;
 int queue_work (int ,int *) ;
 int skb_trim (struct sk_buff*,size_t) ;

__attribute__((used)) static int ath10k_sdio_hif_tx_sg(struct ath10k *ar, u8 pipe_id,
     struct ath10k_hif_sg_item *items, int n_items)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 enum ath10k_htc_ep_id eid;
 struct sk_buff *skb;
 int ret, i;

 eid = pipe_id_to_eid(pipe_id);

 for (i = 0; i < n_items; i++) {
  size_t padded_len;
  u32 address;

  skb = items[i].transfer_context;
  padded_len = ath10k_sdio_calc_txrx_padded_len(ar_sdio,
             skb->len);
  skb_trim(skb, padded_len);


  address = ar_sdio->mbox_addr[eid] + ar_sdio->mbox_size[eid] -
     skb->len;
  ret = ath10k_sdio_prep_async_req(ar, address, skb,
       ((void*)0), 1, eid);
  if (ret)
   return ret;
 }

 queue_work(ar_sdio->workqueue, &ar_sdio->wr_async_work);

 return 0;
}
