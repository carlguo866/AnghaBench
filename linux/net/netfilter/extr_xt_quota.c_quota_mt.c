
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_quota_priv {scalar_t__ quota; int lock; } ;
struct xt_quota_info {int flags; struct xt_quota_priv* master; } ;
struct xt_action_param {scalar_t__ matchinfo; } ;
struct sk_buff {scalar_t__ len; } ;


 int XT_QUOTA_INVERT ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool
quota_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 struct xt_quota_info *q = (void *)par->matchinfo;
 struct xt_quota_priv *priv = q->master;
 bool ret = q->flags & XT_QUOTA_INVERT;

 spin_lock_bh(&priv->lock);
 if (priv->quota >= skb->len) {
  priv->quota -= skb->len;
  ret = !ret;
 } else {

  priv->quota = 0;
 }
 spin_unlock_bh(&priv->lock);

 return ret;
}
