
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int tmp ;
typedef int fdt64_t ;


 int cpu_to_fdt64 (int ) ;
 int fdt_setprop_inplace (void*,int,char const*,int *,int) ;

__attribute__((used)) static inline int fdt_setprop_inplace_u64(void *fdt, int nodeoffset,
       const char *name, uint64_t val)
{
 fdt64_t tmp = cpu_to_fdt64(val);
 return fdt_setprop_inplace(fdt, nodeoffset, name, &tmp, sizeof(tmp));
}
