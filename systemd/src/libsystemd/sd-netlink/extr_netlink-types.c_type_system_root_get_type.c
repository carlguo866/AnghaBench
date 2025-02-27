
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_8__ {scalar_t__ protocol; } ;
typedef TYPE_1__ sd_netlink ;
typedef size_t sd_genl_family ;
struct TYPE_10__ {size_t count; TYPE_2__* types; } ;
struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_2__ NLType ;


 int EOPNOTSUPP ;
 scalar_t__ NETLINK_GENERIC ;
 scalar_t__ NETLINK_TYPE_UNSPEC ;
 TYPE_7__ genl_type_system_root ;
 int nlmsg_type_to_genl_family (TYPE_1__*,int ,size_t*) ;
 int rtnl_type_system_root ;
 int type_system_get_type (int *,TYPE_2__ const**,int ) ;

int type_system_root_get_type(sd_netlink *nl, const NLType **ret, uint16_t type) {
        sd_genl_family family;
        const NLType *nl_type;
        int r;

        if (!nl || nl->protocol != NETLINK_GENERIC)
                return type_system_get_type(&rtnl_type_system_root, ret, type);

        r = nlmsg_type_to_genl_family(nl, type, &family);
        if (r < 0)
                return r;

        if (family >= genl_type_system_root.count)
                return -EOPNOTSUPP;

        nl_type = &genl_type_system_root.types[family];

        if (nl_type->type == NETLINK_TYPE_UNSPEC)
                return -EOPNOTSUPP;

        *ret = nl_type;

        return 0;
}
