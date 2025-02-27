
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int t ;
struct tps6524x {int dev; int spi; } ;
struct spi_transfer {int* tx_buf; int len; int bits_per_word; int* rx_buf; } ;
struct spi_message {int dummy; } ;


 int CMD_WRITE (int) ;
 int EINVAL ;
 int EIO ;
 int STAT_CLK ;
 int STAT_INVALID ;
 int STAT_WP ;
 int STAT_WRITE ;
 int dev_dbg (int ,char*,int,int,int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static int __write_reg(struct tps6524x *hw, int reg, int val)
{
 int error = 0;
 u16 cmd = CMD_WRITE(reg), out = val;
 u8 status;
 struct spi_message m;
 struct spi_transfer t[3];

 spi_message_init(&m);
 memset(t, 0, sizeof(t));

 t[0].tx_buf = &cmd;
 t[0].len = 2;
 t[0].bits_per_word = 12;
 spi_message_add_tail(&t[0], &m);

 t[1].tx_buf = &out;
 t[1].len = 2;
 t[1].bits_per_word = 16;
 spi_message_add_tail(&t[1], &m);

 t[2].rx_buf = &status;
 t[2].len = 1;
 t[2].bits_per_word = 4;
 spi_message_add_tail(&t[2], &m);

 error = spi_sync(hw->spi, &m);
 if (error < 0)
  return error;

 dev_dbg(hw->dev, "wrote reg %d, data %x, status %x\n",
  reg, out, status);

 if (!(status & STAT_CLK) || !(status & STAT_WRITE))
  return -EIO;

 if (status & (STAT_INVALID | STAT_WP))
  return -EINVAL;

 return error;
}
