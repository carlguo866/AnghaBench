
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct siw_pbl {int dummy; } ;
struct ib_mr {int dummy; } ;
struct siw_mr {TYPE_1__* mem; struct ib_mr base_mr; } ;
struct siw_device {int num_mr; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
typedef enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;
struct TYPE_2__ {int is_pbl; int stag; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IB_MR_TYPE_MEM_REG ;
 scalar_t__ IS_ERR (struct siw_pbl*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct siw_pbl*) ;
 scalar_t__ SIW_MAX_MR ;
 int SIW_MAX_SGE_PBL ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 int kfree (struct siw_pbl*) ;
 int kfree_rcu (struct siw_mr*,int ) ;
 struct siw_mr* kzalloc (int,int ) ;
 int rcu ;
 int siw_dbg_pd (struct ib_pd*,char*,...) ;
 int siw_mr_add_mem (struct siw_mr*,struct ib_pd*,struct siw_pbl*,int ,int,int ) ;
 int siw_mr_drop_mem (struct siw_mr*) ;
 struct siw_pbl* siw_pbl_alloc (int) ;
 struct siw_device* to_siw_dev (int ) ;

struct ib_mr *siw_alloc_mr(struct ib_pd *pd, enum ib_mr_type mr_type,
      u32 max_sge, struct ib_udata *udata)
{
 struct siw_device *sdev = to_siw_dev(pd->device);
 struct siw_mr *mr = ((void*)0);
 struct siw_pbl *pbl = ((void*)0);
 int rv;

 if (atomic_inc_return(&sdev->num_mr) > SIW_MAX_MR) {
  siw_dbg_pd(pd, "too many mr's\n");
  rv = -ENOMEM;
  goto err_out;
 }
 if (mr_type != IB_MR_TYPE_MEM_REG) {
  siw_dbg_pd(pd, "mr type %d unsupported\n", mr_type);
  rv = -EOPNOTSUPP;
  goto err_out;
 }
 if (max_sge > SIW_MAX_SGE_PBL) {
  siw_dbg_pd(pd, "too many sge's: %d\n", max_sge);
  rv = -ENOMEM;
  goto err_out;
 }
 pbl = siw_pbl_alloc(max_sge);
 if (IS_ERR(pbl)) {
  rv = PTR_ERR(pbl);
  siw_dbg_pd(pd, "pbl allocation failed: %d\n", rv);
  pbl = ((void*)0);
  goto err_out;
 }
 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr) {
  rv = -ENOMEM;
  goto err_out;
 }
 rv = siw_mr_add_mem(mr, pd, pbl, 0, max_sge * PAGE_SIZE, 0);
 if (rv)
  goto err_out;

 mr->mem->is_pbl = 1;

 siw_dbg_pd(pd, "[MEM %u]: success\n", mr->mem->stag);

 return &mr->base_mr;

err_out:
 atomic_dec(&sdev->num_mr);

 if (!mr) {
  kfree(pbl);
 } else {
  if (mr->mem)
   siw_mr_drop_mem(mr);
  kfree_rcu(mr, rcu);
 }
 siw_dbg_pd(pd, "failed: %d\n", rv);

 return ERR_PTR(rv);
}
