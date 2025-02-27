
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ owner; } ;
struct vnt_rx_desc {TYPE_3__ rd0; TYPE_1__* rd_info; struct vnt_rx_desc* next; } ;
struct vnt_private {struct vnt_rx_desc** pCurrRD; TYPE_2__* pcid; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int skb; } ;


 scalar_t__ OWNED_BY_HOST ;
 scalar_t__ OWNED_BY_NIC ;
 int dev_err (int *,char*) ;
 int device_alloc_rx_buf (struct vnt_private*,struct vnt_rx_desc*) ;
 scalar_t__ vnt_receive_frame (struct vnt_private*,struct vnt_rx_desc*) ;

__attribute__((used)) static int device_rx_srv(struct vnt_private *priv, unsigned int idx)
{
 struct vnt_rx_desc *rd;
 int works = 0;

 for (rd = priv->pCurrRD[idx];
      rd->rd0.owner == OWNED_BY_HOST;
      rd = rd->next) {
  if (works++ > 15)
   break;

  if (!rd->rd_info->skb)
   break;

  if (vnt_receive_frame(priv, rd)) {
   if (!device_alloc_rx_buf(priv, rd)) {
    dev_err(&priv->pcid->dev,
     "can not allocate rx buf\n");
    break;
   }
  }
  rd->rd0.owner = OWNED_BY_NIC;
 }

 priv->pCurrRD[idx] = rd;

 return works;
}
