
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int th_off; int th_dport; } ;
struct libalias {int dummy; } ;
struct ip {int ip_hl; int ip_len; } ;
struct alias_link {int dummy; } ;


 scalar_t__ RTSP_CONTROL_PORT_NUMBER_1 ;
 scalar_t__ RTSP_CONTROL_PORT_NUMBER_2 ;
 int alias_pna_out (struct libalias*,struct ip*,struct alias_link*,char*,int) ;
 int alias_rtsp_out (struct libalias*,struct ip*,struct alias_link*,char*,char const*) ;
 scalar_t__ ip_next (struct ip*) ;
 scalar_t__ memcmp (char*,char const*,scalar_t__) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
AliasHandleRtspOut(struct libalias *la, struct ip *pip, struct alias_link *lnk, int maxpacketsize)
{
 int hlen, tlen, dlen;
 struct tcphdr *tc;
 char *data;
 const char *setup = "SETUP", *pna = "PNA", *str200 = "200";
 const char *okstr = "OK", *client_port_str = "client_port";
 const char *server_port_str = "server_port";
 int i, parseOk;

 (void)maxpacketsize;

 tc = (struct tcphdr *)ip_next(pip);
 hlen = (pip->ip_hl + tc->th_off) << 2;
 tlen = ntohs(pip->ip_len);
 dlen = tlen - hlen;

 data = (char *)pip;
 data += hlen;


 if ((ntohs(tc->th_dport) == RTSP_CONTROL_PORT_NUMBER_1) ||
     (ntohs(tc->th_dport) == RTSP_CONTROL_PORT_NUMBER_2)) {

  if (dlen >= (int)strlen(setup)) {
   if (memcmp(data, setup, strlen(setup)) == 0) {
    alias_rtsp_out(la, pip, lnk, data, client_port_str);
    return;
   }
  }
  if (dlen >= (int)strlen(pna)) {
   if (memcmp(data, pna, strlen(pna)) == 0) {
    alias_pna_out(la, pip, lnk, data, dlen);
   }
  }
 } else {






  if (dlen >= (int)strlen(str200)) {

   for (parseOk = 0, i = 0;
       i <= dlen - (int)strlen(str200);
       i++) {
    if (memcmp(&data[i], str200, strlen(str200)) == 0) {
     parseOk = 1;
     break;
    }
   }
   if (parseOk) {

    i += strlen(str200);
    while (data[i] == ' ')
     i++;

    if ((dlen - i) >= (int)strlen(okstr)) {

     if (memcmp(&data[i], okstr, strlen(okstr)) == 0)
      alias_rtsp_out(la, pip, lnk, data, server_port_str);

    }
   }
  }
 }
}
