
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct memory_type_list {int dummy; } ;
struct memory_type {int dummy; } ;


 int MEMSTAT_ERROR_KVM ;
 int * kd ;
 int kvm_geterr (int *) ;
 scalar_t__ memstat_get_bytes (struct memory_type*) ;
 scalar_t__ memstat_get_count (struct memory_type*) ;
 int memstat_get_name (struct memory_type*) ;
 scalar_t__ memstat_get_numallocs (struct memory_type*) ;
 int memstat_get_sizemask (struct memory_type*) ;
 scalar_t__ memstat_kvm_malloc (struct memory_type_list*,int *) ;
 struct memory_type_list* memstat_mtl_alloc () ;
 struct memory_type* memstat_mtl_first (struct memory_type_list*) ;
 int memstat_mtl_free (struct memory_type_list*) ;
 int memstat_mtl_geterror (struct memory_type_list*) ;
 struct memory_type* memstat_mtl_next (struct memory_type*) ;
 int memstat_strerror (int) ;
 scalar_t__ memstat_sysctl_malloc (struct memory_type_list*,int ) ;
 int xo_close_container (char*) ;
 int xo_close_instance (char*) ;
 int xo_close_list (char*) ;
 int xo_emit (char*,...) ;
 int xo_open_container (char*) ;
 int xo_open_instance (char*) ;
 int xo_open_list (char*) ;
 int xo_warn (char*) ;
 int xo_warnx (char*,int ) ;

__attribute__((used)) static void
domemstat_malloc(void)
{
 struct memory_type_list *mtlp;
 struct memory_type *mtp;
 int error, first, i;

 mtlp = memstat_mtl_alloc();
 if (mtlp == ((void*)0)) {
  xo_warn("memstat_mtl_alloc");
  return;
 }
 if (kd == ((void*)0)) {
  if (memstat_sysctl_malloc(mtlp, 0) < 0) {
   xo_warnx("memstat_sysctl_malloc: %s",
       memstat_strerror(memstat_mtl_geterror(mtlp)));
   return;
  }
 } else {
  if (memstat_kvm_malloc(mtlp, kd) < 0) {
   error = memstat_mtl_geterror(mtlp);
   if (error == MEMSTAT_ERROR_KVM)
    xo_warnx("memstat_kvm_malloc: %s",
        kvm_geterr(kd));
   else
    xo_warnx("memstat_kvm_malloc: %s",
        memstat_strerror(error));
  }
 }
 xo_open_container("malloc-statistics");
 xo_emit("{T:/%13s} {T:/%5s} {T:/%6s} {T:/%7s} {T:/%8s}  {T:Size(s)}\n",
     "Type", "InUse", "MemUse", "HighUse", "Requests");
 xo_open_list("memory");
 for (mtp = memstat_mtl_first(mtlp); mtp != ((void*)0);
     mtp = memstat_mtl_next(mtp)) {
  if (memstat_get_numallocs(mtp) == 0 &&
      memstat_get_count(mtp) == 0)
   continue;
  xo_open_instance("memory");
  xo_emit("{k:type/%13s/%s} {:in-use/%5ju} "
      "{:memory-use/%5ju}{U:K} {:high-use/%7s} "
      "{:requests/%8ju}  ",
      memstat_get_name(mtp), (uintmax_t)memstat_get_count(mtp),
      ((uintmax_t)memstat_get_bytes(mtp) + 1023) / 1024, "-",
      (uintmax_t)memstat_get_numallocs(mtp));
  first = 1;
  xo_open_list("size");
  for (i = 0; i < 32; i++) {
   if (memstat_get_sizemask(mtp) & (1 << i)) {
    if (!first)
     xo_emit(",");
    xo_emit("{l:size/%d}", 1 << (i + 4));
    first = 0;
   }
  }
  xo_close_list("size");
  xo_close_instance("memory");
  xo_emit("\n");
 }
 xo_close_list("memory");
 xo_close_container("malloc-statistics");
 memstat_mtl_free(mtlp);
}
