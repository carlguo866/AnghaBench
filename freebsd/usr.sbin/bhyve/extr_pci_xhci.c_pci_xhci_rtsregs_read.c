
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int iman; } ;
struct TYPE_4__ {int mfindex; TYPE_1__ intrreg; } ;
struct pci_xhci_softc {TYPE_2__ rtsregs; scalar_t__ rtsoff; } ;


 int DPRINTF (char*) ;
 int XHCI_MFINDEX ;
 int assert (int) ;

__attribute__((used)) static uint64_t
pci_xhci_rtsregs_read(struct pci_xhci_softc *sc, uint64_t offset)
{
 uint32_t value;

 offset -= sc->rtsoff;
 value = 0;

 if (offset == XHCI_MFINDEX) {
  value = sc->rtsregs.mfindex;
 } else if (offset >= 0x20) {
  int item;
  uint32_t *p;

  offset -= 0x20;
  item = offset % 32;

  assert(offset < sizeof(sc->rtsregs.intrreg));

  p = &sc->rtsregs.intrreg.iman;
  p += item / sizeof(uint32_t);
  value = *p;
 }

 DPRINTF(("pci_xhci: rtsregs read offset 0x%lx -> 0x%x\r\n",
         offset, value));

 return (value);
}
