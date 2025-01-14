
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rio_tx_desc {int dport; int dattr; size_t dwcnt; int saddr; } ;
struct TYPE_4__ {int tx_slot; int* phys_buffer; size_t size; scalar_t__* virt_buffer; scalar_t__ virt; } ;
struct rio_priv {TYPE_2__ msg_tx_ring; TYPE_1__* msg_regs; } ;
struct rio_mport {int phy_type; struct rio_priv* priv; } ;
struct rio_dev {int destid; } ;
struct TYPE_3__ {int omr; } ;


 int EINVAL ;
 size_t RIO_MAX_MSG_SIZE ;
 int RIO_MSG_OMR_MUI ;


 int get_bitmask_order (size_t) ;
 int in_be32 (int *) ;
 scalar_t__ is_power_of_2 (size_t) ;
 int memcpy (scalar_t__,void*,size_t) ;
 int memset (scalar_t__,int ,size_t) ;
 int out_be32 (int *,int) ;
 int pr_debug (char*,int,int,int,size_t) ;

int
rio_hw_add_outb_message(struct rio_mport *mport, struct rio_dev *rdev, int mbox,
   void *buffer, size_t len)
{
 struct rio_priv *priv = mport->priv;
 u32 omr;
 struct rio_tx_desc *desc = (struct rio_tx_desc *)priv->msg_tx_ring.virt
     + priv->msg_tx_ring.tx_slot;
 int ret = 0;

 pr_debug
     ("RIO: rio_hw_add_outb_message(): destid %4.4x mbox %d buffer %8.8x len %8.8x\n",
      rdev->destid, mbox, (int)buffer, len);

 if ((len < 8) || (len > RIO_MAX_MSG_SIZE)) {
  ret = -EINVAL;
  goto out;
 }


 memcpy(priv->msg_tx_ring.virt_buffer[priv->msg_tx_ring.tx_slot], buffer,
   len);
 if (len < (RIO_MAX_MSG_SIZE - 4))
  memset(priv->msg_tx_ring.virt_buffer[priv->msg_tx_ring.tx_slot]
    + len, 0, RIO_MAX_MSG_SIZE - len);

 switch (mport->phy_type) {
 case 129:

  desc->dport = mbox & 0x3;


  desc->dattr = 0x28000000 | (rdev->destid << 2);
  break;
 case 128:

  desc->dport = (rdev->destid << 16) | (mbox & 0x3);


  desc->dattr = 0x28000000;
  break;
 }


 desc->dwcnt = is_power_of_2(len) ? len : 1 << get_bitmask_order(len);


 desc->saddr = 0x00000004
  | priv->msg_tx_ring.phys_buffer[priv->msg_tx_ring.tx_slot];


 omr = in_be32(&priv->msg_regs->omr);
 out_be32(&priv->msg_regs->omr, omr | RIO_MSG_OMR_MUI);


 if (++priv->msg_tx_ring.tx_slot == priv->msg_tx_ring.size)
  priv->msg_tx_ring.tx_slot = 0;

      out:
 return ret;
}
