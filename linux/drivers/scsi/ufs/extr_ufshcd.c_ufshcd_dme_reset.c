
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uic_command {int command; int member_0; } ;
struct ufs_hba {int dev; } ;


 int UIC_CMD_DME_RESET ;
 int dev_err (int ,char*,int) ;
 int ufshcd_send_uic_cmd (struct ufs_hba*,struct uic_command*) ;

__attribute__((used)) static int ufshcd_dme_reset(struct ufs_hba *hba)
{
 struct uic_command uic_cmd = {0};
 int ret;

 uic_cmd.command = UIC_CMD_DME_RESET;

 ret = ufshcd_send_uic_cmd(hba, &uic_cmd);
 if (ret)
  dev_err(hba->dev,
   "dme-reset: error code %d\n", ret);

 return ret;
}
