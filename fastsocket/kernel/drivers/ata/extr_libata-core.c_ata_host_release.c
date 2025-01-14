
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ata_port {struct ata_port* slave_link; struct ata_port* pmp_link; scalar_t__ scsi_host; } ;
struct ata_host {int n_ports; struct ata_port** ports; } ;


 struct ata_host* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int kfree (struct ata_port*) ;
 int scsi_host_put (scalar_t__) ;

__attribute__((used)) static void ata_host_release(struct device *gendev, void *res)
{
 struct ata_host *host = dev_get_drvdata(gendev);
 int i;

 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];

  if (!ap)
   continue;

  if (ap->scsi_host)
   scsi_host_put(ap->scsi_host);

  kfree(ap->pmp_link);
  kfree(ap->slave_link);
  kfree(ap);
  host->ports[i] = ((void*)0);
 }

 dev_set_drvdata(gendev, ((void*)0));
}
