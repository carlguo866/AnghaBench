
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_4__ {TYPE_1__* pg_info; } ;
struct hclge_dev {int hw; TYPE_2__ tm_info; } ;
struct hclge_desc {void** data; } ;
struct TYPE_3__ {scalar_t__ pg_sch_mode; } ;


 int HCLGE_OPC_TM_PG_SCH_MODE_CFG ;
 scalar_t__ HCLGE_SCH_MODE_DWRR ;
 size_t HCLGE_TM_TX_SCHD_DWRR_MSK ;
 void* cpu_to_le32 (size_t) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_tm_pg_schd_mode_cfg(struct hclge_dev *hdev, u8 pg_id)
{
 struct hclge_desc desc;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_TM_PG_SCH_MODE_CFG, 0);

 if (hdev->tm_info.pg_info[pg_id].pg_sch_mode == HCLGE_SCH_MODE_DWRR)
  desc.data[1] = cpu_to_le32(HCLGE_TM_TX_SCHD_DWRR_MSK);
 else
  desc.data[1] = 0;

 desc.data[0] = cpu_to_le32(pg_id);

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
