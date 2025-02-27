
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int * channels; } ;
struct TYPE_4__ {TYPE_1__ supported; } ;
struct cfg802154_registered_device {TYPE_2__ wpan_phy; } ;


 int ENOBUFS ;
 unsigned long IEEE802154_MAX_PAGE ;
 int NL802154_ATTR_CHANNELS_SUPPORTED ;
 int NL802154_ATTR_SUPPORTED_CHANNEL ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int
nl802154_send_wpan_phy_channels(struct cfg802154_registered_device *rdev,
    struct sk_buff *msg)
{
 struct nlattr *nl_page;
 unsigned long page;

 nl_page = nla_nest_start_noflag(msg, NL802154_ATTR_CHANNELS_SUPPORTED);
 if (!nl_page)
  return -ENOBUFS;

 for (page = 0; page <= IEEE802154_MAX_PAGE; page++) {
  if (nla_put_u32(msg, NL802154_ATTR_SUPPORTED_CHANNEL,
    rdev->wpan_phy.supported.channels[page]))
   return -ENOBUFS;
 }
 nla_nest_end(msg, nl_page);

 return 0;
}
