
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufshcd_lrb {int task_tag; int intr_cmd; scalar_t__ lun; int * sense_buffer; scalar_t__ sense_bufflen; int * cmd; } ;
struct TYPE_2__ {int type; } ;
struct ufs_hba {TYPE_1__ dev_cmd; } ;
typedef enum dev_cmd_type { ____Placeholder_dev_cmd_type } dev_cmd_type ;


 int ufshcd_comp_devman_upiu (struct ufs_hba*,struct ufshcd_lrb*) ;

__attribute__((used)) static int ufshcd_compose_dev_cmd(struct ufs_hba *hba,
  struct ufshcd_lrb *lrbp, enum dev_cmd_type cmd_type, int tag)
{
 lrbp->cmd = ((void*)0);
 lrbp->sense_bufflen = 0;
 lrbp->sense_buffer = ((void*)0);
 lrbp->task_tag = tag;
 lrbp->lun = 0;
 lrbp->intr_cmd = 1;
 hba->dev_cmd.type = cmd_type;

 return ufshcd_comp_devman_upiu(hba, lrbp);
}
