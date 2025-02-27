
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_str_t ;
struct TYPE_5__ {int mutex; } ;
typedef TYPE_1__ ngx_slab_pool_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_6__ {int trylock; } ;
typedef TYPE_2__ ngx_http_dyups_main_conf_t ;
typedef int ngx_event_t ;
typedef int ngx_buf_t ;
struct TYPE_7__ {TYPE_1__* shpool; int msg_timer; } ;


 int NGX_DYUPS_ADD ;
 scalar_t__ NGX_HTTP_CONFLICT ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_NOT_ALLOWED ;
 scalar_t__ NGX_HTTP_OK ;
 int ngx_cycle ;
 scalar_t__ ngx_dyups_do_update (int *,int *,int *) ;
 TYPE_4__ ngx_dyups_global_ctx ;
 scalar_t__ ngx_dyups_sandbox_update (int *,int *) ;
 TYPE_2__* ngx_http_cycle_get_module_main_conf (int ,int ) ;
 int ngx_http_dyups_api_enable ;
 int ngx_http_dyups_module ;
 int ngx_http_dyups_read_msg_locked (int *) ;
 scalar_t__ ngx_http_dyups_send_msg (int *,int *,int ) ;
 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_trylock (int *) ;
 int ngx_shmtx_unlock (int *) ;
 int ngx_str_set (int *,char*) ;

ngx_int_t
ngx_dyups_update_upstream(ngx_str_t *name, ngx_buf_t *buf, ngx_str_t *rv)
{
    ngx_int_t status;
    ngx_event_t *timer;
    ngx_slab_pool_t *shpool;
    ngx_http_dyups_main_conf_t *dmcf;

    dmcf = ngx_http_cycle_get_module_main_conf(ngx_cycle,
                                               ngx_http_dyups_module);
    timer = &ngx_dyups_global_ctx.msg_timer;
    shpool = ngx_dyups_global_ctx.shpool;

    if (!ngx_http_dyups_api_enable) {
        ngx_str_set(rv, "API disabled\n");
        return NGX_HTTP_NOT_ALLOWED;
    }

    if (!dmcf->trylock) {

        ngx_shmtx_lock(&shpool->mutex);

    } else {

        if (!ngx_shmtx_trylock(&shpool->mutex)) {
            status = NGX_HTTP_CONFLICT;
            ngx_str_set(rv, "wait and try again\n");
            goto finish;
        }
    }

    ngx_http_dyups_read_msg_locked(timer);

    status = ngx_dyups_sandbox_update(buf, rv);
    if (status != NGX_HTTP_OK) {
        goto finish;
    }

    status = ngx_dyups_do_update(name, buf, rv);
    if (status == NGX_HTTP_OK) {

        if (ngx_http_dyups_send_msg(name, buf, NGX_DYUPS_ADD)) {
            ngx_str_set(rv, "alert: update success "
                        "but not sync to other process");
            status = NGX_HTTP_INTERNAL_SERVER_ERROR;
        }
    }

 finish:

    ngx_shmtx_unlock(&shpool->mutex);

    return status;
}
