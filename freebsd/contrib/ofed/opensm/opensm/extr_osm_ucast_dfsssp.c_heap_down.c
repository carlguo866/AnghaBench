
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int size; } ;
typedef TYPE_1__ binary_heap_t ;


 int heap_exchange (TYPE_1__*,int,int) ;
 scalar_t__ heap_smaller (TYPE_1__*,int,int) ;

__attribute__((used)) static uint32_t heap_down(binary_heap_t * heap, uint32_t i)
{
 uint32_t curr = i;
 uint32_t son1 = 0, son2 = 0, smaller_son = 0;
 uint32_t exchanged = 0;

 do {
  son1 = ((curr + 1) << 1) - 1;
  son2 = (curr + 1) << 1;
  exchanged = 0;


  if (son1 < heap->size && son2 < heap->size) {
   if (heap_smaller(heap, son1, son2))
    smaller_son = son1;
   else
    smaller_son = son2;
  } else if (son1 < heap->size) {

   smaller_son = son1;
  } else {

   break;
  }


  if (heap_smaller(heap, smaller_son, curr)) {
   heap_exchange(heap, curr, smaller_son);
   exchanged = 1;
   curr = smaller_son;
  }
 } while (exchanged);

 return curr;
}
