
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct pic32_spi {int dummy; } ;


 int pic32_spi_disable (struct pic32_spi*) ;
 struct pic32_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int pic32_spi_unprepare_hardware(struct spi_master *master)
{
 struct pic32_spi *pic32s = spi_master_get_devdata(master);

 pic32_spi_disable(pic32s);

 return 0;
}
