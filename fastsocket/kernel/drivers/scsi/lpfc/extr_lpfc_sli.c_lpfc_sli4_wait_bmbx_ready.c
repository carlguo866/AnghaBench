
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct lpfc_register {int word0; } ;
struct TYPE_2__ {int BMBXregaddr; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;
typedef int LPFC_MBOXQ_t ;


 int MBXERR_ERROR ;
 scalar_t__ bf_get (int ,struct lpfc_register*) ;
 unsigned long jiffies ;
 int lpfc_bmbx_rdy ;
 int lpfc_mbox_tmo_val (struct lpfc_hba*,int *) ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int readl (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int
lpfc_sli4_wait_bmbx_ready(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
 uint32_t db_ready;
 unsigned long timeout;
 struct lpfc_register bmbx_reg;

 timeout = msecs_to_jiffies(lpfc_mbox_tmo_val(phba, mboxq)
       * 1000) + jiffies;

 do {
  bmbx_reg.word0 = readl(phba->sli4_hba.BMBXregaddr);
  db_ready = bf_get(lpfc_bmbx_rdy, &bmbx_reg);
  if (!db_ready)
   msleep(2);

  if (time_after(jiffies, timeout))
   return MBXERR_ERROR;
 } while (!db_ready);

 return 0;
}
