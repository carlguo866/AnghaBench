
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int addr; } ;
struct TYPE_13__ {int addr; } ;
struct TYPE_16__ {TYPE_3__ ip4; TYPE_1__ ip6; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_4__ u_addr; } ;
struct TYPE_20__ {TYPE_7__ addr; } ;
typedef TYPE_8__ mdns_ip_addr_t ;
struct TYPE_17__ {int addr; } ;
struct TYPE_14__ {int addr; } ;
struct TYPE_18__ {TYPE_5__ ip4; TYPE_2__ ip6; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_6__ u_addr; } ;
typedef TYPE_9__ esp_ip_addr_t ;


 int HOOK_MALLOC_FAILED ;
 scalar_t__ IPADDR_TYPE_V6 ;
 scalar_t__ malloc (int) ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_8__*,int ,int) ;

__attribute__((used)) static mdns_ip_addr_t * _mdns_result_addr_create_ip(esp_ip_addr_t * ip)
{
    mdns_ip_addr_t * a = (mdns_ip_addr_t *)malloc(sizeof(mdns_ip_addr_t));
    if (!a) {
        HOOK_MALLOC_FAILED;
        return ((void*)0);
    }
    memset(a, 0 , sizeof(mdns_ip_addr_t));
    a->addr.type = ip->type;
    if (ip->type == IPADDR_TYPE_V6) {
        memcpy(a->addr.u_addr.ip6.addr, ip->u_addr.ip6.addr, 16);
    } else {
        a->addr.u_addr.ip4.addr = ip->u_addr.ip4.addr;
    }
    return a;
}
