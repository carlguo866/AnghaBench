
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALIGN_DEST_TO8_UP (unsigned long,unsigned long,long) ;
 int DO_REST_ALIGNED_UP (unsigned long,unsigned long,long) ;

__attribute__((used)) static inline void __memcpy_aligned_up (unsigned long d, unsigned long s,
     long n)
{
 ALIGN_DEST_TO8_UP(d,s,n);
 n -= 8;
 while (n >= 0) {
  unsigned long tmp;
  __asm__("ldq %0,%1":"=r" (tmp):"m" (*(unsigned long *) s));
  n -= 8;
  s += 8;
  *(unsigned long *) d = tmp;
  d += 8;
 }
 n += 8;
 DO_REST_ALIGNED_UP(d,s,n);
}
