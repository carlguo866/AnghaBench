
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rdma_ah_attr {int type; } ;
struct mlx4_ib_dev {int sm_lock; struct ib_ah** sm_ah; TYPE_2__*** send_agent; int ib_dev; } ;
struct ib_ah {int dummy; } ;
struct TYPE_4__ {TYPE_1__* qp; } ;
struct TYPE_3__ {int pd; } ;


 scalar_t__ IS_ERR (struct ib_ah*) ;
 int memset (struct rdma_ah_attr*,int ,int) ;
 int rdma_ah_find_type (int *,int) ;
 int rdma_ah_set_dlid (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_port_num (struct rdma_ah_attr*,int) ;
 int rdma_ah_set_sl (struct rdma_ah_attr*,int) ;
 struct ib_ah* rdma_create_ah (int ,struct rdma_ah_attr*,int ) ;
 int rdma_destroy_ah (struct ib_ah*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void update_sm_ah(struct mlx4_ib_dev *dev, u8 port_num, u16 lid, u8 sl)
{
 struct ib_ah *new_ah;
 struct rdma_ah_attr ah_attr;
 unsigned long flags;

 if (!dev->send_agent[port_num - 1][0])
  return;

 memset(&ah_attr, 0, sizeof ah_attr);
 ah_attr.type = rdma_ah_find_type(&dev->ib_dev, port_num);
 rdma_ah_set_dlid(&ah_attr, lid);
 rdma_ah_set_sl(&ah_attr, sl);
 rdma_ah_set_port_num(&ah_attr, port_num);

 new_ah = rdma_create_ah(dev->send_agent[port_num - 1][0]->qp->pd,
    &ah_attr, 0);
 if (IS_ERR(new_ah))
  return;

 spin_lock_irqsave(&dev->sm_lock, flags);
 if (dev->sm_ah[port_num - 1])
  rdma_destroy_ah(dev->sm_ah[port_num - 1], 0);
 dev->sm_ah[port_num - 1] = new_ah;
 spin_unlock_irqrestore(&dev->sm_lock, flags);
}
