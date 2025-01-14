
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
typedef scalar_t__ ev_uint32_t ;


 scalar_t__ const INADDR_ANY ;
 scalar_t__ evutil_v4addr_is_classd (scalar_t__ const) ;
 scalar_t__ evutil_v4addr_is_linklocal (scalar_t__ const) ;
 scalar_t__ evutil_v4addr_is_localhost (scalar_t__ const) ;
 scalar_t__ ntohl (int ) ;

int
evutil_v4addr_is_local_(const struct in_addr *in)
{
 const ev_uint32_t addr = ntohl(in->s_addr);
 return addr == INADDR_ANY ||
  evutil_v4addr_is_localhost(addr) ||
  evutil_v4addr_is_linklocal(addr) ||
  evutil_v4addr_is_classd(addr);
}
