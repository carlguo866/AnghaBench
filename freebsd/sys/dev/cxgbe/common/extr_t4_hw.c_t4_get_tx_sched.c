
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;


 unsigned int A_TP_TX_MOD_Q1_Q0_RATE_LIMIT ;
 unsigned int A_TP_TX_MOD_Q1_Q0_TIMER_SEPARATOR ;
 int core_ticks_per_usec (struct adapter*) ;
 int t4_tp_tm_pio_read (struct adapter*,unsigned int*,int,unsigned int,int) ;

void t4_get_tx_sched(struct adapter *adap, unsigned int sched, unsigned int *kbps,
       unsigned int *ipg, bool sleep_ok)
{
 unsigned int v, addr, bpt, cpt;

 if (kbps) {
  addr = A_TP_TX_MOD_Q1_Q0_RATE_LIMIT - sched / 2;
  t4_tp_tm_pio_read(adap, &v, 1, addr, sleep_ok);
  if (sched & 1)
   v >>= 16;
  bpt = (v >> 8) & 0xff;
  cpt = v & 0xff;
  if (!cpt)
   *kbps = 0;
  else {
   v = (adap->params.vpd.cclk * 1000) / cpt;
   *kbps = (v * bpt) / 125;
  }
 }
 if (ipg) {
  addr = A_TP_TX_MOD_Q1_Q0_TIMER_SEPARATOR - sched / 2;
  t4_tp_tm_pio_read(adap, &v, 1, addr, sleep_ok);
  if (sched & 1)
   v >>= 16;
  v &= 0xffff;
  *ipg = (10000 * v) / core_ticks_per_usec(adap);
 }
}
