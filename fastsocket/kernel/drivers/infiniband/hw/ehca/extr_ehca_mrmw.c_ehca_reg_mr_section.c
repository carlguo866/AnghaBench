
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ehca_shca {int ib_device; int ipz_hca_handle; } ;
struct ehca_mr_pginfo {int hwpage_size; } ;
struct ehca_mr {int dummy; } ;


 int EHCA_SECTSIZE ;
 scalar_t__ H_PAGE_REGISTERED ;
 scalar_t__ H_SUCCESS ;
 scalar_t__ MAX_RPAGES ;
 void* ehca_calc_sectbase (int,int,int) ;
 int ehca_encode_hwpage_size (long) ;
 int ehca_err (int *,char*) ;
 scalar_t__ hipz_h_register_rpage_mr (int ,struct ehca_mr*,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ virt_to_abs (void*) ;

__attribute__((used)) static u64 ehca_reg_mr_section(int top, int dir, int idx, u64 *kpage,
          struct ehca_shca *shca, struct ehca_mr *mr,
          struct ehca_mr_pginfo *pginfo)
{
 u64 h_ret = 0;
 unsigned long page = 0;
 u64 rpage = virt_to_abs(kpage);
 int page_count;

 void *sectbase = ehca_calc_sectbase(top, dir, idx);
 if ((unsigned long)sectbase & (pginfo->hwpage_size - 1)) {
  ehca_err(&shca->ib_device, "reg_mr_section will probably fail:"
        "hwpage_size does not fit to "
        "section start address");
 }
 page_count = EHCA_SECTSIZE / pginfo->hwpage_size;

 while (page < page_count) {
  u64 rnum;
  for (rnum = 0; (rnum < MAX_RPAGES) && (page < page_count);
       rnum++) {
   void *pg = sectbase + ((page++) * pginfo->hwpage_size);
   kpage[rnum] = virt_to_abs(pg);
  }

  h_ret = hipz_h_register_rpage_mr(shca->ipz_hca_handle, mr,
   ehca_encode_hwpage_size(pginfo->hwpage_size),
   0, rpage, rnum);

  if ((h_ret != H_SUCCESS) && (h_ret != H_PAGE_REGISTERED)) {
   ehca_err(&shca->ib_device, "register_rpage_mr failed");
   return h_ret;
  }
 }
 return h_ret;
}
