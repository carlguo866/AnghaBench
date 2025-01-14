
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int errors; } ;


 int UFSHCD_ERROR_MASK ;
 int UFSHCD_UIC_HIBERN8_MASK ;
 int UFSHCD_UIC_MASK ;
 int UTP_TASK_REQ_COMPL ;
 int UTP_TRANSFER_REQ_COMPL ;
 int ufshcd_check_errors (struct ufs_hba*) ;
 scalar_t__ ufshcd_is_auto_hibern8_error (struct ufs_hba*,int) ;
 int ufshcd_tmc_handler (struct ufs_hba*) ;
 int ufshcd_transfer_req_compl (struct ufs_hba*) ;
 int ufshcd_uic_cmd_compl (struct ufs_hba*,int) ;

__attribute__((used)) static void ufshcd_sl_intr(struct ufs_hba *hba, u32 intr_status)
{
 hba->errors = UFSHCD_ERROR_MASK & intr_status;

 if (ufshcd_is_auto_hibern8_error(hba, intr_status))
  hba->errors |= (UFSHCD_UIC_HIBERN8_MASK & intr_status);

 if (hba->errors)
  ufshcd_check_errors(hba);

 if (intr_status & UFSHCD_UIC_MASK)
  ufshcd_uic_cmd_compl(hba, intr_status);

 if (intr_status & UTP_TASK_REQ_COMPL)
  ufshcd_tmc_handler(hba);

 if (intr_status & UTP_TRANSFER_REQ_COMPL)
  ufshcd_transfer_req_compl(hba);
}
