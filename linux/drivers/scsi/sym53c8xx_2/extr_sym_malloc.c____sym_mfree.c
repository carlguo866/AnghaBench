
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* m_pool_p ;
typedef TYPE_2__* m_link_p ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
struct TYPE_4__ {TYPE_2__* h; } ;


 int M_FREE_MEM_CLUSTER (void*) ;
 int SYM_MEM_CLUSTER_SIZE ;
 int SYM_MEM_SHIFT ;
 int printf (char*,void*,int) ;

__attribute__((used)) static void ___sym_mfree(m_pool_p mp, void *ptr, int size)
{
 int i = 0;
 int s = (1 << SYM_MEM_SHIFT);
 m_link_p q;
 unsigned long a, b;
 m_link_p h = mp->h;





 if (size > SYM_MEM_CLUSTER_SIZE)
  return;

 while (size > s) {
  s <<= 1;
  ++i;
 }

 a = (unsigned long)ptr;

 while (1) {
  if (s == SYM_MEM_CLUSTER_SIZE) {



   ((m_link_p) a)->next = h[i].next;
   h[i].next = (m_link_p) a;

   break;
  }
  b = a ^ s;
  q = &h[i];
  while (q->next && q->next != (m_link_p) b) {
   q = q->next;
  }
  if (!q->next) {
   ((m_link_p) a)->next = h[i].next;
   h[i].next = (m_link_p) a;
   break;
  }
  q->next = q->next->next;
  a = a & b;
  s <<= 1;
  ++i;
 }
}
