
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ioatdma_chan {int dummy; } ;
struct TYPE_3__ {int flags; scalar_t__ phys; } ;
struct ioat_ring_ent {TYPE_1__ txd; struct ioat_pq_ext_descriptor* pq_ex; struct ioat_pq_descriptor* pq; } ;
typedef void ioat_raw_descriptor ;
struct ioat_pq_ext_descriptor {scalar_t__ next; } ;
struct TYPE_4__ {int src_cnt; scalar_t__ q_disable; scalar_t__ p_disable; int compl_write; int int_en; int op; } ;
struct ioat_pq_descriptor {scalar_t__ next; scalar_t__ q_addr; scalar_t__ p_addr; int * coef; TYPE_2__ ctl_f; int ctl; int size; } ;
struct device {int dummy; } ;


 int desc_id (struct ioat_ring_ent*) ;
 int dev_dbg (struct device*,char*,int,...) ;
 scalar_t__ pq_get_src (void**,int) ;
 int src_cnt_to_sw (int ) ;
 struct device* to_dev (struct ioatdma_chan*) ;

__attribute__((used)) static void
dump_pq_desc_dbg(struct ioatdma_chan *ioat_chan, struct ioat_ring_ent *desc,
   struct ioat_ring_ent *ext)
{
 struct device *dev = to_dev(ioat_chan);
 struct ioat_pq_descriptor *pq = desc->pq;
 struct ioat_pq_ext_descriptor *pq_ex = ext ? ext->pq_ex : ((void*)0);
 struct ioat_raw_descriptor *descs[] = { (void *) pq, (void *) pq_ex };
 int src_cnt = src_cnt_to_sw(pq->ctl_f.src_cnt);
 int i;

 dev_dbg(dev, "desc[%d]: (%#llx->%#llx) flags: %#x"
  " sz: %#10.8x ctl: %#x (op: %#x int: %d compl: %d pq: '%s%s'"
  " src_cnt: %d)\n",
  desc_id(desc), (unsigned long long) desc->txd.phys,
  (unsigned long long) (pq_ex ? pq_ex->next : pq->next),
  desc->txd.flags, pq->size, pq->ctl, pq->ctl_f.op,
  pq->ctl_f.int_en, pq->ctl_f.compl_write,
  pq->ctl_f.p_disable ? "" : "p", pq->ctl_f.q_disable ? "" : "q",
  pq->ctl_f.src_cnt);
 for (i = 0; i < src_cnt; i++)
  dev_dbg(dev, "\tsrc[%d]: %#llx coef: %#x\n", i,
   (unsigned long long) pq_get_src(descs, i), pq->coef[i]);
 dev_dbg(dev, "\tP: %#llx\n", pq->p_addr);
 dev_dbg(dev, "\tQ: %#llx\n", pq->q_addr);
 dev_dbg(dev, "\tNEXT: %#llx\n", pq->next);
}
