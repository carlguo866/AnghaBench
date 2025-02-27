
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ subcode; scalar_t__ opcode; } ;
union octeon_rh {TYPE_2__ r; } ;
typedef int uint32_t ;
typedef int uint16_t ;
struct octeon_device {int dummy; } ;
struct lio_recv_info {TYPE_1__* recv_pkt; struct __dispatch* rsvd; } ;
struct lio_droq_info {scalar_t__ length; } ;
struct TYPE_6__ {int dropped_nodispatch; int dropped_nomem; } ;
struct lio_droq {TYPE_3__ stats; int dispatch_stq_head; int read_idx; int buffer_size; } ;
struct __dispatch {int node; scalar_t__ disp_fn; struct lio_recv_info* rinfo; } ;
typedef scalar_t__ lio_dispatch_fn_t ;
struct TYPE_4__ {union octeon_rh rh; } ;


 int STAILQ_INSERT_TAIL (int *,int *,int ) ;
 int entries ;
 struct lio_recv_info* lio_create_recv_info (struct octeon_device*,struct lio_droq*,int,int ) ;
 int lio_dev_err (struct octeon_device*,char*,unsigned int,unsigned int) ;
 int lio_droq_get_bufcount (int ,int) ;
 scalar_t__ lio_get_dispatch (struct octeon_device*,int ,int ) ;

__attribute__((used)) static int
lio_droq_dispatch_pkt(struct octeon_device *oct, struct lio_droq *droq,
        union octeon_rh *rh, struct lio_droq_info *info)
{
 struct lio_recv_info *rinfo;
 lio_dispatch_fn_t disp_fn;
 uint32_t cnt;

 cnt = lio_droq_get_bufcount(droq->buffer_size, (uint32_t)info->length);

 disp_fn = lio_get_dispatch(oct, (uint16_t)rh->r.opcode,
       (uint16_t)rh->r.subcode);
 if (disp_fn) {
  rinfo = lio_create_recv_info(oct, droq, cnt, droq->read_idx);
  if (rinfo != ((void*)0)) {
   struct __dispatch *rdisp = rinfo->rsvd;

   rdisp->rinfo = rinfo;
   rdisp->disp_fn = disp_fn;
   rinfo->recv_pkt->rh = *rh;
   STAILQ_INSERT_TAIL(&droq->dispatch_stq_head,
        &rdisp->node, entries);
  } else {
   droq->stats.dropped_nomem++;
  }
 } else {
  lio_dev_err(oct, "DROQ: No dispatch function (opcode %u/%u)\n",
       (unsigned int)rh->r.opcode,
       (unsigned int)rh->r.subcode);
  droq->stats.dropped_nodispatch++;
 }

 return (cnt);
}
