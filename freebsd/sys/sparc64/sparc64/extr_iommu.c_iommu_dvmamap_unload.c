
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct iommu_state {int dummy; } ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
struct TYPE_8__ {struct iommu_state* dt_cookie; } ;
struct TYPE_7__ {int dm_flags; } ;


 int DMF_LOADED ;
 int IS_LOCK (struct iommu_state*) ;
 int IS_UNLOCK (struct iommu_state*) ;
 int iommu_dvmamap_vunload (struct iommu_state*,TYPE_1__*) ;
 int iommu_map_insq (struct iommu_state*,TYPE_1__*) ;

__attribute__((used)) static void
iommu_dvmamap_unload(bus_dma_tag_t dt, bus_dmamap_t map)
{
 struct iommu_state *is = dt->dt_cookie;

 if ((map->dm_flags & DMF_LOADED) == 0)
  return;
 IS_LOCK(is);
 iommu_dvmamap_vunload(is, map);
 iommu_map_insq(is, map);
 IS_UNLOCK(is);
 map->dm_flags &= ~DMF_LOADED;
}
