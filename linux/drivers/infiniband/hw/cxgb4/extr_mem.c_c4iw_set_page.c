
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ib_mr {int dummy; } ;
struct TYPE_2__ {scalar_t__ pbl_size; } ;
struct c4iw_mr {scalar_t__ mpl_len; int * mpl; TYPE_1__ attr; } ;


 int ENOMEM ;
 struct c4iw_mr* to_c4iw_mr (struct ib_mr*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int c4iw_set_page(struct ib_mr *ibmr, u64 addr)
{
 struct c4iw_mr *mhp = to_c4iw_mr(ibmr);

 if (unlikely(mhp->mpl_len == mhp->attr.pbl_size))
  return -ENOMEM;

 mhp->mpl[mhp->mpl_len++] = addr;

 return 0;
}
