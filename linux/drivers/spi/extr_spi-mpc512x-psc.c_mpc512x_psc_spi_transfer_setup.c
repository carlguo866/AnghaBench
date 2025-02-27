
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int bits_per_word; scalar_t__ speed_hz; } ;
struct spi_device {int bits_per_word; scalar_t__ max_speed_hz; struct mpc512x_psc_spi_cs* controller_state; } ;
struct mpc512x_psc_spi_cs {int bits_per_word; scalar_t__ speed_hz; } ;



__attribute__((used)) static int mpc512x_psc_spi_transfer_setup(struct spi_device *spi,
       struct spi_transfer *t)
{
 struct mpc512x_psc_spi_cs *cs = spi->controller_state;

 cs->speed_hz = (t && t->speed_hz)
     ? t->speed_hz : spi->max_speed_hz;
 cs->bits_per_word = (t && t->bits_per_word)
     ? t->bits_per_word : spi->bits_per_word;
 cs->bits_per_word = ((cs->bits_per_word + 7) / 8) * 8;
 return 0;
}
