
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum sip_header_types { ____Placeholder_sip_header_types } sip_header_types ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int __be16 ;


 scalar_t__ ct_sip_parse_header_uri (struct nf_conn*,char const*,int *,unsigned int,int,int *,unsigned int*,unsigned int*,union nf_inet_addr*,int *) ;
 int map_addr (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,unsigned int,unsigned int,union nf_inet_addr*,int ) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;

__attribute__((used)) static int map_sip_addr(struct sk_buff *skb, unsigned int protoff,
   unsigned int dataoff,
   const char **dptr, unsigned int *datalen,
   enum sip_header_types type)
{
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct = nf_ct_get(skb, &ctinfo);
 unsigned int matchlen, matchoff;
 union nf_inet_addr addr;
 __be16 port;

 if (ct_sip_parse_header_uri(ct, *dptr, ((void*)0), *datalen, type, ((void*)0),
        &matchoff, &matchlen, &addr, &port) <= 0)
  return 1;
 return map_addr(skb, protoff, dataoff, dptr, datalen,
   matchoff, matchlen, &addr, port);
}
