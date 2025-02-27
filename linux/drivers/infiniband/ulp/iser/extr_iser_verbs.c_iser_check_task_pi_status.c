
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct iser_mem_reg {struct iser_fr_desc* mem_h; } ;
struct TYPE_6__ {int sig_mr; } ;
struct iser_fr_desc {TYPE_2__ rsc; scalar_t__ sig_protected; } ;
struct iscsi_iser_task {TYPE_4__* sc; struct iser_mem_reg* rdma_reg; } ;
struct TYPE_7__ {int err_type; int actual; int expected; scalar_t__ sig_err_offset; } ;
struct ib_mr_status {int fail_status; TYPE_3__ sig_err; } ;
typedef scalar_t__ sector_t ;
typedef enum iser_data_dir { ____Placeholder_iser_data_dir } iser_data_dir ;
struct TYPE_8__ {TYPE_1__* device; } ;
struct TYPE_5__ {unsigned long sector_size; } ;


 int IB_MR_CHECK_SIG_STATUS ;



 int ib_check_mr_status (int ,int,struct ib_mr_status*) ;
 int pr_err (char*,int,...) ;
 scalar_t__ scsi_get_lba (TYPE_4__*) ;
 int sector_div (scalar_t__,unsigned long) ;

u8 iser_check_task_pi_status(struct iscsi_iser_task *iser_task,
        enum iser_data_dir cmd_dir, sector_t *sector)
{
 struct iser_mem_reg *reg = &iser_task->rdma_reg[cmd_dir];
 struct iser_fr_desc *desc = reg->mem_h;
 unsigned long sector_size = iser_task->sc->device->sector_size;
 struct ib_mr_status mr_status;
 int ret;

 if (desc && desc->sig_protected) {
  desc->sig_protected = 0;
  ret = ib_check_mr_status(desc->rsc.sig_mr,
      IB_MR_CHECK_SIG_STATUS, &mr_status);
  if (ret) {
   pr_err("ib_check_mr_status failed, ret %d\n", ret);

   *sector = 0;
   return 0x1;
  }

  if (mr_status.fail_status & IB_MR_CHECK_SIG_STATUS) {
   sector_t sector_off = mr_status.sig_err.sig_err_offset;

   sector_div(sector_off, sector_size + 8);
   *sector = scsi_get_lba(iser_task->sc) + sector_off;

   pr_err("PI error found type %d at sector %llx "
          "expected %x vs actual %x\n",
          mr_status.sig_err.err_type,
          (unsigned long long)*sector,
          mr_status.sig_err.expected,
          mr_status.sig_err.actual);

   switch (mr_status.sig_err.err_type) {
   case 129:
    return 0x1;
   case 128:
    return 0x3;
   case 130:
    return 0x2;
   }
  }
 }

 return 0;
}
