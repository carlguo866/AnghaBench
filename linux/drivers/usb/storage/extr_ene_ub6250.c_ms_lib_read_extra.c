
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct us_data {scalar_t__ extra; scalar_t__ iobuf; } ;
struct ms_lib_type_extdat {int intr; int status0; int status1; int logadr; void* mngflg; void* ovrflg; scalar_t__ reserved; } ;
struct ene_ub6250_info {void** bbuf; } ;
struct bulk_cb_wrap {int DataTransferLength; int* CDB; int Flags; int Signature; } ;


 int FDIR_READ ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int US_BULK_CB_SIGN ;
 int US_BULK_FLAG_IN ;
 int cpu_to_le32 (int ) ;
 int ene_send_scsi_cmd (struct us_data*,int ,void**,int ) ;
 int memset (struct bulk_cb_wrap*,int ,int) ;
 int memstick_logaddr (void*,void*) ;

__attribute__((used)) static int ms_lib_read_extra(struct us_data *us, u32 PhyBlock,
    u8 PageNum, struct ms_lib_type_extdat *ExtraDat)
{
 struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *) us->iobuf;
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;
 u8 *bbuf = info->bbuf;
 int result;

 memset(bcb, 0, sizeof(struct bulk_cb_wrap));
 bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 bcb->DataTransferLength = 0x4;
 bcb->Flags = US_BULK_FLAG_IN;
 bcb->CDB[0] = 0xF1;
 bcb->CDB[1] = 0x03;
 bcb->CDB[5] = (unsigned char)(PageNum);
 bcb->CDB[4] = (unsigned char)(PhyBlock);
 bcb->CDB[3] = (unsigned char)(PhyBlock>>8);
 bcb->CDB[2] = (unsigned char)(PhyBlock>>16);
 bcb->CDB[6] = 0x01;

 result = ene_send_scsi_cmd(us, FDIR_READ, bbuf, 0);
 if (result != USB_STOR_XFER_GOOD)
  return USB_STOR_TRANSPORT_ERROR;

 ExtraDat->reserved = 0;
 ExtraDat->intr = 0x80;
 ExtraDat->status0 = 0x10;
 ExtraDat->status1 = 0x00;
 ExtraDat->ovrflg = bbuf[0];
 ExtraDat->mngflg = bbuf[1];
 ExtraDat->logadr = memstick_logaddr(bbuf[2], bbuf[3]);

 return USB_STOR_TRANSPORT_GOOD;
}
