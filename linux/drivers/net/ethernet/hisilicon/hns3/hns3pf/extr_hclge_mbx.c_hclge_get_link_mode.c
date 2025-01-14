
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mbx_vf_to_pf_cmd {scalar_t__ mbx_src_vfid; scalar_t__* msg; } ;
struct TYPE_3__ {unsigned long* advertising; unsigned long* supported; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;
typedef int msg_data ;


 int HCLGE_MBX_LINK_STAT_MODE ;
 scalar_t__ HCLGE_SUPPORTED ;
 int hclge_send_mbx_msg (struct hclge_vport*,scalar_t__*,int,int ,scalar_t__) ;
 int memcpy (scalar_t__*,unsigned long*,int) ;

__attribute__((used)) static void hclge_get_link_mode(struct hclge_vport *vport,
    struct hclge_mbx_vf_to_pf_cmd *mbx_req)
{

 struct hclge_dev *hdev = vport->back;
 unsigned long advertising;
 unsigned long supported;
 unsigned long send_data;
 u8 msg_data[10];
 u8 dest_vfid;

 advertising = hdev->hw.mac.advertising[0];
 supported = hdev->hw.mac.supported[0];
 dest_vfid = mbx_req->mbx_src_vfid;
 msg_data[0] = mbx_req->msg[2];

 send_data = msg_data[0] == 1 ? supported : advertising;

 memcpy(&msg_data[2], &send_data, sizeof(unsigned long));
 hclge_send_mbx_msg(vport, msg_data, sizeof(msg_data),
      HCLGE_MBX_LINK_STAT_MODE, dest_vfid);
}
