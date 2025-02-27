
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hash_ipportnet4_elem {scalar_t__ ip; scalar_t__ ip2; scalar_t__ cidr; scalar_t__ port; scalar_t__ proto; } ;



__attribute__((used)) static inline bool
hash_ipportnet4_data_equal(const struct hash_ipportnet4_elem *ip1,
      const struct hash_ipportnet4_elem *ip2,
      u32 *multi)
{
 return ip1->ip == ip2->ip &&
        ip1->ip2 == ip2->ip2 &&
        ip1->cidr == ip2->cidr &&
        ip1->port == ip2->port &&
        ip1->proto == ip2->proto;
}
