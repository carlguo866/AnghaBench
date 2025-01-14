
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct neighbour {int refcnt; } ;
struct neigh_table {int dummy; } ;


 int NEIGH_CACHE_STAT_INC (struct neigh_table*,int ) ;
 struct neighbour* __neigh_lookup_noref (struct neigh_table*,void const*,struct net_device*) ;
 int hits ;
 int lookups ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 int refcount_inc_not_zero (int *) ;

struct neighbour *neigh_lookup(struct neigh_table *tbl, const void *pkey,
          struct net_device *dev)
{
 struct neighbour *n;

 NEIGH_CACHE_STAT_INC(tbl, lookups);

 rcu_read_lock_bh();
 n = __neigh_lookup_noref(tbl, pkey, dev);
 if (n) {
  if (!refcount_inc_not_zero(&n->refcnt))
   n = ((void*)0);
  NEIGH_CACHE_STAT_INC(tbl, hits);
 }

 rcu_read_unlock_bh();
 return n;
}
