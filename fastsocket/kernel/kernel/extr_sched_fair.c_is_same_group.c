
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int dummy; } ;



__attribute__((used)) static inline int
is_same_group(struct sched_entity *se, struct sched_entity *pse)
{
 return 1;
}
