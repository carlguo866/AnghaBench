
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ohci_hcd {int dummy; } ;


 int OHCI_INTR_FNO ;
 int OHCI_INTR_MIE ;
 int OHCI_INTR_OC ;
 int OHCI_INTR_RD ;
 int OHCI_INTR_RHSC ;
 int OHCI_INTR_SF ;
 int OHCI_INTR_SO ;
 int OHCI_INTR_UE ;
 int OHCI_INTR_WDH ;
 int ohci_dbg_sw (struct ohci_hcd*,char**,unsigned int*,char*,char*,int,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static void ohci_dump_intr_mask (
 struct ohci_hcd *ohci,
 char *label,
 u32 mask,
 char **next,
 unsigned *size)
{
 ohci_dbg_sw (ohci, next, size, "%s 0x%08x%s%s%s%s%s%s%s%s%s\n",
  label,
  mask,
  (mask & OHCI_INTR_MIE) ? " MIE" : "",
  (mask & OHCI_INTR_OC) ? " OC" : "",
  (mask & OHCI_INTR_RHSC) ? " RHSC" : "",
  (mask & OHCI_INTR_FNO) ? " FNO" : "",
  (mask & OHCI_INTR_UE) ? " UE" : "",
  (mask & OHCI_INTR_RD) ? " RD" : "",
  (mask & OHCI_INTR_SF) ? " SF" : "",
  (mask & OHCI_INTR_WDH) ? " WDH" : "",
  (mask & OHCI_INTR_SO) ? " SO" : ""
  );
}
