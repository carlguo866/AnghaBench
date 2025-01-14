
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xilinx_spi {scalar_t__ regs; } ;
struct spi_device {int mode; int chip_select; int master; } ;


 int BITBANG_CS_ACTIVE ;
 int BITBANG_CS_INACTIVE ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int XSPI_CR_CPHA ;
 int XSPI_CR_CPOL ;
 int XSPI_CR_MODE_MASK ;
 scalar_t__ XSPI_CR_OFFSET ;
 scalar_t__ XSPI_SSR_OFFSET ;
 int in_be16 (scalar_t__) ;
 int out_be16 (scalar_t__,int) ;
 int out_be32 (scalar_t__,int) ;
 struct xilinx_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void xilinx_spi_chipselect(struct spi_device *spi, int is_on)
{
 struct xilinx_spi *xspi = spi_master_get_devdata(spi->master);

 if (is_on == BITBANG_CS_INACTIVE) {

  out_be32(xspi->regs + XSPI_SSR_OFFSET, 0xffff);
 } else if (is_on == BITBANG_CS_ACTIVE) {

  u16 cr = in_be16(xspi->regs + XSPI_CR_OFFSET)
    & ~XSPI_CR_MODE_MASK;
  if (spi->mode & SPI_CPHA)
   cr |= XSPI_CR_CPHA;
  if (spi->mode & SPI_CPOL)
   cr |= XSPI_CR_CPOL;
  out_be16(xspi->regs + XSPI_CR_OFFSET, cr);







  out_be32(xspi->regs + XSPI_SSR_OFFSET,
    ~(0x0001 << spi->chip_select));
 }
}
