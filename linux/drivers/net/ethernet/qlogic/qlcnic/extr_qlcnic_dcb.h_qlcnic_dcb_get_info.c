
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_dcb {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_info ) (struct qlcnic_dcb*) ;} ;


 int stub1 (struct qlcnic_dcb*) ;

__attribute__((used)) static inline void qlcnic_dcb_get_info(struct qlcnic_dcb *dcb)
{
 if (dcb && dcb->ops->get_info)
  dcb->ops->get_info(dcb);
}
