
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int sg_count; int flags; scalar_t__ addr; int callback; } ;
struct qib_verbs_txreq {scalar_t__ dwords; size_t hdr_inx; int hdr_dwords; TYPE_3__ txreq; struct qib_pio_header* align_buf; int * mr; int wqe; struct qib_qp* qp; struct qib_sge_state* ss; } ;
struct qib_sge_state {int dummy; } ;
struct TYPE_4__ {int device; } ;
struct qib_qp {int * s_rdma_mr; int s_wqe; int refcount; int s_srate; struct qib_verbs_txreq* s_tx; int port_num; TYPE_1__ ibqp; } ;
struct qib_pportdata {scalar_t__ sdma_descq_cnt; } ;
struct qib_pio_header {int hdr; void** pbc; } ;
struct qib_ibport {int n_unaligned; } ;
struct qib_ibdev {scalar_t__ pio_hdrs_phys; struct qib_pio_header* pio_hdrs; } ;
struct qib_ib_header {int * lrh; } ;
struct qib_devdata {scalar_t__ (* f_setpbc_control ) (struct qib_pportdata*,scalar_t__,int ,int) ;int flags; scalar_t__ piosize2kmax_dwords; TYPE_2__* pcidev; } ;
struct TYPE_5__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct qib_verbs_txreq*) ;
 int PTR_ERR (struct qib_verbs_txreq*) ;
 int QIB_HAS_SDMA_TIMEOUT ;
 int QIB_SDMA_TXREQ_F_FREEBUF ;
 int QIB_SDMA_TXREQ_F_FREEDESC ;
 int QIB_SDMA_TXREQ_F_HEADTOHOST ;
 int QIB_SDMA_TXREQ_F_INTREQ ;
 int QIB_SDMA_TXREQ_F_USELARGEBUF ;
 int atomic_inc (int *) ;
 int be16_to_cpu (int ) ;
 void* cpu_to_le32 (scalar_t__) ;
 struct qib_devdata* dd_from_dev (struct qib_ibdev*) ;
 scalar_t__ dma_map_single (int *,struct qib_pio_header*,int,int ) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 struct qib_verbs_txreq* get_txreq (struct qib_ibdev*,struct qib_qp*) ;
 int kfree (struct qib_pio_header*) ;
 struct qib_pio_header* kmalloc (int,int ) ;
 int memcpy (int *,struct qib_ib_header*,scalar_t__) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int qib_copy_from_sge (scalar_t__*,struct qib_sge_state*,scalar_t__) ;
 scalar_t__ qib_count_sge (struct qib_sge_state*,scalar_t__) ;
 int qib_put_txreq (struct qib_verbs_txreq*) ;
 int qib_sdma_verbs_send (struct qib_pportdata*,struct qib_sge_state*,scalar_t__,struct qib_verbs_txreq*) ;
 int sdma_complete ;
 scalar_t__ stub1 (struct qib_pportdata*,scalar_t__,int ,int) ;
 struct qib_ibdev* to_idev (int ) ;
 struct qib_ibport* to_iport (int ,int ) ;
 int wait_kmem (struct qib_ibdev*,struct qib_qp*) ;

__attribute__((used)) static int qib_verbs_send_dma(struct qib_qp *qp, struct qib_ib_header *hdr,
         u32 hdrwords, struct qib_sge_state *ss, u32 len,
         u32 plen, u32 dwords)
{
 struct qib_ibdev *dev = to_idev(qp->ibqp.device);
 struct qib_devdata *dd = dd_from_dev(dev);
 struct qib_ibport *ibp = to_iport(qp->ibqp.device, qp->port_num);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 struct qib_verbs_txreq *tx;
 struct qib_pio_header *phdr;
 u32 control;
 u32 ndesc;
 int ret;

 tx = qp->s_tx;
 if (tx) {
  qp->s_tx = ((void*)0);

  ret = qib_sdma_verbs_send(ppd, tx->ss, tx->dwords, tx);
  goto bail;
 }

 tx = get_txreq(dev, qp);
 if (IS_ERR(tx))
  goto bail_tx;

 control = dd->f_setpbc_control(ppd, plen, qp->s_srate,
           be16_to_cpu(hdr->lrh[0]) >> 12);
 tx->qp = qp;
 atomic_inc(&qp->refcount);
 tx->wqe = qp->s_wqe;
 tx->mr = qp->s_rdma_mr;
 if (qp->s_rdma_mr)
  qp->s_rdma_mr = ((void*)0);
 tx->txreq.callback = sdma_complete;
 if (dd->flags & QIB_HAS_SDMA_TIMEOUT)
  tx->txreq.flags = QIB_SDMA_TXREQ_F_HEADTOHOST;
 else
  tx->txreq.flags = QIB_SDMA_TXREQ_F_INTREQ;
 if (plen + 1 > dd->piosize2kmax_dwords)
  tx->txreq.flags |= QIB_SDMA_TXREQ_F_USELARGEBUF;

 if (len) {




  ndesc = qib_count_sge(ss, len);
  if (ndesc >= ppd->sdma_descq_cnt)
   ndesc = 0;
 } else
  ndesc = 1;
 if (ndesc) {
  phdr = &dev->pio_hdrs[tx->hdr_inx];
  phdr->pbc[0] = cpu_to_le32(plen);
  phdr->pbc[1] = cpu_to_le32(control);
  memcpy(&phdr->hdr, hdr, hdrwords << 2);
  tx->txreq.flags |= QIB_SDMA_TXREQ_F_FREEDESC;
  tx->txreq.sg_count = ndesc;
  tx->txreq.addr = dev->pio_hdrs_phys +
   tx->hdr_inx * sizeof(struct qib_pio_header);
  tx->hdr_dwords = hdrwords + 2;
  ret = qib_sdma_verbs_send(ppd, ss, dwords, tx);
  goto bail;
 }


 tx->hdr_dwords = plen + 1;
 phdr = kmalloc(tx->hdr_dwords << 2, GFP_ATOMIC);
 if (!phdr)
  goto err_tx;
 phdr->pbc[0] = cpu_to_le32(plen);
 phdr->pbc[1] = cpu_to_le32(control);
 memcpy(&phdr->hdr, hdr, hdrwords << 2);
 qib_copy_from_sge((u32 *) &phdr->hdr + hdrwords, ss, len);

 tx->txreq.addr = dma_map_single(&dd->pcidev->dev, phdr,
     tx->hdr_dwords << 2, DMA_TO_DEVICE);
 if (dma_mapping_error(&dd->pcidev->dev, tx->txreq.addr))
  goto map_err;
 tx->align_buf = phdr;
 tx->txreq.flags |= QIB_SDMA_TXREQ_F_FREEBUF;
 tx->txreq.sg_count = 1;
 ret = qib_sdma_verbs_send(ppd, ((void*)0), 0, tx);
 goto unaligned;

map_err:
 kfree(phdr);
err_tx:
 qib_put_txreq(tx);
 ret = wait_kmem(dev, qp);
unaligned:
 ibp->n_unaligned++;
bail:
 return ret;
bail_tx:
 ret = PTR_ERR(tx);
 goto bail;
}
