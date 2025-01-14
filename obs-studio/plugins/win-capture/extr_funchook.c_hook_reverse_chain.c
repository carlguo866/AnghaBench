
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct func_hook {scalar_t__ type; int hooked; scalar_t__ func_addr; scalar_t__ hook_addr; void* call_addr; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ HOOKTYPE_FORWARD_OVERWRITE ;
 scalar_t__ HOOKTYPE_REVERSE_CHAIN ;

__attribute__((used)) static inline void hook_reverse_chain(struct func_hook *hook, uint8_t *p)
{
 if (hook->type != HOOKTYPE_FORWARD_OVERWRITE)
  return;

 hook->call_addr = (void *)(hook->func_addr + *((int32_t *)&p[1]));
 hook->type = HOOKTYPE_REVERSE_CHAIN;
 hook->hooked = 1;

 *((uint32_t *)&p[1]) = (uint32_t)(hook->hook_addr - hook->func_addr);
}
