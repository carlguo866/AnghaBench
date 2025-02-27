
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scsi_cmnd {int result; TYPE_1__* device; } ;
struct TYPE_9__ {TYPE_2__* vtarget; } ;
typedef TYPE_3__ VirtDevice ;
struct TYPE_11__ {int debug_level; scalar_t__ sas_discovery_quiesce_io; } ;
struct TYPE_10__ {TYPE_5__* ioc; } ;
struct TYPE_8__ {scalar_t__ deleted; } ;
struct TYPE_7__ {int host; TYPE_3__* hostdata; } ;
typedef TYPE_4__ MPT_SCSI_HOST ;
typedef TYPE_5__ MPT_ADAPTER ;


 int DID_NO_CONNECT ;
 int MPT_DEBUG_SCSI ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int mptscsih_qcmd (struct scsi_cmnd*,void (*) (struct scsi_cmnd*)) ;
 int scsi_print_command (struct scsi_cmnd*) ;
 TYPE_4__* shost_priv (int ) ;

__attribute__((used)) static int
mptsas_qcmd(struct scsi_cmnd *SCpnt, void (*done)(struct scsi_cmnd *))
{
 MPT_SCSI_HOST *hd;
 MPT_ADAPTER *ioc;
 VirtDevice *vdevice = SCpnt->device->hostdata;

 if (!vdevice || !vdevice->vtarget || vdevice->vtarget->deleted) {
  SCpnt->result = DID_NO_CONNECT << 16;
  done(SCpnt);
  return 0;
 }

 hd = shost_priv(SCpnt->device->host);
 ioc = hd->ioc;

 if (ioc->sas_discovery_quiesce_io)
  return SCSI_MLQUEUE_HOST_BUSY;

 if (ioc->debug_level & MPT_DEBUG_SCSI)
  scsi_print_command(SCpnt);

 return mptscsih_qcmd(SCpnt,done);
}
