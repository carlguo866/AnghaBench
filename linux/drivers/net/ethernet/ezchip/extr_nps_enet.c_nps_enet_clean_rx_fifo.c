
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nps_enet_priv {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ DIV_ROUND_UP (scalar_t__,int) ;
 int NPS_ENET_REG_RX_BUF ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 int nps_enet_reg_get (struct nps_enet_priv*,int ) ;

__attribute__((used)) static void nps_enet_clean_rx_fifo(struct net_device *ndev, u32 frame_len)
{
 struct nps_enet_priv *priv = netdev_priv(ndev);
 u32 i, len = DIV_ROUND_UP(frame_len, sizeof(u32));


 for (i = 0; i < len; i++)
  nps_enet_reg_get(priv, NPS_ENET_REG_RX_BUF);
}
