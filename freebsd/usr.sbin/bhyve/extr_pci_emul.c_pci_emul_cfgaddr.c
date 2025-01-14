
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmctx {int dummy; } ;


 int CONF1_ENABLE ;
 int PCI_BUSMAX ;
 int PCI_FUNCMAX ;
 int PCI_REGMAX ;
 int PCI_SLOTMAX ;
 int cfgbus ;
 int cfgenable ;
 int cfgfunc ;
 int cfgoff ;
 int cfgslot ;

__attribute__((used)) static int
pci_emul_cfgaddr(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
   uint32_t *eax, void *arg)
{
 uint32_t x;

 if (bytes != 4) {
  if (in)
   *eax = (bytes == 2) ? 0xffff : 0xff;
  return (0);
 }

 if (in) {
  x = (cfgbus << 16) | (cfgslot << 11) | (cfgfunc << 8) | cfgoff;
  if (cfgenable)
   x |= CONF1_ENABLE;
  *eax = x;
 } else {
  x = *eax;
  cfgenable = (x & CONF1_ENABLE) == CONF1_ENABLE;
  cfgoff = x & PCI_REGMAX;
  cfgfunc = (x >> 8) & PCI_FUNCMAX;
  cfgslot = (x >> 11) & PCI_SLOTMAX;
  cfgbus = (x >> 16) & PCI_BUSMAX;
 }

 return (0);
}
