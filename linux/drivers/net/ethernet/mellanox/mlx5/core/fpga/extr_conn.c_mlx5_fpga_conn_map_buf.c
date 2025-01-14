
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx5_fpga_dma_buf {int dma_dir; TYPE_3__* sg; } ;
struct mlx5_fpga_conn {TYPE_4__* fdev; } ;
struct device {int dummy; } ;
struct TYPE_8__ {TYPE_2__* mdev; } ;
struct TYPE_7__ {int size; void* dma_addr; int data; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_5__ {struct device dev; } ;


 int ENOMEM ;
 void* dma_map_single (struct device*,int ,int ,int ) ;
 int dma_mapping_error (struct device*,void*) ;
 int dma_unmap_single (struct device*,void*,int ,int ) ;
 int mlx5_fpga_warn (TYPE_4__*,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mlx5_fpga_conn_map_buf(struct mlx5_fpga_conn *conn,
      struct mlx5_fpga_dma_buf *buf)
{
 struct device *dma_device;
 int err = 0;

 if (unlikely(!buf->sg[0].data))
  goto out;

 dma_device = &conn->fdev->mdev->pdev->dev;
 buf->sg[0].dma_addr = dma_map_single(dma_device, buf->sg[0].data,
          buf->sg[0].size, buf->dma_dir);
 err = dma_mapping_error(dma_device, buf->sg[0].dma_addr);
 if (unlikely(err)) {
  mlx5_fpga_warn(conn->fdev, "DMA error on sg 0: %d\n", err);
  err = -ENOMEM;
  goto out;
 }

 if (!buf->sg[1].data)
  goto out;

 buf->sg[1].dma_addr = dma_map_single(dma_device, buf->sg[1].data,
          buf->sg[1].size, buf->dma_dir);
 err = dma_mapping_error(dma_device, buf->sg[1].dma_addr);
 if (unlikely(err)) {
  mlx5_fpga_warn(conn->fdev, "DMA error on sg 1: %d\n", err);
  dma_unmap_single(dma_device, buf->sg[0].dma_addr,
     buf->sg[0].size, buf->dma_dir);
  err = -ENOMEM;
 }

out:
 return err;
}
