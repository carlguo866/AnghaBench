
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tg3_napi {scalar_t__ last_rx_cons; scalar_t__ rx_rcb_ptr; scalar_t__ last_tx_cons; scalar_t__ tx_cons; int chk_msi_cnt; } ;
struct tg3 {size_t irq_cnt; struct tg3_napi* napi; } ;


 scalar_t__ tg3_has_work (struct tg3_napi*) ;
 int tg3_msi (int ,struct tg3_napi*) ;

__attribute__((used)) static void tg3_chk_missed_msi(struct tg3 *tp)
{
 u32 i;

 for (i = 0; i < tp->irq_cnt; i++) {
  struct tg3_napi *tnapi = &tp->napi[i];

  if (tg3_has_work(tnapi)) {
   if (tnapi->last_rx_cons == tnapi->rx_rcb_ptr &&
       tnapi->last_tx_cons == tnapi->tx_cons) {
    if (tnapi->chk_msi_cnt < 1) {
     tnapi->chk_msi_cnt++;
     return;
    }
    tg3_msi(0, tnapi);
   }
  }
  tnapi->chk_msi_cnt = 0;
  tnapi->last_rx_cons = tnapi->rx_rcb_ptr;
  tnapi->last_tx_cons = tnapi->tx_cons;
 }
}
