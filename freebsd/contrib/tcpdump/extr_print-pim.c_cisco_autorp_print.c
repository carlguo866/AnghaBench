
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int ipaddr_string (int *,int const*) ;
 int unsigned_relts_print (int *,int) ;

void
cisco_autorp_print(netdissect_options *ndo,
                   register const u_char *bp, register u_int len)
{
 int type;
 int numrps;
 int hold;

 if (len < 8)
  goto trunc;
 ND_TCHECK(bp[0]);
 ND_PRINT((ndo, " auto-rp "));
 type = bp[0];
 switch (type) {
 case 0x11:
  ND_PRINT((ndo, "candidate-advert"));
  break;
 case 0x12:
  ND_PRINT((ndo, "mapping"));
  break;
 default:
  ND_PRINT((ndo, "type-0x%02x", type));
  break;
 }

 ND_TCHECK(bp[1]);
 numrps = bp[1];

 ND_TCHECK2(bp[2], 2);
 ND_PRINT((ndo, " Hold "));
 hold = EXTRACT_16BITS(&bp[2]);
 if (hold)
  unsigned_relts_print(ndo, EXTRACT_16BITS(&bp[2]));
 else
  ND_PRINT((ndo, "FOREVER"));



 bp += 8; len -= 8;
 while (numrps--) {
  int nentries;
  char s;

  if (len < 4)
   goto trunc;
  ND_TCHECK2(bp[0], 4);
  ND_PRINT((ndo, " RP %s", ipaddr_string(ndo, bp)));
  bp += 4;
  len -= 4;
  if (len < 1)
   goto trunc;
  ND_TCHECK(bp[0]);
  switch (bp[0] & 0x3) {
  case 0: ND_PRINT((ndo, " PIMv?"));
   break;
  case 1: ND_PRINT((ndo, " PIMv1"));
   break;
  case 2: ND_PRINT((ndo, " PIMv2"));
   break;
  case 3: ND_PRINT((ndo, " PIMv1+2"));
   break;
  }
  if (bp[0] & 0xfc)
   ND_PRINT((ndo, " [rsvd=0x%02x]", bp[0] & 0xfc));
  bp += 1;
  len -= 1;
  if (len < 1)
   goto trunc;
  ND_TCHECK(bp[0]);
  nentries = bp[0];
  bp += 1;
  len -= 1;
  s = ' ';
  for (; nentries; nentries--) {
   if (len < 6)
    goto trunc;
   ND_TCHECK2(bp[0], 6);
   ND_PRINT((ndo, "%c%s%s/%d", s, bp[0] & 1 ? "!" : "",
             ipaddr_string(ndo, &bp[2]), bp[1]));
   if (bp[0] & 0x02) {
    ND_PRINT((ndo, " bidir"));
   }
   if (bp[0] & 0xfc) {
    ND_PRINT((ndo, "[rsvd=0x%02x]", bp[0] & 0xfc));
   }
   s = ',';
   bp += 6; len -= 6;
  }
 }
 return;

trunc:
 ND_PRINT((ndo, "[|autorp]"));
 return;
}
