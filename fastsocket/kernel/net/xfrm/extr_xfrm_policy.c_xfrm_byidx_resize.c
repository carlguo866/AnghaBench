
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int policy_idx_hmask; struct hlist_head* policy_byidx; } ;
struct net {TYPE_1__ xfrm; } ;
struct hlist_head {int dummy; } ;


 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 struct hlist_head* xfrm_hash_alloc (unsigned int) ;
 int xfrm_hash_free (struct hlist_head*,unsigned int) ;
 int xfrm_idx_hash_transfer (struct hlist_head*,struct hlist_head*,unsigned int) ;
 unsigned int xfrm_new_hash_mask (unsigned int) ;
 int xfrm_policy_lock ;

__attribute__((used)) static void xfrm_byidx_resize(struct net *net, int total)
{
 unsigned int hmask = net->xfrm.policy_idx_hmask;
 unsigned int nhashmask = xfrm_new_hash_mask(hmask);
 unsigned int nsize = (nhashmask + 1) * sizeof(struct hlist_head);
 struct hlist_head *oidx = net->xfrm.policy_byidx;
 struct hlist_head *nidx = xfrm_hash_alloc(nsize);
 int i;

 if (!nidx)
  return;

 write_lock_bh(&xfrm_policy_lock);

 for (i = hmask; i >= 0; i--)
  xfrm_idx_hash_transfer(oidx + i, nidx, nhashmask);

 net->xfrm.policy_byidx = nidx;
 net->xfrm.policy_idx_hmask = nhashmask;

 write_unlock_bh(&xfrm_policy_lock);

 xfrm_hash_free(oidx, (hmask + 1) * sizeof(struct hlist_head));
}
