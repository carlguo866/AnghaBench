
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct messagepool_list {struct messagepool_list* next; } ;
struct messagepool {int * freelist; struct messagepool_list* pool; } ;


 int skynet_free (struct messagepool_list*) ;

__attribute__((used)) static void
messagepool_free(struct messagepool *pool) {
 struct messagepool_list *p = pool->pool;
 while(p) {
  struct messagepool_list *tmp = p;
  p=p->next;
  skynet_free(tmp);
 }
 pool->pool = ((void*)0);
 pool->freelist = ((void*)0);
}
