
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_desc {scalar_t__ Op0; scalar_t__ Op1; scalar_t__ CRn; scalar_t__ CRm; int Op2; } ;


 int BUG_ON (int) ;

__attribute__((used)) static inline int cmp_sys_reg(const struct sys_reg_desc *i1,
         const struct sys_reg_desc *i2)
{
 BUG_ON(i1 == i2);
 if (!i1)
  return 1;
 else if (!i2)
  return -1;
 if (i1->Op0 != i2->Op0)
  return i1->Op0 - i2->Op0;
 if (i1->Op1 != i2->Op1)
  return i1->Op1 - i2->Op1;
 if (i1->CRn != i2->CRn)
  return i1->CRn - i2->CRn;
 if (i1->CRm != i2->CRm)
  return i1->CRm - i2->CRm;
 return i1->Op2 - i2->Op2;
}
