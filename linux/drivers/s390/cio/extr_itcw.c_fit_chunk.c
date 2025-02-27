
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ addr_t ;


 scalar_t__ ALIGN (scalar_t__,int) ;
 scalar_t__ CROSS4K (scalar_t__,size_t) ;
 int ENOSPC ;
 void* ERR_PTR (int ) ;

__attribute__((used)) static inline void *fit_chunk(addr_t *start, addr_t end, size_t len,
         int align, int check_4k)
{
 addr_t addr;

 addr = ALIGN(*start, align);
 if (check_4k && CROSS4K(addr, len)) {
  addr = ALIGN(addr, 4096);
  addr = ALIGN(addr, align);
 }
 if (addr + len > end)
  return ERR_PTR(-ENOSPC);
 *start = addr + len;
 return (void *) addr;
}
