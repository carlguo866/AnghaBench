
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enable; scalar_t__ trylock; int read_msg_timeout; int shm_size; } ;
typedef TYPE_1__ ngx_http_dyups_main_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 scalar_t__ NGX_CONF_UNSET ;
 int NGX_CONF_UNSET_MSEC ;
 int NGX_CONF_UNSET_UINT ;
 scalar_t__ ngx_http_dyups_api_enable ;
 char* ngx_http_dyups_init_shm (int *,void*) ;

__attribute__((used)) static char *
ngx_http_dyups_init_main_conf(ngx_conf_t *cf, void *conf)
{
    ngx_http_dyups_main_conf_t *dmcf = conf;

    if (dmcf->enable == NGX_CONF_UNSET) {
        dmcf->enable = 0;
    }

    dmcf->enable = dmcf->enable || ngx_http_dyups_api_enable;

    if (dmcf->trylock == NGX_CONF_UNSET) {
        dmcf->trylock = 0;
    }

    if (!dmcf->enable) {
        return NGX_CONF_OK;
    }

    if (dmcf->read_msg_timeout == NGX_CONF_UNSET_MSEC) {
        dmcf->read_msg_timeout = 1000;
    }

    if (dmcf->shm_size == NGX_CONF_UNSET_UINT) {
        dmcf->shm_size = 2 * 1024 * 1024;
    }

    return ngx_http_dyups_init_shm(cf, conf);
}
