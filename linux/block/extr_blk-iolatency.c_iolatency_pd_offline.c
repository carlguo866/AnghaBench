
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iolatency_grp {struct blk_iolatency* blkiolat; } ;
struct blkg_policy_data {int dummy; } ;
struct blkcg_gq {int dummy; } ;
struct blk_iolatency {int enabled; } ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int iolatency_clear_scaling (struct blkcg_gq*) ;
 int iolatency_set_min_lat_nsec (struct blkcg_gq*,int ) ;
 struct blkcg_gq* lat_to_blkg (struct iolatency_grp*) ;
 struct iolatency_grp* pd_to_lat (struct blkg_policy_data*) ;

__attribute__((used)) static void iolatency_pd_offline(struct blkg_policy_data *pd)
{
 struct iolatency_grp *iolat = pd_to_lat(pd);
 struct blkcg_gq *blkg = lat_to_blkg(iolat);
 struct blk_iolatency *blkiolat = iolat->blkiolat;
 int ret;

 ret = iolatency_set_min_lat_nsec(blkg, 0);
 if (ret == 1)
  atomic_inc(&blkiolat->enabled);
 if (ret == -1)
  atomic_dec(&blkiolat->enabled);
 iolatency_clear_scaling(blkg);
}
