
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct flock {scalar_t__ l_len; scalar_t__ l_start; int l_whence; int l_type; } ;
struct TYPE_7__ {int interval; scalar_t__ log_max_size; int backup_num; int logname; int * backup; int time_now; } ;
typedef TYPE_1__ ngx_pipe_rollback_conf_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int st_ctime; scalar_t__ st_size; } ;
typedef TYPE_2__ ngx_file_info_t ;
struct TYPE_9__ {int log; } ;
typedef TYPE_3__ ngx_cycle_t ;


 int F_SETLKW ;
 int F_WRLCK ;
 int NGX_FILE_OPEN ;
 int NGX_FILE_RDWR ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_INFO ;
 int NGX_LOG_WARN ;
 int SEEK_SET ;
 int fcntl (int,int ,struct flock*) ;
 int ngx_close_file (int) ;
 int ngx_errno ;
 int ngx_file_info (int ,TYPE_2__*) ;
 int ngx_log_error (int ,int ,int ,char*,int ,...) ;
 int ngx_open_file (int ,int ,int ,int ) ;
 int ngx_rename_file (int ,int ) ;
 int ngx_time () ;

void
ngx_pipe_do_rollback(ngx_cycle_t *cycle, ngx_pipe_rollback_conf_t *rbcf)
{
    int fd;
    struct flock lock;
    int ret;
    ngx_int_t i;
    ngx_file_info_t sb;
    ngx_int_t need_do = 0;

    fd = ngx_open_file(rbcf->logname, NGX_FILE_RDWR, NGX_FILE_OPEN, 0);
    if (fd < 0) {

        return;
    }

    lock.l_type = F_WRLCK;
    lock.l_whence = SEEK_SET;
    lock.l_start = 0;
    lock.l_len = 0;

    ret = fcntl(fd, F_SETLKW, &lock);
    if (ret < 0) {
        ngx_close_file(fd);

        return;
    }


    if (rbcf->interval >= 0) {
        if (ngx_file_info(rbcf->backup[0], &sb) == -1) {
            need_do = 1;
            ngx_log_error(NGX_LOG_INFO, cycle->log, 0,
                          "need rollback [%s]: cannot open backup", rbcf->logname);

        } else if (sb.st_ctime / rbcf->interval < ngx_time() / rbcf->interval) {
            need_do = 1;
            ngx_log_error(NGX_LOG_INFO, cycle->log, 0,
                          "need rollback [%s]: time on [%d] [%d]",
                          rbcf->logname, sb.st_ctime, rbcf->time_now);

        } else {
            ngx_log_error(NGX_LOG_INFO, cycle->log, 0,
                          "no need rollback [%s]: time not on [%d] [%d]",
                          rbcf->logname, sb.st_ctime, rbcf->time_now);
        }

    } else {
        ngx_log_error(NGX_LOG_INFO, cycle->log, 0,
                      "no need check rollback [%s] time: no interval", rbcf->logname);
    }


    if (rbcf->log_max_size > 0) {
        if (ngx_file_info(rbcf->logname, &sb) == 0 && (sb.st_size >= rbcf->log_max_size)) {
            need_do = 1;
            ngx_log_error(NGX_LOG_INFO, cycle->log, 0,
                          "need rollback [%s]: size on [%d]", rbcf->logname, sb.st_size);

        } else {
            ngx_log_error(NGX_LOG_INFO, cycle->log, 0,
                          "no need rollback [%s]: size not on", rbcf->logname);
        }

    } else {
        ngx_log_error(NGX_LOG_INFO, cycle->log, 0,
                      "no need check rollback [%s] size: no max size", rbcf->logname);
    }

    if (need_do) {
        for (i = 1; i < rbcf->backup_num; i++) {
            ngx_rename_file(rbcf->backup[rbcf->backup_num - i - 1],
                   rbcf->backup[rbcf->backup_num - i]);
        }
        if (ngx_rename_file(rbcf->logname, rbcf->backup[0]) < 0) {
            ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "rname %s to %s failed", rbcf->logname, rbcf->backup[0]);
        } else {
            ngx_log_error(NGX_LOG_WARN, cycle->log, 0,
                          "rollback [%s] success", rbcf->logname);
        }
    }
    ngx_close_file(fd);
}
