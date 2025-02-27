
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* min_agg_len; void* max_aggs; void* max_agg_segs; void* is_mode_gro; void* enable; } ;
struct bnxt_softc {TYPE_1__ hw_lro; } ;


 int BNXT_MAX_MTU ;
 int HWRM_VNIC_TPA_CFG_INPUT_MAX_AGGS_MAX ;
 int HWRM_VNIC_TPA_CFG_INPUT_MAX_AGG_SEGS_MAX ;
 void* min (void*,int) ;

void
bnxt_validate_hw_lro_settings(struct bnxt_softc *softc)
{
 softc->hw_lro.enable = min(softc->hw_lro.enable, 1);

        softc->hw_lro.is_mode_gro = min(softc->hw_lro.is_mode_gro, 1);

 softc->hw_lro.max_agg_segs = min(softc->hw_lro.max_agg_segs,
  HWRM_VNIC_TPA_CFG_INPUT_MAX_AGG_SEGS_MAX);

 softc->hw_lro.max_aggs = min(softc->hw_lro.max_aggs,
  HWRM_VNIC_TPA_CFG_INPUT_MAX_AGGS_MAX);

 softc->hw_lro.min_agg_len = min(softc->hw_lro.min_agg_len, BNXT_MAX_MTU);
}
