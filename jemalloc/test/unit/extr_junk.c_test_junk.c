
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 char JEMALLOC_ALLOC_JUNK ;
 size_t ZU (int ) ;
 int arena_dalloc_junk_small ;
 int arena_dalloc_junk_small_intercept ;
 int arena_dalloc_junk_small_orig ;
 int assert_ptr_ne (char*,char*,char*) ;
 int assert_ptr_not_null (void*,char*) ;
 int assert_true (int,char*,size_t) ;
 int assert_u_eq (char,char,char*,size_t,size_t) ;
 int assert_zu_ge (size_t,size_t,char*) ;
 int background_thread_enabled () ;
 int dallocx (char*,int ) ;
 int large_dalloc_junk ;
 int large_dalloc_junk_intercept ;
 int large_dalloc_junk_orig ;
 int large_dalloc_maybe_junk ;
 int large_dalloc_maybe_junk_intercept ;
 int large_dalloc_maybe_junk_orig ;
 scalar_t__ mallocx (size_t,int ) ;
 scalar_t__ opt_junk_alloc ;
 scalar_t__ opt_junk_free ;
 scalar_t__ rallocx (char*,size_t,int ) ;
 size_t sallocx (char*,int ) ;
 scalar_t__ saw_junking ;
 int watch_junking (char*) ;
 size_t xallocx (char*,size_t,int ,int ) ;

__attribute__((used)) static void
test_junk(size_t sz_min, size_t sz_max) {
 uint8_t *s;
 size_t sz_prev, sz, i;

 if (opt_junk_free) {
  arena_dalloc_junk_small_orig = arena_dalloc_junk_small;
  arena_dalloc_junk_small = arena_dalloc_junk_small_intercept;
  large_dalloc_junk_orig = large_dalloc_junk;
  large_dalloc_junk = large_dalloc_junk_intercept;
  large_dalloc_maybe_junk_orig = large_dalloc_maybe_junk;
  large_dalloc_maybe_junk = large_dalloc_maybe_junk_intercept;
 }

 sz_prev = 0;
 s = (uint8_t *)mallocx(sz_min, 0);
 assert_ptr_not_null((void *)s, "Unexpected mallocx() failure");

 for (sz = sallocx(s, 0); sz <= sz_max;
     sz_prev = sz, sz = sallocx(s, 0)) {
  if (sz_prev > 0) {
   assert_u_eq(s[0], 'a',
       "Previously allocated byte %zu/%zu is corrupted",
       ZU(0), sz_prev);
   assert_u_eq(s[sz_prev-1], 'a',
       "Previously allocated byte %zu/%zu is corrupted",
       sz_prev-1, sz_prev);
  }

  for (i = sz_prev; i < sz; i++) {
   if (opt_junk_alloc) {
    assert_u_eq(s[i], JEMALLOC_ALLOC_JUNK,
        "Newly allocated byte %zu/%zu isn't "
        "junk-filled", i, sz);
   }
   s[i] = 'a';
  }

  if (xallocx(s, sz+1, 0, 0) == sz) {
   uint8_t *t;
   watch_junking(s);
   t = (uint8_t *)rallocx(s, sz+1, 0);
   assert_ptr_not_null((void *)t,
       "Unexpected rallocx() failure");
   assert_zu_ge(sallocx(t, 0), sz+1,
       "Unexpectedly small rallocx() result");
   if (!background_thread_enabled()) {
    assert_ptr_ne(s, t,
        "Unexpected in-place rallocx()");
    assert_true(!opt_junk_free || saw_junking,
        "Expected region of size %zu to be "
        "junk-filled", sz);
   }
   s = t;
  }
 }

 watch_junking(s);
 dallocx(s, 0);
 assert_true(!opt_junk_free || saw_junking,
     "Expected region of size %zu to be junk-filled", sz);

 if (opt_junk_free) {
  arena_dalloc_junk_small = arena_dalloc_junk_small_orig;
  large_dalloc_junk = large_dalloc_junk_orig;
  large_dalloc_maybe_junk = large_dalloc_maybe_junk_orig;
 }
}
