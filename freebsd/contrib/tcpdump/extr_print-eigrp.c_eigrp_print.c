
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ** uint8_t ;
typedef int u_int ;
typedef int u_char ;
struct eigrp_tlv_sw_version_t {int eigrp_minor; int eigrp_major; int ios_minor; int ios_major; } ;
struct eigrp_tlv_ip_int_t {int plen; int load; int reliability; int hopcount; int mtu; int *** bandwidth; int *** delay; int *** nexthop; int destination; } ;
struct eigrp_tlv_ip_ext_t {int plen; int proto_id; int load; int reliability; int hopcount; int mtu; int *** bandwidth; int *** delay; int **** metric; int **** tag; int flags; int **** origin_as; int **** origin_router; int *** nexthop; int destination; } ;
struct eigrp_tlv_header {int *** type; int *** length; } ;
struct eigrp_tlv_general_parm_t {int k5; int k4; int k3; int k2; int k1; int **** holdtime; } ;
struct eigrp_tlv_at_int_t {int load; int reliability; int hopcount; int mtu; int *** bandwidth; int *** delay; int **** nexthop; int *** cable_end; int *** cable_start; } ;
struct eigrp_tlv_at_ext_t {int proto_id; int load; int reliability; int hopcount; int mtu; int *** bandwidth; int *** delay; int **** metric; int **** tag; int flags; int **** origin_as; int **** origin_router; int **** nexthop; int *** cable_end; int *** cable_start; } ;
struct eigrp_tlv_at_cable_setup_t {int *** router_id; int *** cable_end; int *** cable_start; } ;
struct eigrp_common_header {scalar_t__ version; int opcode; int *** asn; int *** ack; int *** seq; int *** flags; int *** checksum; } ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;
 scalar_t__ EIGRP_VERSION ;
 int EXTRACT_16BITS (int ***) ;
 int EXTRACT_24BITS (int *) ;
 int EXTRACT_32BITS (int ***) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct eigrp_common_header const) ;
 int ND_TCHECK2 (int const,int) ;
 int eigrp_common_header_flag_values ;
 int eigrp_ext_proto_id_values ;
 int eigrp_opcode_values ;
 int eigrp_tlv_values ;
 int ipaddr_string (TYPE_1__*,int ***) ;
 int memcpy (int ***,int *,int) ;
 int memset (int ***,int ,int) ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int tok2str (int ,char*,int) ;

void
eigrp_print(netdissect_options *ndo, register const u_char *pptr, register u_int len)
{
    const struct eigrp_common_header *eigrp_com_header;
    const struct eigrp_tlv_header *eigrp_tlv_header;
    const u_char *tptr,*tlv_tptr;
    u_int tlen,eigrp_tlv_len,eigrp_tlv_type,tlv_tlen, byte_length, bit_length;
    uint8_t prefix[4];

    union {
        const struct eigrp_tlv_general_parm_t *eigrp_tlv_general_parm;
        const struct eigrp_tlv_sw_version_t *eigrp_tlv_sw_version;
        const struct eigrp_tlv_ip_int_t *eigrp_tlv_ip_int;
        const struct eigrp_tlv_ip_ext_t *eigrp_tlv_ip_ext;
        const struct eigrp_tlv_at_cable_setup_t *eigrp_tlv_at_cable_setup;
        const struct eigrp_tlv_at_int_t *eigrp_tlv_at_int;
        const struct eigrp_tlv_at_ext_t *eigrp_tlv_at_ext;
    } tlv_ptr;

    tptr=pptr;
    eigrp_com_header = (const struct eigrp_common_header *)pptr;
    ND_TCHECK(*eigrp_com_header);




    if (eigrp_com_header->version != EIGRP_VERSION) {
 ND_PRINT((ndo, "EIGRP version %u packet not supported",eigrp_com_header->version));
 return;
    }


    if (ndo->ndo_vflag < 1) {
        ND_PRINT((ndo, "EIGRP %s, length: %u",
               tok2str(eigrp_opcode_values, "unknown (%u)",eigrp_com_header->opcode),
               len));
        return;
    }



    if (len < sizeof(struct eigrp_common_header)) {
        ND_PRINT((ndo, "EIGRP %s, length: %u (too short, < %u)",
               tok2str(eigrp_opcode_values, "unknown (%u)",eigrp_com_header->opcode),
               len, (u_int) sizeof(struct eigrp_common_header)));
        return;
    }
    tlen=len-sizeof(struct eigrp_common_header);


    ND_PRINT((ndo, "\n\tEIGRP v%u, opcode: %s (%u), chksum: 0x%04x, Flags: [%s]\n\tseq: 0x%08x, ack: 0x%08x, AS: %u, length: %u",
           eigrp_com_header->version,
           tok2str(eigrp_opcode_values, "unknown, type: %u",eigrp_com_header->opcode),
           eigrp_com_header->opcode,
           EXTRACT_16BITS(&eigrp_com_header->checksum),
           tok2str(eigrp_common_header_flag_values,
                   "none",
                   EXTRACT_32BITS(&eigrp_com_header->flags)),
           EXTRACT_32BITS(&eigrp_com_header->seq),
           EXTRACT_32BITS(&eigrp_com_header->ack),
           EXTRACT_32BITS(&eigrp_com_header->asn),
           tlen));

    tptr+=sizeof(const struct eigrp_common_header);

    while(tlen>0) {

        ND_TCHECK2(*tptr, sizeof(struct eigrp_tlv_header));

        eigrp_tlv_header = (const struct eigrp_tlv_header *)tptr;
        eigrp_tlv_len=EXTRACT_16BITS(&eigrp_tlv_header->length);
        eigrp_tlv_type=EXTRACT_16BITS(&eigrp_tlv_header->type);


        if (eigrp_tlv_len < sizeof(struct eigrp_tlv_header) ||
            eigrp_tlv_len > tlen) {
            print_unknown_data(ndo,tptr+sizeof(struct eigrp_tlv_header),"\n\t    ",tlen);
            return;
        }

        ND_PRINT((ndo, "\n\t  %s TLV (0x%04x), length: %u",
               tok2str(eigrp_tlv_values,
                       "Unknown",
                       eigrp_tlv_type),
               eigrp_tlv_type,
               eigrp_tlv_len));

        if (eigrp_tlv_len < sizeof(struct eigrp_tlv_header)) {
                ND_PRINT((ndo, " (too short, < %u)",
                        (u_int) sizeof(struct eigrp_tlv_header)));
                break;
        }
        tlv_tptr=tptr+sizeof(struct eigrp_tlv_header);
        tlv_tlen=eigrp_tlv_len-sizeof(struct eigrp_tlv_header);


        ND_TCHECK2(*tptr, eigrp_tlv_len);

        switch(eigrp_tlv_type) {

        case 135:
            tlv_ptr.eigrp_tlv_general_parm = (const struct eigrp_tlv_general_parm_t *)tlv_tptr;
            if (tlv_tlen < sizeof(*tlv_ptr.eigrp_tlv_general_parm)) {
                ND_PRINT((ndo, " (too short, < %u)",
                    (u_int) (sizeof(struct eigrp_tlv_header) + sizeof(*tlv_ptr.eigrp_tlv_general_parm))));
                break;
            }

            ND_PRINT((ndo, "\n\t    holdtime: %us, k1 %u, k2 %u, k3 %u, k4 %u, k5 %u",
                   EXTRACT_16BITS(tlv_ptr.eigrp_tlv_general_parm->holdtime),
                   tlv_ptr.eigrp_tlv_general_parm->k1,
                   tlv_ptr.eigrp_tlv_general_parm->k2,
                   tlv_ptr.eigrp_tlv_general_parm->k3,
                   tlv_ptr.eigrp_tlv_general_parm->k4,
                   tlv_ptr.eigrp_tlv_general_parm->k5));
            break;

        case 128:
            tlv_ptr.eigrp_tlv_sw_version = (const struct eigrp_tlv_sw_version_t *)tlv_tptr;
            if (tlv_tlen < sizeof(*tlv_ptr.eigrp_tlv_sw_version)) {
                ND_PRINT((ndo, " (too short, < %u)",
                    (u_int) (sizeof(struct eigrp_tlv_header) + sizeof(*tlv_ptr.eigrp_tlv_sw_version))));
                break;
            }

            ND_PRINT((ndo, "\n\t    IOS version: %u.%u, EIGRP version %u.%u",
                   tlv_ptr.eigrp_tlv_sw_version->ios_major,
                   tlv_ptr.eigrp_tlv_sw_version->ios_minor,
                   tlv_ptr.eigrp_tlv_sw_version->eigrp_major,
                   tlv_ptr.eigrp_tlv_sw_version->eigrp_minor));
            break;

        case 131:
            tlv_ptr.eigrp_tlv_ip_int = (const struct eigrp_tlv_ip_int_t *)tlv_tptr;
            if (tlv_tlen < sizeof(*tlv_ptr.eigrp_tlv_ip_int)) {
                ND_PRINT((ndo, " (too short, < %u)",
                    (u_int) (sizeof(struct eigrp_tlv_header) + sizeof(*tlv_ptr.eigrp_tlv_ip_int))));
                break;
            }

            bit_length = tlv_ptr.eigrp_tlv_ip_int->plen;
            if (bit_length > 32) {
                ND_PRINT((ndo, "\n\t    illegal prefix length %u",bit_length));
                break;
            }
            byte_length = (bit_length + 7) / 8;
            memset(prefix, 0, 4);
            memcpy(prefix,&tlv_ptr.eigrp_tlv_ip_int->destination,byte_length);

            ND_PRINT((ndo, "\n\t    IPv4 prefix: %15s/%u, nexthop: ",
                   ipaddr_string(ndo, prefix),
                   bit_length));
            if (EXTRACT_32BITS(&tlv_ptr.eigrp_tlv_ip_int->nexthop) == 0)
                ND_PRINT((ndo, "self"));
            else
                ND_PRINT((ndo, "%s",ipaddr_string(ndo, &tlv_ptr.eigrp_tlv_ip_int->nexthop)));

            ND_PRINT((ndo, "\n\t      delay %u ms, bandwidth %u Kbps, mtu %u, hop %u, reliability %u, load %u",
                   (EXTRACT_32BITS(&tlv_ptr.eigrp_tlv_ip_int->delay)/100),
                   EXTRACT_32BITS(&tlv_ptr.eigrp_tlv_ip_int->bandwidth),
                   EXTRACT_24BITS(&tlv_ptr.eigrp_tlv_ip_int->mtu),
                   tlv_ptr.eigrp_tlv_ip_int->hopcount,
                   tlv_ptr.eigrp_tlv_ip_int->reliability,
                   tlv_ptr.eigrp_tlv_ip_int->load));
            break;

        case 132:
            tlv_ptr.eigrp_tlv_ip_ext = (const struct eigrp_tlv_ip_ext_t *)tlv_tptr;
            if (tlv_tlen < sizeof(*tlv_ptr.eigrp_tlv_ip_ext)) {
                ND_PRINT((ndo, " (too short, < %u)",
                    (u_int) (sizeof(struct eigrp_tlv_header) + sizeof(*tlv_ptr.eigrp_tlv_ip_ext))));
                break;
            }

            bit_length = tlv_ptr.eigrp_tlv_ip_ext->plen;
            if (bit_length > 32) {
                ND_PRINT((ndo, "\n\t    illegal prefix length %u",bit_length));
                break;
            }
            byte_length = (bit_length + 7) / 8;
            memset(prefix, 0, 4);
            memcpy(prefix,&tlv_ptr.eigrp_tlv_ip_ext->destination,byte_length);

            ND_PRINT((ndo, "\n\t    IPv4 prefix: %15s/%u, nexthop: ",
                   ipaddr_string(ndo, prefix),
                   bit_length));
            if (EXTRACT_32BITS(&tlv_ptr.eigrp_tlv_ip_ext->nexthop) == 0)
                ND_PRINT((ndo, "self"));
            else
                ND_PRINT((ndo, "%s",ipaddr_string(ndo, &tlv_ptr.eigrp_tlv_ip_ext->nexthop)));

            ND_PRINT((ndo, "\n\t      origin-router %s, origin-as %u, origin-proto %s, flags [0x%02x], tag 0x%08x, metric %u",
                   ipaddr_string(ndo, tlv_ptr.eigrp_tlv_ip_ext->origin_router),
                   EXTRACT_32BITS(tlv_ptr.eigrp_tlv_ip_ext->origin_as),
                   tok2str(eigrp_ext_proto_id_values,"unknown",tlv_ptr.eigrp_tlv_ip_ext->proto_id),
                   tlv_ptr.eigrp_tlv_ip_ext->flags,
                   EXTRACT_32BITS(tlv_ptr.eigrp_tlv_ip_ext->tag),
                   EXTRACT_32BITS(tlv_ptr.eigrp_tlv_ip_ext->metric)));

            ND_PRINT((ndo, "\n\t      delay %u ms, bandwidth %u Kbps, mtu %u, hop %u, reliability %u, load %u",
                   (EXTRACT_32BITS(&tlv_ptr.eigrp_tlv_ip_ext->delay)/100),
                   EXTRACT_32BITS(&tlv_ptr.eigrp_tlv_ip_ext->bandwidth),
                   EXTRACT_24BITS(&tlv_ptr.eigrp_tlv_ip_ext->mtu),
                   tlv_ptr.eigrp_tlv_ip_ext->hopcount,
                   tlv_ptr.eigrp_tlv_ip_ext->reliability,
                   tlv_ptr.eigrp_tlv_ip_ext->load));
            break;

        case 139:
            tlv_ptr.eigrp_tlv_at_cable_setup = (const struct eigrp_tlv_at_cable_setup_t *)tlv_tptr;
            if (tlv_tlen < sizeof(*tlv_ptr.eigrp_tlv_at_cable_setup)) {
                ND_PRINT((ndo, " (too short, < %u)",
                    (u_int) (sizeof(struct eigrp_tlv_header) + sizeof(*tlv_ptr.eigrp_tlv_at_cable_setup))));
                break;
            }

            ND_PRINT((ndo, "\n\t    Cable-range: %u-%u, Router-ID %u",
                   EXTRACT_16BITS(&tlv_ptr.eigrp_tlv_at_cable_setup->cable_start),
                   EXTRACT_16BITS(&tlv_ptr.eigrp_tlv_at_cable_setup->cable_end),
                   EXTRACT_32BITS(&tlv_ptr.eigrp_tlv_at_cable_setup->router_id)));
            break;

        case 137:
            tlv_ptr.eigrp_tlv_at_int = (const struct eigrp_tlv_at_int_t *)tlv_tptr;
            if (tlv_tlen < sizeof(*tlv_ptr.eigrp_tlv_at_int)) {
                ND_PRINT((ndo, " (too short, < %u)",
                    (u_int) (sizeof(struct eigrp_tlv_header) + sizeof(*tlv_ptr.eigrp_tlv_at_int))));
                break;
            }

            ND_PRINT((ndo, "\n\t     Cable-Range: %u-%u, nexthop: ",
                   EXTRACT_16BITS(&tlv_ptr.eigrp_tlv_at_int->cable_start),
                   EXTRACT_16BITS(&tlv_ptr.eigrp_tlv_at_int->cable_end)));

            if (EXTRACT_32BITS(&tlv_ptr.eigrp_tlv_at_int->nexthop) == 0)
                ND_PRINT((ndo, "self"));
            else
                ND_PRINT((ndo, "%u.%u",
                       EXTRACT_16BITS(&tlv_ptr.eigrp_tlv_at_int->nexthop),
                       EXTRACT_16BITS(&tlv_ptr.eigrp_tlv_at_int->nexthop[2])));

            ND_PRINT((ndo, "\n\t      delay %u ms, bandwidth %u Kbps, mtu %u, hop %u, reliability %u, load %u",
                   (EXTRACT_32BITS(&tlv_ptr.eigrp_tlv_at_int->delay)/100),
                   EXTRACT_32BITS(&tlv_ptr.eigrp_tlv_at_int->bandwidth),
                   EXTRACT_24BITS(&tlv_ptr.eigrp_tlv_at_int->mtu),
                   tlv_ptr.eigrp_tlv_at_int->hopcount,
                   tlv_ptr.eigrp_tlv_at_int->reliability,
                   tlv_ptr.eigrp_tlv_at_int->load));
            break;

        case 138:
            tlv_ptr.eigrp_tlv_at_ext = (const struct eigrp_tlv_at_ext_t *)tlv_tptr;
            if (tlv_tlen < sizeof(*tlv_ptr.eigrp_tlv_at_ext)) {
                ND_PRINT((ndo, " (too short, < %u)",
                    (u_int) (sizeof(struct eigrp_tlv_header) + sizeof(*tlv_ptr.eigrp_tlv_at_ext))));
                break;
            }

            ND_PRINT((ndo, "\n\t     Cable-Range: %u-%u, nexthop: ",
                   EXTRACT_16BITS(&tlv_ptr.eigrp_tlv_at_ext->cable_start),
                   EXTRACT_16BITS(&tlv_ptr.eigrp_tlv_at_ext->cable_end)));

            if (EXTRACT_32BITS(&tlv_ptr.eigrp_tlv_at_ext->nexthop) == 0)
                ND_PRINT((ndo, "self"));
            else
                ND_PRINT((ndo, "%u.%u",
                       EXTRACT_16BITS(&tlv_ptr.eigrp_tlv_at_ext->nexthop),
                       EXTRACT_16BITS(&tlv_ptr.eigrp_tlv_at_ext->nexthop[2])));

            ND_PRINT((ndo, "\n\t      origin-router %u, origin-as %u, origin-proto %s, flags [0x%02x], tag 0x%08x, metric %u",
                   EXTRACT_32BITS(tlv_ptr.eigrp_tlv_at_ext->origin_router),
                   EXTRACT_32BITS(tlv_ptr.eigrp_tlv_at_ext->origin_as),
                   tok2str(eigrp_ext_proto_id_values,"unknown",tlv_ptr.eigrp_tlv_at_ext->proto_id),
                   tlv_ptr.eigrp_tlv_at_ext->flags,
                   EXTRACT_32BITS(tlv_ptr.eigrp_tlv_at_ext->tag),
                   EXTRACT_16BITS(tlv_ptr.eigrp_tlv_at_ext->metric)));

            ND_PRINT((ndo, "\n\t      delay %u ms, bandwidth %u Kbps, mtu %u, hop %u, reliability %u, load %u",
                   (EXTRACT_32BITS(&tlv_ptr.eigrp_tlv_at_ext->delay)/100),
                   EXTRACT_32BITS(&tlv_ptr.eigrp_tlv_at_ext->bandwidth),
                   EXTRACT_24BITS(&tlv_ptr.eigrp_tlv_at_ext->mtu),
                   tlv_ptr.eigrp_tlv_at_ext->hopcount,
                   tlv_ptr.eigrp_tlv_at_ext->reliability,
                   tlv_ptr.eigrp_tlv_at_ext->load));
            break;






        case 136:
        case 129:
        case 130:
        case 133:
        case 134:

        default:
            if (ndo->ndo_vflag <= 1)
                print_unknown_data(ndo,tlv_tptr,"\n\t    ",tlv_tlen);
            break;
        }

        if (ndo->ndo_vflag > 1)
            print_unknown_data(ndo,tptr+sizeof(struct eigrp_tlv_header),"\n\t    ",
                               eigrp_tlv_len-sizeof(struct eigrp_tlv_header));

        tptr+=eigrp_tlv_len;
        tlen-=eigrp_tlv_len;
    }
    return;
trunc:
    ND_PRINT((ndo, "\n\t\t packet exceeded snapshot"));
}
