
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ subcode; scalar_t__ opcode; } ;
union octeon_rh {TYPE_3__ r; } ;
typedef int u32 ;
typedef int u16 ;
struct octeon_recv_info {TYPE_1__* recv_pkt; struct __dispatch* rsvd; } ;
struct octeon_droq_info {scalar_t__ length; } ;
struct TYPE_8__ {int dropped_nodispatch; int dropped_nomem; } ;
struct octeon_droq {TYPE_4__ stats; int dispatch_list; int read_idx; int buffer_size; } ;
struct octeon_device {TYPE_2__* pci_dev; } ;
struct __dispatch {int list; scalar_t__ disp_fn; struct octeon_recv_info* rinfo; } ;
typedef scalar_t__ octeon_dispatch_fn_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {union octeon_rh rh; } ;


 int dev_err (int *,char*,unsigned int,unsigned int) ;
 int list_add_tail (int *,int *) ;
 struct octeon_recv_info* octeon_create_recv_info (struct octeon_device*,struct octeon_droq*,int,int ) ;
 int octeon_droq_get_bufcount (int ,int) ;
 scalar_t__ octeon_get_dispatch (struct octeon_device*,int ,int ) ;

__attribute__((used)) static int
octeon_droq_dispatch_pkt(struct octeon_device *oct,
    struct octeon_droq *droq,
    union octeon_rh *rh,
    struct octeon_droq_info *info)
{
 u32 cnt;
 octeon_dispatch_fn_t disp_fn;
 struct octeon_recv_info *rinfo;

 cnt = octeon_droq_get_bufcount(droq->buffer_size, (u32)info->length);

 disp_fn = octeon_get_dispatch(oct, (u16)rh->r.opcode,
          (u16)rh->r.subcode);
 if (disp_fn) {
  rinfo = octeon_create_recv_info(oct, droq, cnt, droq->read_idx);
  if (rinfo) {
   struct __dispatch *rdisp = rinfo->rsvd;

   rdisp->rinfo = rinfo;
   rdisp->disp_fn = disp_fn;
   rinfo->recv_pkt->rh = *rh;
   list_add_tail(&rdisp->list,
          &droq->dispatch_list);
  } else {
   droq->stats.dropped_nomem++;
  }
 } else {
  dev_err(&oct->pci_dev->dev, "DROQ: No dispatch function (opcode %u/%u)\n",
   (unsigned int)rh->r.opcode,
   (unsigned int)rh->r.subcode);
  droq->stats.dropped_nodispatch++;
 }

 return cnt;
}
