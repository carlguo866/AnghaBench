
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int si_int ;


 int CHAR_BIT ;
 int compilerrt_abort () ;

si_int __absvsi2(si_int a) {
  const int N = (int)(sizeof(si_int) * CHAR_BIT);
  if (a == (1 << (N - 1)))
    compilerrt_abort();
  const si_int t = a >> (N - 1);
  return (a ^ t) - t;
}
