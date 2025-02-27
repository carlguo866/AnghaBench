
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef scalar_t__ u_char ;
struct tcphdr {int th_off; int th_flags; int th_sum; } ;


 int ADJUST_CHECKSUM (int,int ) ;
 int LogDEBUG ;
 size_t TCPOLEN_MAXSEG ;
 scalar_t__ TCPOPT_EOL ;
 scalar_t__ TCPOPT_MAXSEG ;
 scalar_t__ TCPOPT_NOP ;
 int TH_SYN ;
 int htons (int) ;
 int log_Printf (int ,char*,int,int) ;
 int ntohs (int) ;

__attribute__((used)) static void
MSSFixup(struct tcphdr *tc, size_t pktlen, u_int16_t maxmss)
{
  size_t hlen, olen, optlen;
  u_char *opt;
  u_int16_t *mss;
  int accumulate;

  hlen = tc->th_off << 2;


  if (hlen <= sizeof(struct tcphdr) || hlen > pktlen)
    return;


  if (!(tc->th_flags & TH_SYN))
    return;

  for (olen = hlen - sizeof(struct tcphdr), opt = (u_char *)(tc + 1);
       olen > 0; olen -= optlen, opt += optlen) {
    if (*opt == TCPOPT_EOL)
      break;
    else if (*opt == TCPOPT_NOP)
      optlen = 1;
    else {
      optlen = *(opt + 1);
      if (optlen <= 0 || optlen > olen)
        break;
      if (*opt == TCPOPT_MAXSEG) {
        if (optlen != TCPOLEN_MAXSEG)
          continue;
        mss = (u_int16_t *)(opt + 2);
        if (ntohs(*mss) > maxmss) {
          log_Printf(LogDEBUG, "MSS: %u -> %u\n",
               ntohs(*mss), maxmss);
          accumulate = *mss;
          *mss = htons(maxmss);
          accumulate -= *mss;
          ADJUST_CHECKSUM(accumulate, tc->th_sum);
        }
      }
    }
  }
}
