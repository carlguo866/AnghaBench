
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dsdt_line (char*,...) ;
 int free (char*) ;
 char* lpc_pirq_name (int) ;

__attribute__((used)) static void
pci_pirq_prt_entry(int bus, int slot, int pin, int pirq_pin, int ioapic_irq,
    void *arg)
{
 char *name;

 name = lpc_pirq_name(pirq_pin);
 if (name == ((void*)0))
  return;
 dsdt_line("  Package ()");
 dsdt_line("  {");
 dsdt_line("    0x%X,", slot << 16 | 0xffff);
 dsdt_line("    0x%02X,", pin - 1);
 dsdt_line("    %s,", name);
 dsdt_line("    0x00");
 dsdt_line("  },");
 free(name);
}
