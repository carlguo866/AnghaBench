
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long AT_NULL ;

void shove_aux_table(unsigned long sp)
{
 int argc;
 char *p;
 unsigned long e;
 unsigned long aux_start, offset;

 argc = *(int *)sp;
 sp += sizeof(int) + (argc + 1) * sizeof(char *);

 do {
  p = *(char **)sp;
  sp += sizeof(char *);
 } while (p != ((void*)0));
 aux_start = sp;

 do {
  e = *(unsigned long *)sp;
  sp += 2 * sizeof(unsigned long);
 } while (e != AT_NULL);
 offset = ((aux_start + 15) & ~15) - aux_start;
 if (offset != 0) {
  do {
   sp -= sizeof(unsigned long);
   e = *(unsigned long *)sp;
   *(unsigned long *)(sp + offset) = e;
  } while (sp > aux_start);
 }
}
