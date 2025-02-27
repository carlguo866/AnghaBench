
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgprot_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 unsigned long p4d_addr_end (unsigned long,unsigned long) ;
 int * p4d_alloc (struct mm_struct*,int *,unsigned long) ;
 int remap_pud_range (struct mm_struct*,int *,unsigned long,unsigned long,unsigned long,int ) ;

__attribute__((used)) static inline int remap_p4d_range(struct mm_struct *mm, pgd_t *pgd,
   unsigned long addr, unsigned long end,
   unsigned long pfn, pgprot_t prot)
{
 p4d_t *p4d;
 unsigned long next;
 int err;

 pfn -= addr >> PAGE_SHIFT;
 p4d = p4d_alloc(mm, pgd, addr);
 if (!p4d)
  return -ENOMEM;
 do {
  next = p4d_addr_end(addr, end);
  err = remap_pud_range(mm, p4d, addr, next,
    pfn + (addr >> PAGE_SHIFT), prot);
  if (err)
   return err;
 } while (p4d++, addr = next, addr != end);
 return 0;
}
