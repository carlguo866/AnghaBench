
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 int IEEE754_CLT ;
 int ieee754dp_cmp (int ,int ,int ,int ) ;

__attribute__((used)) static inline int ieee754dp_lt(ieee754dp x, ieee754dp y)
{
 return ieee754dp_cmp(x, y, IEEE754_CLT, 0);
}
