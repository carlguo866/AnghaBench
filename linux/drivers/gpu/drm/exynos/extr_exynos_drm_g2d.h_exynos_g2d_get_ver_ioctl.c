
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int exynos_g2d_get_ver_ioctl(struct drm_device *dev, void *data,
        struct drm_file *file_priv)
{
 return -ENODEV;
}
