
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ice_port_info {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_SCHED_NODE_OWNER_LAN ;
 int ice_cfg_vsi_qs (struct ice_port_info*,int ,int ,int *,int ) ;

enum ice_status
ice_cfg_vsi_lan(struct ice_port_info *pi, u16 vsi_handle, u8 tc_bitmap,
  u16 *max_lanqs)
{
 return ice_cfg_vsi_qs(pi, vsi_handle, tc_bitmap, max_lanqs,
         ICE_SCHED_NODE_OWNER_LAN);
}
