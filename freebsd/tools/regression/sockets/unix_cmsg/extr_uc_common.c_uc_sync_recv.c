
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {int** sync_fd; scalar_t__ server_flag; } ;


 size_t SYNC_CLIENT ;
 size_t SYNC_RECV ;
 size_t SYNC_SERVER ;
 int read (int,char*,int) ;
 TYPE_1__ uc_cfg ;
 int uc_dbgmsg (char*) ;
 int uc_logmsg (char*) ;
 int uc_logmsgx (char*,int) ;

int
uc_sync_recv(void)
{
 ssize_t ssize;
 int fd;
 char buf;

 uc_dbgmsg("sync: wait");

 fd = uc_cfg.sync_fd[uc_cfg.server_flag ? SYNC_SERVER : SYNC_CLIENT][SYNC_RECV];

 ssize = read(fd, &buf, 1);
 if (ssize < 0) {
  uc_logmsg("sync_recv: read");
  return (-1);
 }
 if (ssize < 1) {
  uc_logmsgx("sync_recv: read %zd of 1 byte", ssize);
  return (-1);
 }

 uc_dbgmsg("sync: received");

 return (0);
}
