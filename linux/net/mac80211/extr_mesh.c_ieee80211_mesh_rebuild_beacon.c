
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int beacon; } ;
struct TYPE_5__ {TYPE_3__ mesh; } ;
struct TYPE_4__ {int mtx; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; TYPE_1__ wdev; } ;
struct beacon_data {int dummy; } ;


 int ieee80211_mesh_build_beacon (TYPE_3__*) ;
 int kfree_rcu (struct beacon_data*,int ) ;
 int lockdep_is_held (int *) ;
 struct beacon_data* rcu_dereference_protected (int ,int ) ;
 int rcu_head ;

__attribute__((used)) static int
ieee80211_mesh_rebuild_beacon(struct ieee80211_sub_if_data *sdata)
{
 struct beacon_data *old_bcn;
 int ret;

 old_bcn = rcu_dereference_protected(sdata->u.mesh.beacon,
         lockdep_is_held(&sdata->wdev.mtx));
 ret = ieee80211_mesh_build_beacon(&sdata->u.mesh);
 if (ret)

  return ret;

 if (old_bcn)
  kfree_rcu(old_bcn, rcu_head);
 return 0;
}
