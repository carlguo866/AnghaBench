
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_secy {int dummy; } ;
struct macsec_rx_sc {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;
typedef int sci_t ;
struct TYPE_2__ {struct macsec_secy secy; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct net_device*) ;
 size_t MACSEC_ATTR_IFINDEX ;
 int MACSEC_RXSC_ATTR_MAX ;
 size_t MACSEC_RXSC_ATTR_SCI ;
 int PTR_ERR (struct net_device*) ;
 struct macsec_rx_sc* del_rx_sc (struct macsec_secy*,int ) ;
 int free_rx_sc (struct macsec_rx_sc*) ;
 int genl_info_net (struct genl_info*) ;
 struct net_device* get_dev_from_nl (int ,struct nlattr**) ;
 TYPE_1__* macsec_priv (struct net_device*) ;
 int nla_get_sci (struct nlattr*) ;
 scalar_t__ parse_rxsc_config (struct nlattr**,struct nlattr**) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int macsec_del_rxsc(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr **attrs = info->attrs;
 struct net_device *dev;
 struct macsec_secy *secy;
 struct macsec_rx_sc *rx_sc;
 sci_t sci;
 struct nlattr *tb_rxsc[MACSEC_RXSC_ATTR_MAX + 1];

 if (!attrs[MACSEC_ATTR_IFINDEX])
  return -EINVAL;

 if (parse_rxsc_config(attrs, tb_rxsc))
  return -EINVAL;

 if (!tb_rxsc[MACSEC_RXSC_ATTR_SCI])
  return -EINVAL;

 rtnl_lock();
 dev = get_dev_from_nl(genl_info_net(info), info->attrs);
 if (IS_ERR(dev)) {
  rtnl_unlock();
  return PTR_ERR(dev);
 }

 secy = &macsec_priv(dev)->secy;
 sci = nla_get_sci(tb_rxsc[MACSEC_RXSC_ATTR_SCI]);

 rx_sc = del_rx_sc(secy, sci);
 if (!rx_sc) {
  rtnl_unlock();
  return -ENODEV;
 }

 free_rx_sc(rx_sc);
 rtnl_unlock();

 return 0;
}
