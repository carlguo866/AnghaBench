
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* p_tcp ;
typedef int lua_State ;
struct TYPE_2__ {int buf; } ;


 int auxiliar_checkclass (int *,char*,int) ;
 int buffer_meth_setstats (int *,int *) ;

__attribute__((used)) static int meth_setstats(lua_State *L) {
    p_tcp tcp = (p_tcp) auxiliar_checkclass(L, "tcp{client}", 1);
    return buffer_meth_setstats(L, &tcp->buf);
}
