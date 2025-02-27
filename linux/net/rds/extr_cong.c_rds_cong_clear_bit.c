
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_cong_map {scalar_t__* m_page_addrs; int m_addr; } ;
typedef int __be16 ;


 unsigned long RDS_CONG_MAP_PAGE_BITS ;
 unsigned long be16_to_cpu (int ) ;
 int clear_bit_le (unsigned long,void*) ;
 int ntohs (int ) ;
 int rdsdebug (char*,int *,int ,struct rds_cong_map*) ;

void rds_cong_clear_bit(struct rds_cong_map *map, __be16 port)
{
 unsigned long i;
 unsigned long off;

 rdsdebug("clearing congestion for %pI4:%u in map %p\n",
   &map->m_addr, ntohs(port), map);

 i = be16_to_cpu(port) / RDS_CONG_MAP_PAGE_BITS;
 off = be16_to_cpu(port) % RDS_CONG_MAP_PAGE_BITS;

 clear_bit_le(off, (void *)map->m_page_addrs[i]);
}
