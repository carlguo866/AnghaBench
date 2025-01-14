
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {unsigned long config_space_reg_bits; unsigned long config_space; } ;


 scalar_t__ config_out_of_range (struct pci_pbm_info*,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static void *sun4u_config_mkaddr(struct pci_pbm_info *pbm,
     unsigned long bus,
     unsigned long devfn,
     unsigned long reg)
{
 unsigned long rbits = pbm->config_space_reg_bits;

 if (config_out_of_range(pbm, bus, devfn, reg))
  return ((void*)0);

 reg = (reg & ((1 << rbits) - 1));
 devfn <<= rbits;
 bus <<= rbits + 8;

 return (void *) (pbm->config_space | bus | devfn | reg);
}
