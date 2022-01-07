
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct in_addr {int dummy; } ;
typedef int netdissect_options ;
typedef int addr ;


 int ITEMCHECK (int) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 char* ipaddr_string (int *,struct in_addr*) ;
 int memcpy (struct in_addr*,int const*,int) ;
 int memset (struct in_addr*,int ,int) ;
 int snprintf (char*,int,char*,char*,int) ;

int
decode_prefix4(netdissect_options *ndo,
               const u_char *pptr, u_int itemlen, char *buf, u_int buflen)
{
 struct in_addr addr;
 u_int plen, plenbytes;

 ND_TCHECK(pptr[0]);
 ITEMCHECK(1);
 plen = pptr[0];
 if (32 < plen)
  return -1;
 itemlen -= 1;

 memset(&addr, 0, sizeof(addr));
 plenbytes = (plen + 7) / 8;
 ND_TCHECK2(pptr[1], plenbytes);
 ITEMCHECK(plenbytes);
 memcpy(&addr, &pptr[1], plenbytes);
 if (plen % 8) {
  ((u_char *)&addr)[plenbytes - 1] &=
   ((0xff00 >> (plen % 8)) & 0xff);
 }
 snprintf(buf, buflen, "%s/%d", ipaddr_string(ndo, &addr), plen);
 return 1 + plenbytes;

trunc:
 return -2;

badtlv:
 return -3;
}
