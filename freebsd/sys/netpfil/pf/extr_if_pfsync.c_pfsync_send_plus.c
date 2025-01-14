
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfsync_softc {TYPE_1__* sc_ifp; struct pfsync_bucket* sc_buckets; } ;
struct pfsync_bucket {scalar_t__ b_len; size_t b_pluslen; int b_id; void* b_plus; } ;
struct TYPE_2__ {scalar_t__ if_mtu; } ;


 int PFSYNC_BUCKET_LOCK (struct pfsync_bucket*) ;
 int PFSYNC_BUCKET_UNLOCK (struct pfsync_bucket*) ;
 struct pfsync_softc* V_pfsyncif ;
 int pfsync_sendout (int,int ) ;

__attribute__((used)) static void
pfsync_send_plus(void *plus, size_t pluslen)
{
 struct pfsync_softc *sc = V_pfsyncif;
 struct pfsync_bucket *b = &sc->sc_buckets[0];

 PFSYNC_BUCKET_LOCK(b);

 if (b->b_len + pluslen > sc->sc_ifp->if_mtu)
  pfsync_sendout(1, b->b_id);

 b->b_plus = plus;
 b->b_len += (b->b_pluslen = pluslen);

 pfsync_sendout(1, b->b_id);
 PFSYNC_BUCKET_UNLOCK(b);
}
