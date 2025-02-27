
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_addr_t ;


 int AF_INET ;
 char* iface ;
 int inet_pton (int ,char const*,int *) ;
 int net_route_v4_add (int *,int *,int,int *,char*,int ,int) ;
 int ntohl (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static int
net__route_v4_add(const char *dst_str, int prefixlen, int metric)
{
    in_addr_t dst;
    int ret;

    if (!dst_str)
        return -1;

    ret = inet_pton(AF_INET, dst_str, &dst);
    if (ret != 1)
        return -1;

    dst = ntohl(dst);

    printf("CMD: ip route add %s/%d dev %s", dst_str, prefixlen, iface);
    if (metric > 0)
        printf(" metric %d", metric);
    printf("\n");

    return net_route_v4_add(((void*)0), &dst, prefixlen, ((void*)0), iface, 0, metric);

}
