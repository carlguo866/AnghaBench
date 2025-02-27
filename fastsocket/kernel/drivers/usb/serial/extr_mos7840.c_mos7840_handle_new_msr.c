
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_icount {int rng; int dcd; int dsr; int cts; } ;
struct moschip_port {struct async_icount icount; } ;
typedef int __u8 ;


 int MOS_MSR_DELTA_CD ;
 int MOS_MSR_DELTA_CTS ;
 int MOS_MSR_DELTA_DSR ;
 int MOS_MSR_DELTA_RI ;
 int smp_wmb () ;

__attribute__((used)) static void mos7840_handle_new_msr(struct moschip_port *port, __u8 new_msr)
{
 struct moschip_port *mos7840_port;
 struct async_icount *icount;
 mos7840_port = port;
 icount = &mos7840_port->icount;
 if (new_msr &
     (MOS_MSR_DELTA_CTS | MOS_MSR_DELTA_DSR | MOS_MSR_DELTA_RI |
      MOS_MSR_DELTA_CD)) {
  icount = &mos7840_port->icount;


  if (new_msr & MOS_MSR_DELTA_CTS) {
   icount->cts++;
   smp_wmb();
  }
  if (new_msr & MOS_MSR_DELTA_DSR) {
   icount->dsr++;
   smp_wmb();
  }
  if (new_msr & MOS_MSR_DELTA_CD) {
   icount->dcd++;
   smp_wmb();
  }
  if (new_msr & MOS_MSR_DELTA_RI) {
   icount->rng++;
   smp_wmb();
  }
 }
}
