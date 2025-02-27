
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct TYPE_3__ {int const s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int server_ctx ;
typedef int client_ctx ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int ntohl (int const) ;

int can_access(const server_ctx *sx,
               const client_ctx *cx,
               const struct sockaddr *addr) {
  const struct sockaddr_in6 *addr6;
  const struct sockaddr_in *addr4;
  const uint32_t *p;
  uint32_t a;
  uint32_t b;
  uint32_t c;
  uint32_t d;




  if (addr->sa_family == AF_INET) {
    addr4 = (const struct sockaddr_in *) addr;
    d = ntohl(addr4->sin_addr.s_addr);
    return (d >> 24) != 0x7F;
  }

  if (addr->sa_family == AF_INET6) {
    addr6 = (const struct sockaddr_in6 *) addr;
    p = (const uint32_t *) &addr6->sin6_addr.s6_addr;
    a = ntohl(p[0]);
    b = ntohl(p[1]);
    c = ntohl(p[2]);
    d = ntohl(p[3]);
    if (a == 0 && b == 0 && c == 0 && d == 1) {
      return 0;
    }
    if (a == 0 && b == 0 && c == 0xFFFF && (d >> 24) == 0x7F) {
      return 0;
    }
    return 1;
  }

  return 0;
}
