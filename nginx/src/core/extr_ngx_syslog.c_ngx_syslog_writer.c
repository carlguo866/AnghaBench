
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_6__ {int busy; int severity; } ;
typedef TYPE_1__ ngx_syslog_peer_t ;
struct TYPE_7__ {TYPE_1__* wdata; } ;
typedef TYPE_2__ ngx_log_t ;


 scalar_t__ NGX_LINEFEED_SIZE ;
 int NGX_SYSLOG_MAX_STR ;
 int * ngx_snprintf (int *,size_t,char*,int *) ;
 int * ngx_syslog_add_header (TYPE_1__*,int *) ;
 int ngx_syslog_send (TYPE_1__*,int *,int) ;

void
ngx_syslog_writer(ngx_log_t *log, ngx_uint_t level, u_char *buf,
    size_t len)
{
    u_char *p, msg[NGX_SYSLOG_MAX_STR];
    ngx_uint_t head_len;
    ngx_syslog_peer_t *peer;

    peer = log->wdata;

    if (peer->busy) {
        return;
    }

    peer->busy = 1;
    peer->severity = level - 1;

    p = ngx_syslog_add_header(peer, msg);
    head_len = p - msg;

    len -= NGX_LINEFEED_SIZE;

    if (len > NGX_SYSLOG_MAX_STR - head_len) {
        len = NGX_SYSLOG_MAX_STR - head_len;
    }

    p = ngx_snprintf(p, len, "%s", buf);

    (void) ngx_syslog_send(peer, msg, p - msg);

    peer->busy = 0;
}
