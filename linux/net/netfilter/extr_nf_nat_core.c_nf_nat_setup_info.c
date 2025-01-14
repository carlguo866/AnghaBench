
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_nat_range2 {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int status; int nat_bysource; TYPE_1__* tuplehash; } ;
struct net {int dummy; } ;
typedef int spinlock_t ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
struct TYPE_2__ {struct nf_conntrack_tuple tuple; } ;


 unsigned int CONNTRACK_LOCKS ;
 int IPS_DST_NAT ;
 int IPS_DST_NAT_DONE ;
 int IPS_SRC_NAT ;
 int IPS_SRC_NAT_DONE ;
 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 int NF_NAT_MANIP_DST ;
 int NF_NAT_MANIP_SRC ;
 scalar_t__ WARN_ON (int) ;
 int get_unique_tuple (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*,struct nf_nat_range2 const*,struct nf_conn*,int) ;
 unsigned int hash_by_src (struct net*,struct nf_conntrack_tuple*) ;
 int hlist_add_head_rcu (int *,int *) ;
 int nf_conntrack_alter_reply (struct nf_conn*,struct nf_conntrack_tuple*) ;
 int nf_ct_invert_tuple (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ;
 scalar_t__ nf_ct_is_confirmed (struct nf_conn*) ;
 struct net* nf_ct_net (struct nf_conn*) ;
 int nf_ct_tuple_equal (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ;
 int * nf_nat_bysource ;
 int nf_nat_initialized (struct nf_conn*,int) ;
 int * nf_nat_locks ;
 scalar_t__ nfct_help (struct nf_conn*) ;
 int nfct_seqadj (struct nf_conn*) ;
 int nfct_seqadj_ext_add (struct nf_conn*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

unsigned int
nf_nat_setup_info(struct nf_conn *ct,
    const struct nf_nat_range2 *range,
    enum nf_nat_manip_type maniptype)
{
 struct net *net = nf_ct_net(ct);
 struct nf_conntrack_tuple curr_tuple, new_tuple;


 if (nf_ct_is_confirmed(ct))
  return NF_ACCEPT;

 WARN_ON(maniptype != NF_NAT_MANIP_SRC &&
  maniptype != NF_NAT_MANIP_DST);

 if (WARN_ON(nf_nat_initialized(ct, maniptype)))
  return NF_DROP;






 nf_ct_invert_tuple(&curr_tuple,
      &ct->tuplehash[IP_CT_DIR_REPLY].tuple);

 get_unique_tuple(&new_tuple, &curr_tuple, range, ct, maniptype);

 if (!nf_ct_tuple_equal(&new_tuple, &curr_tuple)) {
  struct nf_conntrack_tuple reply;


  nf_ct_invert_tuple(&reply, &new_tuple);
  nf_conntrack_alter_reply(ct, &reply);


  if (maniptype == NF_NAT_MANIP_SRC)
   ct->status |= IPS_SRC_NAT;
  else
   ct->status |= IPS_DST_NAT;

  if (nfct_help(ct) && !nfct_seqadj(ct))
   if (!nfct_seqadj_ext_add(ct))
    return NF_DROP;
 }

 if (maniptype == NF_NAT_MANIP_SRC) {
  unsigned int srchash;
  spinlock_t *lock;

  srchash = hash_by_src(net,
          &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple);
  lock = &nf_nat_locks[srchash % CONNTRACK_LOCKS];
  spin_lock_bh(lock);
  hlist_add_head_rcu(&ct->nat_bysource,
       &nf_nat_bysource[srchash]);
  spin_unlock_bh(lock);
 }


 if (maniptype == NF_NAT_MANIP_DST)
  ct->status |= IPS_DST_NAT_DONE;
 else
  ct->status |= IPS_SRC_NAT_DONE;

 return NF_ACCEPT;
}
