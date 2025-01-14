
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct func_hook {scalar_t__ type; int hooked; scalar_t__ func_addr; void* call_addr; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ HOOKTYPE_FORWARD_CHAIN ;
 scalar_t__ HOOKTYPE_FORWARD_OVERWRITE ;
 scalar_t__ JMP_32_SIZE ;

__attribute__((used)) static inline void hook_forward_chain(struct func_hook *hook, uint8_t *p,
          intptr_t offset)
{
 int32_t cur_offset = *(int32_t *)&p[6];

 if (hook->type != HOOKTYPE_FORWARD_OVERWRITE)
  return;

 hook->call_addr = (void *)(hook->func_addr + JMP_32_SIZE + cur_offset);
 hook->type = HOOKTYPE_FORWARD_CHAIN;
 hook->hooked = 1;

 *((int32_t *)&p[6]) = (int32_t)offset;
}
