
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_port_attr {unsigned int gid_tbl_len; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;



 unsigned int mlx5_core_reserved_gids_count (struct mlx5_core_dev*) ;
 int mlx5_get_vport_access_method (struct ib_device*) ;
 struct mlx5_core_dev* mlx5_ib_get_native_port_mdev (struct mlx5_ib_dev*,int,int *) ;
 int mlx5_ib_put_native_port_mdev (struct mlx5_ib_dev*,int) ;
 int mlx5_query_hca_port (struct ib_device*,int,struct ib_port_attr*) ;
 int mlx5_query_mad_ifc_port (struct ib_device*,int,struct ib_port_attr*) ;
 int mlx5_query_port_roce (struct ib_device*,int,struct ib_port_attr*) ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

int mlx5_ib_query_port(struct ib_device *ibdev, u8 port,
         struct ib_port_attr *props)
{
 unsigned int count;
 int ret;

 switch (mlx5_get_vport_access_method(ibdev)) {
 case 129:
  ret = mlx5_query_mad_ifc_port(ibdev, port, props);
  break;

 case 130:
  ret = mlx5_query_hca_port(ibdev, port, props);
  break;

 case 128:
  ret = mlx5_query_port_roce(ibdev, port, props);
  break;

 default:
  ret = -EINVAL;
 }

 if (!ret && props) {
  struct mlx5_ib_dev *dev = to_mdev(ibdev);
  struct mlx5_core_dev *mdev;
  bool put_mdev = 1;

  mdev = mlx5_ib_get_native_port_mdev(dev, port, ((void*)0));
  if (!mdev) {



   mdev = dev->mdev;
   port = 1;
   put_mdev = 0;
  }
  count = mlx5_core_reserved_gids_count(mdev);
  if (put_mdev)
   mlx5_ib_put_native_port_mdev(dev, port);
  props->gid_tbl_len -= count;
 }
 return ret;
}
