
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_dev_ioctl {scalar_t__ ver_major; scalar_t__ ver_minor; } ;


 scalar_t__ AUTOFS_DEV_IOCTL_VERSION_MAJOR ;
 scalar_t__ AUTOFS_DEV_IOCTL_VERSION_MINOR ;
 int EINVAL ;
 int pr_warn (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int check_dev_ioctl_version(int cmd, struct autofs_dev_ioctl *param)
{
 int err = 0;

 if ((param->ver_major != AUTOFS_DEV_IOCTL_VERSION_MAJOR) ||
     (param->ver_minor > AUTOFS_DEV_IOCTL_VERSION_MINOR)) {
  pr_warn("ioctl control interface version mismatch: "
   "kernel(%u.%u), user(%u.%u), cmd(0x%08x)\n",
   AUTOFS_DEV_IOCTL_VERSION_MAJOR,
   AUTOFS_DEV_IOCTL_VERSION_MINOR,
   param->ver_major, param->ver_minor, cmd);
  err = -EINVAL;
 }


 param->ver_major = AUTOFS_DEV_IOCTL_VERSION_MAJOR;
 param->ver_minor = AUTOFS_DEV_IOCTL_VERSION_MINOR;

 return err;
}
