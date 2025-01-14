
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct audit_buffer {int dummy; } ;
typedef scalar_t__ __be16 ;


 int audit_log_format (struct audit_buffer*,char*,char*,struct in6_addr*) ;
 int ipv6_addr_any (struct in6_addr*) ;
 struct in6_addr* ntohs (scalar_t__) ;

__attribute__((used)) static inline void print_ipv6_addr(struct audit_buffer *ab,
       struct in6_addr *addr, __be16 port,
       char *name1, char *name2)
{
 if (!ipv6_addr_any(addr))
  audit_log_format(ab, " %s=%pI6c", name1, addr);
 if (port)
  audit_log_format(ab, " %s=%d", name2, ntohs(port));
}
