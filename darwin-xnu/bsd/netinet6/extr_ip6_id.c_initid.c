
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
typedef scalar_t__ time_t ;
struct randomtab {unsigned int ru_x; unsigned int ru_m; unsigned int ru_seed; int ru_bits; unsigned int ru_seed2; unsigned int ru_b; unsigned int ru_n; size_t* pfacts; unsigned int ru_msb; scalar_t__ ru_out; scalar_t__ ru_reseed; scalar_t__ ru_counter; int ru_gen; void* ru_g; int ru_agen; void* ru_a; } ;


 unsigned int RandomULong () ;
 int net_uptime () ;
 void* pmod (int ,size_t,unsigned int) ;

__attribute__((used)) static void
initid(struct randomtab *p)
{
 time_t curtime = (time_t)net_uptime();
 u_int32_t j, i;
 int noprime = 1;

 p->ru_x = RandomULong() % p->ru_m;


 p->ru_seed = RandomULong() & (~0U >> (32 - p->ru_bits + 1));
 p->ru_seed2 = RandomULong() & (~0U >> (32 - p->ru_bits + 1));


 p->ru_b = (RandomULong() & (~0U >> (32 - p->ru_bits))) | 1;
 p->ru_a = pmod(p->ru_agen,
     (RandomULong() & (~0U >> (32 - p->ru_bits))) & (~1U), p->ru_m);
 while (p->ru_b % 3 == 0)
  p->ru_b += 2;

 j = RandomULong() % p->ru_n;






 while (noprime) {
  for (i = 0; p->pfacts[i] > 0; i++)
   if (j % p->pfacts[i] == 0)
    break;

  if (p->pfacts[i] == 0)
   noprime = 0;
  else
   j = (j + 1) % p->ru_n;
 }

 p->ru_g = pmod(p->ru_gen, j, p->ru_n);
 p->ru_counter = 0;

 p->ru_reseed = curtime + p->ru_out;
 p->ru_msb = p->ru_msb ? 0 : (1U << (p->ru_bits - 1));
}
