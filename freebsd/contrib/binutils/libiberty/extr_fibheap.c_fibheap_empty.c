
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* fibheap_t ;
struct TYPE_3__ {scalar_t__ nodes; } ;



int
fibheap_empty (fibheap_t heap)
{
  return heap->nodes == 0;
}
