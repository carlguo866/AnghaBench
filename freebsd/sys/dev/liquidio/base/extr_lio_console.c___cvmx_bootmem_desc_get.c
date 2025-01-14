
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef unsigned long long uint32_t ;
struct octeon_device {int dummy; } ;


 unsigned long long lio_read_device_mem32 (struct octeon_device*,unsigned long long) ;
 unsigned long long lio_read_device_mem64 (struct octeon_device*,unsigned long long) ;

__attribute__((used)) static inline uint64_t
__cvmx_bootmem_desc_get(struct octeon_device *oct, uint64_t base,
   uint32_t offset, uint32_t size)
{

 base = (1ull << 63) | (base + offset);
 switch (size) {
 case 4:
  return (lio_read_device_mem32(oct, base));
 case 8:
  return (lio_read_device_mem64(oct, base));
 default:
  return (0);
 }
}
