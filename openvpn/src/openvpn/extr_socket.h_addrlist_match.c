
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_7__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct TYPE_8__ {int sin6_addr; } ;
struct TYPE_11__ {int s_addr; } ;
struct TYPE_12__ {TYPE_5__ sin_addr; } ;
struct TYPE_9__ {int sa_family; } ;
struct TYPE_10__ {TYPE_2__ in6; TYPE_6__ in4; TYPE_3__ sa; } ;
struct openvpn_sockaddr {TYPE_4__ addr; } ;
struct addrinfo {scalar_t__ ai_addr; struct addrinfo* ai_next; } ;




 int ASSERT (int ) ;
 int IN6_ARE_ADDR_EQUAL (int *,int *) ;

__attribute__((used)) static inline bool
addrlist_match(const struct openvpn_sockaddr *a1, const struct addrinfo *addrlist)
{
    const struct addrinfo *curele;
    for (curele = addrlist; curele; curele = curele->ai_next)
    {
        switch (a1->addr.sa.sa_family)
        {
            case 129:
                if (a1->addr.in4.sin_addr.s_addr == ((struct sockaddr_in *)curele->ai_addr)->sin_addr.s_addr)
                {
                    return 1;
                }
                break;

            case 128:
                if (IN6_ARE_ADDR_EQUAL(&a1->addr.in6.sin6_addr, &((struct sockaddr_in6 *) curele->ai_addr)->sin6_addr))
                {
                    return 1;
                }
                break;

            default:
                ASSERT(0);
        }
    }
    return 0;
}
