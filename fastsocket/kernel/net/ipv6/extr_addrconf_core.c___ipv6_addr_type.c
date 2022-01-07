
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int* s6_addr32; } ;
typedef int __be32 ;


 int IPV6_ADDR_ANY ;
 int IPV6_ADDR_COMPATv4 ;
 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_LOOPBACK ;
 int IPV6_ADDR_MAPPED ;
 int IPV6_ADDR_MC_SCOPE (struct in6_addr const*) ;
 int IPV6_ADDR_MULTICAST ;
 int IPV6_ADDR_SCOPE_GLOBAL ;
 int IPV6_ADDR_SCOPE_LINKLOCAL ;
 int IPV6_ADDR_SCOPE_SITELOCAL ;
 int IPV6_ADDR_SCOPE_TYPE (int ) ;
 int IPV6_ADDR_SITELOCAL ;
 int IPV6_ADDR_UNICAST ;
 int htonl (int) ;
 int ipv6_addr_scope2type (int ) ;

int __ipv6_addr_type(const struct in6_addr *addr)
{
 __be32 st;

 st = addr->s6_addr32[0];




 if ((st & htonl(0xE0000000)) != htonl(0x00000000) &&
     (st & htonl(0xE0000000)) != htonl(0xE0000000))
  return (IPV6_ADDR_UNICAST |
   IPV6_ADDR_SCOPE_TYPE(IPV6_ADDR_SCOPE_GLOBAL));

 if ((st & htonl(0xFF000000)) == htonl(0xFF000000)) {


  return (IPV6_ADDR_MULTICAST |
   ipv6_addr_scope2type(IPV6_ADDR_MC_SCOPE(addr)));
 }

 if ((st & htonl(0xFFC00000)) == htonl(0xFE800000))
  return (IPV6_ADDR_LINKLOCAL | IPV6_ADDR_UNICAST |
   IPV6_ADDR_SCOPE_TYPE(IPV6_ADDR_SCOPE_LINKLOCAL));
 if ((st & htonl(0xFFC00000)) == htonl(0xFEC00000))
  return (IPV6_ADDR_SITELOCAL | IPV6_ADDR_UNICAST |
   IPV6_ADDR_SCOPE_TYPE(IPV6_ADDR_SCOPE_SITELOCAL));
 if ((st & htonl(0xFE000000)) == htonl(0xFC000000))
  return (IPV6_ADDR_UNICAST |
   IPV6_ADDR_SCOPE_TYPE(IPV6_ADDR_SCOPE_GLOBAL));

 if ((addr->s6_addr32[0] | addr->s6_addr32[1]) == 0) {
  if (addr->s6_addr32[2] == 0) {
   if (addr->s6_addr32[3] == 0)
    return IPV6_ADDR_ANY;

   if (addr->s6_addr32[3] == htonl(0x00000001))
    return (IPV6_ADDR_LOOPBACK | IPV6_ADDR_UNICAST |
     IPV6_ADDR_SCOPE_TYPE(IPV6_ADDR_SCOPE_LINKLOCAL));

   return (IPV6_ADDR_COMPATv4 | IPV6_ADDR_UNICAST |
    IPV6_ADDR_SCOPE_TYPE(IPV6_ADDR_SCOPE_GLOBAL));
  }

  if (addr->s6_addr32[2] == htonl(0x0000ffff))
   return (IPV6_ADDR_MAPPED |
    IPV6_ADDR_SCOPE_TYPE(IPV6_ADDR_SCOPE_GLOBAL));
 }

 return (IPV6_ADDR_UNICAST |
  IPV6_ADDR_SCOPE_TYPE(IPV6_ADDR_SCOPE_GLOBAL));
}
