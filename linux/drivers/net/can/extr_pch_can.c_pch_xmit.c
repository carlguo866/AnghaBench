
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct pch_can_priv {int tx_obj; TYPE_2__* regs; } ;
struct net_device {int dummy; } ;
struct can_frame {int can_id; int can_dlc; int* data; } ;
typedef int netdev_tx_t ;
struct TYPE_4__ {TYPE_1__* ifregs; int treq2; } ;
struct TYPE_3__ {int creq; int mcont; int * data; int id2; int id1; int cmask; } ;


 int CAN_EFF_FLAG ;
 int CAN_RTR_FLAG ;
 int CAN_SFF_MASK ;
 int NETDEV_TX_OK ;
 int PCH_CMASK_ALL ;
 int PCH_ID2_DIR ;
 int PCH_ID2_XTD ;
 int PCH_ID_MSGVAL ;
 int PCH_IF_MCONT_NEWDAT ;
 int PCH_IF_MCONT_TXIE ;
 int PCH_IF_MCONT_TXRQXT ;
 int PCH_RX_OBJ_END ;
 int PCH_TREQ2_TX_MASK ;
 int PCH_TX_OBJ_END ;
 int PCH_TX_OBJ_START ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int can_put_echo_skb (struct sk_buff*,struct net_device*,int) ;
 int ioread32 (int *) ;
 int iowrite16 (int,int *) ;
 int iowrite32 (int,int *) ;
 struct pch_can_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pch_can_bit_set (int *,int ) ;
 int pch_can_rw_msg_obj (int *,int) ;

__attribute__((used)) static netdev_tx_t pch_xmit(struct sk_buff *skb, struct net_device *ndev)
{
 struct pch_can_priv *priv = netdev_priv(ndev);
 struct can_frame *cf = (struct can_frame *)skb->data;
 int tx_obj_no;
 int i;
 u32 id2;

 if (can_dropped_invalid_skb(ndev, skb))
  return NETDEV_TX_OK;

 tx_obj_no = priv->tx_obj;
 if (priv->tx_obj == PCH_TX_OBJ_END) {
  if (ioread32(&priv->regs->treq2) & PCH_TREQ2_TX_MASK)
   netif_stop_queue(ndev);

  priv->tx_obj = PCH_TX_OBJ_START;
 } else {
  priv->tx_obj++;
 }


 pch_can_bit_set(&priv->regs->ifregs[1].cmask, PCH_CMASK_ALL);


 if (cf->can_id & CAN_EFF_FLAG) {
  iowrite32(cf->can_id & 0xffff, &priv->regs->ifregs[1].id1);
  id2 = ((cf->can_id >> 16) & 0x1fff) | PCH_ID2_XTD;
 } else {
  iowrite32(0, &priv->regs->ifregs[1].id1);
  id2 = (cf->can_id & CAN_SFF_MASK) << 2;
 }

 id2 |= PCH_ID_MSGVAL;


 if (!(cf->can_id & CAN_RTR_FLAG))
  id2 |= PCH_ID2_DIR;

 iowrite32(id2, &priv->regs->ifregs[1].id2);


 for (i = 0; i < cf->can_dlc; i += 2) {
  iowrite16(cf->data[i] | (cf->data[i + 1] << 8),
     &priv->regs->ifregs[1].data[i / 2]);
 }

 can_put_echo_skb(skb, ndev, tx_obj_no - PCH_RX_OBJ_END - 1);


 iowrite32(cf->can_dlc | PCH_IF_MCONT_NEWDAT | PCH_IF_MCONT_TXRQXT |
    PCH_IF_MCONT_TXIE, &priv->regs->ifregs[1].mcont);

 pch_can_rw_msg_obj(&priv->regs->ifregs[1].creq, tx_obj_no);

 return NETDEV_TX_OK;
}
