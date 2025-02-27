
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int cbm_len; int shareable_bits; int min_cbm_bits; } ;
struct rdt_resource {int num_closid; int alloc_capable; int alloc_enabled; TYPE_1__ cache; scalar_t__ default_ctrl; } ;


 scalar_t__ BIT_MASK (int) ;
 int MSR_IA32_L3_CBM_BASE ;
 size_t RDT_RESOURCE_L3 ;
 int rdmsr (int ,scalar_t__,scalar_t__) ;
 int rdt_alloc_capable ;
 struct rdt_resource* rdt_resources_all ;
 scalar_t__ wrmsr_safe (int ,scalar_t__,int ) ;

__attribute__((used)) static inline void cache_alloc_hsw_probe(void)
{
 struct rdt_resource *r = &rdt_resources_all[RDT_RESOURCE_L3];
 u32 l, h, max_cbm = BIT_MASK(20) - 1;

 if (wrmsr_safe(MSR_IA32_L3_CBM_BASE, max_cbm, 0))
  return;

 rdmsr(MSR_IA32_L3_CBM_BASE, l, h);


 if (l != max_cbm)
  return;

 r->num_closid = 4;
 r->default_ctrl = max_cbm;
 r->cache.cbm_len = 20;
 r->cache.shareable_bits = 0xc0000;
 r->cache.min_cbm_bits = 2;
 r->alloc_capable = 1;
 r->alloc_enabled = 1;

 rdt_alloc_capable = 1;
}
