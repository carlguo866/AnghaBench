
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;



 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int isis_ext_ip_reach_subtlv_values ;
 int print_unknown_data (int *,int const*,char*,int) ;
 int tok2str (int ,char*,int) ;
 int tstr ;

__attribute__((used)) static int
isis_print_ip_reach_subtlv(netdissect_options *ndo,
                           const uint8_t *tptr, int subt, int subl,
                           const char *ident)
{

    ND_PRINT((ndo, "%s%s subTLV #%u, length: %u",
              ident, tok2str(isis_ext_ip_reach_subtlv_values, "unknown", subt),
              subt, subl));

    ND_TCHECK2(*tptr,subl);

    switch(subt) {
    case 128:
    case 130:
        while (subl >= 4) {
     ND_PRINT((ndo, ", 0x%08x (=%u)",
     EXTRACT_32BITS(tptr),
     EXTRACT_32BITS(tptr)));
     tptr+=4;
     subl-=4;
 }
 break;
    case 129:
        while (subl >= 8) {
     ND_PRINT((ndo, ", 0x%08x%08x",
     EXTRACT_32BITS(tptr),
     EXTRACT_32BITS(tptr+4)));
     tptr+=8;
     subl-=8;
 }
 break;
    default:
 if (!print_unknown_data(ndo, tptr, "\n\t\t    ", subl))
   return(0);
 break;
    }
    return(1);

trunc:
    ND_PRINT((ndo, "%s", ident));
    ND_PRINT((ndo, "%s", tstr));
    return(0);
}
