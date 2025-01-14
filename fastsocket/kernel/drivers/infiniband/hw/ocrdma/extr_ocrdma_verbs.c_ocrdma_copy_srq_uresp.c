
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uresp ;
struct TYPE_5__ {int max_cnt; int len; int pa; int dbid; } ;
struct ocrdma_srq {TYPE_4__* pd; TYPE_3__* dev; TYPE_1__ rq; } ;
struct ocrdma_create_srq_uresp {int num_rq_pages; int db_page_size; int db_shift; int rq_page_size; int * rq_page_addr; int db_rq_offset; int num_rqe_allocated; scalar_t__ db_page_addr; int rq_dbid; } ;
struct ib_udata {int dummy; } ;
struct TYPE_8__ {int id; int uctx; } ;
struct TYPE_6__ {int db_page_size; scalar_t__ dev_family; scalar_t__ unmapped_db; } ;
struct TYPE_7__ {TYPE_2__ nic_info; } ;


 int OCRDMA_DB_GEN2_RQ1_OFFSET ;
 int OCRDMA_DB_RQ_OFFSET ;
 scalar_t__ OCRDMA_GEN2_FAMILY ;
 int ib_copy_to_udata (struct ib_udata*,struct ocrdma_create_srq_uresp*,int) ;
 int memset (struct ocrdma_create_srq_uresp*,int ,int) ;
 int ocrdma_add_mmap (int ,int ,int ) ;

__attribute__((used)) static int ocrdma_copy_srq_uresp(struct ocrdma_srq *srq, struct ib_udata *udata)
{
 int status;
 struct ocrdma_create_srq_uresp uresp;

 memset(&uresp, 0, sizeof(uresp));
 uresp.rq_dbid = srq->rq.dbid;
 uresp.num_rq_pages = 1;
 uresp.rq_page_addr[0] = srq->rq.pa;
 uresp.rq_page_size = srq->rq.len;
 uresp.db_page_addr = srq->dev->nic_info.unmapped_db +
     (srq->pd->id * srq->dev->nic_info.db_page_size);
 uresp.db_page_size = srq->dev->nic_info.db_page_size;
 uresp.num_rqe_allocated = srq->rq.max_cnt;
 if (srq->dev->nic_info.dev_family == OCRDMA_GEN2_FAMILY) {
  uresp.db_rq_offset = OCRDMA_DB_GEN2_RQ1_OFFSET;
  uresp.db_shift = 24;
 } else {
  uresp.db_rq_offset = OCRDMA_DB_RQ_OFFSET;
  uresp.db_shift = 16;
 }

 status = ib_copy_to_udata(udata, &uresp, sizeof(uresp));
 if (status)
  return status;
 status = ocrdma_add_mmap(srq->pd->uctx, uresp.rq_page_addr[0],
     uresp.rq_page_size);
 if (status)
  return status;
 return status;
}
