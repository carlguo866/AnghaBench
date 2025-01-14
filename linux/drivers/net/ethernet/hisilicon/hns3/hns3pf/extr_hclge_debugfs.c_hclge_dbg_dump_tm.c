
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_qs_weight_cmd {int dwrr; int qs_id; } ;
struct hclge_qs_to_pri_link_cmd {int link_vld; int priority; int qs_id; } ;
struct hclge_priority_weight_cmd {int dwrr; int pri_id; } ;
struct hclge_pri_shapping_cmd {int pri_shapping_para; int pri_id; } ;
struct hclge_pg_weight_cmd {int dwrr; int pg_id; } ;
struct hclge_pg_to_pri_link_cmd {int pri_bit_map; int pg_id; } ;
struct hclge_nq_to_qs_link_cmd {int qset_id; int nq_id; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
typedef enum hclge_opcode_type { ____Placeholder_hclge_opcode_type } hclge_opcode_type ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_TM_NQ_TO_QS_LINK ;
 int HCLGE_OPC_TM_PG_TO_PRI_LINK ;
 int HCLGE_OPC_TM_PG_WEIGHT ;
 int HCLGE_OPC_TM_PRI_C_SHAPPING ;
 int HCLGE_OPC_TM_PRI_P_SHAPPING ;
 int HCLGE_OPC_TM_PRI_WEIGHT ;
 int HCLGE_OPC_TM_QS_TO_PRI_LINK ;
 int HCLGE_OPC_TM_QS_WEIGHT ;
 int dev_err (int *,char*,int,int) ;
 int dev_info (int *,char*,...) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int,int) ;
 int hclge_dbg_dump_tm_pg (struct hclge_dev*) ;

__attribute__((used)) static void hclge_dbg_dump_tm(struct hclge_dev *hdev)
{
 struct hclge_priority_weight_cmd *priority_weight;
 struct hclge_pg_to_pri_link_cmd *pg_to_pri_map;
 struct hclge_qs_to_pri_link_cmd *qs_to_pri_map;
 struct hclge_nq_to_qs_link_cmd *nq_to_qs_map;
 struct hclge_pri_shapping_cmd *shap_cfg_cmd;
 struct hclge_pg_weight_cmd *pg_weight;
 struct hclge_qs_weight_cmd *qs_weight;
 enum hclge_opcode_type cmd;
 struct hclge_desc desc;
 int ret;

 cmd = HCLGE_OPC_TM_PG_TO_PRI_LINK;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_cmd_send;

 pg_to_pri_map = (struct hclge_pg_to_pri_link_cmd *)desc.data;
 dev_info(&hdev->pdev->dev, "dump tm\n");
 dev_info(&hdev->pdev->dev, "PG_TO_PRI gp_id: %u\n",
   pg_to_pri_map->pg_id);
 dev_info(&hdev->pdev->dev, "PG_TO_PRI map: 0x%x\n",
   pg_to_pri_map->pri_bit_map);

 cmd = HCLGE_OPC_TM_QS_TO_PRI_LINK;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_cmd_send;

 qs_to_pri_map = (struct hclge_qs_to_pri_link_cmd *)desc.data;
 dev_info(&hdev->pdev->dev, "QS_TO_PRI qs_id: %u\n",
   qs_to_pri_map->qs_id);
 dev_info(&hdev->pdev->dev, "QS_TO_PRI priority: %u\n",
   qs_to_pri_map->priority);
 dev_info(&hdev->pdev->dev, "QS_TO_PRI link_vld: %u\n",
   qs_to_pri_map->link_vld);

 cmd = HCLGE_OPC_TM_NQ_TO_QS_LINK;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_cmd_send;

 nq_to_qs_map = (struct hclge_nq_to_qs_link_cmd *)desc.data;
 dev_info(&hdev->pdev->dev, "NQ_TO_QS nq_id: %u\n", nq_to_qs_map->nq_id);
 dev_info(&hdev->pdev->dev, "NQ_TO_QS qset_id: 0x%x\n",
   nq_to_qs_map->qset_id);

 cmd = HCLGE_OPC_TM_PG_WEIGHT;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_cmd_send;

 pg_weight = (struct hclge_pg_weight_cmd *)desc.data;
 dev_info(&hdev->pdev->dev, "PG pg_id: %u\n", pg_weight->pg_id);
 dev_info(&hdev->pdev->dev, "PG dwrr: %u\n", pg_weight->dwrr);

 cmd = HCLGE_OPC_TM_QS_WEIGHT;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_cmd_send;

 qs_weight = (struct hclge_qs_weight_cmd *)desc.data;
 dev_info(&hdev->pdev->dev, "QS qs_id: %u\n", qs_weight->qs_id);
 dev_info(&hdev->pdev->dev, "QS dwrr: %u\n", qs_weight->dwrr);

 cmd = HCLGE_OPC_TM_PRI_WEIGHT;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_cmd_send;

 priority_weight = (struct hclge_priority_weight_cmd *)desc.data;
 dev_info(&hdev->pdev->dev, "PRI pri_id: %u\n", priority_weight->pri_id);
 dev_info(&hdev->pdev->dev, "PRI dwrr: %u\n", priority_weight->dwrr);

 cmd = HCLGE_OPC_TM_PRI_C_SHAPPING;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_cmd_send;

 shap_cfg_cmd = (struct hclge_pri_shapping_cmd *)desc.data;
 dev_info(&hdev->pdev->dev, "PRI_C pri_id: %u\n", shap_cfg_cmd->pri_id);
 dev_info(&hdev->pdev->dev, "PRI_C pri_shapping: 0x%x\n",
   shap_cfg_cmd->pri_shapping_para);

 cmd = HCLGE_OPC_TM_PRI_P_SHAPPING;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_cmd_send;

 shap_cfg_cmd = (struct hclge_pri_shapping_cmd *)desc.data;
 dev_info(&hdev->pdev->dev, "PRI_P pri_id: %u\n", shap_cfg_cmd->pri_id);
 dev_info(&hdev->pdev->dev, "PRI_P pri_shapping: 0x%x\n",
   shap_cfg_cmd->pri_shapping_para);

 hclge_dbg_dump_tm_pg(hdev);

 return;

err_tm_cmd_send:
 dev_err(&hdev->pdev->dev, "dump tm fail(0x%x), ret = %d\n",
  cmd, ret);
}
