
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_8__ {int integer; scalar_t__ raw; } ;
struct be {scalar_t__ type; scalar_t__ asnlen; TYPE_1__ data; } ;
struct TYPE_9__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_2__ netdissect_options ;


 scalar_t__ BE_INT ;
 scalar_t__ BE_SEQ ;
 scalar_t__ BE_STR ;
 int ND_PRINT (TYPE_2__*) ;
 int asn1_parse (TYPE_2__*,int const*,scalar_t__,struct be*) ;
 int asn1_print (TYPE_2__*,struct be*) ;
 int asn1_print_string (TYPE_2__*,struct be*) ;

__attribute__((used)) static void
usm_print(netdissect_options *ndo,
          const u_char *np, u_int length)
{
        struct be elem;
 int count = 0;


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_SEQ) {
  ND_PRINT((ndo, "[!usm]"));
  asn1_print(ndo, &elem);
  return;
 }
 length = elem.asnlen;
 np = (const u_char *)elem.data.raw;


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_STR) {
  ND_PRINT((ndo, "[msgAuthoritativeEngineID!=STR]"));
  asn1_print(ndo, &elem);
  return;
 }
 length -= count;
 np += count;


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_INT) {
  ND_PRINT((ndo, "[msgAuthoritativeEngineBoots!=INT]"));
  asn1_print(ndo, &elem);
  return;
 }
 if (ndo->ndo_vflag)
  ND_PRINT((ndo, "B=%d ", elem.data.integer));
 length -= count;
 np += count;


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_INT) {
  ND_PRINT((ndo, "[msgAuthoritativeEngineTime!=INT]"));
  asn1_print(ndo, &elem);
  return;
 }
 if (ndo->ndo_vflag)
  ND_PRINT((ndo, "T=%d ", elem.data.integer));
 length -= count;
 np += count;


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_STR) {
  ND_PRINT((ndo, "[msgUserName!=STR]"));
  asn1_print(ndo, &elem);
  return;
 }
 length -= count;
        np += count;

 ND_PRINT((ndo, "U="));
 if (asn1_print_string(ndo, &elem) == -1)
  return;
 ND_PRINT((ndo, " "));


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_STR) {
  ND_PRINT((ndo, "[msgAuthenticationParameters!=STR]"));
  asn1_print(ndo, &elem);
  return;
 }
 length -= count;
        np += count;


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_STR) {
  ND_PRINT((ndo, "[msgPrivacyParameters!=STR]"));
  asn1_print(ndo, &elem);
  return;
 }
 length -= count;
        np += count;

 if ((u_int)count < length)
  ND_PRINT((ndo, "[%d extra after usm SEQ]", length - count));
}
