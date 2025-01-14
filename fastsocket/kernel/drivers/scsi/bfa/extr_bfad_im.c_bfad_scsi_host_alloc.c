
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_host_template {int max_sectors; int sg_tablesize; } ;
struct TYPE_4__ {int io_max_sge; } ;
struct bfad_s {TYPE_2__ cfg_data; } ;
struct bfad_im_port_s {TYPE_1__* port; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {scalar_t__ pvb_type; } ;


 int BFAD_MAX_SECTORS ;
 scalar_t__ BFAD_PORT_PHYS_BASE ;
 struct scsi_host_template bfad_im_scsi_host_template ;
 struct scsi_host_template bfad_im_vport_template ;
 int max_xfer_size ;
 struct Scsi_Host* scsi_host_alloc (struct scsi_host_template*,int) ;

struct Scsi_Host *
bfad_scsi_host_alloc(struct bfad_im_port_s *im_port, struct bfad_s *bfad)
{
 struct scsi_host_template *sht;

 if (im_port->port->pvb_type == BFAD_PORT_PHYS_BASE)
  sht = &bfad_im_scsi_host_template;
 else
  sht = &bfad_im_vport_template;

 if (max_xfer_size != BFAD_MAX_SECTORS >> 1)
  sht->max_sectors = max_xfer_size << 1;

 sht->sg_tablesize = bfad->cfg_data.io_max_sge;

 return scsi_host_alloc(sht, sizeof(unsigned long));
}
