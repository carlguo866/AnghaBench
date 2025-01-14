
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct icmp6hdr {unsigned int icmp6_type; } ;
typedef unsigned int __u32 ;
struct TYPE_3__ {unsigned int* data; } ;
struct TYPE_4__ {TYPE_1__ filter; } ;


 int ICMPV6_HDRLEN ;
 TYPE_2__* raw6_sk (struct sock const*) ;
 struct icmp6hdr* skb_header_pointer (struct sk_buff const*,int ,int ,struct icmp6hdr*) ;
 int skb_transport_offset (struct sk_buff const*) ;

__attribute__((used)) static int icmpv6_filter(const struct sock *sk, const struct sk_buff *skb)
{
 struct icmp6hdr _hdr;
 const struct icmp6hdr *hdr;




 hdr = skb_header_pointer(skb, skb_transport_offset(skb),
     ICMPV6_HDRLEN, &_hdr);
 if (hdr) {
  const __u32 *data = &raw6_sk(sk)->filter.data[0];
  unsigned int type = hdr->icmp6_type;

  return (data[type >> 5] & (1U << (type & 31))) != 0;
 }
 return 1;
}
