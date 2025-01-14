
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int disable_cp (unsigned long,unsigned long) ;
 unsigned long enable_cp (unsigned long*) ;

__attribute__((used)) static int xtensa_expstate_get_value(struct gpio_chip *gc, unsigned offset)
{
 unsigned long flags, saved_cpenable;
 u32 expstate;

 flags = enable_cp(&saved_cpenable);
 __asm__ __volatile__("rur.expstate %0" : "=a" (expstate));
 disable_cp(flags, saved_cpenable);

 return !!(expstate & BIT(offset));
}
