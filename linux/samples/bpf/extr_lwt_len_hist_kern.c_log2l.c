
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int log2 (unsigned long) ;

__attribute__((used)) static unsigned int log2l(unsigned long v)
{
 unsigned int hi = v >> 32;
 if (hi)
  return log2(hi) + 32;
 else
  return log2(v);
}
