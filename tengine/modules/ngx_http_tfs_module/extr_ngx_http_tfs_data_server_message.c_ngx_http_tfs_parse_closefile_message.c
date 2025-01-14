
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_6__ {int log; TYPE_1__* tfs_peer; scalar_t__ header; } ;
typedef TYPE_2__ ngx_http_tfs_t ;
struct TYPE_7__ {int type; } ;
typedef TYPE_3__ ngx_http_tfs_header_t ;
struct TYPE_5__ {int body_buffer; } ;



 int NGX_LOG_INFO ;
 int NGX_OK ;
 int ngx_http_tfs_status_message (int *,int *,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int) ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_tfs_parse_closefile_message(ngx_http_tfs_t *t)
{
    uint16_t type;
    ngx_str_t action;
    ngx_http_tfs_header_t *header;

    header = (ngx_http_tfs_header_t *) t->header;
    type = header->type;

    switch (type) {

    case 128:
        ngx_str_set(&action, "close file(data server)");
        return ngx_http_tfs_status_message(&t->tfs_peer->body_buffer, &action,
                                           t->log);

    default:
        ngx_log_error(NGX_LOG_INFO, t->log, 0,
                      "close file response msg type is invalid  %d ", type);
    }

    return NGX_OK;
}
