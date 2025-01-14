
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct i2c_client {int dev; } ;
typedef int pkt_buf ;


 size_t CMD_DATA_OFFSET ;
 size_t CMD_INDEX_OFFSET ;
 size_t CMD_LENGTH_OFFSET ;
 size_t CMD_REPORT_ID_OFFSET ;
 size_t CMD_TYPE_OFFSET ;
 int EINVAL ;
 int PACKET_SIZE ;
 int PKT_BUF_SIZE ;
 int VND_REQ_WRITE ;
 int VND_SET_DATA ;
 int WDT_FLASH_WRITE_DELAY_MS ;
 int dev_err (int *,char*,int,int) ;
 int mdelay (int ) ;
 int memcpy (int *,char const*,scalar_t__) ;
 scalar_t__ min (int,int ) ;
 int msleep (int) ;
 int put_unaligned_le16 (scalar_t__,int *) ;
 int put_unaligned_le32 (int,int *) ;
 int wdt87xx_set_feature (struct i2c_client*,int *,int) ;

__attribute__((used)) static int wdt87xx_write_data(struct i2c_client *client, const char *data,
         u32 address, int length)
{
 u16 packet_size;
 int count = 0;
 int error;
 u8 pkt_buf[PKT_BUF_SIZE];


 if ((address & 0x3) != 0 || (length & 0x3) != 0) {
  dev_err(&client->dev,
   "addr & len must be 4 bytes aligned %x, %x\n",
   address, length);
  return -EINVAL;
 }

 while (length) {
  packet_size = min(length, PACKET_SIZE);

  pkt_buf[CMD_REPORT_ID_OFFSET] = VND_REQ_WRITE;
  pkt_buf[CMD_TYPE_OFFSET] = VND_SET_DATA;
  put_unaligned_le16(packet_size, &pkt_buf[CMD_INDEX_OFFSET]);
  put_unaligned_le32(address, &pkt_buf[CMD_LENGTH_OFFSET]);
  memcpy(&pkt_buf[CMD_DATA_OFFSET], data, packet_size);

  error = wdt87xx_set_feature(client, pkt_buf, sizeof(pkt_buf));
  if (error)
   return error;

  length -= packet_size;
  data += packet_size;
  address += packet_size;


  mdelay(WDT_FLASH_WRITE_DELAY_MS);

  if ((++count % 32) == 0) {

   msleep(20);
  }
 }

 return 0;
}
