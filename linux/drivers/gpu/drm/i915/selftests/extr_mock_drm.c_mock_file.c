
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {struct drm_file* private_data; int i_rdev; } ;
struct file {struct drm_file* private_data; int i_rdev; } ;
struct TYPE_4__ {TYPE_1__* primary; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct drm_file {int authenticated; int filp; } ;
struct TYPE_3__ {int index; } ;


 int ENOMEM ;
 struct drm_file* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int POISON_INUSE ;
 int drm_open (struct inode*,struct inode*) ;
 int kfree (struct inode*) ;
 struct inode* kzalloc (int,int ) ;
 int memset (int *,int ,int) ;

struct drm_file *mock_file(struct drm_i915_private *i915)
{
 struct file *filp;
 struct inode *inode;
 struct drm_file *file;
 int err;

 inode = kzalloc(sizeof(*inode), GFP_KERNEL);
 if (!inode) {
  err = -ENOMEM;
  goto err;
 }

 inode->i_rdev = i915->drm.primary->index;

 filp = kzalloc(sizeof(*filp), GFP_KERNEL);
 if (!filp) {
  err = -ENOMEM;
  goto err_inode;
 }

 err = drm_open(inode, filp);
 if (err)
  goto err_filp;

 file = filp->private_data;
 memset(&file->filp, POISON_INUSE, sizeof(file->filp));
 file->authenticated = 1;

 kfree(filp);
 kfree(inode);
 return file;

err_filp:
 kfree(filp);
err_inode:
 kfree(inode);
err:
 return ERR_PTR(err);
}
