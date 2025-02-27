
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned char u16 ;
struct spi_transfer {unsigned char* tx_buf; unsigned char* rx_buf; int cs_change; int bits_per_word; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dev; } ;


 int CHECK_FREQ_REG (struct spi_device*,struct spi_transfer*) ;
 int CMD_BUFSIZE ;
 int START_BYTE (int ,int ,int ) ;
 int START_RS_INDEX ;
 int START_RS_REG ;
 int START_RW_READ ;
 int START_RW_WRITE ;
 int dev_dbg (int *,char*,int) ;
 int ili922x_id ;
 int memset (struct spi_transfer*,int ,int) ;
 unsigned char set_tx_byte (int ) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

__attribute__((used)) static int ili922x_read(struct spi_device *spi, u8 reg, u16 *rx)
{
 struct spi_message msg;
 struct spi_transfer xfer_regindex, xfer_regvalue;
 unsigned char tbuf[CMD_BUFSIZE];
 unsigned char rbuf[CMD_BUFSIZE];
 int ret, len = 0, send_bytes;

 memset(&xfer_regindex, 0, sizeof(struct spi_transfer));
 memset(&xfer_regvalue, 0, sizeof(struct spi_transfer));
 spi_message_init(&msg);
 xfer_regindex.tx_buf = tbuf;
 xfer_regindex.rx_buf = rbuf;
 xfer_regindex.cs_change = 1;
 CHECK_FREQ_REG(spi, &xfer_regindex);

 tbuf[0] = set_tx_byte(START_BYTE(ili922x_id, START_RS_INDEX,
      START_RW_WRITE));
 tbuf[1] = set_tx_byte(0);
 tbuf[2] = set_tx_byte(reg);
 xfer_regindex.bits_per_word = 8;
 len = xfer_regindex.len = 3;
 spi_message_add_tail(&xfer_regindex, &msg);

 send_bytes = len;

 tbuf[len++] = set_tx_byte(START_BYTE(ili922x_id, START_RS_REG,
          START_RW_READ));
 tbuf[len++] = set_tx_byte(0);
 tbuf[len] = set_tx_byte(0);

 xfer_regvalue.cs_change = 1;
 xfer_regvalue.len = 3;
 xfer_regvalue.tx_buf = &tbuf[send_bytes];
 xfer_regvalue.rx_buf = &rbuf[send_bytes];
 CHECK_FREQ_REG(spi, &xfer_regvalue);

 spi_message_add_tail(&xfer_regvalue, &msg);
 ret = spi_sync(spi, &msg);
 if (ret < 0) {
  dev_dbg(&spi->dev, "Error sending SPI message 0x%x", ret);
  return ret;
 }

 *rx = (rbuf[1 + send_bytes] << 8) + rbuf[2 + send_bytes];
 return 0;
}
