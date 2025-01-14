
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hclgevf_rss_indirection_table_cmd {int start_table_index; int * rss_result; int rss_set_bitmap; } ;
struct TYPE_3__ {int * rss_indirection_tbl; } ;
struct hclgevf_dev {TYPE_2__* pdev; int hw; TYPE_1__ rss_cfg; } ;
struct hclgevf_desc {scalar_t__ data; } ;
struct TYPE_4__ {int dev; } ;


 int HCLGEVF_OPC_RSS_INDIR_TABLE ;
 int HCLGEVF_RSS_CFG_TBL_NUM ;
 int HCLGEVF_RSS_CFG_TBL_SIZE ;
 int HCLGEVF_RSS_SET_BITMAP_MSK ;
 int dev_err (int *,char*,int) ;
 int hclgevf_cmd_send (int *,struct hclgevf_desc*,int) ;
 int hclgevf_cmd_setup_basic_desc (struct hclgevf_desc*,int ,int) ;

__attribute__((used)) static int hclgevf_set_rss_indir_table(struct hclgevf_dev *hdev)
{
 const u8 *indir = hdev->rss_cfg.rss_indirection_tbl;
 struct hclgevf_rss_indirection_table_cmd *req;
 struct hclgevf_desc desc;
 int status;
 int i, j;

 req = (struct hclgevf_rss_indirection_table_cmd *)desc.data;

 for (i = 0; i < HCLGEVF_RSS_CFG_TBL_NUM; i++) {
  hclgevf_cmd_setup_basic_desc(&desc, HCLGEVF_OPC_RSS_INDIR_TABLE,
          0);
  req->start_table_index = i * HCLGEVF_RSS_CFG_TBL_SIZE;
  req->rss_set_bitmap = HCLGEVF_RSS_SET_BITMAP_MSK;
  for (j = 0; j < HCLGEVF_RSS_CFG_TBL_SIZE; j++)
   req->rss_result[j] =
    indir[i * HCLGEVF_RSS_CFG_TBL_SIZE + j];

  status = hclgevf_cmd_send(&hdev->hw, &desc, 1);
  if (status) {
   dev_err(&hdev->pdev->dev,
    "VF failed(=%d) to set RSS indirection table\n",
    status);
   return status;
  }
 }

 return 0;
}
