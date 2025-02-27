
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct search_domain {struct search_domain* next; } ;
struct evdns_base {TYPE_1__* global_search_state; } ;
struct TYPE_2__ {struct search_domain* head; } ;


 int ASSERT_LOCKED (struct evdns_base*) ;

__attribute__((used)) static void
search_reverse(struct evdns_base *base) {
 struct search_domain *cur, *prev = ((void*)0), *next;
 ASSERT_LOCKED(base);
 cur = base->global_search_state->head;
 while (cur) {
  next = cur->next;
  cur->next = prev;
  prev = cur;
  cur = next;
 }

 base->global_search_state->head = prev;
}
