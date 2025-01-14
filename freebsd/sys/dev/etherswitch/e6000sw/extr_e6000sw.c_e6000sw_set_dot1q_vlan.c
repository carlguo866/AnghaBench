
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int es_vid; size_t es_vlangroup; int es_member_ports; int es_untagged_ports; } ;
typedef TYPE_1__ etherswitch_vlangroup_t ;
struct TYPE_8__ {int* vlans; int ports_mask; } ;
typedef TYPE_2__ e6000sw_softc_t ;
struct TYPE_9__ {int es_nvlangroups; } ;


 int EINVAL ;
 int ETHERSWITCH_VID_MASK ;
 int VTU_PURGE ;
 int e6000sw_vtu_update (TYPE_2__*,int ,int,int,int,int) ;
 TYPE_3__ etherswitch_info ;

__attribute__((used)) static int
e6000sw_set_dot1q_vlan(e6000sw_softc_t *sc, etherswitch_vlangroup_t *vg)
{
 int i, vlan;

 vlan = vg->es_vid & ETHERSWITCH_VID_MASK;


 if (vlan == 0) {
  e6000sw_vtu_update(sc, VTU_PURGE,
      sc->vlans[vg->es_vlangroup], 0, 0, 0);
  sc->vlans[vg->es_vlangroup] = 0;
  return (0);
 }


 for (i = 0; i < etherswitch_info.es_nvlangroups; i++)
  if (i != vg->es_vlangroup && vlan == sc->vlans[i])
   return (EINVAL);

 sc->vlans[vg->es_vlangroup] = vlan;
 e6000sw_vtu_update(sc, 0, vlan, vg->es_vlangroup + 1,
     vg->es_member_ports & sc->ports_mask,
     vg->es_untagged_ports & sc->ports_mask);

 return (0);
}
