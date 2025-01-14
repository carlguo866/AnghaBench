
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int * skb; } ;
struct TYPE_7__ {int size; void* gen; int base; scalar_t__ next2proc; } ;
struct vmxnet3_rx_queue {TYPE_4__ rx_ctx; TYPE_3__ comp_ring; TYPE_2__* rx_ring; TYPE_1__** buf_info; } ;
struct vmxnet3_adapter {int rx_buf_per_pkt; void* skb_buf_size; } ;
struct Vmxnet3_RxDesc {int dummy; } ;
struct Vmxnet3_RxCompDesc {int dummy; } ;
struct TYPE_6__ {int size; void* gen; int base; scalar_t__ next2comp; scalar_t__ next2fill; } ;
struct TYPE_5__ {void* len; void* buf_type; } ;


 int ENOMEM ;
 void* PAGE_SIZE ;
 void* VMXNET3_INIT_GEN ;
 void* VMXNET3_RX_BUF_PAGE ;
 void* VMXNET3_RX_BUF_SKB ;
 int memset (int ,int ,int) ;
 scalar_t__ vmxnet3_rq_alloc_rx_buf (struct vmxnet3_rx_queue*,int,int,struct vmxnet3_adapter*) ;

__attribute__((used)) static int
vmxnet3_rq_init(struct vmxnet3_rx_queue *rq,
  struct vmxnet3_adapter *adapter)
{
 int i;


 for (i = 0; i < rq->rx_ring[0].size; i++) {


  if (i % adapter->rx_buf_per_pkt == 0) {
   rq->buf_info[0][i].buf_type = VMXNET3_RX_BUF_SKB;
   rq->buf_info[0][i].len = adapter->skb_buf_size;
  } else {
   rq->buf_info[0][i].buf_type = VMXNET3_RX_BUF_PAGE;
   rq->buf_info[0][i].len = PAGE_SIZE;
  }
 }
 for (i = 0; i < rq->rx_ring[1].size; i++) {
  rq->buf_info[1][i].buf_type = VMXNET3_RX_BUF_PAGE;
  rq->buf_info[1][i].len = PAGE_SIZE;
 }


 for (i = 0; i < 2; i++) {
  rq->rx_ring[i].next2fill = rq->rx_ring[i].next2comp = 0;

  memset(rq->rx_ring[i].base, 0, rq->rx_ring[i].size *
         sizeof(struct Vmxnet3_RxDesc));
  rq->rx_ring[i].gen = VMXNET3_INIT_GEN;
 }
 if (vmxnet3_rq_alloc_rx_buf(rq, 0, rq->rx_ring[0].size - 1,
        adapter) == 0) {

  return -ENOMEM;
 }
 vmxnet3_rq_alloc_rx_buf(rq, 1, rq->rx_ring[1].size - 1, adapter);


 rq->comp_ring.next2proc = 0;
 memset(rq->comp_ring.base, 0, rq->comp_ring.size *
        sizeof(struct Vmxnet3_RxCompDesc));
 rq->comp_ring.gen = VMXNET3_INIT_GEN;


 rq->rx_ctx.skb = ((void*)0);


 return 0;
}
