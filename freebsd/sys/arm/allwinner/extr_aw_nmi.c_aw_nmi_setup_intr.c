
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct resource {int dummy; } ;
struct intr_map_data_fdt {int cells; int ncells; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {scalar_t__ isrc_handlers; } ;
struct aw_nmi_softc {TYPE_1__* cfg; } ;
struct aw_nmi_intr {scalar_t__ irq; int pol; int tri; } ;
typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef int device_t ;
struct TYPE_2__ {int ctrl_reg; } ;


 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ INTR_MAP_DATA_FDT ;
 int INTR_POLARITY_HIGH ;
 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_LEVEL ;
 int NMI_IRQ_HIGH_EDGE ;
 int NMI_IRQ_HIGH_LEVEL ;
 int NMI_IRQ_LOW_EDGE ;
 int NMI_IRQ_LOW_LEVEL ;
 int SC_NMI_WRITE (struct aw_nmi_softc*,int ,int) ;
 int aw_nmi_map_fdt (int ,int ,int ,scalar_t__*,int*,int*) ;
 struct aw_nmi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aw_nmi_setup_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct intr_map_data_fdt *daf;
 struct aw_nmi_softc *sc;
 struct aw_nmi_intr *nmi_intr;
 int error, icfg;
 u_int irq;
 enum intr_trigger trig;
 enum intr_polarity pol;


 if (data == ((void*)0) || data->type != INTR_MAP_DATA_FDT)
  return (ENOTSUP);

 sc = device_get_softc(dev);
 nmi_intr = (struct aw_nmi_intr *)isrc;
 daf = (struct intr_map_data_fdt *)data;

 error = aw_nmi_map_fdt(dev, daf->ncells, daf->cells, &irq, &pol, &trig);
 if (error != 0)
  return (error);
 if (nmi_intr->irq != irq)
  return (EINVAL);


 if (isrc->isrc_handlers != 0) {
  if (pol != nmi_intr->pol || trig != nmi_intr->tri)
   return (EINVAL);
  else
   return (0);
 }

 nmi_intr->pol = pol;
 nmi_intr->tri = trig;

 if (trig == INTR_TRIGGER_LEVEL) {
  if (pol == INTR_POLARITY_LOW)
   icfg = NMI_IRQ_LOW_LEVEL;
  else
   icfg = NMI_IRQ_HIGH_LEVEL;
 } else {
  if (pol == INTR_POLARITY_HIGH)
   icfg = NMI_IRQ_HIGH_EDGE;
  else
   icfg = NMI_IRQ_LOW_EDGE;
 }

 SC_NMI_WRITE(sc, sc->cfg->ctrl_reg, icfg);

 return (0);
}
