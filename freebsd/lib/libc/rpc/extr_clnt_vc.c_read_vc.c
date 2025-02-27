
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {scalar_t__ sa_family; } ;
struct pollfd {int events; int fd; } ;
struct TYPE_4__ {void* re_status; void* re_errno; } ;
struct TYPE_3__ {int tv_sec; int tv_usec; } ;
struct ct_data {TYPE_2__ ct_error; int ct_fd; TYPE_1__ ct_wait; } ;
typedef int socklen_t ;
typedef int sa ;


 scalar_t__ AF_LOCAL ;
 void* ECONNRESET ;
 void* EINTR ;
 int POLLIN ;
 void* RPC_CANTRECV ;
 void* RPC_TIMEDOUT ;
 int __msgread (int ,void*,size_t) ;
 scalar_t__ _getpeername (int ,struct sockaddr*,int*) ;
 int _poll (struct pollfd*,int,int) ;
 int _read (int ,void*,size_t) ;
 void* errno ;

__attribute__((used)) static int
read_vc(void *ctp, void *buf, int len)
{
 struct sockaddr sa;
 socklen_t sal;
 struct ct_data *ct = (struct ct_data *)ctp;
 struct pollfd fd;
 int milliseconds = (int)((ct->ct_wait.tv_sec * 1000) +
     (ct->ct_wait.tv_usec / 1000));

 if (len == 0)
  return (0);
 fd.fd = ct->ct_fd;
 fd.events = POLLIN;
 for (;;) {
  switch (_poll(&fd, 1, milliseconds)) {
  case 0:
   ct->ct_error.re_status = RPC_TIMEDOUT;
   return (-1);

  case -1:
   if (errno == EINTR)
    continue;
   ct->ct_error.re_status = RPC_CANTRECV;
   ct->ct_error.re_errno = errno;
   return (-1);
  }
  break;
 }

 sal = sizeof(sa);
 if ((_getpeername(ct->ct_fd, &sa, &sal) == 0) &&
     (sa.sa_family == AF_LOCAL)) {
  len = __msgread(ct->ct_fd, buf, (size_t)len);
 } else {
  len = _read(ct->ct_fd, buf, (size_t)len);
 }

 switch (len) {
 case 0:

  ct->ct_error.re_errno = ECONNRESET;
  ct->ct_error.re_status = RPC_CANTRECV;
  len = -1;
  break;

 case -1:
  ct->ct_error.re_errno = errno;
  ct->ct_error.re_status = RPC_CANTRECV;
  break;
 }
 return (len);
}
