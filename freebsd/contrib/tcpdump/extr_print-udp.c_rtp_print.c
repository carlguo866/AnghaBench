
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct udphdr {int uh_ulen; } ;
struct TYPE_4__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK_16BITS (int *) ;
 int ND_TCHECK_32BITS (int const*) ;
 int rtp_tstr ;

__attribute__((used)) static void
rtp_print(netdissect_options *ndo, const void *hdr, u_int len,
          register const struct udphdr *up)
{

 const u_int *ip = (const u_int *)hdr;
 u_int hasopt, hasext, contype, hasmarker, dlen;
 uint32_t i0, i1;
 const char * ptype;

 ND_TCHECK_32BITS(&((const u_int *)hdr)[0]);
 i0 = EXTRACT_32BITS(&((const u_int *)hdr)[0]);
 ND_TCHECK_32BITS(&((const u_int *)hdr)[1]);
 i1 = EXTRACT_32BITS(&((const u_int *)hdr)[1]);
 ND_TCHECK_16BITS(&up->uh_ulen);
 dlen = EXTRACT_16BITS(&up->uh_ulen) - sizeof(*up) - 8;
 ip += 2;
 len >>= 2;
 len -= 2;
 hasopt = 0;
 hasext = 0;
 if ((i0 >> 30) == 1) {

  hasopt = i0 & 0x800000;
  contype = (i0 >> 16) & 0x3f;
  hasmarker = i0 & 0x400000;
  ptype = "rtpv1";
 } else {

  hasext = i0 & 0x10000000;
  contype = (i0 >> 16) & 0x7f;
  hasmarker = i0 & 0x800000;
  dlen -= 4;
  ptype = "rtp";
  ip += 1;
  len -= 1;
 }
 ND_PRINT((ndo, "udp/%s %d c%d %s%s %d %u",
  ptype,
  dlen,
  contype,
  (hasopt || hasext)? "+" : "",
  hasmarker? "*" : "",
  i0 & 0xffff,
  i1));
 if (ndo->ndo_vflag) {
  ND_TCHECK_32BITS(&((const u_int *)hdr)[2]);
  ND_PRINT((ndo, " %u", EXTRACT_32BITS(&((const u_int *)hdr)[2])));
  if (hasopt) {
   u_int i2, optlen;
   do {
    ND_TCHECK_32BITS(ip);
    i2 = EXTRACT_32BITS(ip);
    optlen = (i2 >> 16) & 0xff;
    if (optlen == 0 || optlen > len) {
     ND_PRINT((ndo, " !opt"));
     return;
    }
    ip += optlen;
    len -= optlen;
   } while ((int)i2 >= 0);
  }
  if (hasext) {
   u_int i2, extlen;
   ND_TCHECK_32BITS(ip);
   i2 = EXTRACT_32BITS(ip);
   extlen = (i2 & 0xffff) + 1;
   if (extlen > len) {
    ND_PRINT((ndo, " !ext"));
    return;
   }
   ip += extlen;
  }
  ND_TCHECK_32BITS(ip);
  if (contype == 0x1f)
   ND_PRINT((ndo, " 0x%04x", EXTRACT_32BITS(ip) >> 16));
 }

trunc:
 ND_PRINT((ndo, "%s", rtp_tstr));
}
