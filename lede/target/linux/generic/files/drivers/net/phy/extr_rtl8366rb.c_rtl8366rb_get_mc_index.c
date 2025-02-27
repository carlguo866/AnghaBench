
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {int dummy; } ;


 int EINVAL ;
 int RTL8366RB_NUM_PORTS ;
 int RTL8366RB_PORT_VLAN_CTRL_MASK ;
 int RTL8366RB_PORT_VLAN_CTRL_REG (int) ;
 int RTL8366RB_PORT_VLAN_CTRL_SHIFT (int) ;
 int rtl8366_smi_read_reg (struct rtl8366_smi*,int ,int*) ;

__attribute__((used)) static int rtl8366rb_get_mc_index(struct rtl8366_smi *smi, int port, int *val)
{
 u32 data;
 int err;

 if (port >= RTL8366RB_NUM_PORTS)
  return -EINVAL;

 err = rtl8366_smi_read_reg(smi, RTL8366RB_PORT_VLAN_CTRL_REG(port),
       &data);
 if (err)
  return err;

 *val = (data >> RTL8366RB_PORT_VLAN_CTRL_SHIFT(port)) &
        RTL8366RB_PORT_VLAN_CTRL_MASK;

 return 0;

}
