
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct ntb_transport_qp {unsigned int mw_count; int qp_count; int link_is_up; int link_work; int link_width; int link_speed; scalar_t__ client_ready; struct ntb_transport_qp* qp_vec; int dev; struct ntb_transport_mw* mw_vec; scalar_t__ compact; } ;
struct ntb_transport_mw {int tx_size; int rx_size; int buff_size; int dma_addr; int xlat_align_size; } ;
struct ntb_transport_ctx {unsigned int mw_count; int qp_count; int link_is_up; int link_work; int link_width; int link_speed; scalar_t__ client_ready; struct ntb_transport_ctx* qp_vec; int dev; struct ntb_transport_mw* mw_vec; scalar_t__ compact; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 scalar_t__ NTBTC_MW0_SZ ;
 scalar_t__ NTBTC_PARAMS ;
 scalar_t__ NTBTC_QP_LINKS ;
 scalar_t__ NTBT_MW0_SZ_HIGH ;
 scalar_t__ NTBT_MW0_SZ_LOW ;
 scalar_t__ NTBT_NUM_MWS ;
 scalar_t__ NTBT_NUM_QPS ;
 scalar_t__ NTBT_QP_LINKS ;
 scalar_t__ NTBT_VERSION ;
 int NTB_LINK_DOWN_TIMEOUT ;
 int NTB_TRANSPORT_VERSION ;
 int UINT32_MAX ;
 int callout_reset (int *,int,void (*) (void*),struct ntb_transport_qp*) ;
 int hz ;
 int ntb_free_mw (struct ntb_transport_qp*,unsigned int) ;
 scalar_t__ ntb_link_is_up (int ,int *,int *) ;
 int ntb_mw_set_trans (int ,unsigned int,int ,int) ;
 int ntb_peer_spad_write (int ,scalar_t__,int) ;
 int ntb_printf (int,char*,...) ;
 void ntb_qp_link_work (void*) ;
 int ntb_set_mw (struct ntb_transport_qp*,unsigned int,int) ;
 int ntb_spad_read (int ,scalar_t__,int*) ;
 int ntb_transport_setup_qp_mw (struct ntb_transport_qp*,unsigned int) ;
 int roundup (int,int ) ;

__attribute__((used)) static void
ntb_transport_link_work(void *arg)
{
 struct ntb_transport_ctx *nt = arg;
 struct ntb_transport_mw *mw;
 device_t dev = nt->dev;
 struct ntb_transport_qp *qp;
 uint64_t val64, size;
 uint32_t val;
 unsigned i;
 int rc;


 if (nt->compact) {
  for (i = 0; i < nt->mw_count; i++) {
   size = nt->mw_vec[i].tx_size;
   KASSERT(size <= UINT32_MAX, ("size too big (%jx)", size));
   ntb_peer_spad_write(dev, NTBTC_MW0_SZ + i, size);
  }
  ntb_peer_spad_write(dev, NTBTC_QP_LINKS, 0);
  ntb_peer_spad_write(dev, NTBTC_PARAMS,
      (nt->qp_count << 24) | (nt->mw_count << 16) |
      NTB_TRANSPORT_VERSION);
 } else {
  for (i = 0; i < nt->mw_count; i++) {
   size = nt->mw_vec[i].tx_size;
   ntb_peer_spad_write(dev, NTBT_MW0_SZ_HIGH + (i * 2),
       size >> 32);
   ntb_peer_spad_write(dev, NTBT_MW0_SZ_LOW + (i * 2), size);
  }
  ntb_peer_spad_write(dev, NTBT_NUM_MWS, nt->mw_count);
  ntb_peer_spad_write(dev, NTBT_NUM_QPS, nt->qp_count);
  ntb_peer_spad_write(dev, NTBT_QP_LINKS, 0);
  ntb_peer_spad_write(dev, NTBT_VERSION, NTB_TRANSPORT_VERSION);
 }


 val = 0;
 if (nt->compact) {
  ntb_spad_read(dev, NTBTC_PARAMS, &val);
  if (val != ((nt->qp_count << 24) | (nt->mw_count << 16) |
      NTB_TRANSPORT_VERSION))
   goto out;
 } else {
  ntb_spad_read(dev, NTBT_VERSION, &val);
  if (val != NTB_TRANSPORT_VERSION)
   goto out;

  ntb_spad_read(dev, NTBT_NUM_QPS, &val);
  if (val != nt->qp_count)
   goto out;

  ntb_spad_read(dev, NTBT_NUM_MWS, &val);
  if (val != nt->mw_count)
   goto out;
 }

 for (i = 0; i < nt->mw_count; i++) {
  if (nt->compact) {
   ntb_spad_read(dev, NTBTC_MW0_SZ + i, &val);
   val64 = val;
  } else {
   ntb_spad_read(dev, NTBT_MW0_SZ_HIGH + (i * 2), &val);
   val64 = (uint64_t)val << 32;

   ntb_spad_read(dev, NTBT_MW0_SZ_LOW + (i * 2), &val);
   val64 |= val;
  }

  mw = &nt->mw_vec[i];
  mw->rx_size = val64;
  val64 = roundup(val64, mw->xlat_align_size);
  if (mw->buff_size != val64) {

   rc = ntb_set_mw(nt, i, val64);
   if (rc != 0) {
    ntb_printf(0, "link up set mw%d fails, rc %d\n",
        i, rc);
    goto free_mws;
   }


   rc = ntb_mw_set_trans(nt->dev, i, mw->dma_addr,
       mw->buff_size);
   if (rc != 0) {
    ntb_printf(0, "link up mw%d xlat fails, rc %d\n",
         i, rc);
    goto free_mws;
   }
  }
 }

 nt->link_is_up = 1;
 ntb_printf(1, "transport link up\n");

 for (i = 0; i < nt->qp_count; i++) {
  qp = &nt->qp_vec[i];

  ntb_transport_setup_qp_mw(nt, i);

  if (qp->client_ready)
   callout_reset(&qp->link_work, 0, ntb_qp_link_work, qp);
 }

 return;

free_mws:
 for (i = 0; i < nt->mw_count; i++)
  ntb_free_mw(nt, i);
out:
 if (ntb_link_is_up(dev, &nt->link_speed, &nt->link_width))
  callout_reset(&nt->link_work,
      NTB_LINK_DOWN_TIMEOUT * hz / 1000, ntb_transport_link_work, nt);
}
