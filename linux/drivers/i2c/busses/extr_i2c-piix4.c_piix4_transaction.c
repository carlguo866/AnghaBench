
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_piix4_adapdata {unsigned short smba; } ;
struct i2c_adapter {int dev; } ;


 int EBUSY ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int MAX_TIMEOUT ;
 int SMBHSTADD ;
 int SMBHSTCMD ;
 int SMBHSTCNT ;
 int SMBHSTDAT0 ;
 int SMBHSTDAT1 ;
 int SMBHSTSTS ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 struct i2c_piix4_adapdata* i2c_get_adapdata (struct i2c_adapter*) ;
 int inb (int ) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;
 scalar_t__ srvrworks_csb5_delay ;
 int usleep_range (int,int) ;

__attribute__((used)) static int piix4_transaction(struct i2c_adapter *piix4_adapter)
{
 struct i2c_piix4_adapdata *adapdata = i2c_get_adapdata(piix4_adapter);
 unsigned short piix4_smba = adapdata->smba;
 int temp;
 int result = 0;
 int timeout = 0;

 dev_dbg(&piix4_adapter->dev, "Transaction (pre): CNT=%02x, CMD=%02x, "
  "ADD=%02x, DAT0=%02x, DAT1=%02x\n", inb_p(SMBHSTCNT),
  inb_p(SMBHSTCMD), inb_p(SMBHSTADD), inb_p(SMBHSTDAT0),
  inb_p(SMBHSTDAT1));


 if ((temp = inb_p(SMBHSTSTS)) != 0x00) {
  dev_dbg(&piix4_adapter->dev, "SMBus busy (%02x). "
   "Resetting...\n", temp);
  outb_p(temp, SMBHSTSTS);
  if ((temp = inb_p(SMBHSTSTS)) != 0x00) {
   dev_err(&piix4_adapter->dev, "Failed! (%02x)\n", temp);
   return -EBUSY;
  } else {
   dev_dbg(&piix4_adapter->dev, "Successful!\n");
  }
 }


 outb_p(inb(SMBHSTCNT) | 0x040, SMBHSTCNT);


 if (srvrworks_csb5_delay)
  usleep_range(2000, 2100);
 else
  usleep_range(250, 500);

 while ((++timeout < MAX_TIMEOUT) &&
        ((temp = inb_p(SMBHSTSTS)) & 0x01))
  usleep_range(250, 500);


 if (timeout == MAX_TIMEOUT) {
  dev_err(&piix4_adapter->dev, "SMBus Timeout!\n");
  result = -ETIMEDOUT;
 }

 if (temp & 0x10) {
  result = -EIO;
  dev_err(&piix4_adapter->dev, "Error: Failed bus transaction\n");
 }

 if (temp & 0x08) {
  result = -EIO;
  dev_dbg(&piix4_adapter->dev, "Bus collision! SMBus may be "
   "locked until next hard reset. (sorry!)\n");

 }

 if (temp & 0x04) {
  result = -ENXIO;
  dev_dbg(&piix4_adapter->dev, "Error: no response!\n");
 }

 if (inb_p(SMBHSTSTS) != 0x00)
  outb_p(inb(SMBHSTSTS), SMBHSTSTS);

 if ((temp = inb_p(SMBHSTSTS)) != 0x00) {
  dev_err(&piix4_adapter->dev, "Failed reset at end of "
   "transaction (%02x)\n", temp);
 }
 dev_dbg(&piix4_adapter->dev, "Transaction (post): CNT=%02x, CMD=%02x, "
  "ADD=%02x, DAT0=%02x, DAT1=%02x\n", inb_p(SMBHSTCNT),
  inb_p(SMBHSTCMD), inb_p(SMBHSTADD), inb_p(SMBHSTDAT0),
  inb_p(SMBHSTDAT1));
 return result;
}
