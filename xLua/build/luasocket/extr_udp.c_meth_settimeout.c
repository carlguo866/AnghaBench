
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* p_udp ;
typedef int lua_State ;
struct TYPE_2__ {int tm; } ;


 int auxiliar_checkgroup (int *,char*,int) ;
 int timeout_meth_settimeout (int *,int *) ;

__attribute__((used)) static int meth_settimeout(lua_State *L) {
    p_udp udp = (p_udp) auxiliar_checkgroup(L, "udp{any}", 1);
    return timeout_meth_settimeout(L, &udp->tm);
}
