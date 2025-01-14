
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {int hw; TYPE_1__* pdev; } ;
struct hclge_desc {void** data; int flag; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int HCLGE_CMDQ_NIC_ECC_ERR_INT_EN ;
 int HCLGE_CMDQ_NIC_ECC_ERR_INT_EN_MASK ;
 int HCLGE_CMDQ_ROCEE_ECC_ERR_INT_EN ;
 int HCLGE_CMDQ_ROCEE_ECC_ERR_INT_EN_MASK ;
 int HCLGE_CMD_FLAG_NEXT ;
 int HCLGE_COMMON_ECC_INT_CFG ;
 int HCLGE_IMP_ITCM4_ECC_ERR_INT_EN ;
 int HCLGE_IMP_ITCM4_ECC_ERR_INT_EN_MASK ;
 int HCLGE_IMP_RD_POISON_ERR_INT_EN ;
 int HCLGE_IMP_RD_POISON_ERR_INT_EN_MASK ;
 int HCLGE_IMP_TCM_ECC_ERR_INT_EN ;
 int HCLGE_IMP_TCM_ECC_ERR_INT_EN_MASK ;
 int HCLGE_MSIX_SRAM_ECC_ERR_INT_EN ;
 int HCLGE_MSIX_SRAM_ECC_ERR_INT_EN_MASK ;
 int HCLGE_TQP_ECC_ERR_INT_EN ;
 int HCLGE_TQP_ECC_ERR_INT_EN_MASK ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int) ;
 int dev_err (struct device*,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_config_common_hw_err_int(struct hclge_dev *hdev, bool en)
{
 struct device *dev = &hdev->pdev->dev;
 struct hclge_desc desc[2];
 int ret;


 hclge_cmd_setup_basic_desc(&desc[0], HCLGE_COMMON_ECC_INT_CFG, 0);
 desc[0].flag |= cpu_to_le16(HCLGE_CMD_FLAG_NEXT);
 hclge_cmd_setup_basic_desc(&desc[1], HCLGE_COMMON_ECC_INT_CFG, 0);

 if (en) {
  desc[0].data[0] = cpu_to_le32(HCLGE_IMP_TCM_ECC_ERR_INT_EN);
  desc[0].data[2] = cpu_to_le32(HCLGE_CMDQ_NIC_ECC_ERR_INT_EN |
     HCLGE_CMDQ_ROCEE_ECC_ERR_INT_EN);
  desc[0].data[3] = cpu_to_le32(HCLGE_IMP_RD_POISON_ERR_INT_EN);
  desc[0].data[4] = cpu_to_le32(HCLGE_TQP_ECC_ERR_INT_EN |
           HCLGE_MSIX_SRAM_ECC_ERR_INT_EN);
  desc[0].data[5] = cpu_to_le32(HCLGE_IMP_ITCM4_ECC_ERR_INT_EN);
 }

 desc[1].data[0] = cpu_to_le32(HCLGE_IMP_TCM_ECC_ERR_INT_EN_MASK);
 desc[1].data[2] = cpu_to_le32(HCLGE_CMDQ_NIC_ECC_ERR_INT_EN_MASK |
    HCLGE_CMDQ_ROCEE_ECC_ERR_INT_EN_MASK);
 desc[1].data[3] = cpu_to_le32(HCLGE_IMP_RD_POISON_ERR_INT_EN_MASK);
 desc[1].data[4] = cpu_to_le32(HCLGE_TQP_ECC_ERR_INT_EN_MASK |
          HCLGE_MSIX_SRAM_ECC_ERR_INT_EN_MASK);
 desc[1].data[5] = cpu_to_le32(HCLGE_IMP_ITCM4_ECC_ERR_INT_EN_MASK);

 ret = hclge_cmd_send(&hdev->hw, &desc[0], 2);
 if (ret)
  dev_err(dev,
   "fail(%d) to configure common err interrupts\n", ret);

 return ret;
}
