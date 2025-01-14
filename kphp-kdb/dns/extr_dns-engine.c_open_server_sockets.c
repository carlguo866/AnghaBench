
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;


 scalar_t__ SM_UDP ;
 int backlog ;
 char* conv_addr (int ,char*) ;
 scalar_t__ enable_ipv6 ;
 int exit (int) ;
 int kprintf (char*,int) ;
 int port ;
 int printf (char*,char*,int,scalar_t__) ;
 scalar_t__ server_socket (int,TYPE_1__,int ,scalar_t__) ;
 TYPE_1__ settings_addr ;
 scalar_t__ tcp_sfd ;
 scalar_t__ udp_sfd ;
 scalar_t__ verbosity ;

__attribute__((used)) static void open_server_sockets (void) {
  char buf2[256];
  if (udp_sfd < 0) {
    udp_sfd = server_socket (port, settings_addr, backlog, SM_UDP + enable_ipv6);
    if (udp_sfd < 0) {
      kprintf ("cannot open UDP server socket at port %d: %m\n", port);
      exit (1);
    }
    if (verbosity) {
      printf ("created listening udp socket at %s:%d, fd=%d\n", conv_addr (settings_addr.s_addr, buf2), port, udp_sfd);
    }
  }
  if (tcp_sfd < 0) {
    tcp_sfd = server_socket (port, settings_addr, backlog, enable_ipv6);
    if (tcp_sfd < 0) {
      kprintf ("cannot open TCP server socket at port %d: %m\n", port);
      exit (1);
    }
  }
}
