
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunqe_buffers {TYPE_1__* qe_rxd; } ;
struct sunqe {scalar_t__ tx_old; scalar_t__ tx_new; scalar_t__ rx_old; scalar_t__ rx_new; int buffers_dvma; struct sunqe_buffers* buffers; struct sunqe_buffers* qe_block; } ;
struct qe_init_block {TYPE_1__* qe_rxd; } ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {int rx_flags; scalar_t__ rx_addr; } ;
typedef int RXD_PKT_SZ ;


 int RXD_LENGTH ;
 int RXD_OWN ;
 int RX_RING_SIZE ;
 int memset (struct sunqe_buffers*,int ,int) ;
 scalar_t__ qebuf_offset (int ,int) ;
 int rx_buf ;

__attribute__((used)) static void qe_init_rings(struct sunqe *qep)
{
 struct qe_init_block *qb = qep->qe_block;
 struct sunqe_buffers *qbufs = qep->buffers;
 __u32 qbufs_dvma = (__u32)qep->buffers_dvma;
 int i;

 qep->rx_new = qep->rx_old = qep->tx_new = qep->tx_old = 0;
 memset(qb, 0, sizeof(struct qe_init_block));
 memset(qbufs, 0, sizeof(struct sunqe_buffers));
 for (i = 0; i < RX_RING_SIZE; i++) {
  qb->qe_rxd[i].rx_addr = qbufs_dvma + qebuf_offset(rx_buf, i);
  qb->qe_rxd[i].rx_flags =
   (RXD_OWN | ((RXD_PKT_SZ) & RXD_LENGTH));
 }
}
