
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_umad_device {TYPE_1__* ports; } ;
struct ib_device {int dummy; } ;
struct ib_client_nl_info {size_t port; int * cdev; int abi; } ;
struct TYPE_2__ {int sm_dev; } ;


 int EINVAL ;
 int IB_USER_MAD_ABI_VERSION ;
 struct ib_umad_device* ib_get_client_data (struct ib_device*,int *) ;
 int rdma_is_port_valid (struct ib_device*,size_t) ;
 size_t rdma_start_port (struct ib_device*) ;
 int umad_client ;

__attribute__((used)) static int ib_issm_get_nl_info(struct ib_device *ibdev, void *client_data,
          struct ib_client_nl_info *res)
{
 struct ib_umad_device *umad_dev =
  ib_get_client_data(ibdev, &umad_client);

 if (!rdma_is_port_valid(ibdev, res->port))
  return -EINVAL;

 res->abi = IB_USER_MAD_ABI_VERSION;
 res->cdev = &umad_dev->ports[res->port - rdma_start_port(ibdev)].sm_dev;

 return 0;
}
