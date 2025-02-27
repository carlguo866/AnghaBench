
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILL_BYTE ;
 int MALLOCX_ARENA (int ) ;
 int MALLOCX_ZERO ;
 int arena_ind () ;
 int assert_false (int ,char*,size_t,...) ;
 int assert_ptr_not_null (void*,char*) ;
 int dallocx (void*,int) ;
 void* mallocx (size_t,int) ;
 int memset (void*,int,size_t) ;
 size_t nallocx (size_t,int) ;
 void* rallocx (void*,size_t,int) ;
 int validate_fill (void*,int,size_t,size_t) ;
 size_t xallocx (void*,size_t,int ,int) ;

__attribute__((used)) static void
test_zero(size_t szmin, size_t szmax) {
 int flags = MALLOCX_ARENA(arena_ind()) | MALLOCX_ZERO;
 size_t sz, nsz;
 void *p;


 sz = szmax;
 p = mallocx(sz, flags);
 assert_ptr_not_null(p, "Unexpected mallocx() error");
 assert_false(validate_fill(p, 0x00, 0, sz), "Memory not filled: sz=%zu",
     sz);





 memset(p, 0x7aU, sz);
 assert_false(validate_fill(p, 0x7aU, 0, sz),
     "Memory not filled: sz=%zu", sz);


 sz = szmin;
 if (xallocx(p, sz, 0, flags) != sz) {
  p = rallocx(p, sz, flags);
  assert_ptr_not_null(p, "Unexpected rallocx() failure");
 }
 assert_false(validate_fill(p, 0x7aU, 0, sz),
     "Memory not filled: sz=%zu", sz);

 for (sz = szmin; sz < szmax; sz = nsz) {
  nsz = nallocx(sz+1, flags);
  if (xallocx(p, sz+1, 0, flags) != nsz) {
   p = rallocx(p, sz+1, flags);
   assert_ptr_not_null(p, "Unexpected rallocx() failure");
  }
  assert_false(validate_fill(p, 0x7aU, 0, sz),
      "Memory not filled: sz=%zu", sz);
  assert_false(validate_fill(p, 0x00, sz, nsz-sz),
      "Memory not filled: sz=%zu, nsz-sz=%zu", sz, nsz-sz);
  memset((void *)((uintptr_t)p + sz), 0x7aU, nsz-sz);
  assert_false(validate_fill(p, 0x7aU, 0, nsz),
      "Memory not filled: nsz=%zu", nsz);
 }

 dallocx(p, flags);
}
