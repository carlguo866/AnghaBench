
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct e1000_adapter {scalar_t__ msix_entries; struct e1000_hw hw; } ;


 int E1000_ICS_LSC ;
 int E1000_ICS_OTHER ;
 int ICS ;
 int ew32 (int ,int) ;

__attribute__((used)) static void e1000e_trigger_lsc(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;

 if (adapter->msix_entries)
  ew32(ICS, E1000_ICS_LSC | E1000_ICS_OTHER);
 else
  ew32(ICS, E1000_ICS_LSC);
}
