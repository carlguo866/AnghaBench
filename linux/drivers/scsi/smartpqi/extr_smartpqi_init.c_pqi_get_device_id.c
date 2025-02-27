
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pqi_ctrl_info {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SCSI_VPD_DEVICE_ID ;
 size_t SCSI_VPD_DEVICE_ID_IDX ;
 int VPD_PAGE ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int memcpy (int *,unsigned char*,int) ;
 int pqi_scsi_inquiry (struct pqi_ctrl_info*,int *,int,unsigned char*,int) ;
 int pqi_vpd_page_supported (struct pqi_ctrl_info*,int *,int) ;

__attribute__((used)) static int pqi_get_device_id(struct pqi_ctrl_info *ctrl_info,
 u8 *scsi3addr, u8 *device_id, int buflen)
{
 int rc;
 unsigned char *buf;

 if (!pqi_vpd_page_supported(ctrl_info, scsi3addr, SCSI_VPD_DEVICE_ID))
  return 1;

 buf = kzalloc(64, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 rc = pqi_scsi_inquiry(ctrl_info, scsi3addr,
    VPD_PAGE | SCSI_VPD_DEVICE_ID,
    buf, 64);
 if (rc == 0) {
  if (buflen > 16)
   buflen = 16;
  memcpy(device_id, &buf[SCSI_VPD_DEVICE_ID_IDX], buflen);
 }

 kfree(buf);

 return rc;
}
