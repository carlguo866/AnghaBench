
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct gsw_mt753x {TYPE_2__* vlan_entries; TYPE_1__* port_entries; } ;
struct TYPE_4__ {int member; int etags; int vid; } ;
struct TYPE_3__ {int pvid; } ;


 int BIT (int) ;
 int GRP_PORT_VID_M ;
 int MT753X_NUM_PORTS ;
 int MT753X_NUM_VLANS ;
 int PCR (int) ;
 int PORT_MATRIX_M ;
 int PPBV1 (int) ;
 int PVC (int) ;
 int SECURITY_MODE ;
 int STAG_VPID_S ;
 int VA_TRANSPARENT_PORT ;
 int VLAN_ATTR_S ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;
 int mt753x_write_vlan_entry (struct gsw_mt753x*,int,int,int,int) ;

void mt753x_apply_vlan_config(struct gsw_mt753x *gsw)
{
 int i, j;
 u8 tag_ports;
 u8 untag_ports;


 for (i = 0; i < MT753X_NUM_PORTS; i++)
  mt753x_reg_write(gsw, PCR(i),
     PORT_MATRIX_M | SECURITY_MODE);


 tag_ports = 0;
 untag_ports = 0;

 for (i = 0; i < MT753X_NUM_VLANS; i++) {
  u8 member = gsw->vlan_entries[i].member;
  u8 etags = gsw->vlan_entries[i].etags;

  if (!member)
   continue;

  for (j = 0; j < MT753X_NUM_PORTS; j++) {
   if (!(member & BIT(j)))
    continue;

   if (etags & BIT(j))
    tag_ports |= 1u << j;
   else
    untag_ports |= 1u << j;
  }
 }


 for (i = 0; i < MT753X_NUM_PORTS; i++) {
  u32 pvc_mode = 0x8100 << STAG_VPID_S;

  if (untag_ports & BIT(i) && !(tag_ports & BIT(i)))
   pvc_mode = (0x8100 << STAG_VPID_S) |
    (VA_TRANSPARENT_PORT << VLAN_ATTR_S);

  mt753x_reg_write(gsw, PVC(i), pvc_mode);
 }


 for (i = 0; i < MT753X_NUM_VLANS; i++)
  mt753x_write_vlan_entry(gsw, i, i, 0, 0);




 for (i = 0; i < MT753X_NUM_VLANS; i++) {
  u16 vid = gsw->vlan_entries[i].vid;
  u8 member = gsw->vlan_entries[i].member;
  u8 etags = gsw->vlan_entries[i].etags;

  if (member)
   mt753x_write_vlan_entry(gsw, i, vid, member, etags);
 }


 for (i = 0; i < MT753X_NUM_PORTS; i++) {
  int vlan = gsw->port_entries[i].pvid;
  u16 pvid = 0;
  u32 val;

  if (vlan < MT753X_NUM_VLANS && gsw->vlan_entries[vlan].member)
   pvid = gsw->vlan_entries[vlan].vid;

  val = mt753x_reg_read(gsw, PPBV1(i));
  val &= ~GRP_PORT_VID_M;
  val |= pvid;
  mt753x_reg_write(gsw, PPBV1(i), val);
 }
}
