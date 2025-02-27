
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_vap {int color; int id; } ;
struct iwm_softc {int dummy; } ;
struct iwm_mvm_phy_ctxt {int dummy; } ;
struct iwm_mvm_iface_iterator_data {int idx; int * colors; int * ids; struct iwm_mvm_phy_ctxt* phyctxt; } ;
typedef scalar_t__ boolean_t ;


 int IWM_FW_CTXT_ACTION_ADD ;
 int IWM_FW_CTXT_ACTION_REMOVE ;
 int iwm_mvm_binding_cmd (struct iwm_softc*,int ,struct iwm_mvm_iface_iterator_data*) ;

__attribute__((used)) static int
iwm_mvm_binding_update(struct iwm_softc *sc, struct iwm_vap *ivp,
 struct iwm_mvm_phy_ctxt *phyctxt, boolean_t add)
{
 struct iwm_mvm_iface_iterator_data data = {
  .phyctxt = phyctxt,
 };
 uint32_t action;

 if (add)
  action = IWM_FW_CTXT_ACTION_ADD;
 else
  action = IWM_FW_CTXT_ACTION_REMOVE;

 if (add) {
  data.ids[0] = ivp->id;
  data.colors[0] = ivp->color;
  data.idx++;
 }

 return iwm_mvm_binding_cmd(sc, action, &data);
}
