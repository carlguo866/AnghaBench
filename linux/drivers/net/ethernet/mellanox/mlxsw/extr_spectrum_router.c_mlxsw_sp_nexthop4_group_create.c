
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nexthop_group {unsigned int count; struct mlxsw_sp_nexthop* nexthops; int gateway; int * neigh_tbl; int fib_list; struct fib_info* priv; } ;
struct mlxsw_sp_nexthop {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct fib_nh {int dummy; } ;
struct fib_info {int dummy; } ;


 int ENOMEM ;
 struct mlxsw_sp_nexthop_group* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int arp_tbl ;
 int fib_info_hold (struct fib_info*) ;
 struct fib_nh* fib_info_nh (struct fib_info*,int) ;
 unsigned int fib_info_num_path (struct fib_info*) ;
 int fib_info_put (struct fib_info*) ;
 int kfree (struct mlxsw_sp_nexthop_group*) ;
 struct mlxsw_sp_nexthop_group* kzalloc (int ,int ) ;
 int mlxsw_sp_fi_is_gateway (struct mlxsw_sp*,struct fib_info*) ;
 int mlxsw_sp_nexthop4_fini (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ;
 int mlxsw_sp_nexthop4_init (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*,struct mlxsw_sp_nexthop*,struct fib_nh*) ;
 int mlxsw_sp_nexthop_group_insert (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*) ;
 int mlxsw_sp_nexthop_group_refresh (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*) ;
 int nexthops ;
 int struct_size (struct mlxsw_sp_nexthop_group*,int ,unsigned int) ;

__attribute__((used)) static struct mlxsw_sp_nexthop_group *
mlxsw_sp_nexthop4_group_create(struct mlxsw_sp *mlxsw_sp, struct fib_info *fi)
{
 unsigned int nhs = fib_info_num_path(fi);
 struct mlxsw_sp_nexthop_group *nh_grp;
 struct mlxsw_sp_nexthop *nh;
 struct fib_nh *fib_nh;
 int i;
 int err;

 nh_grp = kzalloc(struct_size(nh_grp, nexthops, nhs), GFP_KERNEL);
 if (!nh_grp)
  return ERR_PTR(-ENOMEM);
 nh_grp->priv = fi;
 INIT_LIST_HEAD(&nh_grp->fib_list);
 nh_grp->neigh_tbl = &arp_tbl;

 nh_grp->gateway = mlxsw_sp_fi_is_gateway(mlxsw_sp, fi);
 nh_grp->count = nhs;
 fib_info_hold(fi);
 for (i = 0; i < nh_grp->count; i++) {
  nh = &nh_grp->nexthops[i];
  fib_nh = fib_info_nh(fi, i);
  err = mlxsw_sp_nexthop4_init(mlxsw_sp, nh_grp, nh, fib_nh);
  if (err)
   goto err_nexthop4_init;
 }
 err = mlxsw_sp_nexthop_group_insert(mlxsw_sp, nh_grp);
 if (err)
  goto err_nexthop_group_insert;
 mlxsw_sp_nexthop_group_refresh(mlxsw_sp, nh_grp);
 return nh_grp;

err_nexthop_group_insert:
err_nexthop4_init:
 for (i--; i >= 0; i--) {
  nh = &nh_grp->nexthops[i];
  mlxsw_sp_nexthop4_fini(mlxsw_sp, nh);
 }
 fib_info_put(fi);
 kfree(nh_grp);
 return ERR_PTR(err);
}
