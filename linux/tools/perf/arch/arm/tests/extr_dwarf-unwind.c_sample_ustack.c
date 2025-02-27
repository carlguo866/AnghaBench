
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct thread {int mg; } ;
struct stack_dump {char* data; scalar_t__ size; } ;
struct perf_sample {struct stack_dump user_stack; } ;
struct map {scalar_t__ end; } ;


 size_t PERF_REG_ARM_SP ;
 scalar_t__ STACK_SIZE ;
 int free (scalar_t__*) ;
 scalar_t__* malloc (scalar_t__) ;
 struct map* map_groups__find (int ,scalar_t__) ;
 int memcpy (scalar_t__*,void*,scalar_t__) ;
 int pr_debug (char*) ;

__attribute__((used)) static int sample_ustack(struct perf_sample *sample,
    struct thread *thread, u64 *regs)
{
 struct stack_dump *stack = &sample->user_stack;
 struct map *map;
 unsigned long sp;
 u64 stack_size, *buf;

 buf = malloc(STACK_SIZE);
 if (!buf) {
  pr_debug("failed to allocate sample uregs data\n");
  return -1;
 }

 sp = (unsigned long) regs[PERF_REG_ARM_SP];

 map = map_groups__find(thread->mg, (u64)sp);
 if (!map) {
  pr_debug("failed to get stack map\n");
  free(buf);
  return -1;
 }

 stack_size = map->end - sp;
 stack_size = stack_size > STACK_SIZE ? STACK_SIZE : stack_size;

 memcpy(buf, (void *) sp, stack_size);
 stack->data = (char *) buf;
 stack->size = stack_size;
 return 0;
}
