
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct device {int dummy; } ;
struct ath10k_skb_cb {int eid; int paddr; } ;
struct ath10k_htc_hdr {int dummy; } ;
struct TYPE_4__ {int (* ep_tx_credits ) (struct ath10k*) ;} ;
struct ath10k_htc_ep {int tx_credits; TYPE_2__ ep_ops; scalar_t__ tx_credit_flow_enabled; int ul_pipe_id; int eid; } ;
struct ath10k_htc {struct ath10k* ar; int tx_lock; int target_credit_size; struct ath10k_htc_ep* endpoint; } ;
struct ath10k_hif_sg_item {int len; int paddr; int vaddr; struct sk_buff* transfer_context; int transfer_id; } ;
struct TYPE_3__ {scalar_t__ dev_type; } ;
struct ath10k {scalar_t__ state; TYPE_1__ bus_param; struct device* dev; } ;
typedef enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;


 int ATH10K_DBG_HTC ;
 scalar_t__ ATH10K_DEV_TYPE_HL ;
 int ATH10K_HTC_EP_COUNT ;
 struct ath10k_skb_cb* ATH10K_SKB_CB (struct sk_buff*) ;
 scalar_t__ ATH10K_STATE_WEDGED ;
 int DIV_ROUND_UP (int ,int ) ;
 int DMA_TO_DEVICE ;
 int EAGAIN ;
 int ECOMM ;
 int EIO ;
 int ENOENT ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int,int) ;
 int ath10k_hif_tx_sg (struct ath10k*,int ,struct ath10k_hif_sg_item*,int) ;
 int ath10k_htc_prepare_tx_skb (struct ath10k_htc_ep*,struct sk_buff*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int dma_map_single (struct device*,int ,int ,int ) ;
 int dma_mapping_error (struct device*,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ath10k*) ;

int ath10k_htc_send(struct ath10k_htc *htc,
      enum ath10k_htc_ep_id eid,
      struct sk_buff *skb)
{
 struct ath10k *ar = htc->ar;
 struct ath10k_htc_ep *ep = &htc->endpoint[eid];
 struct ath10k_skb_cb *skb_cb = ATH10K_SKB_CB(skb);
 struct ath10k_hif_sg_item sg_item;
 struct device *dev = htc->ar->dev;
 int credits = 0;
 int ret;

 if (htc->ar->state == ATH10K_STATE_WEDGED)
  return -ECOMM;

 if (eid >= ATH10K_HTC_EP_COUNT) {
  ath10k_warn(ar, "Invalid endpoint id: %d\n", eid);
  return -ENOENT;
 }

 skb_push(skb, sizeof(struct ath10k_htc_hdr));

 if (ep->tx_credit_flow_enabled) {
  credits = DIV_ROUND_UP(skb->len, htc->target_credit_size);
  spin_lock_bh(&htc->tx_lock);
  if (ep->tx_credits < credits) {
   ath10k_dbg(ar, ATH10K_DBG_HTC,
       "htc insufficient credits ep %d required %d available %d\n",
       eid, credits, ep->tx_credits);
   spin_unlock_bh(&htc->tx_lock);
   ret = -EAGAIN;
   goto err_pull;
  }
  ep->tx_credits -= credits;
  ath10k_dbg(ar, ATH10K_DBG_HTC,
      "htc ep %d consumed %d credits (total %d)\n",
      eid, credits, ep->tx_credits);
  spin_unlock_bh(&htc->tx_lock);
 }

 ath10k_htc_prepare_tx_skb(ep, skb);

 skb_cb->eid = eid;
 if (ar->bus_param.dev_type != ATH10K_DEV_TYPE_HL) {
  skb_cb->paddr = dma_map_single(dev, skb->data, skb->len,
            DMA_TO_DEVICE);
  ret = dma_mapping_error(dev, skb_cb->paddr);
  if (ret) {
   ret = -EIO;
   goto err_credits;
  }
 }

 sg_item.transfer_id = ep->eid;
 sg_item.transfer_context = skb;
 sg_item.vaddr = skb->data;
 sg_item.paddr = skb_cb->paddr;
 sg_item.len = skb->len;

 ret = ath10k_hif_tx_sg(htc->ar, ep->ul_pipe_id, &sg_item, 1);
 if (ret)
  goto err_unmap;

 return 0;

err_unmap:
 if (ar->bus_param.dev_type != ATH10K_DEV_TYPE_HL)
  dma_unmap_single(dev, skb_cb->paddr, skb->len, DMA_TO_DEVICE);
err_credits:
 if (ep->tx_credit_flow_enabled) {
  spin_lock_bh(&htc->tx_lock);
  ep->tx_credits += credits;
  ath10k_dbg(ar, ATH10K_DBG_HTC,
      "htc ep %d reverted %d credits back (total %d)\n",
      eid, credits, ep->tx_credits);
  spin_unlock_bh(&htc->tx_lock);

  if (ep->ep_ops.ep_tx_credits)
   ep->ep_ops.ep_tx_credits(htc->ar);
 }
err_pull:
 skb_pull(skb, sizeof(struct ath10k_htc_hdr));
 return ret;
}
