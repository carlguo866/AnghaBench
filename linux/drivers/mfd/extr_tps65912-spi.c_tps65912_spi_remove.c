
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65912 {int dummy; } ;
struct spi_device {int dummy; } ;


 struct tps65912* spi_get_drvdata (struct spi_device*) ;
 int tps65912_device_exit (struct tps65912*) ;

__attribute__((used)) static int tps65912_spi_remove(struct spi_device *spi)
{
 struct tps65912 *tps = spi_get_drvdata(spi);

 return tps65912_device_exit(tps);
}
