
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_cs_parser {int dummy; } ;
struct radeon_cs_packet {int idx; unsigned int reg; int count; scalar_t__ one_reg_wr; } ;
typedef int (* radeon_packet0_check_t ) (struct radeon_cs_parser*,struct radeon_cs_packet*,unsigned int,unsigned int) ;


 int EINVAL ;

int r100_cs_parse_packet0(struct radeon_cs_parser *p,
     struct radeon_cs_packet *pkt,
     const unsigned *auth, unsigned n,
     radeon_packet0_check_t check)
{
 unsigned reg;
 unsigned i, j, m;
 unsigned idx;
 int r;

 idx = pkt->idx + 1;
 reg = pkt->reg;




 if (pkt->one_reg_wr) {
  if ((reg >> 7) > n) {
   return -EINVAL;
  }
 } else {
  if (((reg + (pkt->count << 2)) >> 7) > n) {
   return -EINVAL;
  }
 }
 for (i = 0; i <= pkt->count; i++, idx++) {
  j = (reg >> 7);
  m = 1 << ((reg >> 2) & 31);
  if (auth[j] & m) {
   r = check(p, pkt, idx, reg);
   if (r) {
    return r;
   }
  }
  if (pkt->one_reg_wr) {
   if (!(auth[j] & m)) {
    break;
   }
  } else {
   reg += 4;
  }
 }
 return 0;
}
