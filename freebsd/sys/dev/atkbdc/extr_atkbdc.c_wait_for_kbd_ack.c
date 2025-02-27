
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbdc_softc {int retry; int aux; int kbd; } ;


 int DELAY (int ) ;
 int KBDC_DELAYTIME ;
 int KBDD_DELAYTIME ;
 int KBDS_ANY_BUFFER_FULL ;
 int KBDS_AUX_BUFFER_FULL ;
 int KBDS_BUFFER_FULL ;
 int KBDS_KBD_BUFFER_FULL ;
 int KBD_ACK ;
 int KBD_RESEND ;
 int KBD_RESET_FAIL ;
 int addq (int *,int) ;
 int read_data (struct atkbdc_softc*) ;
 int read_status (struct atkbdc_softc*) ;

__attribute__((used)) static int
wait_for_kbd_ack(struct atkbdc_softc *kbdc)
{
    int retry;
    int f;
    int b;


    retry = kbdc->retry * 2;

    while (retry-- > 0) {
        if ((f = read_status(kbdc)) & KBDS_ANY_BUFFER_FULL) {
     DELAY(KBDD_DELAYTIME);
            b = read_data(kbdc);
     if ((f & KBDS_BUFFER_FULL) == KBDS_KBD_BUFFER_FULL) {
  if ((b == KBD_ACK) || (b == KBD_RESEND)
      || (b == KBD_RESET_FAIL))
      return b;
  addq(&kbdc->kbd, b);
     } else if ((f & KBDS_BUFFER_FULL) == KBDS_AUX_BUFFER_FULL) {
  addq(&kbdc->aux, b);
     }
 }
        DELAY(KBDC_DELAYTIME);
    }
    return -1;
}
