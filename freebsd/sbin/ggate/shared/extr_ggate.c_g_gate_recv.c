
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ errno ;
 int recv (int,void*,size_t,int) ;

ssize_t
g_gate_recv(int s, void *buf, size_t len, int flags)
{
 ssize_t done;

 do {
  done = recv(s, buf, len, flags);
 } while (done == -1 && errno == EAGAIN);
 return (done);
}
