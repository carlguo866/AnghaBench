
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct hclge_fd_rule {int queue_id; int location; } ;
struct hclge_fd_key_cfg {int tuple_active; } ;
struct TYPE_4__ {int max_key_length; struct hclge_fd_key_cfg* key_cfg; } ;
struct hclge_dev {TYPE_2__* pdev; TYPE_1__ fd_cfg; } ;
typedef int key_y ;
typedef int key_x ;
typedef int __le32 ;
struct TYPE_6__ {int key_length; } ;
struct TYPE_5__ {int dev; } ;


 int BIT (unsigned int) ;
 int MAX_KEY_BYTES ;
 int MAX_META_DATA_LENGTH ;
 unsigned int MAX_TUPLE ;
 int dev_err (int *,char*,int ,int) ;
 int hclge_fd_convert_meta_data (struct hclge_fd_key_cfg*,int *,int *,struct hclge_fd_rule*) ;
 int hclge_fd_convert_tuple (int,size_t*,size_t*,struct hclge_fd_rule*) ;
 int hclge_fd_tcam_config (struct hclge_dev*,size_t,int,int ,size_t*,int) ;
 int memset (size_t*,int ,int) ;
 TYPE_3__* tuple_key_info ;

__attribute__((used)) static int hclge_config_key(struct hclge_dev *hdev, u8 stage,
       struct hclge_fd_rule *rule)
{
 struct hclge_fd_key_cfg *key_cfg = &hdev->fd_cfg.key_cfg[stage];
 u8 key_x[MAX_KEY_BYTES], key_y[MAX_KEY_BYTES];
 u8 *cur_key_x, *cur_key_y;
 unsigned int i;
 int ret, tuple_size;
 u8 meta_data_region;

 memset(key_x, 0, sizeof(key_x));
 memset(key_y, 0, sizeof(key_y));
 cur_key_x = key_x;
 cur_key_y = key_y;

 for (i = 0 ; i < MAX_TUPLE; i++) {
  bool tuple_valid;
  u32 check_tuple;

  tuple_size = tuple_key_info[i].key_length / 8;
  check_tuple = key_cfg->tuple_active & BIT(i);

  tuple_valid = hclge_fd_convert_tuple(check_tuple, cur_key_x,
           cur_key_y, rule);
  if (tuple_valid) {
   cur_key_x += tuple_size;
   cur_key_y += tuple_size;
  }
 }

 meta_data_region = hdev->fd_cfg.max_key_length / 8 -
   MAX_META_DATA_LENGTH / 8;

 hclge_fd_convert_meta_data(key_cfg,
       (__le32 *)(key_x + meta_data_region),
       (__le32 *)(key_y + meta_data_region),
       rule);

 ret = hclge_fd_tcam_config(hdev, stage, 0, rule->location, key_y,
       1);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "fd key_y config fail, loc=%d, ret=%d\n",
   rule->queue_id, ret);
  return ret;
 }

 ret = hclge_fd_tcam_config(hdev, stage, 1, rule->location, key_x,
       1);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "fd key_x config fail, loc=%d, ret=%d\n",
   rule->queue_id, ret);
 return ret;
}
