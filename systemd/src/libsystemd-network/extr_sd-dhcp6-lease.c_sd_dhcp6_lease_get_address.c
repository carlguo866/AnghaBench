
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct in6_addr {TYPE_2__* addr_iter; } ;
typedef struct in6_addr uint32_t ;
typedef struct in6_addr sd_dhcp6_lease ;
struct TYPE_3__ {int lifetime_valid; int lifetime_preferred; int address; } ;
struct TYPE_4__ {struct TYPE_4__* addresses_next; TYPE_1__ iaaddr; } ;


 int EINVAL ;
 int ENOMSG ;
 int assert_return (struct in6_addr*,int ) ;
 struct in6_addr be32toh (int ) ;
 int memcpy (struct in6_addr*,int *,int) ;

int sd_dhcp6_lease_get_address(sd_dhcp6_lease *lease, struct in6_addr *addr,
                               uint32_t *lifetime_preferred,
                               uint32_t *lifetime_valid) {
        assert_return(lease, -EINVAL);
        assert_return(addr, -EINVAL);
        assert_return(lifetime_preferred, -EINVAL);
        assert_return(lifetime_valid, -EINVAL);

        if (!lease->addr_iter)
                return -ENOMSG;

        memcpy(addr, &lease->addr_iter->iaaddr.address,
                sizeof(struct in6_addr));
        *lifetime_preferred =
                be32toh(lease->addr_iter->iaaddr.lifetime_preferred);
        *lifetime_valid = be32toh(lease->addr_iter->iaaddr.lifetime_valid);

        lease->addr_iter = lease->addr_iter->addresses_next;

        return 0;
}
