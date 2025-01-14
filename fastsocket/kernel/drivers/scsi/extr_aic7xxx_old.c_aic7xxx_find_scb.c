
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aic7xxx_scb {TYPE_2__* hscb; } ;
struct aic7xxx_host {TYPE_1__* scb_data; } ;
struct TYPE_4__ {unsigned char tag; } ;
struct TYPE_3__ {unsigned char maxhscbs; } ;


 int SCBPTR ;
 unsigned char SCB_LIST_NULL ;
 int SCB_TAG ;
 unsigned char aic_inb (struct aic7xxx_host*,int ) ;
 int aic_outb (struct aic7xxx_host*,unsigned char,int ) ;

__attribute__((used)) static unsigned char
aic7xxx_find_scb(struct aic7xxx_host *p, struct aic7xxx_scb *scb)
{
  unsigned char saved_scbptr;
  unsigned char curindex;

  saved_scbptr = aic_inb(p, SCBPTR);
  curindex = 0;
  for (curindex = 0; curindex < p->scb_data->maxhscbs; curindex++)
  {
    aic_outb(p, curindex, SCBPTR);
    if (aic_inb(p, SCB_TAG) == scb->hscb->tag)
    {
      break;
    }
  }
  aic_outb(p, saved_scbptr, SCBPTR);
  if (curindex >= p->scb_data->maxhscbs)
  {
    curindex = SCB_LIST_NULL;
  }

  return (curindex);
}
