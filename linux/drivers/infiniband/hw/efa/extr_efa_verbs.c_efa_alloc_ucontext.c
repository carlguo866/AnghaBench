
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_udata {scalar_t__ outlen; } ;
struct ib_ucontext {int device; } ;
struct efa_ucontext {int mmap_xa; int uarn; } ;
struct efa_ibv_alloc_ucontext_resp {int max_llq_size; int inline_buf_size; int sub_cqs_per_cq; int cmds_supp_udata_mask; } ;
struct TYPE_5__ {int alloc_ucontext_err; } ;
struct TYPE_6__ {TYPE_2__ sw_stats; } ;
struct TYPE_4__ {int max_llq_size; int inline_buf_size; int sub_cqs_per_cq; } ;
struct efa_dev {TYPE_3__ stats; TYPE_1__ dev_attr; int edev; } ;
struct efa_com_alloc_uar_result {int uarn; } ;
typedef int resp ;


 int EFA_USER_CMDS_SUPP_UDATA_CREATE_AH ;
 int EFA_USER_CMDS_SUPP_UDATA_QUERY_DEVICE ;
 int atomic64_inc (int *) ;
 int efa_com_alloc_uar (int *,struct efa_com_alloc_uar_result*) ;
 int efa_dealloc_uar (struct efa_dev*,int ) ;
 int ib_copy_to_udata (struct ib_udata*,struct efa_ibv_alloc_ucontext_resp*,int ) ;
 int min (int,scalar_t__) ;
 struct efa_dev* to_edev (int ) ;
 struct efa_ucontext* to_eucontext (struct ib_ucontext*) ;
 int xa_init (int *) ;

int efa_alloc_ucontext(struct ib_ucontext *ibucontext, struct ib_udata *udata)
{
 struct efa_ucontext *ucontext = to_eucontext(ibucontext);
 struct efa_dev *dev = to_edev(ibucontext->device);
 struct efa_ibv_alloc_ucontext_resp resp = {};
 struct efa_com_alloc_uar_result result;
 int err;






 err = efa_com_alloc_uar(&dev->edev, &result);
 if (err)
  goto err_out;

 ucontext->uarn = result.uarn;
 xa_init(&ucontext->mmap_xa);

 resp.cmds_supp_udata_mask |= EFA_USER_CMDS_SUPP_UDATA_QUERY_DEVICE;
 resp.cmds_supp_udata_mask |= EFA_USER_CMDS_SUPP_UDATA_CREATE_AH;
 resp.sub_cqs_per_cq = dev->dev_attr.sub_cqs_per_cq;
 resp.inline_buf_size = dev->dev_attr.inline_buf_size;
 resp.max_llq_size = dev->dev_attr.max_llq_size;

 if (udata && udata->outlen) {
  err = ib_copy_to_udata(udata, &resp,
           min(sizeof(resp), udata->outlen));
  if (err)
   goto err_dealloc_uar;
 }

 return 0;

err_dealloc_uar:
 efa_dealloc_uar(dev, result.uarn);
err_out:
 atomic64_inc(&dev->stats.sw_stats.alloc_ucontext_err);
 return err;
}
