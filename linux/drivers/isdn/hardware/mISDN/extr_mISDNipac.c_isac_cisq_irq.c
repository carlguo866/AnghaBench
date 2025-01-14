
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isac_hw {int state; int name; } ;


 int ISAC_CIR0 ;
 int ISAC_CIR1 ;
 int ReadISAC (struct isac_hw*,int ) ;
 int isac_ph_state_change (struct isac_hw*) ;
 int pr_debug (char*,int ,int,...) ;

__attribute__((used)) static void
isac_cisq_irq(struct isac_hw *isac) {
 u8 val;

 val = ReadISAC(isac, ISAC_CIR0);
 pr_debug("%s: ISAC CIR0 %02X\n", isac->name, val);
 if (val & 2) {
  pr_debug("%s: ph_state change %x->%x\n", isac->name,
    isac->state, (val >> 2) & 0xf);
  isac->state = (val >> 2) & 0xf;
  isac_ph_state_change(isac);
 }
 if (val & 1) {
  val = ReadISAC(isac, ISAC_CIR1);
  pr_debug("%s: ISAC CIR1 %02X\n", isac->name, val);
 }
}
