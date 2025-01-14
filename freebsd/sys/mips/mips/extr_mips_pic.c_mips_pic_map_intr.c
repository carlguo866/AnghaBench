
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_pic_softc {scalar_t__ nirqs; } ;
struct intr_map_data_mips_pic {scalar_t__ irq; } ;
struct intr_map_data_fdt {int ncells; scalar_t__* cells; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ INTR_MAP_DATA_FDT ;
 scalar_t__ INTR_MAP_DATA_MIPS ;
 struct intr_irqsrc* PIC_INTR_ISRC (struct mips_pic_softc*,scalar_t__) ;
 struct mips_pic_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mips_pic_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 struct mips_pic_softc *sc;
 int res;

 sc = device_get_softc(dev);
 res = 0;
 if (data->type == INTR_MAP_DATA_MIPS) {
  struct intr_map_data_mips_pic *mpd;

  mpd = (struct intr_map_data_mips_pic *)data;

  if (mpd->irq < 0 || mpd->irq >= sc->nirqs)
   return (EINVAL);

  *isrcp = PIC_INTR_ISRC(sc, mpd->irq);
 } else {
  res = ENOTSUP;
 }

 return (res);
}
