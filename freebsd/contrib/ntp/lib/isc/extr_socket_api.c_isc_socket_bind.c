
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_socket_t ;
typedef int isc_sockaddr_t ;
typedef int isc_result_t ;
struct TYPE_6__ {int (* bind ) (TYPE_2__*,int *,unsigned int) ;} ;


 int ISCAPI_SOCKET_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int *,unsigned int) ;

isc_result_t
isc_socket_bind(isc_socket_t *sock, isc_sockaddr_t *sockaddr,
  unsigned int options)
{
 REQUIRE(ISCAPI_SOCKET_VALID(sock));

 return (sock->methods->bind(sock, sockaddr, options));
}
