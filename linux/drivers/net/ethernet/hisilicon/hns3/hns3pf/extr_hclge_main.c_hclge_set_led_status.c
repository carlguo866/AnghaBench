
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hclge_set_led_state_cmd {int locate_led_config; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_LED_LOCATE_STATE_M ;
 int HCLGE_LED_LOCATE_STATE_S ;
 int HCLGE_OPC_LED_STATUS_CFG ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_field (int ,int ,int ,int ) ;

__attribute__((used)) static int hclge_set_led_status(struct hclge_dev *hdev, u8 locate_led_status)
{
 struct hclge_set_led_state_cmd *req;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_LED_STATUS_CFG, 0);

 req = (struct hclge_set_led_state_cmd *)desc.data;
 hnae3_set_field(req->locate_led_config, HCLGE_LED_LOCATE_STATE_M,
   HCLGE_LED_LOCATE_STATE_S, locate_led_status);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "Send set led state cmd error, ret =%d\n", ret);

 return ret;
}
