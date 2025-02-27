
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct TYPE_3__ {int (* bypass_set ) (struct ixgbe_hw*,int ,int,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct adapter {int feat_cap; int feat_en; int dev; struct ixgbe_hw hw; } ;
typedef int device_t ;


 int BYPASS_CTL1_OFFTRST ;
 int BYPASS_CTL1_OFFTRST_M ;
 int BYPASS_CTL1_TIME_M ;
 int BYPASS_CTL1_VALID ;
 int BYPASS_CTL1_VALID_M ;
 int BYPASS_PAGE_CTL1 ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLFLAG_WR ;
 int CTLTYPE_INT ;
 int IXGBE_FEATURE_BYPASS ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int ,struct sysctl_oid_list*,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_PROC (int ,struct sysctl_oid_list*,int ,char*,int,struct adapter*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int ixgbe_bp_aux_off ;
 int ixgbe_bp_aux_on ;
 int ixgbe_bp_log ;
 int ixgbe_bp_main_off ;
 int ixgbe_bp_main_on ;
 int ixgbe_bp_set_state ;
 int ixgbe_bp_timeout ;
 int ixgbe_bp_version ;
 int ixgbe_bp_wd_reset ;
 int ixgbe_bp_wd_set ;
 int ixgbe_bypass_mutex_clear (struct adapter*) ;
 int ixgbe_bypass_mutex_enter (struct adapter*) ;
 int ixgbe_get_bypass_time (int*,int*) ;
 int stub1 (struct ixgbe_hw*,int ,int,int) ;

void
ixgbe_bypass_init(struct adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 device_t dev = adapter->dev;
 struct sysctl_oid *bp_node;
 struct sysctl_oid_list *bp_list;
 u32 mask, value, sec, year;

 if (!(adapter->feat_cap & IXGBE_FEATURE_BYPASS))
  return;


 ixgbe_get_bypass_time(&year, &sec);

 mask = BYPASS_CTL1_TIME_M
      | BYPASS_CTL1_VALID_M
      | BYPASS_CTL1_OFFTRST_M;

 value = (sec & BYPASS_CTL1_TIME_M)
       | BYPASS_CTL1_VALID
       | BYPASS_CTL1_OFFTRST;

 ixgbe_bypass_mutex_enter(adapter);
 hw->mac.ops.bypass_set(hw, BYPASS_PAGE_CTL1, mask, value);
 ixgbe_bypass_mutex_clear(adapter);
 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
     OID_AUTO, "bypass_log", CTLTYPE_INT | CTLFLAG_RW,
     adapter, 0, ixgbe_bp_log, "I", "Bypass Log");


 bp_node = SYSCTL_ADD_NODE(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
     OID_AUTO, "bypass", CTLFLAG_RD, ((void*)0), "Bypass");

 bp_list = SYSCTL_CHILDREN(bp_node);

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev), bp_list,
     OID_AUTO, "version", CTLTYPE_INT | CTLFLAG_RD,
     adapter, 0, ixgbe_bp_version, "I", "Bypass Version");

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev), bp_list,
     OID_AUTO, "state", CTLTYPE_INT | CTLFLAG_RW,
     adapter, 0, ixgbe_bp_set_state, "I", "Bypass State");

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev), bp_list,
     OID_AUTO, "timeout", CTLTYPE_INT | CTLFLAG_RW,
     adapter, 0, ixgbe_bp_timeout, "I", "Bypass Timeout");

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev), bp_list,
     OID_AUTO, "main_on", CTLTYPE_INT | CTLFLAG_RW,
     adapter, 0, ixgbe_bp_main_on, "I", "Bypass Main On");

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev), bp_list,
     OID_AUTO, "main_off", CTLTYPE_INT | CTLFLAG_RW,
     adapter, 0, ixgbe_bp_main_off, "I", "Bypass Main Off");

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev), bp_list,
     OID_AUTO, "aux_on", CTLTYPE_INT | CTLFLAG_RW,
     adapter, 0, ixgbe_bp_aux_on, "I", "Bypass Aux On");

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev), bp_list,
     OID_AUTO, "aux_off", CTLTYPE_INT | CTLFLAG_RW,
     adapter, 0, ixgbe_bp_aux_off, "I", "Bypass Aux Off");

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev), bp_list,
     OID_AUTO, "wd_set", CTLTYPE_INT | CTLFLAG_RW,
     adapter, 0, ixgbe_bp_wd_set, "I", "Set BP Watchdog");

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev), bp_list,
     OID_AUTO, "wd_reset", CTLTYPE_INT | CTLFLAG_WR,
     adapter, 0, ixgbe_bp_wd_reset, "S", "Bypass WD Reset");

 adapter->feat_en |= IXGBE_FEATURE_BYPASS;
}
