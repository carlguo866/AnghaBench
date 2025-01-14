
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int overflow; int buf_len; int* buf; } ;
struct TYPE_5__ {TYPE_3__ getexattr; } ;
struct TYPE_6__ {TYPE_1__ args; } ;
typedef TYPE_2__ nfs41_upcall ;
typedef TYPE_3__ getexattr_upcall_args ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int NO_ERROR ;
 int free (int*) ;
 int safe_write (unsigned char**,int *,int*,int) ;

__attribute__((used)) static int marshall_getexattr(unsigned char *buffer, uint32_t *length, nfs41_upcall *upcall)
{
    int status = NO_ERROR;
    getexattr_upcall_args *args = &upcall->args.getexattr;

    status = safe_write(&buffer, length, &args->overflow, sizeof(args->overflow));
    if (status) goto out;
    status = safe_write(&buffer, length, &args->buf_len, sizeof(args->buf_len));
    if (status) goto out;
    if (args->overflow == ERROR_INSUFFICIENT_BUFFER)
        goto out;
    status = safe_write(&buffer, length, args->buf, args->buf_len);
    if (status) goto out;
out:
    free(args->buf);
    return status;
}
