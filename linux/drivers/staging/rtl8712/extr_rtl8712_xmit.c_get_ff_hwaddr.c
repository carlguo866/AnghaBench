
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pkt_attrib {int priority; int qsel; } ;
struct xmit_frame {scalar_t__ frame_tag; struct _adapter* padapter; struct pkt_attrib attrib; } ;
struct dvobj_priv {int nr_endpoint; } ;
struct _adapter {struct dvobj_priv dvobjpriv; } ;


 scalar_t__ MGNT_FRAMETAG ;
 int RTL8712_DMA_BEQ ;
 int RTL8712_DMA_BKQ ;
 int RTL8712_DMA_H2CCMD ;
 int RTL8712_DMA_MGTQ ;
 int RTL8712_DMA_VIQ ;
 int RTL8712_DMA_VOQ ;
 scalar_t__ TXAGG_FRAMETAG ;

__attribute__((used)) static u32 get_ff_hwaddr(struct xmit_frame *pxmitframe)
{
 u32 addr = 0;
 struct pkt_attrib *pattrib = &pxmitframe->attrib;
 struct _adapter *padapter = pxmitframe->padapter;
 struct dvobj_priv *pdvobj = &padapter->dvobjpriv;

 if (pxmitframe->frame_tag == TXAGG_FRAMETAG) {
  addr = RTL8712_DMA_H2CCMD;
 } else if (pxmitframe->frame_tag == MGNT_FRAMETAG) {
  addr = RTL8712_DMA_MGTQ;
 } else if (pdvobj->nr_endpoint == 6) {
  switch (pattrib->priority) {
  case 0:
  case 3:
   addr = RTL8712_DMA_BEQ;
   break;
  case 1:
  case 2:
   addr = RTL8712_DMA_BKQ;
   break;
  case 4:
  case 5:
   addr = RTL8712_DMA_VIQ;
   break;
  case 6:
  case 7:
   addr = RTL8712_DMA_VOQ;
   break;
  case 0x10:
  case 0x11:
  case 0x12:
  case 0x13:
   addr = RTL8712_DMA_H2CCMD;
   break;
  default:
   addr = RTL8712_DMA_BEQ;
   break;
  }
 } else if (pdvobj->nr_endpoint == 4) {
  switch (pattrib->qsel) {
  case 0:
  case 3:
  case 1:
  case 2:
   addr = RTL8712_DMA_BEQ;
   break;
  case 4:
  case 5:
  case 6:
  case 7:
   addr = RTL8712_DMA_VOQ;
   break;
  case 0x10:
  case 0x11:
  case 0x12:
  case 0x13:
   addr = RTL8712_DMA_H2CCMD;
   break;
  default:
   addr = RTL8712_DMA_BEQ;
   break;
  }
 }
 return addr;
}
