
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mci {TYPE_2__* base; } ;
struct TYPE_3__ {int device; } ;
struct ddb_link {TYPE_1__ ids; } ;
struct TYPE_4__ {struct ddb_link* link; } ;


 scalar_t__ MCI_CONTROL ;
 scalar_t__ MCI_CONTROL_READY ;
 int MCI_CONTROL_RESET ;
 scalar_t__ SX8_TSCONFIG ;
 int SX8_TSCONFIG_MODE_NORMAL ;
 scalar_t__ ddblreadl (struct ddb_link*,scalar_t__) ;
 int ddblwritel (struct ddb_link*,int ,scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static int mci_reset(struct mci *state)
{
 struct ddb_link *link = state->base->link;
 u32 status = 0;
 u32 timeout = 40;

 ddblwritel(link, MCI_CONTROL_RESET, MCI_CONTROL);
 ddblwritel(link, 0, MCI_CONTROL + 4);
 msleep(300);
 ddblwritel(link, 0, MCI_CONTROL);

 while (1) {
  status = ddblreadl(link, MCI_CONTROL);
  if ((status & MCI_CONTROL_READY) == MCI_CONTROL_READY)
   break;
  if (--timeout == 0)
   break;
  msleep(50);
 }
 if ((status & MCI_CONTROL_READY) == 0)
  return -1;
 if (link->ids.device == 0x0009)
  ddblwritel(link, SX8_TSCONFIG_MODE_NORMAL, SX8_TSCONFIG);
 return 0;
}
