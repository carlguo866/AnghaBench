
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ r5; scalar_t__ r2; void* to_sink_lo; void* to_sink_hi; void* plen; void* stag_sink; void* to_src_lo; void* to_src_hi; void* stag_src; } ;
union t4_wr {TYPE_4__ read; } ;
typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int rkey; int remote_addr; } ;
struct TYPE_6__ {TYPE_1__ rdma; } ;
struct ibv_send_wr {int num_sge; TYPE_3__* sg_list; TYPE_2__ wr; } ;
struct TYPE_7__ {int lkey; int length; int addr; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 void* htobe32 (int) ;

__attribute__((used)) static int build_rdma_read(union t4_wr *wqe, struct ibv_send_wr *wr, u8 *len16)
{
 if (wr->num_sge > 1)
  return -EINVAL;
 if (wr->num_sge) {
  wqe->read.stag_src = htobe32(wr->wr.rdma.rkey);
  wqe->read.to_src_hi = htobe32((u32)(wr->wr.rdma.remote_addr >>32));
  wqe->read.to_src_lo = htobe32((u32)wr->wr.rdma.remote_addr);
  wqe->read.stag_sink = htobe32(wr->sg_list[0].lkey);
  wqe->read.plen = htobe32(wr->sg_list[0].length);
  wqe->read.to_sink_hi = htobe32((u32)(wr->sg_list[0].addr >> 32));
  wqe->read.to_sink_lo = htobe32((u32)(wr->sg_list[0].addr));
 } else {
  wqe->read.stag_src = htobe32(2);
  wqe->read.to_src_hi = 0;
  wqe->read.to_src_lo = 0;
  wqe->read.stag_sink = htobe32(2);
  wqe->read.plen = 0;
  wqe->read.to_sink_hi = 0;
  wqe->read.to_sink_lo = 0;
 }
 wqe->read.r2 = 0;
 wqe->read.r5 = 0;
 *len16 = DIV_ROUND_UP(sizeof wqe->read, 16);
 return 0;
}
