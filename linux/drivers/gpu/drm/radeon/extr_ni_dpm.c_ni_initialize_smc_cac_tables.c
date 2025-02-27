
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rv7xx_power_info {int sram_end; } ;
struct TYPE_10__ {int cac_leakage; } ;
struct TYPE_11__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct TYPE_13__ {int lts_truncate_n; int l2num_win_tdp; scalar_t__ num_win_tdp; int mc_rd_weight; int mc_wr_weight; scalar_t__ allow_ovrflw; scalar_t__ bif_cac_value; scalar_t__ dc_cac_value; scalar_t__ pwr_const; int i_leakage; } ;
struct ni_power_info {int enable_cac; int enable_power_containment; int cac_table_start; TYPE_4__ cac_data; scalar_t__ driver_calculate_cac_leakage; int lts_truncate; int lta_window_size; TYPE_3__* cac_weights; scalar_t__* dc_cac_table; } ;
struct TYPE_14__ {int lts_truncate_n; int l2numWin_TDP; scalar_t__ numWin_TDP; int MCRdWeight; int MCWrWeight; scalar_t__ AllowOvrflw; void* bif_cacValue; void* dc_cacValue; void* pwr_const; int * cac_bif_lut; } ;
struct TYPE_12__ {int mc_read_weight; int mc_write_weight; int * pcie_cac; scalar_t__* dc_cac; int tid_unit; int tid_cnt; } ;
typedef TYPE_5__ PP_NIslands_CACTABLES ;


 int CG_CAC_CTRL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t NISLANDS_DCCAC_LEVEL_0 ;
 int NISLANDS_DCCAC_MAX_LEVELS ;
 int RREG32 (int ) ;
 int SMC_NISLANDS_BIF_LUT_NUM_OF_ENTRIES ;
 int TID_CNT (int ) ;
 int TID_CNT_MASK ;
 int TID_UNIT (int ) ;
 int TID_UNIT_MASK ;
 int WREG32 (int ,int) ;
 void* cpu_to_be32 (scalar_t__) ;
 int kfree (TYPE_5__*) ;
 TYPE_5__* kzalloc (int,int ) ;
 struct ni_power_info* ni_get_pi (struct radeon_device*) ;
 int ni_init_driver_calculated_leakage_table (struct radeon_device*,TYPE_5__*) ;
 int ni_init_simplified_leakage_table (struct radeon_device*,TYPE_5__*) ;
 int rv770_copy_bytes_to_smc (struct radeon_device*,int ,int *,int,int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

__attribute__((used)) static int ni_initialize_smc_cac_tables(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct ni_power_info *ni_pi = ni_get_pi(rdev);
 PP_NIslands_CACTABLES *cac_tables = ((void*)0);
 int i, ret;
 u32 reg;

 if (ni_pi->enable_cac == 0)
  return 0;

 cac_tables = kzalloc(sizeof(PP_NIslands_CACTABLES), GFP_KERNEL);
 if (!cac_tables)
  return -ENOMEM;

 reg = RREG32(CG_CAC_CTRL) & ~(TID_CNT_MASK | TID_UNIT_MASK);
 reg |= (TID_CNT(ni_pi->cac_weights->tid_cnt) |
  TID_UNIT(ni_pi->cac_weights->tid_unit));
 WREG32(CG_CAC_CTRL, reg);

 for (i = 0; i < NISLANDS_DCCAC_MAX_LEVELS; i++)
  ni_pi->dc_cac_table[i] = ni_pi->cac_weights->dc_cac[i];

 for (i = 0; i < SMC_NISLANDS_BIF_LUT_NUM_OF_ENTRIES; i++)
  cac_tables->cac_bif_lut[i] = ni_pi->cac_weights->pcie_cac[i];

 ni_pi->cac_data.i_leakage = rdev->pm.dpm.cac_leakage;
 ni_pi->cac_data.pwr_const = 0;
 ni_pi->cac_data.dc_cac_value = ni_pi->dc_cac_table[NISLANDS_DCCAC_LEVEL_0];
 ni_pi->cac_data.bif_cac_value = 0;
 ni_pi->cac_data.mc_wr_weight = ni_pi->cac_weights->mc_write_weight;
 ni_pi->cac_data.mc_rd_weight = ni_pi->cac_weights->mc_read_weight;
 ni_pi->cac_data.allow_ovrflw = 0;
 ni_pi->cac_data.l2num_win_tdp = ni_pi->lta_window_size;
 ni_pi->cac_data.num_win_tdp = 0;
 ni_pi->cac_data.lts_truncate_n = ni_pi->lts_truncate;

 if (ni_pi->driver_calculate_cac_leakage)
  ret = ni_init_driver_calculated_leakage_table(rdev, cac_tables);
 else
  ret = ni_init_simplified_leakage_table(rdev, cac_tables);

 if (ret)
  goto done_free;

 cac_tables->pwr_const = cpu_to_be32(ni_pi->cac_data.pwr_const);
 cac_tables->dc_cacValue = cpu_to_be32(ni_pi->cac_data.dc_cac_value);
 cac_tables->bif_cacValue = cpu_to_be32(ni_pi->cac_data.bif_cac_value);
 cac_tables->AllowOvrflw = ni_pi->cac_data.allow_ovrflw;
 cac_tables->MCWrWeight = ni_pi->cac_data.mc_wr_weight;
 cac_tables->MCRdWeight = ni_pi->cac_data.mc_rd_weight;
 cac_tables->numWin_TDP = ni_pi->cac_data.num_win_tdp;
 cac_tables->l2numWin_TDP = ni_pi->cac_data.l2num_win_tdp;
 cac_tables->lts_truncate_n = ni_pi->cac_data.lts_truncate_n;

 ret = rv770_copy_bytes_to_smc(rdev, ni_pi->cac_table_start, (u8 *)cac_tables,
          sizeof(PP_NIslands_CACTABLES), pi->sram_end);

done_free:
 if (ret) {
  ni_pi->enable_cac = 0;
  ni_pi->enable_power_containment = 0;
 }

 kfree(cac_tables);

 return 0;
}
