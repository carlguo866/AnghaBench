
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef size_t ngx_uint_t ;
struct TYPE_15__ {int conn; int * shm_zone; } ;
typedef TYPE_2__ ngx_stream_limit_conn_limit_t ;
struct TYPE_13__ {size_t nelts; TYPE_2__* elts; } ;
struct TYPE_16__ {TYPE_11__ limits; } ;
typedef TYPE_3__ ngx_stream_limit_conn_conf_t ;
struct TYPE_17__ {int len; int data; } ;
typedef TYPE_4__ ngx_str_t ;
typedef int ngx_shm_zone_t ;
typedef int ngx_int_t ;
struct TYPE_18__ {int pool; TYPE_1__* args; } ;
typedef TYPE_5__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_14__ {TYPE_4__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (TYPE_11__*,int ,int,int) ;
 TYPE_2__* ngx_array_push (TYPE_11__*) ;
 int ngx_atoi (int ,int ) ;
 int ngx_conf_log_error (int ,TYPE_5__*,int ,char*,...) ;
 int * ngx_shared_memory_add (TYPE_5__*,TYPE_4__*,int ,int *) ;
 int ngx_stream_limit_conn_module ;

__attribute__((used)) static char *
ngx_stream_limit_conn(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_shm_zone_t *shm_zone;
    ngx_stream_limit_conn_conf_t *lccf = conf;
    ngx_stream_limit_conn_limit_t *limit, *limits;

    ngx_str_t *value;
    ngx_int_t n;
    ngx_uint_t i;

    value = cf->args->elts;

    shm_zone = ngx_shared_memory_add(cf, &value[1], 0,
                                     &ngx_stream_limit_conn_module);
    if (shm_zone == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    limits = lccf->limits.elts;

    if (limits == ((void*)0)) {
        if (ngx_array_init(&lccf->limits, cf->pool, 1,
                           sizeof(ngx_stream_limit_conn_limit_t))
            != NGX_OK)
        {
            return NGX_CONF_ERROR;
        }
    }

    for (i = 0; i < lccf->limits.nelts; i++) {
        if (shm_zone == limits[i].shm_zone) {
            return "is duplicate";
        }
    }

    n = ngx_atoi(value[2].data, value[2].len);
    if (n <= 0) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid number of connections \"%V\"", &value[2]);
        return NGX_CONF_ERROR;
    }

    if (n > 65535) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "connection limit must be less 65536");
        return NGX_CONF_ERROR;
    }

    limit = ngx_array_push(&lccf->limits);
    if (limit == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    limit->conn = n;
    limit->shm_zone = shm_zone;

    return NGX_CONF_OK;
}
