
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754sp ;


 int IEEE754_CEQ ;
 int IEEE754_CLT ;
 int ieee754sp_cmp (int ,int ,int,int ) ;

__attribute__((used)) static inline int ieee754sp_le(ieee754sp x, ieee754sp y)
{
 return ieee754sp_cmp(x, y, IEEE754_CLT | IEEE754_CEQ, 0);
}
