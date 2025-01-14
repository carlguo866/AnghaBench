
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;
struct fscache_cookie {int flags; int stores_lock; int stores; } ;


 int ARRAY_SIZE (void**) ;
 int FSCACHE_COOKIE_PENDING_TAG ;
 int _enter (char*) ;
 int _leave (char*) ;
 int fscache_page_inval ;
 int fscache_page_radix_delete ;
 int put_page (void*) ;
 int radix_tree_delete (int *,int ) ;
 int radix_tree_gang_lookup_tag (int *,void**,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_fscache_page (struct fscache_cookie*,struct page*,int ) ;
 int trace_fscache_wake_cookie (struct fscache_cookie*) ;
 int wake_up_bit (int *,int ) ;

void fscache_invalidate_writes(struct fscache_cookie *cookie)
{
 struct page *page;
 void *results[16];
 int n, i;

 _enter("");

 for (;;) {
  spin_lock(&cookie->stores_lock);
  n = radix_tree_gang_lookup_tag(&cookie->stores, results, 0,
            ARRAY_SIZE(results),
            FSCACHE_COOKIE_PENDING_TAG);
  if (n == 0) {
   spin_unlock(&cookie->stores_lock);
   break;
  }

  for (i = n - 1; i >= 0; i--) {
   page = results[i];
   radix_tree_delete(&cookie->stores, page->index);
   trace_fscache_page(cookie, page, fscache_page_radix_delete);
   trace_fscache_page(cookie, page, fscache_page_inval);
  }

  spin_unlock(&cookie->stores_lock);

  for (i = n - 1; i >= 0; i--)
   put_page(results[i]);
 }

 wake_up_bit(&cookie->flags, 0);
 trace_fscache_wake_cookie(cookie);

 _leave("");
}
