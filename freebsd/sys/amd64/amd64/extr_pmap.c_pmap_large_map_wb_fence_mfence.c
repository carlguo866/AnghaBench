
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mfence () ;

__attribute__((used)) static void
pmap_large_map_wb_fence_mfence(void)
{

 mfence();
}
