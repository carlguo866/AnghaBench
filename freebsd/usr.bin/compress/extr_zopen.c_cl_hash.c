
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_zstate {int dummy; } ;
typedef int count_int ;


 int* htab ;

__attribute__((used)) static void
cl_hash(struct s_zstate *zs, count_int cl_hsize)
{
 count_int *htab_p;
 long i, m1;

 m1 = -1;
 htab_p = htab + cl_hsize;
 i = cl_hsize - 16;
 do {
  *(htab_p - 16) = m1;
  *(htab_p - 15) = m1;
  *(htab_p - 14) = m1;
  *(htab_p - 13) = m1;
  *(htab_p - 12) = m1;
  *(htab_p - 11) = m1;
  *(htab_p - 10) = m1;
  *(htab_p - 9) = m1;
  *(htab_p - 8) = m1;
  *(htab_p - 7) = m1;
  *(htab_p - 6) = m1;
  *(htab_p - 5) = m1;
  *(htab_p - 4) = m1;
  *(htab_p - 3) = m1;
  *(htab_p - 2) = m1;
  *(htab_p - 1) = m1;
  htab_p -= 16;
 } while ((i -= 16) >= 0);
 for (i += 16; i > 0; i--)
  *--htab_p = m1;
}
