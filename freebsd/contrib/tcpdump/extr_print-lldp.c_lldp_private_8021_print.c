
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_24BITS (int const*) ;
 int FALSE ;

 int LLDP_PRIVATE_8021_SUBTYPE_APPLICATION_PRIORITY_MIN_LENGTH ;

 int LLDP_PRIVATE_8021_SUBTYPE_CDCP_MIN_LENGTH ;

 int LLDP_PRIVATE_8021_SUBTYPE_CONGESTION_NOTIFICATION_LENGTH ;

 int LLDP_PRIVATE_8021_SUBTYPE_ETS_CONFIGURATION_LENGTH ;

 int LLDP_PRIVATE_8021_SUBTYPE_ETS_RECOMMENDATION_LENGTH ;

 int LLDP_PRIVATE_8021_SUBTYPE_EVB_LENGTH ;

 int LLDP_PRIVATE_8021_SUBTYPE_PFC_CONFIGURATION_LENGTH ;




 int ND_PRINT (int *) ;
 int NO_OF_BITS ;
 int TRUE ;
 int bittok2str (int ,char*,int const) ;
 int lldp_8021_port_protocol_id_values ;
 int lldp_8021_subtype_values ;
 int lldp_evb_mode_values ;
 int print_ets_priority_assignment_table (int *,int const*) ;
 int print_tc_bandwidth_table (int *,int const*) ;
 int print_tsa_assignment_table (int *,int const*) ;
 int safeputs (int *,int const*,int) ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static int
lldp_private_8021_print(netdissect_options *ndo,
                        const u_char *tptr, u_int tlv_len)
{
    int subtype, hexdump = FALSE;
    u_int sublen;
    u_int tval;
    u_int i;

    if (tlv_len < 4) {
        return hexdump;
    }
    subtype = *(tptr+3);

    ND_PRINT((ndo, "\n\t  %s Subtype (%u)",
           tok2str(lldp_8021_subtype_values, "unknown", subtype),
           subtype));

    switch (subtype) {
    case 131:
        if (tlv_len < 6) {
            return hexdump;
        }
        ND_PRINT((ndo, "\n\t    port vlan id (PVID): %u",
               EXTRACT_16BITS(tptr + 4)));
        break;
    case 129:
        if (tlv_len < 7) {
            return hexdump;
        }
        ND_PRINT((ndo, "\n\t    port and protocol vlan id (PPVID): %u, flags [%s] (0x%02x)",
               EXTRACT_16BITS(tptr+5),
        bittok2str(lldp_8021_port_protocol_id_values, "none", *(tptr+4)),
        *(tptr + 4)));
        break;
    case 128:
        if (tlv_len < 6) {
            return hexdump;
        }
        ND_PRINT((ndo, "\n\t    vlan id (VID): %u", EXTRACT_16BITS(tptr + 4)));
        if (tlv_len < 7) {
            return hexdump;
        }
        sublen = *(tptr+6);
        if (tlv_len < 7+sublen) {
            return hexdump;
        }
        ND_PRINT((ndo, "\n\t    vlan name: "));
        safeputs(ndo, tptr + 7, sublen);
        break;
    case 130:
        if (tlv_len < 5) {
            return hexdump;
        }
        sublen = *(tptr+4);
        if (tlv_len < 5+sublen) {
            return hexdump;
        }
        ND_PRINT((ndo, "\n\t    protocol identity: "));
        safeputs(ndo, tptr + 5, sublen);
        break;
    case 136:
        if(tlv_len<LLDP_PRIVATE_8021_SUBTYPE_CONGESTION_NOTIFICATION_LENGTH){
         return hexdump;
        }
        tval=*(tptr+4);
        ND_PRINT((ndo, "\n\t    Pre-Priority CNPV Indicator"));
        ND_PRINT((ndo, "\n\t     Priority : 0  1  2  3  4  5  6  7"));
        ND_PRINT((ndo, "\n\t     Value    : "));
        for(i=0;i<NO_OF_BITS;i++)
            ND_PRINT((ndo, "%-2d ", (tval >> i) & 0x01));
        tval=*(tptr+5);
        ND_PRINT((ndo, "\n\t    Pre-Priority Ready Indicator"));
        ND_PRINT((ndo, "\n\t     Priority : 0  1  2  3  4  5  6  7"));
        ND_PRINT((ndo, "\n\t     Value    : "));
        for(i=0;i<NO_OF_BITS;i++)
            ND_PRINT((ndo, "%-2d ", (tval >> i) & 0x01));
        break;

    case 135:
        if(tlv_len<LLDP_PRIVATE_8021_SUBTYPE_ETS_CONFIGURATION_LENGTH) {
            return hexdump;
        }
        tval=*(tptr+4);
        ND_PRINT((ndo, "\n\t    Willing:%d, CBS:%d, RES:%d, Max TCs:%d",
         tval >> 7, (tval >> 6) & 0x02, (tval >> 3) & 0x07, tval & 0x07));


        print_ets_priority_assignment_table(ndo, tptr + 5);


        print_tc_bandwidth_table(ndo, tptr + 9);


        print_tsa_assignment_table(ndo, tptr + 17);

        break;

    case 134:
        if(tlv_len<LLDP_PRIVATE_8021_SUBTYPE_ETS_RECOMMENDATION_LENGTH) {
         return hexdump;
        }
        ND_PRINT((ndo, "\n\t    RES: %d", *(tptr + 4)));

        print_ets_priority_assignment_table(ndo, tptr + 5);

        print_tc_bandwidth_table(ndo, tptr + 9);

        print_tsa_assignment_table(ndo, tptr + 17);
        break;

    case 132:
        if(tlv_len<LLDP_PRIVATE_8021_SUBTYPE_PFC_CONFIGURATION_LENGTH) {
            return hexdump;
        }
        tval=*(tptr+4);
        ND_PRINT((ndo, "\n\t    Willing: %d, MBC: %d, RES: %d, PFC cap:%d ",
         tval >> 7, (tval >> 6) & 0x01, (tval >> 4) & 0x03, (tval & 0x0f)));
        ND_PRINT((ndo, "\n\t    PFC Enable"));
        tval=*(tptr+5);
        ND_PRINT((ndo, "\n\t     Priority : 0  1  2  3  4  5  6  7"));
        ND_PRINT((ndo, "\n\t     Value    : "));
        for(i=0;i<NO_OF_BITS;i++)
            ND_PRINT((ndo, "%-2d ", (tval >> i) & 0x01));
        break;

    case 138:
        if(tlv_len<LLDP_PRIVATE_8021_SUBTYPE_APPLICATION_PRIORITY_MIN_LENGTH) {
            return hexdump;
        }
        ND_PRINT((ndo, "\n\t    RES: %d", *(tptr + 4)));
        if(tlv_len<=LLDP_PRIVATE_8021_SUBTYPE_APPLICATION_PRIORITY_MIN_LENGTH){
         return hexdump;
        }

        sublen=tlv_len-5;
        if(sublen%3!=0){
         return hexdump;
        }
        i=0;
        ND_PRINT((ndo, "\n\t    Application Priority Table"));
        while(i<sublen) {
         tval=*(tptr+i+5);
         ND_PRINT((ndo, "\n\t      Priority: %u, RES: %u, Sel: %u, Protocol ID: %u",
           tval >> 5, (tval >> 3) & 0x03, (tval & 0x07),
           EXTRACT_16BITS(tptr + i + 5)));
         i=i+3;
        }
        break;
    case 133:
        if(tlv_len<LLDP_PRIVATE_8021_SUBTYPE_EVB_LENGTH){
         return hexdump;
        }
        ND_PRINT((ndo, "\n\t    EVB Bridge Status"));
        tval=*(tptr+4);
        ND_PRINT((ndo, "\n\t      RES: %d, BGID: %d, RRCAP: %d, RRCTR: %d",
         tval >> 3, (tval >> 2) & 0x01, (tval >> 1) & 0x01, tval & 0x01));
        ND_PRINT((ndo, "\n\t    EVB Station Status"));
        tval=*(tptr+5);
        ND_PRINT((ndo, "\n\t      RES: %d, SGID: %d, RRREQ: %d,RRSTAT: %d",
         tval >> 4, (tval >> 3) & 0x01, (tval >> 2) & 0x01, tval & 0x03));
        tval=*(tptr+6);
        ND_PRINT((ndo, "\n\t    R: %d, RTE: %d, ",tval >> 5, tval & 0x1f));
        tval=*(tptr+7);
        ND_PRINT((ndo, "EVB Mode: %s [%d]",
         tok2str(lldp_evb_mode_values, "unknown", tval >> 6), tval >> 6));
        ND_PRINT((ndo, "\n\t    ROL: %d, RWD: %d, ", (tval >> 5) & 0x01, tval & 0x1f));
        tval=*(tptr+8);
        ND_PRINT((ndo, "RES: %d, ROL: %d, RKA: %d", tval >> 6, (tval >> 5) & 0x01, tval & 0x1f));
        break;

    case 137:
        if(tlv_len<LLDP_PRIVATE_8021_SUBTYPE_CDCP_MIN_LENGTH){
         return hexdump;
        }
        tval=*(tptr+4);
        ND_PRINT((ndo, "\n\t    Role: %d, RES: %d, Scomp: %d ",
         tval >> 7, (tval >> 4) & 0x07, (tval >> 3) & 0x01));
        ND_PRINT((ndo, "ChnCap: %d", EXTRACT_16BITS(tptr + 6) & 0x0fff));
        sublen=tlv_len-8;
        if(sublen%3!=0) {
         return hexdump;
        }
        i=0;
        while(i<sublen) {
         tval=EXTRACT_24BITS(tptr+i+8);
         ND_PRINT((ndo, "\n\t    SCID: %d, SVID: %d",
          tval >> 12, tval & 0x000fff));
         i=i+3;
        }
        break;

    default:
        hexdump = TRUE;
        break;
    }

    return hexdump;
}
