
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int chip_select; int controller; } ;
struct dw_spi {scalar_t__ cs_override; } ;
struct chip_data {int (* cs_control ) (int) ;} ;


 int BIT (int ) ;
 int DW_SPI_SER ;
 int dw_writel (struct dw_spi*,int ,int ) ;
 struct dw_spi* spi_controller_get_devdata (int ) ;
 struct chip_data* spi_get_ctldata (struct spi_device*) ;
 int stub1 (int) ;

void dw_spi_set_cs(struct spi_device *spi, bool enable)
{
 struct dw_spi *dws = spi_controller_get_devdata(spi->controller);
 struct chip_data *chip = spi_get_ctldata(spi);

 if (chip && chip->cs_control)
  chip->cs_control(enable);

 if (enable)
  dw_writel(dws, DW_SPI_SER, BIT(spi->chip_select));
 else if (dws->cs_override)
  dw_writel(dws, DW_SPI_SER, 0);
}
