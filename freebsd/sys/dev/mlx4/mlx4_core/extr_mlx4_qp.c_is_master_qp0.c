
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlx4_qp {scalar_t__ qpn; } ;
struct TYPE_2__ {scalar_t__ base_proxy_sqpn; scalar_t__ base_sqpn; } ;
struct mlx4_dev {TYPE_1__ phys_caps; } ;


 int mlx4_master_func_num (struct mlx4_dev*) ;

__attribute__((used)) static int is_master_qp0(struct mlx4_dev *dev, struct mlx4_qp *qp, int *real_qp0, int *proxy_qp0)
{


 u32 pf_proxy_offset = dev->phys_caps.base_proxy_sqpn + 8 * mlx4_master_func_num(dev);
 *proxy_qp0 = qp->qpn >= pf_proxy_offset && qp->qpn <= pf_proxy_offset + 1;

 *real_qp0 = qp->qpn >= dev->phys_caps.base_sqpn &&
  qp->qpn <= dev->phys_caps.base_sqpn + 1;

 return *real_qp0 || *proxy_qp0;
}
