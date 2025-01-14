
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_error_t ;


 int atf_libc_error (int ,char*) ;
 int atf_no_error () ;
 int close (int const) ;
 int dup2 (int const,int const) ;
 int errno ;

__attribute__((used)) static
atf_error_t
safe_dup(const int oldfd, const int newfd)
{
    atf_error_t err;

    if (oldfd != newfd) {
        if (dup2(oldfd, newfd) == -1) {
            err = atf_libc_error(errno, "Could not allocate file descriptor");
        } else {
            close(oldfd);
            err = atf_no_error();
        }
    } else
        err = atf_no_error();

    return err;
}
