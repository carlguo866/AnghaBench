
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_wq {TYPE_1__* ctrl; } ;
struct TYPE_2__ {int error_status; } ;


 unsigned int ioread32 (int *) ;

unsigned int svnic_wq_error_status(struct vnic_wq *wq)
{
 return ioread32(&wq->ctrl->error_status);
}
