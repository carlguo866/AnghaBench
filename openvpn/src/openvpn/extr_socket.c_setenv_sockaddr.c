
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct TYPE_10__ {int * s6_addr; } ;
struct TYPE_7__ {int sin6_port; TYPE_5__ sin6_addr; } ;
struct TYPE_9__ {int sa_family; } ;
struct in_addr {int s_addr; } ;
struct TYPE_6__ {int sin_port; struct in_addr sin_addr; } ;
struct TYPE_8__ {TYPE_2__ in6; TYPE_4__ sa; TYPE_1__ in4; } ;
struct openvpn_sockaddr {TYPE_3__ addr; } ;
struct env_set {int dummy; } ;
typedef int name_buf ;
typedef int buf ;




 int IN6_IS_ADDR_V4MAPPED (TYPE_5__*) ;
 int NI_NUMERICHOST ;
 unsigned int const SA_IP_PORT ;
 int getnameinfo (TYPE_4__*,int,char*,int,int *,int ,int ) ;
 char const* inet_ntoa (struct in_addr) ;
 int memcpy (int *,int *,int) ;
 int ntohs (int ) ;
 int openvpn_snprintf (char*,int,char*,char const*) ;
 int setenv_int (struct env_set*,char*,int ) ;
 int setenv_str (struct env_set*,char*,char*) ;

void
setenv_sockaddr(struct env_set *es, const char *name_prefix, const struct openvpn_sockaddr *addr, const unsigned int flags)
{
    char name_buf[256];

    char buf[128];
    switch (addr->addr.sa.sa_family)
    {
        case 129:
            if (flags & SA_IP_PORT)
            {
                openvpn_snprintf(name_buf, sizeof(name_buf), "%s_ip", name_prefix);
            }
            else
            {
                openvpn_snprintf(name_buf, sizeof(name_buf), "%s", name_prefix);
            }

            setenv_str(es, name_buf, inet_ntoa(addr->addr.in4.sin_addr));

            if ((flags & SA_IP_PORT) && addr->addr.in4.sin_port)
            {
                openvpn_snprintf(name_buf, sizeof(name_buf), "%s_port", name_prefix);
                setenv_int(es, name_buf, ntohs(addr->addr.in4.sin_port));
            }
            break;

        case 128:
            if (IN6_IS_ADDR_V4MAPPED( &addr->addr.in6.sin6_addr ))
            {
                struct in_addr ia;
                memcpy(&ia.s_addr, &addr->addr.in6.sin6_addr.s6_addr[12],
                       sizeof(ia.s_addr));
                openvpn_snprintf(name_buf, sizeof(name_buf), "%s_ip", name_prefix);
                openvpn_snprintf(buf, sizeof(buf), "%s", inet_ntoa(ia) );
            }
            else
            {
                openvpn_snprintf(name_buf, sizeof(name_buf), "%s_ip6", name_prefix);
                getnameinfo(&addr->addr.sa, sizeof(struct sockaddr_in6),
                            buf, sizeof(buf), ((void*)0), 0, NI_NUMERICHOST);
            }
            setenv_str(es, name_buf, buf);

            if ((flags & SA_IP_PORT) && addr->addr.in6.sin6_port)
            {
                openvpn_snprintf(name_buf, sizeof(name_buf), "%s_port", name_prefix);
                setenv_int(es, name_buf, ntohs(addr->addr.in6.sin6_port));
            }
            break;
    }
}
