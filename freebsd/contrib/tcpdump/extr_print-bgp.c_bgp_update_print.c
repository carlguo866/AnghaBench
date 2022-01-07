
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct bgp {int dummy; } ;
typedef int netdissect_options ;
typedef int buf ;


 int BGP_SIZE ;
 int EXTRACT_16BITS (int const*) ;
 int MAXHOSTNAMELEN ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int bgp_attr_len (int,int const*) ;
 int bgp_attr_lenlen (int,int const*) ;
 int bgp_attr_print (int *,int,int const*,int) ;
 int bgp_attr_values ;
 int decode_prefix4 (int *,int const*,int,char*,int) ;
 int memcpy (struct bgp*,int const*,int) ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static void
bgp_update_print(netdissect_options *ndo,
                 const u_char *dat, int length)
{
 struct bgp bgp;
 const u_char *p;
 int withdrawn_routes_len;
 int len;
 int i;

 ND_TCHECK2(dat[0], BGP_SIZE);
 if (length < BGP_SIZE)
  goto trunc;
 memcpy(&bgp, dat, BGP_SIZE);
 p = dat + BGP_SIZE;
 length -= BGP_SIZE;


 ND_TCHECK2(p[0], 2);
 if (length < 2)
  goto trunc;
 withdrawn_routes_len = EXTRACT_16BITS(p);
 p += 2;
 length -= 2;
 if (withdrawn_routes_len) {





  ND_TCHECK2(p[0], withdrawn_routes_len);
  if (length < withdrawn_routes_len)
   goto trunc;
  ND_PRINT((ndo, "\n\t  Withdrawn routes: %d bytes", withdrawn_routes_len));
  p += withdrawn_routes_len;
  length -= withdrawn_routes_len;
 }

 ND_TCHECK2(p[0], 2);
 if (length < 2)
  goto trunc;
 len = EXTRACT_16BITS(p);
 p += 2;
 length -= 2;

        if (withdrawn_routes_len == 0 && len == 0 && length == 0) {

            ND_PRINT((ndo, "\n\t  End-of-Rib Marker (empty NLRI)"));
            return;
        }

 if (len) {

  while (len) {
   int aflags, atype, alenlen, alen;

   ND_TCHECK2(p[0], 2);
   if (len < 2)
       goto trunc;
   if (length < 2)
       goto trunc;
   aflags = *p;
   atype = *(p + 1);
   p += 2;
   len -= 2;
   length -= 2;
   alenlen = bgp_attr_lenlen(aflags, p);
   ND_TCHECK2(p[0], alenlen);
   if (len < alenlen)
       goto trunc;
   if (length < alenlen)
       goto trunc;
   alen = bgp_attr_len(aflags, p);
   p += alenlen;
   len -= alenlen;
   length -= alenlen;

   ND_PRINT((ndo, "\n\t  %s (%u), length: %u",
                              tok2str(bgp_attr_values, "Unknown Attribute",
      atype),
                              atype,
                              alen));

   if (aflags) {
    ND_PRINT((ndo, ", Flags [%s%s%s%s",
     aflags & 0x80 ? "O" : "",
     aflags & 0x40 ? "T" : "",
     aflags & 0x20 ? "P" : "",
     aflags & 0x10 ? "E" : ""));
    if (aflags & 0xf)
     ND_PRINT((ndo, "+%x", aflags & 0xf));
    ND_PRINT((ndo, "]: "));
   }
   if (len < alen)
    goto trunc;
   if (length < alen)
    goto trunc;
   if (!bgp_attr_print(ndo, atype, p, alen))
    goto trunc;
   p += alen;
   len -= alen;
   length -= alen;
  }
 }

 if (length) {
  ND_PRINT((ndo, "\n\t  Updated routes:"));
  while (length) {
   char buf[MAXHOSTNAMELEN + 100];
   i = decode_prefix4(ndo, p, length, buf, sizeof(buf));
   if (i == -1) {
    ND_PRINT((ndo, "\n\t    (illegal prefix length)"));
    break;
   } else if (i == -2)
    goto trunc;
   else if (i == -3)
    goto trunc;
   else {
    ND_PRINT((ndo, "\n\t    %s", buf));
    p += i;
    length -= i;
   }
  }
 }
 return;
trunc:
 ND_PRINT((ndo, "[|BGP]"));
}
