
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int size; int address; } ;


 int FDT_CHECK_HEADER (void const*) ;
 int fdt64_to_cpu (int ) ;
 TYPE_1__* fdt_mem_rsv_ (void const*,int) ;

int fdt_get_mem_rsv(const void *fdt, int n, uint64_t *address, uint64_t *size)
{
 FDT_CHECK_HEADER(fdt);
 *address = fdt64_to_cpu(fdt_mem_rsv_(fdt, n)->address);
 *size = fdt64_to_cpu(fdt_mem_rsv_(fdt, n)->size);
 return 0;
}
