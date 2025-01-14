
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_pma_portcounters_ext {int dummy; } ;
struct ib_pma_portcounters {int dummy; } ;
struct TYPE_2__ {scalar_t__ attr_id; } ;
struct ib_mad {scalar_t__ data; TYPE_1__ mad_hdr; } ;
struct ib_class_port_info {int capability_mask; } ;
typedef int cpi ;


 int GFP_KERNEL ;
 int IB_MAD_RESULT_FAILURE ;
 int IB_MAD_RESULT_REPLY ;
 int IB_MAD_RESULT_SUCCESS ;
 int IB_PMA_CLASS_CAP_EXT_WIDTH ;
 scalar_t__ IB_PMA_CLASS_PORT_INFO ;
 scalar_t__ IB_PMA_PORT_COUNTERS_EXT ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int memcpy (scalar_t__,struct ib_class_port_info*,int) ;
 int mlx5_core_query_ib_ppcnt (struct mlx5_core_dev*,int,void*,int) ;
 int mlx5_core_query_vport_counter (struct mlx5_core_dev*,int ,int ,int,void*,int) ;
 struct mlx5_core_dev* mlx5_ib_get_native_port_mdev (struct mlx5_ib_dev*,int,int*) ;
 int mlx5_ib_put_native_port_mdev (struct mlx5_ib_dev*,int) ;
 int pma_cnt_assign (struct ib_pma_portcounters*,void*) ;
 int pma_cnt_ext_assign (struct ib_pma_portcounters_ext*,void*) ;
 int ppcnt_reg ;
 int query_vport_counter_out ;

__attribute__((used)) static int process_pma_cmd(struct mlx5_ib_dev *dev, u8 port_num,
      const struct ib_mad *in_mad, struct ib_mad *out_mad)
{
 struct mlx5_core_dev *mdev;
 bool native_port = 1;
 u8 mdev_port_num;
 void *out_cnt;
 int err;

 mdev = mlx5_ib_get_native_port_mdev(dev, port_num, &mdev_port_num);
 if (!mdev) {




  native_port = 0;
  mdev = dev->mdev;
  mdev_port_num = 1;
 }

 if (in_mad->mad_hdr.attr_id == IB_PMA_CLASS_PORT_INFO) {
  struct ib_class_port_info cpi = {};

  cpi.capability_mask = IB_PMA_CLASS_CAP_EXT_WIDTH;
  memcpy((out_mad->data + 40), &cpi, sizeof(cpi));
  err = IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_REPLY;
  goto done;
 }

 if (in_mad->mad_hdr.attr_id == IB_PMA_PORT_COUNTERS_EXT) {
  struct ib_pma_portcounters_ext *pma_cnt_ext =
   (struct ib_pma_portcounters_ext *)(out_mad->data + 40);
  int sz = MLX5_ST_SZ_BYTES(query_vport_counter_out);

  out_cnt = kvzalloc(sz, GFP_KERNEL);
  if (!out_cnt) {
   err = IB_MAD_RESULT_FAILURE;
   goto done;
  }

  err = mlx5_core_query_vport_counter(mdev, 0, 0,
          mdev_port_num, out_cnt, sz);
  if (!err)
   pma_cnt_ext_assign(pma_cnt_ext, out_cnt);
 } else {
  struct ib_pma_portcounters *pma_cnt =
   (struct ib_pma_portcounters *)(out_mad->data + 40);
  int sz = MLX5_ST_SZ_BYTES(ppcnt_reg);

  out_cnt = kvzalloc(sz, GFP_KERNEL);
  if (!out_cnt) {
   err = IB_MAD_RESULT_FAILURE;
   goto done;
  }

  err = mlx5_core_query_ib_ppcnt(mdev, mdev_port_num,
            out_cnt, sz);
  if (!err)
   pma_cnt_assign(pma_cnt, out_cnt);
 }
 kvfree(out_cnt);
 err = err ? IB_MAD_RESULT_FAILURE :
      IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_REPLY;
done:
 if (native_port)
  mlx5_ib_put_native_port_mdev(dev, port_num);
 return err;
}
