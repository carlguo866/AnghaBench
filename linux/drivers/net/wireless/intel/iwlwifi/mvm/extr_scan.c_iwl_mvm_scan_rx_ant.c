
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iwl_mvm {scalar_t__ scan_rx_ant; } ;


 scalar_t__ ANT_NONE ;
 scalar_t__ iwl_mvm_get_valid_rx_ant (struct iwl_mvm*) ;

__attribute__((used)) static u8 iwl_mvm_scan_rx_ant(struct iwl_mvm *mvm)
{
 if (mvm->scan_rx_ant != ANT_NONE)
  return mvm->scan_rx_ant;
 return iwl_mvm_get_valid_rx_ant(mvm);
}
