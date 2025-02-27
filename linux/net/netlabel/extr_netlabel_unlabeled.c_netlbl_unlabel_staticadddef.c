
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct netlbl_audit {int dummy; } ;
struct genl_info {int * attrs; } ;


 int EINVAL ;
 size_t NLBL_UNLABEL_A_IPV4ADDR ;
 size_t NLBL_UNLABEL_A_IPV4MASK ;
 size_t NLBL_UNLABEL_A_IPV6ADDR ;
 size_t NLBL_UNLABEL_A_IPV6MASK ;
 size_t NLBL_UNLABEL_A_SECCTX ;
 int init_net ;
 int netlbl_netlink_auditinfo (struct sk_buff*,struct netlbl_audit*) ;
 int netlbl_unlabel_addrinfo_get (struct genl_info*,void**,void**,int *) ;
 int netlbl_unlhsh_add (int *,int *,void*,void*,int ,int ,struct netlbl_audit*) ;
 int nla_data (int ) ;
 int nla_len (int ) ;
 int security_secctx_to_secid (int ,int ,int *) ;

__attribute__((used)) static int netlbl_unlabel_staticadddef(struct sk_buff *skb,
           struct genl_info *info)
{
 int ret_val;
 void *addr;
 void *mask;
 u32 addr_len;
 u32 secid;
 struct netlbl_audit audit_info;





 if (!info->attrs[NLBL_UNLABEL_A_SECCTX] ||
     !((!info->attrs[NLBL_UNLABEL_A_IPV4ADDR] ||
        !info->attrs[NLBL_UNLABEL_A_IPV4MASK]) ^
       (!info->attrs[NLBL_UNLABEL_A_IPV6ADDR] ||
        !info->attrs[NLBL_UNLABEL_A_IPV6MASK])))
  return -EINVAL;

 netlbl_netlink_auditinfo(skb, &audit_info);

 ret_val = netlbl_unlabel_addrinfo_get(info, &addr, &mask, &addr_len);
 if (ret_val != 0)
  return ret_val;
 ret_val = security_secctx_to_secid(
                    nla_data(info->attrs[NLBL_UNLABEL_A_SECCTX]),
      nla_len(info->attrs[NLBL_UNLABEL_A_SECCTX]),
      &secid);
 if (ret_val != 0)
  return ret_val;

 return netlbl_unlhsh_add(&init_net,
     ((void*)0), addr, mask, addr_len, secid,
     &audit_info);
}
