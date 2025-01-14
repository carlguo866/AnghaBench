
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct vf_data_storage {int flags; int pf_vlan; scalar_t__ last_nack; } ;
struct pci_dev {int dev; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct vf_data_storage* vf_data; struct e1000_hw hw; struct pci_dev* pdev; } ;
typedef int s32 ;


 int E1000_VFMAILBOX_SIZE ;
 size_t E1000_VF_RESET ;





 size_t E1000_VT_MSGTYPE_ACK ;
 size_t E1000_VT_MSGTYPE_CTS ;
 size_t E1000_VT_MSGTYPE_NACK ;
 int EINVAL ;
 int HZ ;
 int IGB_VF_FLAG_CTS ;
 int IGB_VF_FLAG_PF_SET_MAC ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*,size_t) ;
 int igb_read_mbx (struct e1000_hw*,size_t*,int,size_t) ;
 int igb_set_vf_mac_addr (struct igb_adapter*,size_t*,size_t) ;
 int igb_set_vf_multicasts (struct igb_adapter*,size_t*,size_t) ;
 int igb_set_vf_promisc (struct igb_adapter*,size_t*,size_t) ;
 int igb_set_vf_rlpml (struct igb_adapter*,size_t,size_t) ;
 int igb_set_vf_vlan (struct igb_adapter*,size_t*,size_t) ;
 int igb_vf_reset_msg (struct igb_adapter*,size_t) ;
 int igb_write_mbx (struct e1000_hw*,size_t*,int,size_t) ;
 int jiffies ;
 int time_after (int ,scalar_t__) ;

__attribute__((used)) static void igb_rcv_msg_from_vf(struct igb_adapter *adapter, u32 vf)
{
 struct pci_dev *pdev = adapter->pdev;
 u32 msgbuf[E1000_VFMAILBOX_SIZE];
 struct e1000_hw *hw = &adapter->hw;
 struct vf_data_storage *vf_data = &adapter->vf_data[vf];
 s32 retval;

 retval = igb_read_mbx(hw, msgbuf, E1000_VFMAILBOX_SIZE, vf);

 if (retval) {

  dev_err(&pdev->dev, "Error receiving message from VF\n");
  vf_data->flags &= ~IGB_VF_FLAG_CTS;
  if (!time_after(jiffies, vf_data->last_nack + (2 * HZ)))
   return;
  goto out;
 }


 if (msgbuf[0] & (E1000_VT_MSGTYPE_ACK | E1000_VT_MSGTYPE_NACK))
  return;




 if (msgbuf[0] == E1000_VF_RESET) {
  igb_vf_reset_msg(adapter, vf);
  return;
 }

 if (!(vf_data->flags & IGB_VF_FLAG_CTS)) {
  if (!time_after(jiffies, vf_data->last_nack + (2 * HZ)))
   return;
  retval = -1;
  goto out;
 }

 switch ((msgbuf[0] & 0xFFFF)) {
 case 131:
  retval = -EINVAL;
  if (!(vf_data->flags & IGB_VF_FLAG_PF_SET_MAC))
   retval = igb_set_vf_mac_addr(adapter, msgbuf, vf);
  else
   dev_warn(&pdev->dev,
     "VF %d attempted to override administratively set MAC address\nReload the VF driver to resume operations\n",
     vf);
  break;
 case 129:
  retval = igb_set_vf_promisc(adapter, msgbuf, vf);
  break;
 case 130:
  retval = igb_set_vf_multicasts(adapter, msgbuf, vf);
  break;
 case 132:
  retval = igb_set_vf_rlpml(adapter, msgbuf[1], vf);
  break;
 case 128:
  retval = -1;
  if (vf_data->pf_vlan)
   dev_warn(&pdev->dev,
     "VF %d attempted to override administratively set VLAN tag\nReload the VF driver to resume operations\n",
     vf);
  else
   retval = igb_set_vf_vlan(adapter, msgbuf, vf);
  break;
 default:
  dev_err(&pdev->dev, "Unhandled Msg %08x\n", msgbuf[0]);
  retval = -1;
  break;
 }

 msgbuf[0] |= E1000_VT_MSGTYPE_CTS;
out:

 if (retval)
  msgbuf[0] |= E1000_VT_MSGTYPE_NACK;
 else
  msgbuf[0] |= E1000_VT_MSGTYPE_ACK;

 igb_write_mbx(hw, msgbuf, 1, vf);
}
