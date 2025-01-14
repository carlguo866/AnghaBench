
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ offload_handle; } ;
struct TYPE_7__ {int mode; } ;
struct xfrm_state {TYPE_4__ xso; TYPE_3__ props; } ;
struct xfrm_offload {int dummy; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct sec_path {int len; } ;
struct net_device {int dummy; } ;
struct mlx5e_tx_wqe {int eth; } ;
struct mlx5e_priv {TYPE_2__* ipsec; } ;
struct mlx5e_ipsec_sa_entry {int (* set_iv_op ) (struct sk_buff*,struct xfrm_state*,struct xfrm_offload*) ;} ;
struct mlx5e_ipsec_metadata {int dummy; } ;
struct TYPE_5__ {int ipsec_tx_drop_metadata; int ipsec_tx_drop_trailer; int ipsec_tx_drop_not_ip; int ipsec_tx_drop_no_state; int ipsec_tx_drop_bundle; } ;
struct TYPE_6__ {TYPE_1__ sw_stats; } ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ IS_ERR (struct mlx5e_ipsec_metadata*) ;
 int atomic64_inc (int *) ;
 scalar_t__ htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct mlx5e_ipsec_metadata* mlx5e_ipsec_add_metadata (struct sk_buff*) ;
 int mlx5e_ipsec_remove_trailer (struct sk_buff*,struct xfrm_state*) ;
 int mlx5e_ipsec_set_metadata (struct sk_buff*,struct mlx5e_ipsec_metadata*,struct xfrm_offload*) ;
 int mlx5e_ipsec_set_swp (struct sk_buff*,int *,int ,struct xfrm_offload*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int skb_is_gso (struct sk_buff*) ;
 struct sec_path* skb_sec_path (struct sk_buff*) ;
 int stub1 (struct sk_buff*,struct xfrm_state*,struct xfrm_offload*) ;
 scalar_t__ unlikely (int) ;
 struct xfrm_state* xfrm_input_state (struct sk_buff*) ;
 struct xfrm_offload* xfrm_offload (struct sk_buff*) ;

struct sk_buff *mlx5e_ipsec_handle_tx_skb(struct net_device *netdev,
       struct mlx5e_tx_wqe *wqe,
       struct sk_buff *skb)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct xfrm_offload *xo = xfrm_offload(skb);
 struct mlx5e_ipsec_metadata *mdata;
 struct mlx5e_ipsec_sa_entry *sa_entry;
 struct xfrm_state *x;
 struct sec_path *sp;

 if (!xo)
  return skb;

 sp = skb_sec_path(skb);
 if (unlikely(sp->len != 1)) {
  atomic64_inc(&priv->ipsec->sw_stats.ipsec_tx_drop_bundle);
  goto drop;
 }

 x = xfrm_input_state(skb);
 if (unlikely(!x)) {
  atomic64_inc(&priv->ipsec->sw_stats.ipsec_tx_drop_no_state);
  goto drop;
 }

 if (unlikely(!x->xso.offload_handle ||
       (skb->protocol != htons(ETH_P_IP) &&
        skb->protocol != htons(ETH_P_IPV6)))) {
  atomic64_inc(&priv->ipsec->sw_stats.ipsec_tx_drop_not_ip);
  goto drop;
 }

 if (!skb_is_gso(skb))
  if (unlikely(mlx5e_ipsec_remove_trailer(skb, x))) {
   atomic64_inc(&priv->ipsec->sw_stats.ipsec_tx_drop_trailer);
   goto drop;
  }
 mdata = mlx5e_ipsec_add_metadata(skb);
 if (IS_ERR(mdata)) {
  atomic64_inc(&priv->ipsec->sw_stats.ipsec_tx_drop_metadata);
  goto drop;
 }
 mlx5e_ipsec_set_swp(skb, &wqe->eth, x->props.mode, xo);
 sa_entry = (struct mlx5e_ipsec_sa_entry *)x->xso.offload_handle;
 sa_entry->set_iv_op(skb, x, xo);
 mlx5e_ipsec_set_metadata(skb, mdata, xo);

 return skb;

drop:
 kfree_skb(skb);
 return ((void*)0);
}
