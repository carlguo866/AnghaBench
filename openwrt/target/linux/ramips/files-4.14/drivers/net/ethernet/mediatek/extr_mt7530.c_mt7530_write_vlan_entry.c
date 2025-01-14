
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mt7530_priv {int dummy; } ;


 int BIT (int) ;
 int ETAG_CTRL_TAG ;
 int ETAG_CTRL_UNTAG ;
 int MT7530_NUM_PORTS ;
 int REG_ESW_VLAN_VAWD1 ;
 int REG_ESW_VLAN_VAWD1_IVL_MAC ;
 int REG_ESW_VLAN_VAWD1_VALID ;
 int REG_ESW_VLAN_VAWD1_VTAG_EN ;
 int REG_ESW_VLAN_VAWD2 ;
 int REG_ESW_VLAN_VTIM (int) ;
 int mt7530_r32 (struct mt7530_priv*,int ) ;
 int mt7530_vtcr (struct mt7530_priv*,int,int) ;
 int mt7530_w32 (struct mt7530_priv*,int ,int) ;

__attribute__((used)) static void
mt7530_write_vlan_entry(struct mt7530_priv *priv, int vlan, u16 vid,
                     u8 ports, u8 etags)
{
 int port;
 u32 val;



 val = mt7530_r32(priv, REG_ESW_VLAN_VTIM(vlan));
 if (vlan % 2 == 0) {
  val &= 0xfff000;
  val |= vid;
 } else {
  val &= 0xfff;
  val |= (vid << 12);
 }
 mt7530_w32(priv, REG_ESW_VLAN_VTIM(vlan), val);



 if (ports)
  mt7530_w32(priv, REG_ESW_VLAN_VAWD1, REG_ESW_VLAN_VAWD1_IVL_MAC |
   REG_ESW_VLAN_VAWD1_VTAG_EN | (ports << 16) |
   REG_ESW_VLAN_VAWD1_VALID);
 else
  mt7530_w32(priv, REG_ESW_VLAN_VAWD1, 0);


 val = 0;
 for (port = 0; port < MT7530_NUM_PORTS; port++) {
  if (etags & BIT(port))
   val |= ETAG_CTRL_TAG << (port * 2);
  else
   val |= ETAG_CTRL_UNTAG << (port * 2);
 }
 mt7530_w32(priv, REG_ESW_VLAN_VAWD2, val);





 mt7530_vtcr(priv, 1, vlan);

}
