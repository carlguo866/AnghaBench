
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct update_sd_entry {int data; int cmd; } ;
typedef enum i40iw_sd_entry_type { ____Placeholder_i40iw_sd_entry_type } i40iw_sd_entry_type ;


 int I40E_PFHMC_SDCMD_PMSDWR_SHIFT ;
 int I40E_PFHMC_SDDATALOW_PMSDBPCOUNT_SHIFT ;
 int I40E_PFHMC_SDDATALOW_PMSDTYPE_SHIFT ;
 int I40IW_HMC_MAX_BP_COUNT ;
 int I40IW_SD_TYPE_PAGED ;

__attribute__((used)) static inline void i40iw_clr_sd_entry(u32 idx, enum i40iw_sd_entry_type type,
          struct update_sd_entry *entry)
{
 entry->data = (I40IW_HMC_MAX_BP_COUNT <<
   I40E_PFHMC_SDDATALOW_PMSDBPCOUNT_SHIFT) |
   (((type == I40IW_SD_TYPE_PAGED) ? 0 : 1) <<
    I40E_PFHMC_SDDATALOW_PMSDTYPE_SHIFT);
 entry->cmd = (idx | (1 << I40E_PFHMC_SDCMD_PMSDWR_SHIFT) | (1 << 15));
}
