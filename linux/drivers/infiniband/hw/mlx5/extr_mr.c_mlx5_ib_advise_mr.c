
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uverbs_attr_bundle {int dummy; } ;
struct ib_sge {int dummy; } ;
struct ib_pd {int dummy; } ;
typedef enum ib_uverbs_advise_mr_advice { ____Placeholder_ib_uverbs_advise_mr_advice } ib_uverbs_advise_mr_advice ;


 int EOPNOTSUPP ;
 int IB_UVERBS_ADVISE_MR_ADVICE_PREFETCH ;
 int IB_UVERBS_ADVISE_MR_ADVICE_PREFETCH_WRITE ;
 int mlx5_ib_advise_mr_prefetch (struct ib_pd*,int,int ,struct ib_sge*,int ) ;

int mlx5_ib_advise_mr(struct ib_pd *pd,
        enum ib_uverbs_advise_mr_advice advice,
        u32 flags,
        struct ib_sge *sg_list,
        u32 num_sge,
        struct uverbs_attr_bundle *attrs)
{
 if (advice != IB_UVERBS_ADVISE_MR_ADVICE_PREFETCH &&
     advice != IB_UVERBS_ADVISE_MR_ADVICE_PREFETCH_WRITE)
  return -EOPNOTSUPP;

 return mlx5_ib_advise_mr_prefetch(pd, advice, flags,
      sg_list, num_sge);
}
