
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_pd {int device; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int pdn; } ;


 int kfree (struct ib_pd*) ;
 int mlx4_pd_free (int ,int ) ;
 TYPE_2__* to_mdev (int ) ;
 TYPE_1__* to_mpd (struct ib_pd*) ;

__attribute__((used)) static int mlx4_ib_dealloc_pd(struct ib_pd *pd)
{
 mlx4_pd_free(to_mdev(pd->device)->dev, to_mpd(pd)->pdn);
 kfree(pd);

 return 0;
}
