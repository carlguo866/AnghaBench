
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct TYPE_4__ {int db_options; } ;
struct TYPE_3__ {int hello_options; } ;
struct ospfhdr {int ospf_type; int* ospf_authdata; int const ospf_authtype; int const ospf_len; TYPE_2__ ospf_db; TYPE_1__ ospf_hello; } ;
typedef int netdissect_options ;


 scalar_t__ EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 scalar_t__ OSPF_AUTH_MD5 ;


 int OSPF_OPTION_L ;


 int bittok2str (int ,char*,int ) ;
 int ospf_lls_eo_options ;
 int ospf_lls_tlv_values ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static int
ospf_decode_lls(netdissect_options *ndo,
                register const struct ospfhdr *op, register u_int length)
{
    register const u_char *dptr;
    register const u_char *dataend;
    register u_int length2;
    register uint16_t lls_type, lls_len;
    register uint32_t lls_flags;

    switch (op->ospf_type) {

    case 128:
        if (!(op->ospf_hello.hello_options & OSPF_OPTION_L))
            return (0);
        break;

    case 129:
        if (!(op->ospf_db.db_options & OSPF_OPTION_L))
            return (0);
        break;

    default:
        return (0);
    }


    length2 = EXTRACT_16BITS(&op->ospf_len);
    dptr = (const u_char *)op + length2;
    dataend = (const u_char *)op + length;

    if (EXTRACT_16BITS(&op->ospf_authtype) == OSPF_AUTH_MD5) {
        dptr = dptr + op->ospf_authdata[3];
        length2 += op->ospf_authdata[3];
    }
    if (length2 >= length) {
        ND_PRINT((ndo, "\n\t[LLS truncated]"));
        return (1);
    }
    ND_TCHECK2(*dptr, 2);
    ND_PRINT((ndo, "\n\t  LLS: checksum: 0x%04x", (u_int)EXTRACT_16BITS(dptr)));

    dptr += 2;
    ND_TCHECK2(*dptr, 2);
    length2 = EXTRACT_16BITS(dptr);
    ND_PRINT((ndo, ", length: %u", length2));

    dptr += 2;
    ND_TCHECK(*dptr);
    while (dptr < dataend) {
        ND_TCHECK2(*dptr, 2);
        lls_type = EXTRACT_16BITS(dptr);
        ND_PRINT((ndo, "\n\t    %s (%u)",
               tok2str(ospf_lls_tlv_values,"Unknown TLV",lls_type),
               lls_type));
        dptr += 2;
        ND_TCHECK2(*dptr, 2);
        lls_len = EXTRACT_16BITS(dptr);
        ND_PRINT((ndo, ", length: %u", lls_len));
        dptr += 2;
        switch (lls_type) {

        case 131:
            if (lls_len != 4) {
                ND_PRINT((ndo, " [should be 4]"));
                lls_len = 4;
            }
            ND_TCHECK2(*dptr, 4);
            lls_flags = EXTRACT_32BITS(dptr);
            ND_PRINT((ndo, "\n\t      Options: 0x%08x [%s]", lls_flags,
                   bittok2str(ospf_lls_eo_options, "?", lls_flags)));

            break;

        case 130:
            if (lls_len != 20) {
                ND_PRINT((ndo, " [should be 20]"));
                lls_len = 20;
            }
            ND_TCHECK2(*dptr, 4);
            ND_PRINT((ndo, "\n\t      Sequence number: 0x%08x", EXTRACT_32BITS(dptr)));
            break;
        }

        dptr += lls_len;
    }

    return (0);
trunc:
    return (1);
}
