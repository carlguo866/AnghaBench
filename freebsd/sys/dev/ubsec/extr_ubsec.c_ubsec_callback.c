
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ubsec_softc {int sc_freeqlock; int sc_freequeue; int sc_dmat; } ;
struct ubsec_session {int ses_mlen; scalar_t__ ses_iv; } ;
struct ubsec_q {scalar_t__ q_src_m; scalar_t__ q_dst_m; int q_flags; int * q_src_map; int * q_dst_map; struct ubsec_dma* q_dma; scalar_t__ q_crp; } ;
struct TYPE_6__ {scalar_t__ dma_size; } ;
struct ubsec_dma {TYPE_1__* d_dma; TYPE_3__ d_alloc; } ;
struct cryptop {int crp_flags; scalar_t__ crp_buf; struct cryptodesc* crp_desc; int crp_session; } ;
struct cryptodesc {scalar_t__ crd_alg; int crd_inject; struct cryptodesc* crd_next; scalar_t__ crd_len; scalar_t__ crd_skip; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_5__ {int hst_obytes; int hst_opackets; } ;
struct TYPE_4__ {scalar_t__ d_macbuf; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 scalar_t__ CRYPTO_3DES_CBC ;
 scalar_t__ CRYPTO_DES_CBC ;
 int CRYPTO_F_IMBUF ;
 scalar_t__ CRYPTO_MD5_HMAC ;
 scalar_t__ CRYPTO_SHA1_HMAC ;
 int SIMPLEQ_INSERT_TAIL (int *,struct ubsec_q*,int ) ;
 int UBSEC_QFLAGS_COPYOUTIV ;
 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_sync (int ,int *,int) ;
 int bus_dmamap_unload (int ,int *) ;
 int crypto_copyback (int,scalar_t__,int ,int ,scalar_t__) ;
 int crypto_copydata (int,scalar_t__,scalar_t__,int,scalar_t__) ;
 int crypto_done (struct cryptop*) ;
 struct ubsec_session* crypto_get_driver_session (int ) ;
 int m_freem (scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int q_next ;
 int ubsec_dma_sync (TYPE_3__*,int) ;
 TYPE_2__ ubsecstats ;

__attribute__((used)) static void
ubsec_callback(struct ubsec_softc *sc, struct ubsec_q *q)
{
 struct cryptop *crp = (struct cryptop *)q->q_crp;
 struct ubsec_session *ses;
 struct cryptodesc *crd;
 struct ubsec_dma *dmap = q->q_dma;

 ses = crypto_get_driver_session(crp->crp_session);

 ubsecstats.hst_opackets++;
 ubsecstats.hst_obytes += dmap->d_alloc.dma_size;

 ubsec_dma_sync(&dmap->d_alloc,
     BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
 if (q->q_dst_map != ((void*)0) && q->q_dst_map != q->q_src_map) {
  bus_dmamap_sync(sc->sc_dmat, q->q_dst_map,
      BUS_DMASYNC_POSTREAD);
  bus_dmamap_unload(sc->sc_dmat, q->q_dst_map);
  bus_dmamap_destroy(sc->sc_dmat, q->q_dst_map);
 }
 bus_dmamap_sync(sc->sc_dmat, q->q_src_map, BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(sc->sc_dmat, q->q_src_map);
 bus_dmamap_destroy(sc->sc_dmat, q->q_src_map);

 if ((crp->crp_flags & CRYPTO_F_IMBUF) && (q->q_src_m != q->q_dst_m)) {
  m_freem(q->q_src_m);
  crp->crp_buf = (caddr_t)q->q_dst_m;
 }


 if (q->q_flags & UBSEC_QFLAGS_COPYOUTIV) {
  for (crd = crp->crp_desc; crd; crd = crd->crd_next) {
   if (crd->crd_alg != CRYPTO_DES_CBC &&
       crd->crd_alg != CRYPTO_3DES_CBC)
    continue;
   crypto_copydata(crp->crp_flags, crp->crp_buf,
       crd->crd_skip + crd->crd_len - 8, 8,
       (caddr_t)ses->ses_iv);
   break;
  }
 }

 for (crd = crp->crp_desc; crd; crd = crd->crd_next) {
  if (crd->crd_alg != CRYPTO_MD5_HMAC &&
      crd->crd_alg != CRYPTO_SHA1_HMAC)
   continue;
  crypto_copyback(crp->crp_flags, crp->crp_buf, crd->crd_inject,
      ses->ses_mlen, (caddr_t)dmap->d_dma->d_macbuf);
  break;
 }
 mtx_lock(&sc->sc_freeqlock);
 SIMPLEQ_INSERT_TAIL(&sc->sc_freequeue, q, q_next);
 mtx_unlock(&sc->sc_freeqlock);
 crypto_done(crp);
}
