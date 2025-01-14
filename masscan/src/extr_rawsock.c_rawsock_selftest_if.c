
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Adapter {int dummy; } ;
typedef int ifname2 ;


 int LOG (int,char*,char const*) ;
 int arp_resolve_sync (struct Adapter*,unsigned int,unsigned char*,unsigned int,unsigned char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ memcmp (unsigned char*,char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int printf (char*,...) ;
 int rawsock_close_adapter (struct Adapter*) ;
 unsigned int rawsock_get_adapter_ip (char const*) ;
 int rawsock_get_adapter_mac (char const*,unsigned char*) ;
 int rawsock_get_default_gateway (char const*,unsigned int*) ;
 int rawsock_get_default_interface (char*,int) ;
 struct Adapter* rawsock_init_adapter (char const*,int ,int ,int ,int ,int ,int ,int ) ;
 int stderr ;

int
rawsock_selftest_if(const char *ifname)
{
    int err;
    unsigned ipv4 = 0;
    unsigned router_ipv4 = 0;
    unsigned char mac[6] = {0,0,0,0,0,0};
    struct Adapter *adapter;
    char ifname2[246];

    if (ifname == ((void*)0) || ifname[0] == 0) {
        err = rawsock_get_default_interface(ifname2, sizeof(ifname2));
        if (err) {
            fprintf(stderr, "get-default-if: returned err %d\n", err);
            return -1;
        }
        ifname = ifname2;
    }


    printf("if = %s\n", ifname);


    ipv4 = rawsock_get_adapter_ip(ifname);
    if (ipv4 == 0) {
        fprintf(stderr, "get-ip: returned err\n");
    } else {
        printf("ip = %u.%u.%u.%u\n",
            (unsigned char)(ipv4>>24),
            (unsigned char)(ipv4>>16),
            (unsigned char)(ipv4>>8),
            (unsigned char)(ipv4>>0));
    }


    err = rawsock_get_adapter_mac(ifname, mac);
    if (err) {
        fprintf(stderr, "get-adapter-mac: returned err=%d\n", err);
    } else {
        printf("mac = %02x-%02x-%02x-%02x-%02x-%02x\n",
            mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
    }


    err = rawsock_get_default_gateway(ifname, &router_ipv4);
    if (err) {
        fprintf(stderr, "get-default-gateway: returned err=%d\n", err);
    } else {
        unsigned char router_mac[6];

        printf("gateway = %u.%u.%u.%u\n",
            (unsigned char)(router_ipv4>>24),
            (unsigned char)(router_ipv4>>16),
            (unsigned char)(router_ipv4>>8),
            (unsigned char)(router_ipv4>>0));


        adapter = rawsock_init_adapter(ifname, 0, 0, 0, 0, 0, 0, 0);
        if (adapter == 0) {
            LOG(1, "if:%s: failed\n", ifname);
            return -1;
        } else {
            printf("pcap = opened\n");
        }

        memset(router_mac, 0, 6);
        arp_resolve_sync(
                adapter,
                ipv4,
                mac,
                router_ipv4,
                router_mac);

        if (memcmp(router_mac, "\0\0\0\0\0\0", 6) != 0) {
            printf("gateway = %02x-%02x-%02x-%02x-%02x-%02x\n",
                router_mac[0],
                router_mac[1],
                router_mac[2],
                router_mac[3],
                router_mac[4],
                router_mac[5]
            );
        } else {
            printf("gateway = [failed to ARP address]\n");
        }
        rawsock_close_adapter(adapter);
    }

    return 0;
}
