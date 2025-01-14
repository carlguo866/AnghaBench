
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct protocol {int fd; struct interface_info* local; } ;
struct interface_info {int errors; int dead; int name; } ;
struct iaddr {int len; int iabuf; } ;
struct hardware {int dummy; } ;
struct dhcp_packet {int hlen; int chaddr; } ;
typedef int ssize_t ;
struct TYPE_5__ {int DhclientInfo; int ListEntry; } ;
typedef TYPE_1__* PDHCP_ADAPTER ;


 TYPE_1__* AdapterFindByHardwareAddress (int ,int ) ;
 TYPE_1__* AdapterFindInfo (struct interface_info*) ;
 int RemoveEntryList (int *) ;
 int WSAGetLastError () ;
 int bootp_packet_handler (int *,struct dhcp_packet*,int,int ,struct iaddr,struct hardware*) ;
 int closesocket (int ) ;
 int free (TYPE_1__*) ;
 int memcpy (int ,int *,int) ;
 int receive_packet (struct interface_info*,unsigned char*,int,struct sockaddr_in*,struct hardware*) ;
 int remove_protocol (struct protocol*) ;
 int stub1 (int *,struct dhcp_packet*,int,int ,struct iaddr,struct hardware*) ;
 int warning (char*,...) ;

void
got_one(struct protocol *l)
{
    struct sockaddr_in from;
    struct hardware hfrom;
    struct iaddr ifrom;
    ssize_t result;
    union {




        unsigned char packbuf[4095];
        struct dhcp_packet packet;
    } u;
    struct interface_info *ip = l->local;
    PDHCP_ADAPTER adapter;

    if ((result = receive_packet(ip, u.packbuf, sizeof(u), &from,
                                 &hfrom)) == -1) {
        warning("receive_packet failed on %s: %d", ip->name,
                WSAGetLastError());
        ip->errors++;
        if (ip->errors > 20) {

            warning("Interface %s no longer appears valid.",
                    ip->name);
            ip->dead = 1;
            closesocket(l->fd);
            remove_protocol(l);
            adapter = AdapterFindInfo(ip);
            if (adapter) {
                RemoveEntryList(&adapter->ListEntry);
                free(adapter);
            }
        }
        return;
    }
    if (result == 0)
        return;

    if (bootp_packet_handler) {
        ifrom.len = 4;
        memcpy(ifrom.iabuf, &from.sin_addr, ifrom.len);


        adapter = AdapterFindByHardwareAddress(u.packet.chaddr,
                                               u.packet.hlen);

        if (!adapter) {
            warning("Discarding packet with a non-matching target physical address\n");
            return;
        }

        (*bootp_packet_handler)(&adapter->DhclientInfo, &u.packet, result,
                                from.sin_port, ifrom, &hfrom);
    }
}
