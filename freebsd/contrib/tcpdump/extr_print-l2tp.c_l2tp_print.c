
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int FALSE ;
 int L2TP_FLAG_LENGTH ;
 int L2TP_FLAG_OFFSET ;
 int L2TP_FLAG_PRIORITY ;
 int L2TP_FLAG_SEQUENCE ;
 int L2TP_FLAG_TYPE ;
 int L2TP_VERSION_L2F ;
 int L2TP_VERSION_L2TP ;
 int L2TP_VERSION_MASK ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int TRUE ;
 int l2tp_avp_print (int *,int const*,int) ;
 int ppp_print (int *,int const*,int) ;
 int tstr ;

void
l2tp_print(netdissect_options *ndo, const u_char *dat, u_int length)
{
 const u_char *ptr = dat;
 u_int cnt = 0;
 uint16_t pad;
 int flag_t, flag_l, flag_s, flag_o;
 uint16_t l2tp_len;

 flag_t = flag_l = flag_s = flag_o = FALSE;

 ND_TCHECK2(*ptr, 2);
 if ((EXTRACT_16BITS(ptr) & L2TP_VERSION_MASK) == L2TP_VERSION_L2TP) {
  ND_PRINT((ndo, " l2tp:"));
 } else if ((EXTRACT_16BITS(ptr) & L2TP_VERSION_MASK) == L2TP_VERSION_L2F) {
  ND_PRINT((ndo, " l2f:"));
  return;
 } else {
  ND_PRINT((ndo, " Unknown Version, neither L2F(1) nor L2TP(2)"));
  return;
 }

 ND_PRINT((ndo, "["));
 if (EXTRACT_16BITS(ptr) & L2TP_FLAG_TYPE) {
  flag_t = TRUE;
  ND_PRINT((ndo, "T"));
 }
 if (EXTRACT_16BITS(ptr) & L2TP_FLAG_LENGTH) {
  flag_l = TRUE;
  ND_PRINT((ndo, "L"));
 }
 if (EXTRACT_16BITS(ptr) & L2TP_FLAG_SEQUENCE) {
  flag_s = TRUE;
  ND_PRINT((ndo, "S"));
 }
 if (EXTRACT_16BITS(ptr) & L2TP_FLAG_OFFSET) {
  flag_o = TRUE;
  ND_PRINT((ndo, "O"));
 }
 if (EXTRACT_16BITS(ptr) & L2TP_FLAG_PRIORITY)
  ND_PRINT((ndo, "P"));
 ND_PRINT((ndo, "]"));

 ptr += 2;
 cnt += 2;

 if (flag_l) {
  ND_TCHECK2(*ptr, 2);
  l2tp_len = EXTRACT_16BITS(ptr);
  ptr += 2;
  cnt += 2;
 } else {
  l2tp_len = 0;
 }

 ND_TCHECK2(*ptr, 2);
 ND_PRINT((ndo, "(%u/", EXTRACT_16BITS(ptr)));
 ptr += 2;
 cnt += 2;
 ND_TCHECK2(*ptr, 2);
 ND_PRINT((ndo, "%u)", EXTRACT_16BITS(ptr)));
 ptr += 2;
 cnt += 2;

 if (flag_s) {
  ND_TCHECK2(*ptr, 2);
  ND_PRINT((ndo, "Ns=%u,", EXTRACT_16BITS(ptr)));
  ptr += 2;
  cnt += 2;
  ND_TCHECK2(*ptr, 2);
  ND_PRINT((ndo, "Nr=%u", EXTRACT_16BITS(ptr)));
  ptr += 2;
  cnt += 2;
 }

 if (flag_o) {
  ND_TCHECK2(*ptr, 2);
  pad = EXTRACT_16BITS(ptr);
  ptr += (2 + pad);
  cnt += (2 + pad);
 }

 if (flag_l) {
  if (length < l2tp_len) {
   ND_PRINT((ndo, " Length %u larger than packet", l2tp_len));
   return;
  }
  length = l2tp_len;
 }
 if (length < cnt) {
  ND_PRINT((ndo, " Length %u smaller than header length", length));
  return;
 }
 if (flag_t) {
  if (!flag_l) {
   ND_PRINT((ndo, " No length"));
   return;
  }
  if (length - cnt == 0) {
   ND_PRINT((ndo, " ZLB"));
  } else {
   l2tp_avp_print(ndo, ptr, length - cnt);
  }
 } else {
  ND_PRINT((ndo, " {"));
  ppp_print(ndo, ptr, length - cnt);
  ND_PRINT((ndo, "}"));
 }

 return;

 trunc:
 ND_PRINT((ndo, "%s", tstr));
}
