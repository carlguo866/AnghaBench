
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct scsi_device {int event_work; int pending_events; } ;
typedef enum scsi_device_event { ____Placeholder_scsi_device_event } scsi_device_event ;


 int KERN_WARNING ;
 int SDEV_EVT_ALUA_STATE_CHANGE_REPORTED ;
 int SDEV_EVT_CAPACITY_CHANGE_REPORTED ;
 int SDEV_EVT_INQUIRY_CHANGE_REPORTED ;
 int SDEV_EVT_LUN_CHANGE_REPORTED ;
 int SDEV_EVT_MAXBITS ;
 int SDEV_EVT_MODE_PARAMETER_CHANGE_REPORTED ;
 int SDEV_EVT_POWER_ON_RESET_OCCURRED ;
 int SDEV_EVT_SOFT_THRESHOLD_REACHED_REPORTED ;
 scalar_t__ UNIT_ATTENTION ;
 int schedule_work (int *) ;
 int scsi_report_lun_change (struct scsi_device*) ;
 int sdev_printk (int ,struct scsi_device*,char*) ;
 int set_bit (int,int ) ;

__attribute__((used)) static void scsi_report_sense(struct scsi_device *sdev,
         struct scsi_sense_hdr *sshdr)
{
 enum scsi_device_event evt_type = SDEV_EVT_MAXBITS;

 if (sshdr->sense_key == UNIT_ATTENTION) {
  if (sshdr->asc == 0x3f && sshdr->ascq == 0x03) {
   evt_type = SDEV_EVT_INQUIRY_CHANGE_REPORTED;
   sdev_printk(KERN_WARNING, sdev,
        "Inquiry data has changed");
  } else if (sshdr->asc == 0x3f && sshdr->ascq == 0x0e) {
   evt_type = SDEV_EVT_LUN_CHANGE_REPORTED;
   scsi_report_lun_change(sdev);
   sdev_printk(KERN_WARNING, sdev,
        "Warning! Received an indication that the "
        "LUN assignments on this target have "
        "changed. The Linux SCSI layer does not "
        "automatically remap LUN assignments.\n");
  } else if (sshdr->asc == 0x3f)
   sdev_printk(KERN_WARNING, sdev,
        "Warning! Received an indication that the "
        "operating parameters on this target have "
        "changed. The Linux SCSI layer does not "
        "automatically adjust these parameters.\n");

  if (sshdr->asc == 0x38 && sshdr->ascq == 0x07) {
   evt_type = SDEV_EVT_SOFT_THRESHOLD_REACHED_REPORTED;
   sdev_printk(KERN_WARNING, sdev,
        "Warning! Received an indication that the "
        "LUN reached a thin provisioning soft "
        "threshold.\n");
  }

  if (sshdr->asc == 0x29) {
   evt_type = SDEV_EVT_POWER_ON_RESET_OCCURRED;
   sdev_printk(KERN_WARNING, sdev,
        "Power-on or device reset occurred\n");
  }

  if (sshdr->asc == 0x2a && sshdr->ascq == 0x01) {
   evt_type = SDEV_EVT_MODE_PARAMETER_CHANGE_REPORTED;
   sdev_printk(KERN_WARNING, sdev,
        "Mode parameters changed");
  } else if (sshdr->asc == 0x2a && sshdr->ascq == 0x06) {
   evt_type = SDEV_EVT_ALUA_STATE_CHANGE_REPORTED;
   sdev_printk(KERN_WARNING, sdev,
        "Asymmetric access state changed");
  } else if (sshdr->asc == 0x2a && sshdr->ascq == 0x09) {
   evt_type = SDEV_EVT_CAPACITY_CHANGE_REPORTED;
   sdev_printk(KERN_WARNING, sdev,
        "Capacity data has changed");
  } else if (sshdr->asc == 0x2a)
   sdev_printk(KERN_WARNING, sdev,
        "Parameters changed");
 }

 if (evt_type != SDEV_EVT_MAXBITS) {
  set_bit(evt_type, sdev->pending_events);
  schedule_work(&sdev->event_work);
 }
}
