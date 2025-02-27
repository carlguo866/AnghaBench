
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct timer_node {size_t expire; } ;
struct timer {size_t time; int ** t; int * near; } ;


 size_t TIME_LEVEL_MASK ;
 size_t TIME_LEVEL_SHIFT ;
 size_t TIME_NEAR ;
 size_t TIME_NEAR_MASK ;
 int TIME_NEAR_SHIFT ;
 int link (int *,struct timer_node*) ;

__attribute__((used)) static void
add_node(struct timer *T,struct timer_node *node) {
 uint32_t time=node->expire;
 uint32_t current_time=T->time;

 if ((time|TIME_NEAR_MASK)==(current_time|TIME_NEAR_MASK)) {
  link(&T->near[time&TIME_NEAR_MASK],node);
 } else {
  int i;
  uint32_t mask=TIME_NEAR << TIME_LEVEL_SHIFT;
  for (i=0;i<3;i++) {
   if ((time|(mask-1))==(current_time|(mask-1))) {
    break;
   }
   mask <<= TIME_LEVEL_SHIFT;
  }

  link(&T->t[i][((time>>(TIME_NEAR_SHIFT + i*TIME_LEVEL_SHIFT)) & TIME_LEVEL_MASK)],node);
 }
}
