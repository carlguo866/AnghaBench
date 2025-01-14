
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {TYPE_1__* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_4__ {scalar_t__ zio_mode; int zio_threshold; } ;


 int EINVAL ;
 int ERANGE ;
 scalar_t__ QLA_ZIO_MODE_6 ;
 int atomic_set (int *,int) ;
 int class_to_shost (struct device*) ;
 TYPE_2__* shost_priv (int ) ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t
qla_zio_threshold_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 int val = 0;

 if (vha->hw->zio_mode != QLA_ZIO_MODE_6)
  return -EINVAL;
 if (sscanf(buf, "%d", &val) != 1)
  return -EINVAL;
 if (val < 0 || val > 256)
  return -ERANGE;

 atomic_set(&vha->hw->zio_threshold, val);
 return strlen(buf);
}
