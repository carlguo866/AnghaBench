
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {unsigned int mc_flags; scalar_t__ media_written; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* media_changed ) (struct cdrom_device_info*,int ) ;} ;


 int CDC_MEDIA_CHANGED ;
 int CDROM_CAN (int ) ;
 int CDSL_CURRENT ;
 scalar_t__ stub1 (struct cdrom_device_info*,int ) ;

__attribute__((used)) static
int media_changed(struct cdrom_device_info *cdi, int queue)
{
 unsigned int mask = (1 << (queue & 1));
 int ret = !!(cdi->mc_flags & mask);

 if (!CDROM_CAN(CDC_MEDIA_CHANGED))
     return ret;

 if (cdi->ops->media_changed(cdi, CDSL_CURRENT)) {
  cdi->mc_flags = 0x3;
  ret |= 1;
  cdi->media_written = 0;
 }
 cdi->mc_flags &= ~mask;
 return ret;
}
