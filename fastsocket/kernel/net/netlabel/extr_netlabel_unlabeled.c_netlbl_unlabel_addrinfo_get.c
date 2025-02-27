
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct genl_info {scalar_t__* attrs; } ;


 int EINVAL ;
 size_t NLBL_UNLABEL_A_IPV4ADDR ;
 size_t NLBL_UNLABEL_A_IPV4MASK ;
 size_t NLBL_UNLABEL_A_IPV6ADDR ;
 size_t NLBL_UNLABEL_A_IPV6MASK ;
 void* nla_data (scalar_t__) ;
 int nla_len (scalar_t__) ;

__attribute__((used)) static int netlbl_unlabel_addrinfo_get(struct genl_info *info,
           void **addr,
           void **mask,
           u32 *len)
{
 u32 addr_len;

 if (info->attrs[NLBL_UNLABEL_A_IPV4ADDR]) {
  addr_len = nla_len(info->attrs[NLBL_UNLABEL_A_IPV4ADDR]);
  if (addr_len != sizeof(struct in_addr) &&
      addr_len != nla_len(info->attrs[NLBL_UNLABEL_A_IPV4MASK]))
   return -EINVAL;
  *len = addr_len;
  *addr = nla_data(info->attrs[NLBL_UNLABEL_A_IPV4ADDR]);
  *mask = nla_data(info->attrs[NLBL_UNLABEL_A_IPV4MASK]);
  return 0;
 } else if (info->attrs[NLBL_UNLABEL_A_IPV6ADDR]) {
  addr_len = nla_len(info->attrs[NLBL_UNLABEL_A_IPV6ADDR]);
  if (addr_len != sizeof(struct in6_addr) &&
      addr_len != nla_len(info->attrs[NLBL_UNLABEL_A_IPV6MASK]))
   return -EINVAL;
  *len = addr_len;
  *addr = nla_data(info->attrs[NLBL_UNLABEL_A_IPV6ADDR]);
  *mask = nla_data(info->attrs[NLBL_UNLABEL_A_IPV6MASK]);
  return 0;
 }

 return -EINVAL;
}
