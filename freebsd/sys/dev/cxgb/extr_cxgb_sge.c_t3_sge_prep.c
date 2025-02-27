
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sge_params {int max_pkt_size; struct qset_params* qset; } ;
struct qset_params {int coalesce_usecs; int fl_size; int jumbo_size; int jumbo_buf_size; int* txq_size; scalar_t__ cong_thres; int rspq_size; scalar_t__ polling; } ;
struct cpl_rx_data {int dummy; } ;
struct TYPE_5__ {int nports; } ;
struct TYPE_6__ {TYPE_1__ params; int dev; } ;
typedef TYPE_2__ adapter_t ;


 int FL_Q_SIZE ;
 int JUMBO_Q_SIZE ;
 int MJUM16BYTES ;
 int MJUM9BYTES ;
 int MJUMPAGESIZE ;
 int RSPQ_Q_SIZE ;
 int SGE_QSETS ;
 size_t TXQ_CTRL ;
 size_t TXQ_ETH ;
 size_t TXQ_OFLD ;
 int TX_CTRL_Q_SIZE ;
 int TX_ETH_Q_SIZE ;
 int TX_OFLD_Q_SIZE ;
 int cxgb_use_16k_clusters ;
 int device_printf (int ,char*) ;
 int is_offload (TYPE_2__*) ;
 int min (int,int) ;
 int mp_ncpus ;
 int nmbclusters ;
 int nmbjumbo16 ;
 int nmbjumbo9 ;
 int nmbjumbop ;
 int powerof2 (int) ;

void
t3_sge_prep(adapter_t *adap, struct sge_params *p)
{
 int i, nqsets, fl_q_size, jumbo_q_size, use_16k, jumbo_buf_size;

 nqsets = min(SGE_QSETS / adap->params.nports, mp_ncpus);
 nqsets *= adap->params.nports;

 fl_q_size = min(nmbclusters/(3*nqsets), FL_Q_SIZE);

 while (!powerof2(fl_q_size))
  fl_q_size--;

 use_16k = cxgb_use_16k_clusters != -1 ? cxgb_use_16k_clusters :
     is_offload(adap);
 jumbo_q_size = min(nmbjumbop/(3*nqsets), JUMBO_Q_SIZE);
 jumbo_buf_size = MJUMPAGESIZE;

 while (!powerof2(jumbo_q_size))
  jumbo_q_size--;

 if (fl_q_size < (FL_Q_SIZE / 4) || jumbo_q_size < (JUMBO_Q_SIZE / 2))
  device_printf(adap->dev,
      "Insufficient clusters and/or jumbo buffers.\n");

 p->max_pkt_size = jumbo_buf_size - sizeof(struct cpl_rx_data);

 for (i = 0; i < SGE_QSETS; ++i) {
  struct qset_params *q = p->qset + i;

  if (adap->params.nports > 2) {
   q->coalesce_usecs = 50;
  } else {



   q->coalesce_usecs = 5;

  }
  q->polling = 0;
  q->rspq_size = RSPQ_Q_SIZE;
  q->fl_size = fl_q_size;
  q->jumbo_size = jumbo_q_size;
  q->jumbo_buf_size = jumbo_buf_size;
  q->txq_size[TXQ_ETH] = TX_ETH_Q_SIZE;
  q->txq_size[TXQ_OFLD] = is_offload(adap) ? TX_OFLD_Q_SIZE : 16;
  q->txq_size[TXQ_CTRL] = TX_CTRL_Q_SIZE;
  q->cong_thres = 0;
 }
}
