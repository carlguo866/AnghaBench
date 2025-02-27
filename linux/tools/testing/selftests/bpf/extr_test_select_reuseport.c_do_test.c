
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int u32; } ;
struct epoll_event {TYPE_1__ data; } ;
struct cmd {int reuseport_index; int pass_on_failure; } ;
typedef int ssize_t ;
typedef int sa_family_t ;
typedef int rcv_cmd ;
typedef enum result { ____Placeholder_result } result ;


 int CHECK (int,char*,char*,size_t,int,int,...) ;
 int MSG_DONTWAIT ;
 int PASS ;
 int PASS_ERR_SK_SELECT_REUSEPORT ;
 int SOCK_STREAM ;
 int accept (int,int *,int ) ;
 int check_data (int,int ,struct cmd*,int) ;
 int check_results () ;
 int close (int) ;
 int epfd ;
 int epoll_wait (int ,struct epoll_event*,int,int) ;
 int errno ;
 int recv (int,struct cmd*,int,int ) ;
 int send_data (int,int ,struct cmd*,int,int) ;
 int* sk_fds ;

__attribute__((used)) static void do_test(int type, sa_family_t family, struct cmd *cmd,
      enum result expected)
{
 int nev, srv_fd, cli_fd;
 struct epoll_event ev;
 struct cmd rcv_cmd;
 ssize_t nread;

 cli_fd = send_data(type, family, cmd, cmd ? sizeof(*cmd) : 0,
      expected);
 nev = epoll_wait(epfd, &ev, 1, expected >= PASS ? 5 : 0);
 CHECK((nev <= 0 && expected >= PASS) ||
       (nev > 0 && expected < PASS),
       "nev <> expected",
       "nev:%d expected:%d type:%d family:%d data:(%d, %d)\n",
       nev, expected, type, family,
       cmd ? cmd->reuseport_index : -1,
       cmd ? cmd->pass_on_failure : -1);
 check_results();
 check_data(type, family, cmd, cli_fd);

 if (expected < PASS)
  return;

 CHECK(expected != PASS_ERR_SK_SELECT_REUSEPORT &&
       cmd->reuseport_index != ev.data.u32,
       "check cmd->reuseport_index",
       "cmd:(%u, %u) ev.data.u32:%u\n",
       cmd->pass_on_failure, cmd->reuseport_index, ev.data.u32);

 srv_fd = sk_fds[ev.data.u32];
 if (type == SOCK_STREAM) {
  int new_fd = accept(srv_fd, ((void*)0), 0);

  CHECK(new_fd == -1, "accept(srv_fd)",
        "ev.data.u32:%u new_fd:%d errno:%d\n",
        ev.data.u32, new_fd, errno);

  nread = recv(new_fd, &rcv_cmd, sizeof(rcv_cmd), MSG_DONTWAIT);
  CHECK(nread != sizeof(rcv_cmd),
        "recv(new_fd)",
        "ev.data.u32:%u nread:%zd sizeof(rcv_cmd):%zu errno:%d\n",
        ev.data.u32, nread, sizeof(rcv_cmd), errno);

  close(new_fd);
 } else {
  nread = recv(srv_fd, &rcv_cmd, sizeof(rcv_cmd), MSG_DONTWAIT);
  CHECK(nread != sizeof(rcv_cmd),
        "recv(sk_fds)",
        "ev.data.u32:%u nread:%zd sizeof(rcv_cmd):%zu errno:%d\n",
        ev.data.u32, nread, sizeof(rcv_cmd), errno);
 }

 close(cli_fd);
}
