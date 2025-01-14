
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct sbni_softc {int state; struct mbuf* tx_buf_p; TYPE_1__* ifp; int maxframe; int framelen; int tx_frameno; scalar_t__ pktlen; scalar_t__ outpos; } ;
struct mbuf {scalar_t__ m_len; struct mbuf* m_next; } ;
struct TYPE_2__ {int if_drv_flags; int if_snd; } ;


 int BPF_MTAP (TYPE_1__*,struct mbuf*) ;
 int CSR0 ;
 int FL_NEED_RESEND ;
 int FL_WAIT_ACK ;
 int IFF_DRV_OACTIVE ;
 int IF_DEQUEUE (int *,struct mbuf*) ;
 scalar_t__ SBNI_MIN_LEN ;
 int TR_REQ ;
 int howmany (scalar_t__,int ) ;
 int m_freem (struct mbuf*) ;
 int min (scalar_t__,int ) ;
 int printf (char*) ;
 int sbni_inb (struct sbni_softc*,int ) ;
 int sbni_outb (struct sbni_softc*,int ,int) ;

__attribute__((used)) static void
prepare_to_send(struct sbni_softc *sc)
{
 struct mbuf *m;
 u_int len;


 if (sc->tx_buf_p)
  printf("sbni: memory leak!\n");

 sc->outpos = 0;
 sc->state &= ~(FL_WAIT_ACK | FL_NEED_RESEND);

 for (;;) {
  IF_DEQUEUE(&sc->ifp->if_snd, sc->tx_buf_p);
  if (!sc->tx_buf_p) {

   sc->pktlen = 0;
   sc->tx_frameno = 0;
   sc->framelen = 0;
   sc->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
   return;
  }

  for (len = 0, m = sc->tx_buf_p; m; m = m->m_next)
   len += m->m_len;

  if (len != 0)
   break;
  m_freem(sc->tx_buf_p);
 }

 if (len < SBNI_MIN_LEN)
  len = SBNI_MIN_LEN;

 sc->pktlen = len;
 sc->tx_frameno = howmany(len, sc->maxframe);
 sc->framelen = min(len, sc->maxframe);

 sbni_outb(sc, CSR0, sbni_inb(sc, CSR0) | TR_REQ);
 sc->ifp->if_drv_flags |= IFF_DRV_OACTIVE;
 BPF_MTAP(sc->ifp, sc->tx_buf_p);
}
