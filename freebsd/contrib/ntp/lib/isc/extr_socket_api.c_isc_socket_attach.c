
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_socket_t ;
struct TYPE_8__ {int (* attach ) (TYPE_2__*,TYPE_2__**) ;} ;


 int ENSURE (int) ;
 int ISCAPI_SOCKET_VALID (TYPE_2__*) ;
 int REQUIRE (int) ;
 int stub1 (TYPE_2__*,TYPE_2__**) ;

void
isc_socket_attach(isc_socket_t *sock, isc_socket_t **socketp) {
 REQUIRE(ISCAPI_SOCKET_VALID(sock));
 REQUIRE(socketp != ((void*)0) && *socketp == ((void*)0));

 sock->methods->attach(sock, socketp);

 ENSURE(*socketp == sock);
}
