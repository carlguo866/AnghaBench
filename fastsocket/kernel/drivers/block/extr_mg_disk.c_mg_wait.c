
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mg_host {unsigned int error; scalar_t__ dev_base; TYPE_1__* dev; } ;
struct mg_drv_data {scalar_t__ use_polling; } ;
struct TYPE_2__ {struct mg_drv_data* platform_data; } ;


 int ATA_BUSY ;
 int ATA_DRQ ;
 int ATA_ERR ;
 unsigned int MG_ERR_INV_STAT ;
 unsigned int MG_ERR_NONE ;
 unsigned int MG_ERR_TIMEOUT ;
 scalar_t__ MG_READY_OK (int) ;
 scalar_t__ MG_REG_STATUS ;
 int MG_STAT_READY ;
 int inb (scalar_t__) ;
 unsigned long jiffies ;
 int mg_dump_status (char*,int,struct mg_host*) ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned int mg_wait(struct mg_host *host, u32 expect, u32 msec)
{
 u8 status;
 unsigned long expire, cur_jiffies;
 struct mg_drv_data *prv_data = host->dev->platform_data;

 host->error = MG_ERR_NONE;
 expire = jiffies + msecs_to_jiffies(msec);






 if (prv_data->use_polling) {
  status = inb((unsigned long)host->dev_base + MG_REG_STATUS);
  status = inb((unsigned long)host->dev_base + MG_REG_STATUS);
 }

 status = inb((unsigned long)host->dev_base + MG_REG_STATUS);

 do {
  cur_jiffies = jiffies;
  if (status & ATA_BUSY) {
   if (expect == ATA_BUSY)
    break;
  } else {

   if (status & ATA_ERR) {
    mg_dump_status("mg_wait", status, host);
    break;
   }

   if (expect == MG_STAT_READY)
    if (MG_READY_OK(status))
     break;

   if (expect == ATA_DRQ)
    if (status & ATA_DRQ)
     break;
  }
  if (!msec) {
   mg_dump_status("not ready", status, host);
   return MG_ERR_INV_STAT;
  }

  status = inb((unsigned long)host->dev_base + MG_REG_STATUS);
 } while (time_before(cur_jiffies, expire));

 if (time_after_eq(cur_jiffies, expire) && msec)
  host->error = MG_ERR_TIMEOUT;

 return host->error;
}
