
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct spi_device {int dummy; } ;


 int spi_write (struct spi_device*,int*,int) ;

__attribute__((used)) static int ad5624r_spi_write(struct spi_device *spi,
        u8 cmd, u8 addr, u16 val, u8 shift)
{
 u32 data;
 u8 msg[3];
 data = (0 << 22) | (cmd << 19) | (addr << 16) | (val << shift);
 msg[0] = data >> 16;
 msg[1] = data >> 8;
 msg[2] = data;

 return spi_write(spi, msg, 3);
}
