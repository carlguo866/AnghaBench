
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_ibdev {scalar_t__ n_ahs_allocated; int n_ahs_lock; } ;
struct ib_ah {int dummy; } ;
struct ib_ah_attr {scalar_t__ dlid; int ah_flags; int port_num; int static_rate; } ;
struct ipath_ah {struct ib_ah ibah; struct ib_ah_attr attr; } ;
struct ib_pd {TYPE_1__* device; } ;
struct TYPE_2__ {int phys_port_cnt; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_ah* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int IB_AH_GRH ;
 scalar_t__ IPATH_MULTICAST_LID_BASE ;
 scalar_t__ IPATH_PERMISSIVE_LID ;
 scalar_t__ ib_ipath_max_ahs ;
 int ipath_ib_rate_to_mult (int ) ;
 int kfree (struct ipath_ah*) ;
 struct ipath_ah* kmalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ipath_ibdev* to_idev (TYPE_1__*) ;

__attribute__((used)) static struct ib_ah *ipath_create_ah(struct ib_pd *pd,
         struct ib_ah_attr *ah_attr)
{
 struct ipath_ah *ah;
 struct ib_ah *ret;
 struct ipath_ibdev *dev = to_idev(pd->device);
 unsigned long flags;


 if (ah_attr->dlid >= IPATH_MULTICAST_LID_BASE &&
     ah_attr->dlid != IPATH_PERMISSIVE_LID &&
     !(ah_attr->ah_flags & IB_AH_GRH)) {
  ret = ERR_PTR(-EINVAL);
  goto bail;
 }

 if (ah_attr->dlid == 0) {
  ret = ERR_PTR(-EINVAL);
  goto bail;
 }

 if (ah_attr->port_num < 1 ||
     ah_attr->port_num > pd->device->phys_port_cnt) {
  ret = ERR_PTR(-EINVAL);
  goto bail;
 }

 ah = kmalloc(sizeof *ah, GFP_ATOMIC);
 if (!ah) {
  ret = ERR_PTR(-ENOMEM);
  goto bail;
 }

 spin_lock_irqsave(&dev->n_ahs_lock, flags);
 if (dev->n_ahs_allocated == ib_ipath_max_ahs) {
  spin_unlock_irqrestore(&dev->n_ahs_lock, flags);
  kfree(ah);
  ret = ERR_PTR(-ENOMEM);
  goto bail;
 }

 dev->n_ahs_allocated++;
 spin_unlock_irqrestore(&dev->n_ahs_lock, flags);


 ah->attr = *ah_attr;
 ah->attr.static_rate = ipath_ib_rate_to_mult(ah_attr->static_rate);

 ret = &ah->ibah;

bail:
 return ret;
}
