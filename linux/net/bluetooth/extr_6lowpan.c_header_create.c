
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 unsigned short ETH_P_IPV6 ;

__attribute__((used)) static int header_create(struct sk_buff *skb, struct net_device *netdev,
    unsigned short type, const void *_daddr,
    const void *_saddr, unsigned int len)
{
 if (type != ETH_P_IPV6)
  return -EINVAL;

 return 0;
}
