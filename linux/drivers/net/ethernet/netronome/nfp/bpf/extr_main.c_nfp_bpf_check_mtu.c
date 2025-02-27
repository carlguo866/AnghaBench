
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl; } ;
struct nfp_net {TYPE_1__ dp; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;


 int EBUSY ;
 int NFP_NET_CFG_BPF_INL_MTU ;
 int NFP_NET_CFG_CTRL_BPF ;
 struct nfp_net* netdev_priv (struct net_device*) ;
 int nn_info (struct nfp_net*,char*,unsigned int) ;
 int nn_readb (struct nfp_net*,int ) ;

__attribute__((used)) static int
nfp_bpf_check_mtu(struct nfp_app *app, struct net_device *netdev, int new_mtu)
{
 struct nfp_net *nn = netdev_priv(netdev);
 unsigned int max_mtu;

 if (~nn->dp.ctrl & NFP_NET_CFG_CTRL_BPF)
  return 0;

 max_mtu = nn_readb(nn, NFP_NET_CFG_BPF_INL_MTU) * 64 - 32;
 if (new_mtu > max_mtu) {
  nn_info(nn, "BPF offload active, MTU over %u not supported\n",
   max_mtu);
  return -EBUSY;
 }
 return 0;
}
