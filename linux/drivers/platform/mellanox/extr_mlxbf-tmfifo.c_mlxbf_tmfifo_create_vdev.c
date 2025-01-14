
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_8__ {int release; struct device* parent; } ;
struct TYPE_5__ {int device; } ;
struct TYPE_7__ {TYPE_4__ dev; int * config; TYPE_1__ id; } ;
struct TYPE_6__ {int buf; } ;
struct mlxbf_tmfifo_vdev {TYPE_3__ vdev; TYPE_2__ tx_buf; int config; int features; } ;
struct mlxbf_tmfifo {int lock; struct mlxbf_tmfifo_vdev** vdev; } ;
struct device {int dummy; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLXBF_TMFIFO_CON_TX_BUF_SIZE ;
 int VIRTIO_ID_CONSOLE ;
 int dev_err (struct device*,char*,...) ;
 int devm_kmalloc (struct device*,int ,int ) ;
 int kfree (struct mlxbf_tmfifo_vdev*) ;
 struct mlxbf_tmfifo_vdev* kzalloc (int,int ) ;
 int memcpy (int *,void*,int ) ;
 scalar_t__ mlxbf_tmfifo_alloc_vrings (struct mlxbf_tmfifo*,struct mlxbf_tmfifo_vdev*) ;
 int mlxbf_tmfifo_free_vrings (struct mlxbf_tmfifo*,struct mlxbf_tmfifo_vdev*) ;
 int mlxbf_tmfifo_virtio_config_ops ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (TYPE_4__*) ;
 int register_virtio_device (TYPE_3__*) ;
 int tmfifo_virtio_dev_release ;

__attribute__((used)) static int mlxbf_tmfifo_create_vdev(struct device *dev,
        struct mlxbf_tmfifo *fifo,
        int vdev_id, u64 features,
        void *config, u32 size)
{
 struct mlxbf_tmfifo_vdev *tm_vdev, *reg_dev = ((void*)0);
 int ret;

 mutex_lock(&fifo->lock);

 tm_vdev = fifo->vdev[vdev_id];
 if (tm_vdev) {
  dev_err(dev, "vdev %d already exists\n", vdev_id);
  ret = -EEXIST;
  goto fail;
 }

 tm_vdev = kzalloc(sizeof(*tm_vdev), GFP_KERNEL);
 if (!tm_vdev) {
  ret = -ENOMEM;
  goto fail;
 }

 tm_vdev->vdev.id.device = vdev_id;
 tm_vdev->vdev.config = &mlxbf_tmfifo_virtio_config_ops;
 tm_vdev->vdev.dev.parent = dev;
 tm_vdev->vdev.dev.release = tmfifo_virtio_dev_release;
 tm_vdev->features = features;
 if (config)
  memcpy(&tm_vdev->config, config, size);

 if (mlxbf_tmfifo_alloc_vrings(fifo, tm_vdev)) {
  dev_err(dev, "unable to allocate vring\n");
  ret = -ENOMEM;
  goto vdev_fail;
 }


 if (vdev_id == VIRTIO_ID_CONSOLE)
  tm_vdev->tx_buf.buf = devm_kmalloc(dev,
         MLXBF_TMFIFO_CON_TX_BUF_SIZE,
         GFP_KERNEL);
 fifo->vdev[vdev_id] = tm_vdev;


 ret = register_virtio_device(&tm_vdev->vdev);
 reg_dev = tm_vdev;
 if (ret) {
  dev_err(dev, "register_virtio_device failed\n");
  goto vdev_fail;
 }

 mutex_unlock(&fifo->lock);
 return 0;

vdev_fail:
 mlxbf_tmfifo_free_vrings(fifo, tm_vdev);
 fifo->vdev[vdev_id] = ((void*)0);
 if (reg_dev)
  put_device(&tm_vdev->vdev.dev);
 else
  kfree(tm_vdev);
fail:
 mutex_unlock(&fifo->lock);
 return ret;
}
