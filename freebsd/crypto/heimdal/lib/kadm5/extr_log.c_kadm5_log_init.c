
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int log_fd; int version; int log_file; } ;
struct TYPE_4__ {int context; TYPE_2__ log_context; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
typedef TYPE_2__ kadm5_log_context ;


 int LOCK_EX ;
 int O_CREAT ;
 int O_RDWR ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ flock (int,int ) ;
 scalar_t__ kadm5_log_get_version_fd (int,int *) ;
 int krb5_set_error_message (int ,scalar_t__,char*,int ) ;
 int open (int ,int,int) ;

kadm5_ret_t
kadm5_log_init (kadm5_server_context *context)
{
    int fd;
    kadm5_ret_t ret;
    kadm5_log_context *log_context = &context->log_context;

    if (log_context->log_fd != -1)
 return 0;
    fd = open (log_context->log_file, O_RDWR | O_CREAT, 0600);
    if (fd < 0) {
 ret = errno;
 krb5_set_error_message(context->context, ret, "kadm5_log_init: open %s",
         log_context->log_file);
 return ret;
    }
    if (flock (fd, LOCK_EX) < 0) {
 ret = errno;
 krb5_set_error_message(context->context, ret, "kadm5_log_init: flock %s",
          log_context->log_file);
 close (fd);
 return errno;
    }

    ret = kadm5_log_get_version_fd (fd, &log_context->version);
    if (ret)
 return ret;

    log_context->log_fd = fd;
    return 0;
}
