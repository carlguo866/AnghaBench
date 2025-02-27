
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {scalar_t__ extra; } ;
struct isd200_info {int * ATARegs; int RegsBuf; } ;


 int ACTION_READ_STATUS ;
 size_t ATA_REG_ERROR_OFFSET ;
 int ISD200_ERROR ;
 int ISD200_GOOD ;
 int ISD200_TRANSPORT_GOOD ;
 int isd200_action (struct us_data*,int ,int ,int) ;
 int memcpy (int *,int ,int) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;

__attribute__((used)) static int isd200_read_regs( struct us_data *us )
{
 struct isd200_info *info = (struct isd200_info *)us->extra;
 int retStatus = ISD200_GOOD;
 int transferStatus;

 usb_stor_dbg(us, "Entering isd200_IssueATAReadRegs\n");

 transferStatus = isd200_action( us, ACTION_READ_STATUS,
        info->RegsBuf, sizeof(info->ATARegs) );
 if (transferStatus != ISD200_TRANSPORT_GOOD) {
  usb_stor_dbg(us, "   Error reading ATA registers\n");
  retStatus = ISD200_ERROR;
 } else {
  memcpy(info->ATARegs, info->RegsBuf, sizeof(info->ATARegs));
  usb_stor_dbg(us, "   Got ATA Register[ATA_REG_ERROR_OFFSET] = 0x%x\n",
        info->ATARegs[ATA_REG_ERROR_OFFSET]);
 }

 return retStatus;
}
