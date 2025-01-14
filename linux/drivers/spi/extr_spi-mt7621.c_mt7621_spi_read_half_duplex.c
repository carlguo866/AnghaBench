
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt7621_spi {int pending_write; } ;


 scalar_t__ MT7621_SPI_DATA0 ;
 scalar_t__ MT7621_SPI_MOREBUF ;
 scalar_t__ MT7621_SPI_TRANS ;
 int SPI_CTL_START ;
 int min (int,int) ;
 int mt7621_spi_read (struct mt7621_spi*,scalar_t__) ;
 int mt7621_spi_wait_till_ready (struct mt7621_spi*) ;
 int mt7621_spi_write (struct mt7621_spi*,scalar_t__,int) ;

__attribute__((used)) static void mt7621_spi_read_half_duplex(struct mt7621_spi *rs,
     int rx_len, u8 *buf)
{
 int tx_len;






 tx_len = rs->pending_write;
 rs->pending_write = 0;

 while (rx_len || tx_len) {
  int i;
  u32 val = (min(tx_len, 4) * 8) << 24;
  int rx = min(rx_len, 32);

  if (tx_len > 4)
   val |= (tx_len - 4) * 8;
  val |= (rx * 8) << 12;
  mt7621_spi_write(rs, MT7621_SPI_MOREBUF, val);

  tx_len = 0;

  val = mt7621_spi_read(rs, MT7621_SPI_TRANS);
  val |= SPI_CTL_START;
  mt7621_spi_write(rs, MT7621_SPI_TRANS, val);

  mt7621_spi_wait_till_ready(rs);

  for (i = 0; i < rx; i++) {
   if ((i % 4) == 0)
    val = mt7621_spi_read(rs, MT7621_SPI_DATA0 + i);
   *buf++ = val & 0xff;
   val >>= 8;
  }

  rx_len -= i;
 }
}
