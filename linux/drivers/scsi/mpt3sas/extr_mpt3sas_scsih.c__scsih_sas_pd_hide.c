
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u16 ;
struct scsi_target {struct MPT3SAS_TARGET* hostdata; } ;
struct _sas_device {int volume_wwid; scalar_t__ volume_handle; struct scsi_target* starget; } ;
struct MPT3SAS_TARGET {int flags; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; int pd_handles; } ;
struct TYPE_3__ {int PhysDiskNum; int PhysDiskDevHandle; } ;
typedef TYPE_1__ Mpi2EventIrConfigElement_t ;


 int MPT_TARGET_FLAGS_RAID_COMPONENT ;
 struct _sas_device* __mpt3sas_get_sdev_by_handle (struct MPT3SAS_ADAPTER*,scalar_t__) ;
 int _scsih_ir_fastpath (struct MPT3SAS_ADAPTER*,scalar_t__,int ) ;
 int _scsih_reprobe_lun ;
 scalar_t__ le16_to_cpu (int ) ;
 int mpt3sas_config_get_volume_handle (struct MPT3SAS_ADAPTER*,scalar_t__,scalar_t__*) ;
 int mpt3sas_config_get_volume_wwid (struct MPT3SAS_ADAPTER*,scalar_t__,int *) ;
 int sas_device_put (struct _sas_device*) ;
 int set_bit (scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int starget_for_each_device (struct scsi_target*,void*,int ) ;

__attribute__((used)) static void
_scsih_sas_pd_hide(struct MPT3SAS_ADAPTER *ioc,
 Mpi2EventIrConfigElement_t *element)
{
 struct _sas_device *sas_device;
 struct scsi_target *starget = ((void*)0);
 struct MPT3SAS_TARGET *sas_target_priv_data;
 unsigned long flags;
 u16 handle = le16_to_cpu(element->PhysDiskDevHandle);
 u16 volume_handle = 0;
 u64 volume_wwid = 0;

 mpt3sas_config_get_volume_handle(ioc, handle, &volume_handle);
 if (volume_handle)
  mpt3sas_config_get_volume_wwid(ioc, volume_handle,
      &volume_wwid);

 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 sas_device = __mpt3sas_get_sdev_by_handle(ioc, handle);
 if (sas_device) {
  set_bit(handle, ioc->pd_handles);
  if (sas_device->starget && sas_device->starget->hostdata) {
   starget = sas_device->starget;
   sas_target_priv_data = starget->hostdata;
   sas_target_priv_data->flags |=
       MPT_TARGET_FLAGS_RAID_COMPONENT;
   sas_device->volume_handle = volume_handle;
   sas_device->volume_wwid = volume_wwid;
  }
 }
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
 if (!sas_device)
  return;


 _scsih_ir_fastpath(ioc, handle, element->PhysDiskNum);

 if (starget)
  starget_for_each_device(starget, (void *)1, _scsih_reprobe_lun);

 sas_device_put(sas_device);
}
