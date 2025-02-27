
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {struct resource* r_irq; } ;
struct siis_controller {TYPE_1__ irq; int r_mem; int sc_iomem; } ;
struct siis_channel {int unit; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int ATA_IRQ_RID ;
 int RF_ACTIVE ;


 int bus_space_subregion (int ,int ,int,int,int *) ;
 struct siis_controller* device_get_softc (int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int rman_get_start (int ) ;
 struct resource* rman_reserve_resource (int *,int ,int ,int,int ,int ) ;
 int rman_set_bushandle (struct resource*,int ) ;
 int rman_set_bustag (struct resource*,int ) ;

__attribute__((used)) static struct resource *
siis_alloc_resource(device_t dev, device_t child, int type, int *rid,
      rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct siis_controller *ctlr = device_get_softc(dev);
 int unit = ((struct siis_channel *)device_get_softc(child))->unit;
 struct resource *res = ((void*)0);
 int offset = unit << 13;
 rman_res_t st;

 switch (type) {
 case 128:
  st = rman_get_start(ctlr->r_mem);
  res = rman_reserve_resource(&ctlr->sc_iomem, st + offset,
      st + offset + 0x2000, 0x2000, RF_ACTIVE, child);
  if (res) {
   bus_space_handle_t bsh;
   bus_space_tag_t bst;
   bsh = rman_get_bushandle(ctlr->r_mem);
   bst = rman_get_bustag(ctlr->r_mem);
   bus_space_subregion(bst, bsh, offset, 0x2000, &bsh);
   rman_set_bushandle(res, bsh);
   rman_set_bustag(res, bst);
  }
  break;
 case 129:
  if (*rid == ATA_IRQ_RID)
   res = ctlr->irq.r_irq;
  break;
 }
 return (res);
}
