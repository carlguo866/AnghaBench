
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_dh_data {scalar_t__ buf; } ;
struct scsi_device {TYPE_1__* request_queue; struct scsi_dh_data* scsi_dh_data; } ;
struct alua_dh_data {scalar_t__ buff; scalar_t__ inq; } ;
struct TYPE_2__ {int queue_lock; } ;


 int ALUA_DH_NAME ;
 int KERN_NOTICE ;
 int THIS_MODULE ;
 int kfree (struct scsi_dh_data*) ;
 int module_put (int ) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void alua_bus_detach(struct scsi_device *sdev)
{
 struct scsi_dh_data *scsi_dh_data;
 struct alua_dh_data *h;
 unsigned long flags;

 spin_lock_irqsave(sdev->request_queue->queue_lock, flags);
 scsi_dh_data = sdev->scsi_dh_data;
 sdev->scsi_dh_data = ((void*)0);
 spin_unlock_irqrestore(sdev->request_queue->queue_lock, flags);

 h = (struct alua_dh_data *) scsi_dh_data->buf;
 if (h->buff && h->inq != h->buff)
  kfree(h->buff);
 kfree(scsi_dh_data);
 module_put(THIS_MODULE);
 sdev_printk(KERN_NOTICE, sdev, "%s: Detached\n", ALUA_DH_NAME);
}
