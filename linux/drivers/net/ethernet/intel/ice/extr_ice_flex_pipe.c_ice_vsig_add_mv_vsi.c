
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct ice_vsig_vsi {size_t vsig; int changed; struct ice_vsig_vsi* next_vsi; } ;
struct ice_hw {TYPE_3__* blk; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef enum ice_block { ____Placeholder_ice_block } ice_block ;
struct TYPE_5__ {size_t* t; struct ice_vsig_vsi* vsis; TYPE_1__* vsig_tbl; } ;
struct TYPE_6__ {TYPE_2__ xlt2; } ;
struct TYPE_4__ {struct ice_vsig_vsi* first_vsi; int in_use; } ;


 size_t ICE_DEFAULT_VSIG ;
 int ICE_ERR_DOES_NOT_EXIST ;
 int ICE_ERR_PARAM ;
 size_t ICE_MAX_VSI ;
 size_t ICE_MAX_VSIGS ;
 size_t ICE_VSIG_IDX_M ;
 int ice_vsig_find_vsi (struct ice_hw*,int,size_t,size_t*) ;
 int ice_vsig_remove_vsi (struct ice_hw*,int,size_t,size_t) ;

__attribute__((used)) static enum ice_status
ice_vsig_add_mv_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 vsig)
{
 struct ice_vsig_vsi *tmp;
 enum ice_status status;
 u16 orig_vsig, idx;

 idx = vsig & ICE_VSIG_IDX_M;

 if (vsi >= ICE_MAX_VSI || idx >= ICE_MAX_VSIGS)
  return ICE_ERR_PARAM;




 if (!hw->blk[blk].xlt2.vsig_tbl[idx].in_use &&
     vsig != ICE_DEFAULT_VSIG)
  return ICE_ERR_DOES_NOT_EXIST;

 status = ice_vsig_find_vsi(hw, blk, vsi, &orig_vsig);
 if (status)
  return status;


 if (orig_vsig == vsig)
  return 0;

 if (orig_vsig != ICE_DEFAULT_VSIG) {

  status = ice_vsig_remove_vsi(hw, blk, vsi, orig_vsig);
  if (status)
   return status;
 }

 if (idx == ICE_DEFAULT_VSIG)
  return 0;


 hw->blk[blk].xlt2.vsis[vsi].vsig = vsig;
 hw->blk[blk].xlt2.vsis[vsi].changed = 1;


 tmp = hw->blk[blk].xlt2.vsig_tbl[idx].first_vsi;
 hw->blk[blk].xlt2.vsig_tbl[idx].first_vsi =
  &hw->blk[blk].xlt2.vsis[vsi];
 hw->blk[blk].xlt2.vsis[vsi].next_vsi = tmp;
 hw->blk[blk].xlt2.t[vsi] = vsig;

 return 0;
}
