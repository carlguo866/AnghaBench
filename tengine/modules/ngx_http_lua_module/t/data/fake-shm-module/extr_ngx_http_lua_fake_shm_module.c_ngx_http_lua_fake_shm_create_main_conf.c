
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void ngx_http_lua_fake_shm_main_conf_t ;
struct TYPE_3__ {int pool; } ;
typedef TYPE_1__ ngx_conf_t ;


 void* ngx_pcalloc (int ,int) ;

__attribute__((used)) static void *
ngx_http_lua_fake_shm_create_main_conf(ngx_conf_t *cf)
{
    ngx_http_lua_fake_shm_main_conf_t *lfsmcf;

    lfsmcf = ngx_pcalloc(cf->pool, sizeof(*lfsmcf));
    if (lfsmcf == ((void*)0)) {
        return ((void*)0);
    }

    return lfsmcf;
}
