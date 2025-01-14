
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {int dummy; } ;
struct mlx4_ib_pd {struct ib_pd ibpd; int pdn; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {int dev; } ;


 int EFAULT ;
 int ENOMEM ;
 struct ib_pd* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ ib_copy_to_udata (struct ib_udata*,int *,int) ;
 int kfree (struct mlx4_ib_pd*) ;
 struct mlx4_ib_pd* kmalloc (int,int ) ;
 int mlx4_pd_alloc (int ,int *) ;
 int mlx4_pd_free (int ,int ) ;
 TYPE_1__* to_mdev (struct ib_device*) ;

__attribute__((used)) static struct ib_pd *mlx4_ib_alloc_pd(struct ib_device *ibdev,
          struct ib_ucontext *context,
          struct ib_udata *udata)
{
 struct mlx4_ib_pd *pd;
 int err;

 pd = kmalloc(sizeof *pd, GFP_KERNEL);
 if (!pd)
  return ERR_PTR(-ENOMEM);

 err = mlx4_pd_alloc(to_mdev(ibdev)->dev, &pd->pdn);
 if (err) {
  kfree(pd);
  return ERR_PTR(err);
 }

 if (context)
  if (ib_copy_to_udata(udata, &pd->pdn, sizeof (__u32))) {
   mlx4_pd_free(to_mdev(ibdev)->dev, pd->pdn);
   kfree(pd);
   return ERR_PTR(-EFAULT);
  }

 return &pd->ibpd;
}
