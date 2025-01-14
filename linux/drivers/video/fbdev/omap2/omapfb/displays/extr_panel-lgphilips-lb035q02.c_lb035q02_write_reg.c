
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spi_transfer {int len; int cs_change; int* tx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;


 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

__attribute__((used)) static int lb035q02_write_reg(struct spi_device *spi, u8 reg, u16 val)
{
 struct spi_message msg;
 struct spi_transfer index_xfer = {
  .len = 3,
  .cs_change = 1,
 };
 struct spi_transfer value_xfer = {
  .len = 3,
 };
 u8 buffer[16];

 spi_message_init(&msg);


 buffer[0] = 0x70;
 buffer[1] = 0x00;
 buffer[2] = reg & 0x7f;
 index_xfer.tx_buf = buffer;
 spi_message_add_tail(&index_xfer, &msg);


 buffer[4] = 0x72;
 buffer[5] = val >> 8;
 buffer[6] = val;
 value_xfer.tx_buf = buffer + 4;
 spi_message_add_tail(&value_xfer, &msg);

 return spi_sync(spi, &msg);
}
