
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg {int pi; } ;


 int pi_read_regr (int ,int ,int) ;

__attribute__((used)) static inline int read_reg(struct pg *dev, int reg)
{
 return pi_read_regr(dev->pi, 0, reg);
}
