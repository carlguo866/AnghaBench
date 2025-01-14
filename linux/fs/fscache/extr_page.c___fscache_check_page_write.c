
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;
struct fscache_cookie {int stores; } ;


 void* radix_tree_lookup (int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int trace_fscache_check_page (struct fscache_cookie*,struct page*,void*,int ) ;

bool __fscache_check_page_write(struct fscache_cookie *cookie, struct page *page)
{
 void *val;

 rcu_read_lock();
 val = radix_tree_lookup(&cookie->stores, page->index);
 rcu_read_unlock();
 trace_fscache_check_page(cookie, page, val, 0);

 return val != ((void*)0);
}
