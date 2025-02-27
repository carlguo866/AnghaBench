
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hclge_fd_tcam_config_3_cmd {scalar_t__ tcam_data; } ;
struct hclge_fd_tcam_config_2_cmd {scalar_t__ tcam_data; } ;
struct hclge_fd_tcam_config_1_cmd {int xy_sel; scalar_t__ tcam_data; int index; int stage; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; int flag; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_CMD_FLAG_NEXT ;
 int HCLGE_OPC_FD_TCAM_OP ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int dev_info (int *,char*,char*,...) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static void hclge_dbg_fd_tcam_read(struct hclge_dev *hdev, u8 stage,
       bool sel_x, u32 loc)
{
 struct hclge_fd_tcam_config_1_cmd *req1;
 struct hclge_fd_tcam_config_2_cmd *req2;
 struct hclge_fd_tcam_config_3_cmd *req3;
 struct hclge_desc desc[3];
 int ret, i;
 u32 *req;

 hclge_cmd_setup_basic_desc(&desc[0], HCLGE_OPC_FD_TCAM_OP, 1);
 desc[0].flag |= cpu_to_le16(HCLGE_CMD_FLAG_NEXT);
 hclge_cmd_setup_basic_desc(&desc[1], HCLGE_OPC_FD_TCAM_OP, 1);
 desc[1].flag |= cpu_to_le16(HCLGE_CMD_FLAG_NEXT);
 hclge_cmd_setup_basic_desc(&desc[2], HCLGE_OPC_FD_TCAM_OP, 1);

 req1 = (struct hclge_fd_tcam_config_1_cmd *)desc[0].data;
 req2 = (struct hclge_fd_tcam_config_2_cmd *)desc[1].data;
 req3 = (struct hclge_fd_tcam_config_3_cmd *)desc[2].data;

 req1->stage = stage;
 req1->xy_sel = sel_x ? 1 : 0;
 req1->index = cpu_to_le32(loc);

 ret = hclge_cmd_send(&hdev->hw, desc, 3);
 if (ret)
  return;

 dev_info(&hdev->pdev->dev, " read result tcam key %s(%u):\n",
   sel_x ? "x" : "y", loc);


 req = (u32 *)req1->tcam_data;
 for (i = 0; i < 2; i++)
  dev_info(&hdev->pdev->dev, "%08x\n", *req++);


 req = (u32 *)req2->tcam_data;
 for (i = 0; i < 6; i++)
  dev_info(&hdev->pdev->dev, "%08x\n", *req++);


 req = (u32 *)req3->tcam_data;
 for (i = 0; i < 5; i++)
  dev_info(&hdev->pdev->dev, "%08x\n", *req++);
}
