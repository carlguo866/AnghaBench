
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7146_dev {int dummy; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;
struct TYPE_2__ {struct saa7146_dev* dev; } ;
struct budget_av {int slot_status; TYPE_1__ budget; } ;


 int BUDGET_VIDEO_PORTB ;
 int EINVAL ;
 int SLOTSTATUS_NONE ;
 int dprintk (int,char*) ;
 int ttpci_budget_set_video_port (struct saa7146_dev*,int ) ;

__attribute__((used)) static int ciintf_slot_shutdown(struct dvb_ca_en50221 *ca, int slot)
{
 struct budget_av *budget_av = (struct budget_av *) ca->data;
 struct saa7146_dev *saa = budget_av->budget.dev;

 if (slot != 0)
  return -EINVAL;

 dprintk(1, "ciintf_slot_shutdown\n");

 ttpci_budget_set_video_port(saa, BUDGET_VIDEO_PORTB);
 budget_av->slot_status = SLOTSTATUS_NONE;

 return 0;
}
