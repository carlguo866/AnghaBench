
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct tcq_if {struct ifclassq* tif_ifq; } ;
struct ifclassq {TYPE_1__* ifcq_disc_slots; } ;
struct TYPE_5__ {scalar_t__ sc; size_t packets; size_t bytes; int flow; } ;
typedef TYPE_2__ cqrq_purge_sc_t ;
struct TYPE_4__ {int cl; } ;


 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 size_t IFCQ_SC_MAX ;
 size_t MBUF_SCIDX (scalar_t__) ;
 scalar_t__ MBUF_SC_UNSPEC ;
 scalar_t__ MBUF_VALID_SC (scalar_t__) ;
 int VERIFY (int) ;
 int tcq_purgeq (struct tcq_if*,int ,int ,size_t*,size_t*) ;

__attribute__((used)) static void
tcq_purge_sc(struct tcq_if *tif, cqrq_purge_sc_t *pr)
{
 struct ifclassq *ifq = tif->tif_ifq;
 u_int32_t i;

 IFCQ_LOCK_ASSERT_HELD(ifq);

 VERIFY(pr->sc == MBUF_SC_UNSPEC || MBUF_VALID_SC(pr->sc));
 VERIFY(pr->flow != 0);

 if (pr->sc != MBUF_SC_UNSPEC) {
  i = MBUF_SCIDX(pr->sc);
  VERIFY(i < IFCQ_SC_MAX);

  tcq_purgeq(tif, ifq->ifcq_disc_slots[i].cl,
      pr->flow, &pr->packets, &pr->bytes);
 } else {
  u_int32_t cnt, len;

  pr->packets = 0;
  pr->bytes = 0;

  for (i = 0; i < IFCQ_SC_MAX; i++) {
   tcq_purgeq(tif, ifq->ifcq_disc_slots[i].cl,
       pr->flow, &cnt, &len);
   pr->packets += cnt;
   pr->bytes += len;
  }
 }
}
