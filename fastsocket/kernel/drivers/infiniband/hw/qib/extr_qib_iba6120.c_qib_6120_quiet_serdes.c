
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int control; TYPE_1__* cspec; } ;
struct TYPE_2__ {scalar_t__ iblnkerrdelta; scalar_t__ iblnkerrsnap; scalar_t__ ibdeltainprog; scalar_t__ ibsymdelta; scalar_t__ ibsymsnap; } ;


 int CounterWrEnable ;
 int HwDiagCtrl ;
 int QLOGIC_IB_C_FREEZEMODE ;
 int QLOGIC_IB_C_LINKENABLE ;
 int QLOGIC_IB_IBCC_LINKINITCMD_DISABLE ;
 int SYM_MASK (int ,int ) ;
 int SerdesCfg0 ;
 int TxIdeEnX ;
 int cr_iblinkerrrecov ;
 int cr_ibsymbolerr ;
 int kr_control ;
 int kr_hwdiagctrl ;
 int kr_serdes_cfg0 ;
 int qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_set_ib_6120_lstate (struct qib_pportdata*,int ,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;
 int read_6120_creg32 (struct qib_devdata*,int ) ;
 int write_6120_creg (struct qib_devdata*,int ,int) ;

__attribute__((used)) static void qib_6120_quiet_serdes(struct qib_pportdata *ppd)
{
 struct qib_devdata *dd = ppd->dd;
 u64 val;

 qib_set_ib_6120_lstate(ppd, 0, QLOGIC_IB_IBCC_LINKINITCMD_DISABLE);


 dd->control &= ~QLOGIC_IB_C_LINKENABLE;
 qib_write_kreg(dd, kr_control,
         dd->control | QLOGIC_IB_C_FREEZEMODE);

 if (dd->cspec->ibsymdelta || dd->cspec->iblnkerrdelta ||
     dd->cspec->ibdeltainprog) {
  u64 diagc;


  diagc = qib_read_kreg64(dd, kr_hwdiagctrl);
  qib_write_kreg(dd, kr_hwdiagctrl,
          diagc | SYM_MASK(HwDiagCtrl, CounterWrEnable));

  if (dd->cspec->ibsymdelta || dd->cspec->ibdeltainprog) {
   val = read_6120_creg32(dd, cr_ibsymbolerr);
   if (dd->cspec->ibdeltainprog)
    val -= val - dd->cspec->ibsymsnap;
   val -= dd->cspec->ibsymdelta;
   write_6120_creg(dd, cr_ibsymbolerr, val);
  }
  if (dd->cspec->iblnkerrdelta || dd->cspec->ibdeltainprog) {
   val = read_6120_creg32(dd, cr_iblinkerrrecov);
   if (dd->cspec->ibdeltainprog)
    val -= val - dd->cspec->iblnkerrsnap;
   val -= dd->cspec->iblnkerrdelta;
   write_6120_creg(dd, cr_iblinkerrrecov, val);
  }


  qib_write_kreg(dd, kr_hwdiagctrl, diagc);
 }

 val = qib_read_kreg64(dd, kr_serdes_cfg0);
 val |= SYM_MASK(SerdesCfg0, TxIdeEnX);
 qib_write_kreg(dd, kr_serdes_cfg0, val);
}
