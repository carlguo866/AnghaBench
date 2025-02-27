
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * cpaddr; } ;
struct path_verification_work_data {TYPE_1__ rcd_buffer; TYPE_1__ cqr; int ccw; } ;
struct dasd_eckd_private {int conf_data; } ;
struct dasd_device {int cdev; struct dasd_eckd_private* private; } ;
typedef int __u8 ;


 int DASD_ECKD_RCD_DATA_SIZE ;
 int DBF_EVENT_DEVID (int ,int ,char*,int) ;
 int DBF_WARNING ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int dasd_eckd_generate_uid (struct dasd_device*) ;
 scalar_t__ dasd_eckd_identify_conf_parts (struct dasd_eckd_private*) ;
 int dasd_eckd_read_conf_immediately (struct dasd_device*,TYPE_1__*,TYPE_1__,int) ;
 int dasd_path_get_opm (struct dasd_device*) ;
 int memcpy (int ,TYPE_1__,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int rebuild_device_uid(struct dasd_device *device,
         struct path_verification_work_data *data)
{
 struct dasd_eckd_private *private = device->private;
 __u8 lpm, opm = dasd_path_get_opm(device);
 int rc = -ENODEV;

 for (lpm = 0x80; lpm; lpm >>= 1) {
  if (!(lpm & opm))
   continue;
  memset(&data->rcd_buffer, 0, sizeof(data->rcd_buffer));
  memset(&data->cqr, 0, sizeof(data->cqr));
  data->cqr.cpaddr = &data->ccw;
  rc = dasd_eckd_read_conf_immediately(device, &data->cqr,
           data->rcd_buffer,
           lpm);

  if (rc) {
   if (rc == -EOPNOTSUPP)
    continue;
   DBF_EVENT_DEVID(DBF_WARNING, device->cdev,
     "Read configuration data "
     "returned error %d", rc);
   break;
  }
  memcpy(private->conf_data, data->rcd_buffer,
         DASD_ECKD_RCD_DATA_SIZE);
  if (dasd_eckd_identify_conf_parts(private)) {
   rc = -ENODEV;
  } else
   break;
 }

 if (!rc)
  rc = dasd_eckd_generate_uid(device);

 return rc;
}
