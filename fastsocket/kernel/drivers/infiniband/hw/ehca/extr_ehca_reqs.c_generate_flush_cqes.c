
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ipz_queue {int qe_size; } ;
struct TYPE_2__ {int imm_data; } ;
struct ib_wc {int * qp; int status; int wc_flags; TYPE_1__ ex; int opcode; int wr_id; } ;
struct ib_cq {int device; } ;
struct ehca_wqe {int optype; int wr_flag; int immediate_data; int work_request_id; } ;
struct ehca_queue_map {size_t next_wqe_idx; struct ehca_qmap_entry* map; int entries; } ;
struct ehca_qp {int ib_qp; int real_qp_num; struct ehca_queue_map rq_map; struct ehca_queue_map sq_map; } ;
struct ehca_qmap_entry {int reported; int app_wr_id; } ;


 int IB_WC_RDMA_READ ;
 int IB_WC_RDMA_WRITE ;
 int IB_WC_RECV ;
 int IB_WC_SEND ;
 int IB_WC_WITH_IMM ;
 int IB_WC_WR_FLUSH_ERR ;



 int WQE_WRFLAG_IMM_DATA_PRESENT ;
 int ehca_err (int ,char*,int,...) ;
 scalar_t__ ipz_qeit_calc (struct ipz_queue*,int) ;
 int memset (struct ib_wc*,int ,int) ;
 int next_index (int,int ) ;
 int replace_wr_id (int ,int ) ;

__attribute__((used)) static int generate_flush_cqes(struct ehca_qp *my_qp, struct ib_cq *cq,
          struct ib_wc *wc, int num_entries,
          struct ipz_queue *ipz_queue, int on_sq)
{
 int nr = 0;
 struct ehca_wqe *wqe;
 u64 offset;
 struct ehca_queue_map *qmap;
 struct ehca_qmap_entry *qmap_entry;

 if (on_sq)
  qmap = &my_qp->sq_map;
 else
  qmap = &my_qp->rq_map;

 qmap_entry = &qmap->map[qmap->next_wqe_idx];

 while ((nr < num_entries) && (qmap_entry->reported == 0)) {


  memset(wc, 0, sizeof(*wc));

  offset = qmap->next_wqe_idx * ipz_queue->qe_size;
  wqe = (struct ehca_wqe *)ipz_qeit_calc(ipz_queue, offset);
  if (!wqe) {
   ehca_err(cq->device, "Invalid wqe offset=%#llx on "
     "qp_num=%#x", offset, my_qp->real_qp_num);
   return nr;
  }

  wc->wr_id = replace_wr_id(wqe->work_request_id,
       qmap_entry->app_wr_id);

  if (on_sq) {
   switch (wqe->optype) {
   case 128:
    wc->opcode = IB_WC_SEND;
    break;
   case 129:
    wc->opcode = IB_WC_RDMA_WRITE;
    break;
   case 130:
    wc->opcode = IB_WC_RDMA_READ;
    break;
   default:
    ehca_err(cq->device, "Invalid optype=%x",
      wqe->optype);
    return nr;
   }
  } else
   wc->opcode = IB_WC_RECV;

  if (wqe->wr_flag & WQE_WRFLAG_IMM_DATA_PRESENT) {
   wc->ex.imm_data = wqe->immediate_data;
   wc->wc_flags |= IB_WC_WITH_IMM;
  }

  wc->status = IB_WC_WR_FLUSH_ERR;

  wc->qp = &my_qp->ib_qp;


  qmap_entry->reported = 1;
  qmap->next_wqe_idx = next_index(qmap->next_wqe_idx,
      qmap->entries);
  qmap_entry = &qmap->map[qmap->next_wqe_idx];

  wc++; nr++;
 }

 return nr;

}
