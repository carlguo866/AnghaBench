
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int TIOCSPGRP ;
 int _ioctl (int,int ,int*) ;

int
tcsetpgrp(int fd, pid_t pgrp)
{
 int s;

 s = pgrp;
 return (_ioctl(fd, TIOCSPGRP, &s));
}
