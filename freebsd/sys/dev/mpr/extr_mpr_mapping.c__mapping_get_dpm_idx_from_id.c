
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct mpr_softc {scalar_t__ max_dpm_entries; scalar_t__ dpm_pg0; } ;
struct TYPE_3__ {int High; int Low; } ;
struct TYPE_4__ {int PhysicalBitsMapping; TYPE_1__ PhysicalIdentifier; } ;
typedef TYPE_2__ Mpi2DriverMap0Entry_t ;
typedef int MPI2_CONFIG_EXTENDED_PAGE_HEADER ;


 scalar_t__ MPR_DPM_BAD_IDX ;

__attribute__((used)) static u16
_mapping_get_dpm_idx_from_id(struct mpr_softc *sc, u64 id, u32 phy_bits)
{
 u16 entry_num;
 uint64_t PhysicalIdentifier;
 Mpi2DriverMap0Entry_t *dpm_entry;

 dpm_entry = (Mpi2DriverMap0Entry_t *)((u8 *)sc->dpm_pg0 +
     sizeof(MPI2_CONFIG_EXTENDED_PAGE_HEADER));
 PhysicalIdentifier = dpm_entry->PhysicalIdentifier.High;
 PhysicalIdentifier = (PhysicalIdentifier << 32) |
     dpm_entry->PhysicalIdentifier.Low;
 for (entry_num = 0; entry_num < sc->max_dpm_entries; entry_num++,
     dpm_entry++)
  if ((id == PhysicalIdentifier) &&
      (!phy_bits || !dpm_entry->PhysicalBitsMapping ||
      (phy_bits & dpm_entry->PhysicalBitsMapping)))
   return entry_num;

 return MPR_DPM_BAD_IDX;
}
