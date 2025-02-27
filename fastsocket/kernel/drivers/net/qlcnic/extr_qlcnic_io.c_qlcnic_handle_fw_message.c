
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct status_desc {int * status_desc_data; } ;
struct qlcnic_host_sds_ring {struct qlcnic_adapter* adapter; int num_desc; struct status_desc* desc_head; } ;
struct qlcnic_fw_msg {int * body; void** words; } ;
struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int diag_cnt; int loopback_state; } ;
struct TYPE_3__ {struct device dev; } ;




 int QLCNIC_LB_CABLE_NOT_CONN ;
 int QLCNIC_LB_RESPONSE ;
 int QLCNIC_TEST_IN_PROGRESS ;
 int QLCNIC_UNDEFINED_ERROR ;
 int dev_info (struct device*,char*,...) ;
 int get_next_index (int,int ) ;
 void* le64_to_cpu (int ) ;
 int qlcnic_get_nic_msg_opcode (int ) ;
 int qlcnic_handle_linkevent (struct qlcnic_adapter*,struct qlcnic_fw_msg*) ;

__attribute__((used)) static void qlcnic_handle_fw_message(int desc_cnt, int index,
         struct qlcnic_host_sds_ring *sds_ring)
{
 struct qlcnic_fw_msg msg;
 struct status_desc *desc;
 struct qlcnic_adapter *adapter;
 struct device *dev;
 int i = 0, opcode, ret;

 while (desc_cnt > 0 && i < 8) {
  desc = &sds_ring->desc_head[index];
  msg.words[i++] = le64_to_cpu(desc->status_desc_data[0]);
  msg.words[i++] = le64_to_cpu(desc->status_desc_data[1]);

  index = get_next_index(index, sds_ring->num_desc);
  desc_cnt--;
 }

 adapter = sds_ring->adapter;
 dev = &adapter->pdev->dev;
 opcode = qlcnic_get_nic_msg_opcode(msg.body[0]);

 switch (opcode) {
 case 128:
  qlcnic_handle_linkevent(adapter, &msg);
  break;
 case 129:
  ret = (u32)(msg.body[1]);
  switch (ret) {
  case 0:
   adapter->ahw->loopback_state |= QLCNIC_LB_RESPONSE;
   break;
  case 1:
   dev_info(dev, "loopback already in progress\n");
   adapter->ahw->diag_cnt = -QLCNIC_TEST_IN_PROGRESS;
   break;
  case 2:
   dev_info(dev, "loopback cable is not connected\n");
   adapter->ahw->diag_cnt = -QLCNIC_LB_CABLE_NOT_CONN;
   break;
  default:
   dev_info(dev,
     "loopback configure request failed, err %x\n",
     ret);
   adapter->ahw->diag_cnt = -QLCNIC_UNDEFINED_ERROR;
   break;
  }
  break;
 default:
  break;
 }
}
