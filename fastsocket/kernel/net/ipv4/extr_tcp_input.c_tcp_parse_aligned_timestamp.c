
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int dummy; } ;
struct TYPE_2__ {int saw_tstamp; void* rcv_tsecr; void* rcv_tsval; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
typedef scalar_t__ __be32 ;


 int TCPOLEN_TIMESTAMP ;
 int TCPOPT_NOP ;
 int TCPOPT_TIMESTAMP ;
 scalar_t__ htonl (int) ;
 void* ntohl (scalar_t__) ;

__attribute__((used)) static int tcp_parse_aligned_timestamp(struct tcp_sock *tp, struct tcphdr *th)
{
 __be32 *ptr = (__be32 *)(th + 1);

 if (*ptr == htonl((TCPOPT_NOP << 24) | (TCPOPT_NOP << 16)
     | (TCPOPT_TIMESTAMP << 8) | TCPOLEN_TIMESTAMP)) {
  tp->rx_opt.saw_tstamp = 1;
  ++ptr;
  tp->rx_opt.rcv_tsval = ntohl(*ptr);
  ++ptr;
  tp->rx_opt.rcv_tsecr = ntohl(*ptr);
  return 1;
 }
 return 0;
}
