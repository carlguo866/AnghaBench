
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ MIN_SPI_BAUD_VAL ;
 int get_sclk () ;

__attribute__((used)) static u16 hz_to_spi_baud(u32 speed_hz)
{
 u_long sclk = get_sclk();
 u16 spi_baud = (sclk / (2 * speed_hz));

 if ((sclk % (2 * speed_hz)) > 0)
  spi_baud++;

 if (spi_baud < MIN_SPI_BAUD_VAL)
  spi_baud = MIN_SPI_BAUD_VAL;

 return spi_baud;
}
