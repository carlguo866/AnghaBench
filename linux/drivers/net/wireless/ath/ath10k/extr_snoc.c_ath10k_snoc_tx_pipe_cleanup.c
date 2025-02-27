
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k_snoc_pipe {int buf_sz; struct ath10k_ce_pipe* ce_hdl; struct ath10k* hif_ce_state; } ;
struct ath10k_ce_ring {int nentries; struct sk_buff** per_transfer_context; } ;
struct ath10k_ce_pipe {struct ath10k_ce_ring* src_ring; } ;
struct ath10k {int dummy; } ;


 int ath10k_htc_tx_completion_handler (struct ath10k*,struct sk_buff*) ;

__attribute__((used)) static void ath10k_snoc_tx_pipe_cleanup(struct ath10k_snoc_pipe *snoc_pipe)
{
 struct ath10k_ce_pipe *ce_pipe;
 struct ath10k_ce_ring *ce_ring;
 struct sk_buff *skb;
 struct ath10k *ar;
 int i;

 ar = snoc_pipe->hif_ce_state;
 ce_pipe = snoc_pipe->ce_hdl;
 ce_ring = ce_pipe->src_ring;

 if (!ce_ring)
  return;

 if (!snoc_pipe->buf_sz)
  return;

 for (i = 0; i < ce_ring->nentries; i++) {
  skb = ce_ring->per_transfer_context[i];
  if (!skb)
   continue;

  ce_ring->per_transfer_context[i] = ((void*)0);

  ath10k_htc_tx_completion_handler(ar, skb);
 }
}
