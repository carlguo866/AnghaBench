
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct fou {int dummy; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 scalar_t__ fou_fill_info (struct fou*,struct sk_buff*) ;
 int fou_nl_family ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;

__attribute__((used)) static int fou_dump_info(struct fou *fou, u32 portid, u32 seq,
    u32 flags, struct sk_buff *skb, u8 cmd)
{
 void *hdr;

 hdr = genlmsg_put(skb, portid, seq, &fou_nl_family, flags, cmd);
 if (!hdr)
  return -ENOMEM;

 if (fou_fill_info(fou, skb) < 0)
  goto nla_put_failure;

 genlmsg_end(skb, hdr);
 return 0;

nla_put_failure:
 genlmsg_cancel(skb, hdr);
 return -EMSGSIZE;
}
