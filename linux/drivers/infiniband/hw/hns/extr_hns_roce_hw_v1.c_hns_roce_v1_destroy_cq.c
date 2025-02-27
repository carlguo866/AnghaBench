
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ib_udata {int dummy; } ;
struct ib_cq {int cqe; int device; } ;
struct TYPE_5__ {int cq_entry_sz; } ;
struct hns_roce_dev {TYPE_2__ caps; TYPE_1__* pdev; } ;
struct TYPE_6__ {int hr_buf; int hr_mtt; } ;
struct hns_roce_cq {TYPE_3__ hr_buf; int umem; int cqn; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int HNS_ROCE_CQE_WCMD_EMPTY_BIT ;
 int HNS_ROCE_EACH_FREE_CQ_WAIT_MSECS ;
 int HNS_ROCE_MAX_FREE_CQ_WAIT_CNT ;
 scalar_t__ HNS_ROCE_MIN_CQE_CNT ;
 int ROCEE_CAEP_CQE_WCMD_EMPTY ;
 int ROCEE_SCAEP_WR_CQE_CNT ;
 int dev_warn (struct device*,char*,int ) ;
 int hns_roce_buf_free (struct hns_roce_dev*,scalar_t__,int *) ;
 int hns_roce_free_cq (struct hns_roce_dev*,struct hns_roce_cq*) ;
 int hns_roce_mtt_cleanup (struct hns_roce_dev*,int *) ;
 int ib_umem_release (int ) ;
 int msleep (int ) ;
 int roce_read (struct hns_roce_dev*,int ) ;
 struct hns_roce_cq* to_hr_cq (struct ib_cq*) ;
 struct hns_roce_dev* to_hr_dev (int ) ;

__attribute__((used)) static void hns_roce_v1_destroy_cq(struct ib_cq *ibcq, struct ib_udata *udata)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(ibcq->device);
 struct hns_roce_cq *hr_cq = to_hr_cq(ibcq);
 struct device *dev = &hr_dev->pdev->dev;
 u32 cqe_cnt_ori;
 u32 cqe_cnt_cur;
 u32 cq_buf_size;
 int wait_time = 0;

 hns_roce_free_cq(hr_dev, hr_cq);





 cqe_cnt_ori = roce_read(hr_dev, ROCEE_SCAEP_WR_CQE_CNT);
 while (1) {
  if (roce_read(hr_dev, ROCEE_CAEP_CQE_WCMD_EMPTY) &
      HNS_ROCE_CQE_WCMD_EMPTY_BIT)
   break;

  cqe_cnt_cur = roce_read(hr_dev, ROCEE_SCAEP_WR_CQE_CNT);
  if ((cqe_cnt_cur - cqe_cnt_ori) >= HNS_ROCE_MIN_CQE_CNT)
   break;

  msleep(HNS_ROCE_EACH_FREE_CQ_WAIT_MSECS);
  if (wait_time > HNS_ROCE_MAX_FREE_CQ_WAIT_CNT) {
   dev_warn(dev, "Destroy cq 0x%lx timeout!\n",
    hr_cq->cqn);
   break;
  }
  wait_time++;
 }

 hns_roce_mtt_cleanup(hr_dev, &hr_cq->hr_buf.hr_mtt);

 ib_umem_release(hr_cq->umem);
 if (!udata) {

  cq_buf_size = (ibcq->cqe + 1) * hr_dev->caps.cq_entry_sz;
  hns_roce_buf_free(hr_dev, cq_buf_size, &hr_cq->hr_buf.hr_buf);
 }
}
