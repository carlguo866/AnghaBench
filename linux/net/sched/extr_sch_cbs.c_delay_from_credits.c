
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s64 ;


 scalar_t__ NSEC_PER_SEC ;
 scalar_t__ S64_MAX ;
 scalar_t__ div64_s64 (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static s64 delay_from_credits(s64 credits, s64 slope)
{
 if (unlikely(slope == 0))
  return S64_MAX;

 return div64_s64(-credits * NSEC_PER_SEC, slope);
}
