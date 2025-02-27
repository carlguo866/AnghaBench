
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbat_info {int ssize; unsigned long sectors; unsigned char sense_key; unsigned char sense_asc; unsigned char sense_ascq; } ;
struct us_data {unsigned char* iobuf; scalar_t__ extra; } ;
struct scsi_cmnd {scalar_t__* cmnd; } ;
typedef int inquiry_response ;
typedef int __be32 ;


 scalar_t__ ALLOW_MEDIUM_REMOVAL ;
 scalar_t__ INQUIRY ;
 scalar_t__ MODE_SELECT_10 ;
 scalar_t__ READ_10 ;
 scalar_t__ READ_12 ;
 scalar_t__ READ_CAPACITY ;
 scalar_t__ REQUEST_SENSE ;
 scalar_t__ TEST_UNIT_READY ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_FAILED ;
 int USB_STOR_TRANSPORT_GOOD ;
 int US_DEBUGP (char*,...) ;
 scalar_t__ WRITE_10 ;
 scalar_t__ WRITE_12 ;
 int cpu_to_be32 (unsigned long) ;
 int fill_inquiry_response (struct us_data*,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int usb_stor_set_xfer_buf (unsigned char*,int,struct scsi_cmnd*) ;
 int usbat_check_status (struct us_data*) ;
 int usbat_flash_check_media (struct us_data*,struct usbat_info*) ;
 int usbat_flash_get_sector_count (struct us_data*,struct usbat_info*) ;
 int usbat_flash_read_data (struct us_data*,struct usbat_info*,unsigned long,unsigned long) ;
 int usbat_flash_write_data (struct us_data*,struct usbat_info*,unsigned long,unsigned long) ;

__attribute__((used)) static int usbat_flash_transport(struct scsi_cmnd * srb, struct us_data *us)
{
 int rc;
 struct usbat_info *info = (struct usbat_info *) (us->extra);
 unsigned long block, blocks;
 unsigned char *ptr = us->iobuf;
 static unsigned char inquiry_response[36] = {
  0x00, 0x80, 0x00, 0x01, 0x1F, 0x00, 0x00, 0x00
 };

 if (srb->cmnd[0] == INQUIRY) {
  US_DEBUGP("usbat_flash_transport: INQUIRY. Returning bogus response.\n");
  memcpy(ptr, inquiry_response, sizeof(inquiry_response));
  fill_inquiry_response(us, ptr, 36);
  return USB_STOR_TRANSPORT_GOOD;
 }

 if (srb->cmnd[0] == READ_CAPACITY) {
  rc = usbat_flash_check_media(us, info);
  if (rc != USB_STOR_TRANSPORT_GOOD)
   return rc;

  rc = usbat_flash_get_sector_count(us, info);
  if (rc != USB_STOR_TRANSPORT_GOOD)
   return rc;


  info->ssize = 0x200;
  US_DEBUGP("usbat_flash_transport: READ_CAPACITY: %ld sectors, %ld bytes per sector\n",
     info->sectors, info->ssize);






  ((__be32 *) ptr)[0] = cpu_to_be32(info->sectors - 1);
  ((__be32 *) ptr)[1] = cpu_to_be32(info->ssize);
  usb_stor_set_xfer_buf(ptr, 8, srb);

  return USB_STOR_TRANSPORT_GOOD;
 }

 if (srb->cmnd[0] == MODE_SELECT_10) {
  US_DEBUGP("usbat_flash_transport:  Gah! MODE_SELECT_10.\n");
  return USB_STOR_TRANSPORT_ERROR;
 }

 if (srb->cmnd[0] == READ_10) {
  block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
    ((u32)(srb->cmnd[4]) << 8) | ((u32)(srb->cmnd[5]));

  blocks = ((u32)(srb->cmnd[7]) << 8) | ((u32)(srb->cmnd[8]));

  US_DEBUGP("usbat_flash_transport:  READ_10: read block 0x%04lx  count %ld\n", block, blocks);
  return usbat_flash_read_data(us, info, block, blocks);
 }

 if (srb->cmnd[0] == READ_12) {



  block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
          ((u32)(srb->cmnd[4]) << 8) | ((u32)(srb->cmnd[5]));

  blocks = ((u32)(srb->cmnd[6]) << 24) | ((u32)(srb->cmnd[7]) << 16) |
           ((u32)(srb->cmnd[8]) << 8) | ((u32)(srb->cmnd[9]));

  US_DEBUGP("usbat_flash_transport: READ_12: read block 0x%04lx  count %ld\n", block, blocks);
  return usbat_flash_read_data(us, info, block, blocks);
 }

 if (srb->cmnd[0] == WRITE_10) {
  block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
          ((u32)(srb->cmnd[4]) << 8) | ((u32)(srb->cmnd[5]));

  blocks = ((u32)(srb->cmnd[7]) << 8) | ((u32)(srb->cmnd[8]));

  US_DEBUGP("usbat_flash_transport: WRITE_10: write block 0x%04lx  count %ld\n", block, blocks);
  return usbat_flash_write_data(us, info, block, blocks);
 }

 if (srb->cmnd[0] == WRITE_12) {



  block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
          ((u32)(srb->cmnd[4]) << 8) | ((u32)(srb->cmnd[5]));

  blocks = ((u32)(srb->cmnd[6]) << 24) | ((u32)(srb->cmnd[7]) << 16) |
           ((u32)(srb->cmnd[8]) << 8) | ((u32)(srb->cmnd[9]));

  US_DEBUGP("usbat_flash_transport: WRITE_12: write block 0x%04lx  count %ld\n", block, blocks);
  return usbat_flash_write_data(us, info, block, blocks);
 }


 if (srb->cmnd[0] == TEST_UNIT_READY) {
  US_DEBUGP("usbat_flash_transport: TEST_UNIT_READY.\n");

  rc = usbat_flash_check_media(us, info);
  if (rc != USB_STOR_TRANSPORT_GOOD)
   return rc;

  return usbat_check_status(us);
 }

 if (srb->cmnd[0] == REQUEST_SENSE) {
  US_DEBUGP("usbat_flash_transport: REQUEST_SENSE.\n");

  memset(ptr, 0, 18);
  ptr[0] = 0xF0;
  ptr[2] = info->sense_key;
  ptr[7] = 11;
  ptr[12] = info->sense_asc;
  ptr[13] = info->sense_ascq;
  usb_stor_set_xfer_buf(ptr, 18, srb);

  return USB_STOR_TRANSPORT_GOOD;
 }

 if (srb->cmnd[0] == ALLOW_MEDIUM_REMOVAL) {




  return USB_STOR_TRANSPORT_GOOD;
 }

 US_DEBUGP("usbat_flash_transport: Gah! Unknown command: %d (0x%x)\n",
     srb->cmnd[0], srb->cmnd[0]);
 info->sense_key = 0x05;
 info->sense_asc = 0x20;
 info->sense_ascq = 0x00;
 return USB_STOR_TRANSPORT_FAILED;
}
