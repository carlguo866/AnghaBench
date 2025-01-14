
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ib_udata {int dummy; } ;
struct ib_pd {int dummy; } ;
struct ib_mr {int device; } ;
struct hns_roce_mr {int enabled; int access; int umem; int key; } ;
struct TYPE_4__ {int num_mtpts; } ;
struct hns_roce_dev {TYPE_2__* hw; TYPE_1__ caps; struct device* dev; } ;
struct hns_roce_cmd_mailbox {int buf; int dma; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int pdn; } ;
struct TYPE_5__ {int (* rereg_write_mtpt ) (struct hns_roce_dev*,struct hns_roce_mr*,int,int ,int,int ,int ,int ) ;} ;


 int EINVAL ;
 int HNS_ROCE_CMD_QUERY_MPT ;
 int HNS_ROCE_CMD_TIMEOUT_MSECS ;
 int IB_MR_REREG_ACCESS ;
 int IB_MR_REREG_PD ;
 int IB_MR_REREG_TRANS ;
 scalar_t__ IS_ERR (struct hns_roce_cmd_mailbox*) ;
 int PTR_ERR (struct hns_roce_cmd_mailbox*) ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*,int) ;
 struct hns_roce_cmd_mailbox* hns_roce_alloc_cmd_mailbox (struct hns_roce_dev*) ;
 int hns_roce_cmd_mbox (struct hns_roce_dev*,int ,int ,unsigned long,int ,int ,int ) ;
 int hns_roce_free_cmd_mailbox (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ;
 int hns_roce_hw2sw_mpt (struct hns_roce_dev*,int *,unsigned long) ;
 int hns_roce_sw2hw_mpt (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*,unsigned long) ;
 int ib_umem_release (int ) ;
 int key_to_hw_index (int ) ;
 int rereg_mr_trans (struct ib_mr*,int,int ,int ,int ,int,struct hns_roce_cmd_mailbox*,int ,struct ib_udata*) ;
 int stub1 (struct hns_roce_dev*,struct hns_roce_mr*,int,int ,int,int ,int ,int ) ;
 struct hns_roce_dev* to_hr_dev (int ) ;
 struct hns_roce_mr* to_hr_mr (struct ib_mr*) ;
 TYPE_3__* to_hr_pd (struct ib_pd*) ;

int hns_roce_rereg_user_mr(struct ib_mr *ibmr, int flags, u64 start, u64 length,
      u64 virt_addr, int mr_access_flags, struct ib_pd *pd,
      struct ib_udata *udata)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(ibmr->device);
 struct hns_roce_mr *mr = to_hr_mr(ibmr);
 struct hns_roce_cmd_mailbox *mailbox;
 struct device *dev = hr_dev->dev;
 unsigned long mtpt_idx;
 u32 pdn = 0;
 int ret;

 if (!mr->enabled)
  return -EINVAL;

 mailbox = hns_roce_alloc_cmd_mailbox(hr_dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 mtpt_idx = key_to_hw_index(mr->key) & (hr_dev->caps.num_mtpts - 1);
 ret = hns_roce_cmd_mbox(hr_dev, 0, mailbox->dma, mtpt_idx, 0,
    HNS_ROCE_CMD_QUERY_MPT,
    HNS_ROCE_CMD_TIMEOUT_MSECS);
 if (ret)
  goto free_cmd_mbox;

 ret = hns_roce_hw2sw_mpt(hr_dev, ((void*)0), mtpt_idx);
 if (ret)
  dev_warn(dev, "HW2SW_MPT failed (%d)\n", ret);

 mr->enabled = 0;

 if (flags & IB_MR_REREG_PD)
  pdn = to_hr_pd(pd)->pdn;

 if (flags & IB_MR_REREG_TRANS) {
  ret = rereg_mr_trans(ibmr, flags,
         start, length,
         virt_addr, mr_access_flags,
         mailbox, pdn, udata);
  if (ret)
   goto free_cmd_mbox;
 } else {
  ret = hr_dev->hw->rereg_write_mtpt(hr_dev, mr, flags, pdn,
         mr_access_flags, virt_addr,
         length, mailbox->buf);
  if (ret)
   goto free_cmd_mbox;
 }

 ret = hns_roce_sw2hw_mpt(hr_dev, mailbox, mtpt_idx);
 if (ret) {
  dev_err(dev, "SW2HW_MPT failed (%d)\n", ret);
  ib_umem_release(mr->umem);
  goto free_cmd_mbox;
 }

 mr->enabled = 1;
 if (flags & IB_MR_REREG_ACCESS)
  mr->access = mr_access_flags;

 hns_roce_free_cmd_mailbox(hr_dev, mailbox);

 return 0;

free_cmd_mbox:
 hns_roce_free_cmd_mailbox(hr_dev, mailbox);

 return ret;
}
