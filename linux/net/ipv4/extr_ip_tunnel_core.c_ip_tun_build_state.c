
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct lwtunnel_state {int type; } ;
struct TYPE_4__ {void* src; void* dst; } ;
struct TYPE_5__ {TYPE_1__ ipv4; } ;
struct TYPE_6__ {int tun_flags; void* tos; void* ttl; TYPE_2__ u; int tun_id; } ;
struct ip_tunnel_info {scalar_t__ options_len; int mode; TYPE_3__ key; int dst_cache; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IP_TUNNEL_INFO_TX ;
 int LWTUNNEL_ENCAP_IP ;
 size_t LWTUNNEL_IP_DST ;
 size_t LWTUNNEL_IP_FLAGS ;
 size_t LWTUNNEL_IP_ID ;
 int LWTUNNEL_IP_MAX ;
 size_t LWTUNNEL_IP_SRC ;
 size_t LWTUNNEL_IP_TOS ;
 size_t LWTUNNEL_IP_TTL ;
 int dst_cache_init (int *,int ) ;
 int ip_tun_policy ;
 struct ip_tunnel_info* lwt_tun_info (struct lwtunnel_state*) ;
 int lwtstate_free (struct lwtunnel_state*) ;
 struct lwtunnel_state* lwtunnel_state_alloc (int) ;
 int nla_get_be16 (struct nlattr*) ;
 int nla_get_be64 (struct nlattr*) ;
 void* nla_get_in_addr (struct nlattr*) ;
 void* nla_get_u8 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int ip_tun_build_state(struct nlattr *attr,
         unsigned int family, const void *cfg,
         struct lwtunnel_state **ts,
         struct netlink_ext_ack *extack)
{
 struct ip_tunnel_info *tun_info;
 struct lwtunnel_state *new_state;
 struct nlattr *tb[LWTUNNEL_IP_MAX + 1];
 int err;

 err = nla_parse_nested_deprecated(tb, LWTUNNEL_IP_MAX, attr,
       ip_tun_policy, extack);
 if (err < 0)
  return err;

 new_state = lwtunnel_state_alloc(sizeof(*tun_info));
 if (!new_state)
  return -ENOMEM;

 new_state->type = LWTUNNEL_ENCAP_IP;

 tun_info = lwt_tun_info(new_state);
 if (tb[LWTUNNEL_IP_ID])
  tun_info->key.tun_id = nla_get_be64(tb[LWTUNNEL_IP_ID]);

 if (tb[LWTUNNEL_IP_DST])
  tun_info->key.u.ipv4.dst = nla_get_in_addr(tb[LWTUNNEL_IP_DST]);

 if (tb[LWTUNNEL_IP_SRC])
  tun_info->key.u.ipv4.src = nla_get_in_addr(tb[LWTUNNEL_IP_SRC]);

 if (tb[LWTUNNEL_IP_TTL])
  tun_info->key.ttl = nla_get_u8(tb[LWTUNNEL_IP_TTL]);

 if (tb[LWTUNNEL_IP_TOS])
  tun_info->key.tos = nla_get_u8(tb[LWTUNNEL_IP_TOS]);

 if (tb[LWTUNNEL_IP_FLAGS])
  tun_info->key.tun_flags = nla_get_be16(tb[LWTUNNEL_IP_FLAGS]);

 tun_info->mode = IP_TUNNEL_INFO_TX;
 tun_info->options_len = 0;

 *ts = new_state;

 return 0;
}
