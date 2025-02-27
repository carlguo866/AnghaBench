
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* dev; } ;
typedef TYPE_3__ spi_t ;
struct TYPE_5__ {scalar_t__ cs_keep_active; } ;
struct TYPE_6__ {TYPE_1__ pin; } ;


 int SPI_MUTEX_LOCK () ;
 int SPI_MUTEX_UNLOCK () ;

void spiSSClear(spi_t * spi)
{
    if(!spi) {
        return;
    }
    SPI_MUTEX_LOCK();
    spi->dev->pin.cs_keep_active = 0;
    SPI_MUTEX_UNLOCK();
}
