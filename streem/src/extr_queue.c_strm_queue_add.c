
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_queue_node {struct strm_queue_node* next; void* n; } ;
struct strm_queue {struct strm_queue_node* tail; } ;


 scalar_t__ malloc (int) ;
 scalar_t__ strm_atomic_cas (struct strm_queue_node*,struct strm_queue_node*,struct strm_queue_node*) ;

int
strm_queue_add(struct strm_queue* q, void* val)
{
  struct strm_queue_node *node = (struct strm_queue_node*)malloc(sizeof(struct strm_queue_node));

  node->n = val;
  node->next = ((void*)0);
  while (1) {
    struct strm_queue_node *n = q->tail;
    struct strm_queue_node *next = n->next;
    if (n != q->tail) continue;
    if (next == ((void*)0)) {
      if (strm_atomic_cas(n->next, next, node)) {
        strm_atomic_cas(q->tail, n, node);
        return 1;
      }
    }
    else {
      strm_atomic_cas(q->tail, n, next);
    }
  }
}
