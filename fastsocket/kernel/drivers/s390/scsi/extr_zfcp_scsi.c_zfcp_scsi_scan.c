
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_unit {int fcp_lun; TYPE_1__* port; } ;
struct scsi_lun {int dummy; } ;
struct fc_rport {scalar_t__ port_state; int scsi_target_id; int dev; } ;
struct TYPE_2__ {struct fc_rport* rport; } ;


 scalar_t__ FC_PORTSTATE_ONLINE ;
 int scsi_scan_target (int *,int ,int ,int ,int ) ;
 int scsilun_to_int (struct scsi_lun*) ;

void zfcp_scsi_scan(struct zfcp_unit *unit)
{
 struct fc_rport *rport = unit->port->rport;

 if (rport && rport->port_state == FC_PORTSTATE_ONLINE)
  scsi_scan_target(&rport->dev, 0, rport->scsi_target_id,
     scsilun_to_int((struct scsi_lun *)
      &unit->fcp_lun), 0);
}
