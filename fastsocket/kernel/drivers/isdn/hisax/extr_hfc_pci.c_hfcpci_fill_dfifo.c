
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u_char ;
struct TYPE_9__ {scalar_t__ fifos; } ;
struct TYPE_10__ {TYPE_2__ hfcpci; } ;
struct IsdnCardState {int debug; TYPE_7__* tx_skb; int err_tx; TYPE_3__ hw; } ;
struct TYPE_13__ {size_t f1; int f2; size_t* data; TYPE_4__* za; } ;
struct TYPE_8__ {TYPE_6__ d_tx; } ;
struct TYPE_12__ {TYPE_1__ d_chan; } ;
typedef TYPE_5__ fifo_area ;
typedef TYPE_6__ dfifo_type ;
struct TYPE_14__ {int len; size_t* data; } ;
struct TYPE_11__ {int z1; int z2; } ;


 int D_FIFO_SIZE ;
 size_t D_FREG_MASK ;
 int L1_DEB_ISAC ;
 int MAX_D_FRAMES ;
 int debugl1 (struct IsdnCardState*,char*,...) ;
 int dev_kfree_skb_any (TYPE_7__*) ;
 int memcpy (size_t*,size_t*,int) ;

__attribute__((used)) static void
hfcpci_fill_dfifo(struct IsdnCardState *cs)
{
 int fcnt;
 int count, new_z1, maxlen;
 dfifo_type *df;
 u_char *src, *dst, new_f1;

 if (!cs->tx_skb)
  return;
 if (cs->tx_skb->len <= 0)
  return;

 df = &((fifo_area *) (cs->hw.hfcpci.fifos))->d_chan.d_tx;

 if (cs->debug & L1_DEB_ISAC)
  debugl1(cs, "hfcpci_fill_Dfifo f1(%d) f2(%d) z1(f1)(%x)",
   df->f1, df->f2,
   df->za[df->f1 & D_FREG_MASK].z1);
 fcnt = df->f1 - df->f2;
 if (fcnt < 0)
  fcnt += (MAX_D_FRAMES + 1);
 if (fcnt > (MAX_D_FRAMES - 1)) {
  if (cs->debug & L1_DEB_ISAC)
   debugl1(cs, "hfcpci_fill_Dfifo more as 14 frames");



  return;
 }

 count = df->za[df->f2 & D_FREG_MASK].z2 - df->za[df->f1 & D_FREG_MASK].z1 - 1;
 if (count <= 0)
  count += D_FIFO_SIZE;

 if (cs->debug & L1_DEB_ISAC)
  debugl1(cs, "hfcpci_fill_Dfifo count(%ld/%d)",
   cs->tx_skb->len, count);
 if (count < cs->tx_skb->len) {
  if (cs->debug & L1_DEB_ISAC)
   debugl1(cs, "hfcpci_fill_Dfifo no fifo mem");
  return;
 }
 count = cs->tx_skb->len;
 new_z1 = (df->za[df->f1 & D_FREG_MASK].z1 + count) & (D_FIFO_SIZE - 1);
 new_f1 = ((df->f1 + 1) & D_FREG_MASK) | (D_FREG_MASK + 1);
 src = cs->tx_skb->data;
 dst = df->data + df->za[df->f1 & D_FREG_MASK].z1;
 maxlen = D_FIFO_SIZE - df->za[df->f1 & D_FREG_MASK].z1;
 if (maxlen > count)
  maxlen = count;
 memcpy(dst, src, maxlen);

 count -= maxlen;
 if (count) {
  dst = df->data;
  src += maxlen;
  memcpy(dst, src, count);
 }
 df->za[new_f1 & D_FREG_MASK].z1 = new_z1;
 df->za[df->f1 & D_FREG_MASK].z1 = new_z1;
 df->f1 = new_f1;

 dev_kfree_skb_any(cs->tx_skb);
 cs->tx_skb = ((void*)0);
}
