
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_cs_parser {int dummy; } ;
struct radeon_cs_packet {int idx; unsigned int reg; unsigned int count; } ;


 int r600_packet0_check (struct radeon_cs_parser*,struct radeon_cs_packet*,unsigned int,unsigned int) ;

__attribute__((used)) static int r600_cs_parse_packet0(struct radeon_cs_parser *p,
    struct radeon_cs_packet *pkt)
{
 unsigned reg, i;
 unsigned idx;
 int r;

 idx = pkt->idx + 1;
 reg = pkt->reg;
 for (i = 0; i <= pkt->count; i++, idx++, reg += 4) {
  r = r600_packet0_check(p, pkt, idx, reg);
  if (r) {
   return r;
  }
 }
 return 0;
}
