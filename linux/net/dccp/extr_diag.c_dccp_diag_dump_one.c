
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct inet_diag_req_v2 {int dummy; } ;


 int dccp_hashinfo ;
 int inet_diag_dump_one_icsk (int *,struct sk_buff*,struct nlmsghdr const*,struct inet_diag_req_v2 const*) ;

__attribute__((used)) static int dccp_diag_dump_one(struct sk_buff *in_skb,
         const struct nlmsghdr *nlh,
         const struct inet_diag_req_v2 *req)
{
 return inet_diag_dump_one_icsk(&dccp_hashinfo, in_skb, nlh, req);
}
