
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * log; } ;
typedef TYPE_1__ ngx_http_tfs_srv_conf_t ;
typedef int ngx_conf_t ;
typedef int ngx_command_t ;


 char* ngx_log_set_log (int *,int **) ;

__attribute__((used)) static char *
ngx_http_tfs_log(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_tfs_srv_conf_t *tscf = conf;

    if (tscf->log != ((void*)0)) {
        return "is duplicate";
    }

    return ngx_log_set_log(cf, &tscf->log);
}
