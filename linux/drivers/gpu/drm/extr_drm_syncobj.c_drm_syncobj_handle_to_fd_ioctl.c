
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_syncobj_handle {int flags; int fd; int handle; scalar_t__ pad; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRIVER_SYNCOBJ ;
 int DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_EXPORT_SYNC_FILE ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_syncobj_export_sync_file (struct drm_file*,int ,int *) ;
 int drm_syncobj_handle_to_fd (struct drm_file*,int ,int *) ;

int
drm_syncobj_handle_to_fd_ioctl(struct drm_device *dev, void *data,
       struct drm_file *file_private)
{
 struct drm_syncobj_handle *args = data;

 if (!drm_core_check_feature(dev, DRIVER_SYNCOBJ))
  return -EOPNOTSUPP;

 if (args->pad)
  return -EINVAL;

 if (args->flags != 0 &&
     args->flags != DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_EXPORT_SYNC_FILE)
  return -EINVAL;

 if (args->flags & DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_EXPORT_SYNC_FILE)
  return drm_syncobj_export_sync_file(file_private, args->handle,
          &args->fd);

 return drm_syncobj_handle_to_fd(file_private, args->handle,
     &args->fd);
}
