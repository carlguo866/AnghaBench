
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;



__attribute__((used)) static inline int rsch(struct subchannel_id schid)
{
 register struct subchannel_id reg1 asm("1") = schid;
 int ccode;

 asm volatile(
  "	rsch\n"
  "	ipm	%0\n"
  "	srl	%0,28"
  : "=d" (ccode)
  : "d" (reg1)
  : "cc", "memory");
 return ccode;
}
