
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* param; } ;
typedef TYPE_1__ mbreg_t ;
typedef int ispsoftc_t ;


 int FW_ERROR ;
 scalar_t__ IS_FC (int *) ;
 int MBLOGALL ;
 scalar_t__ MBOX_COMMAND_COMPLETE ;
 int MBOX_GET_FW_STATE ;
 int MBSINIT (TYPE_1__*,int ,int ,int ) ;
 int isp_mboxcmd (int *,TYPE_1__*) ;

__attribute__((used)) static int
isp_fw_state(ispsoftc_t *isp, int chan)
{
 if (IS_FC(isp)) {
  mbreg_t mbs;

  MBSINIT(&mbs, MBOX_GET_FW_STATE, MBLOGALL, 0);
  isp_mboxcmd(isp, &mbs);
  if (mbs.param[0] == MBOX_COMMAND_COMPLETE) {
   return (mbs.param[1]);
  }
 }
 return (FW_ERROR);
}
