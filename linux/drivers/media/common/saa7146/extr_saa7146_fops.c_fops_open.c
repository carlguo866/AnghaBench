
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct video_device {scalar_t__ vfl_type; int lock; } ;
struct saa7146_fh {int fh; struct saa7146_dev* dev; } ;
struct saa7146_dev {TYPE_3__* ext; TYPE_2__* ext_vv_data; } ;
struct file {int * private_data; } ;
struct TYPE_10__ {int (* open ) (struct saa7146_dev*,struct file*) ;} ;
struct TYPE_9__ {int (* open ) (struct saa7146_dev*,struct file*) ;} ;
struct TYPE_8__ {int module; } ;
struct TYPE_6__ {int (* open ) (struct file*) ;} ;
struct TYPE_7__ {int capabilities; TYPE_1__ vbi_fops; } ;


 int DEB_D (char*,struct saa7146_dev*) ;
 int DEB_EE (char*,struct file*,int ) ;
 int DEB_S (char*) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int V4L2_CAP_VBI_CAPTURE ;
 scalar_t__ VFL_TYPE_VBI ;
 int kfree (struct saa7146_fh*) ;
 struct saa7146_fh* kzalloc (int,int ) ;
 scalar_t__ mutex_lock_interruptible (int ) ;
 int mutex_unlock (int ) ;
 TYPE_5__ saa7146_vbi_uops ;
 TYPE_4__ saa7146_video_uops ;
 int stub1 (struct saa7146_dev*,struct file*) ;
 int stub2 (struct file*) ;
 int stub3 (struct saa7146_dev*,struct file*) ;
 scalar_t__ try_module_get (int ) ;
 int v4l2_fh_add (int *) ;
 int v4l2_fh_init (int *,struct video_device*) ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 struct saa7146_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fops_open(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct saa7146_dev *dev = video_drvdata(file);
 struct saa7146_fh *fh = ((void*)0);
 int result = 0;

 DEB_EE("file:%p, dev:%s\n", file, video_device_node_name(vdev));

 if (mutex_lock_interruptible(vdev->lock))
  return -ERESTARTSYS;

 DEB_D("using: %p\n", dev);


 if( ((void*)0) == dev->ext ) {
  DEB_S("no extension registered for this device\n");
  result = -ENODEV;
  goto out;
 }


 fh = kzalloc(sizeof(*fh),GFP_KERNEL);
 if (((void*)0) == fh) {
  DEB_S("cannot allocate memory for per open data\n");
  result = -ENOMEM;
  goto out;
 }

 v4l2_fh_init(&fh->fh, vdev);

 file->private_data = &fh->fh;
 fh->dev = dev;

 if (vdev->vfl_type == VFL_TYPE_VBI) {
  DEB_S("initializing vbi...\n");
  if (dev->ext_vv_data->capabilities & V4L2_CAP_VBI_CAPTURE)
   result = saa7146_vbi_uops.open(dev,file);
  if (dev->ext_vv_data->vbi_fops.open)
   dev->ext_vv_data->vbi_fops.open(file);
 } else {
  DEB_S("initializing video...\n");
  result = saa7146_video_uops.open(dev,file);
 }

 if (0 != result) {
  goto out;
 }

 if( 0 == try_module_get(dev->ext->module)) {
  result = -EINVAL;
  goto out;
 }

 result = 0;
 v4l2_fh_add(&fh->fh);
out:
 if (fh && result != 0) {
  kfree(fh);
  file->private_data = ((void*)0);
 }
 mutex_unlock(vdev->lock);
 return result;
}
