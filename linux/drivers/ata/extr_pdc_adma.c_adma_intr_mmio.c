
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int flags; int protocol; } ;
struct ata_queued_cmd {scalar_t__ err_mask; TYPE_1__ tf; } ;
struct ata_eh_info {int dummy; } ;
struct TYPE_4__ {struct ata_eh_info eh_info; int active_tag; } ;
struct ata_port {TYPE_2__ link; int print_id; struct adma_port_priv* private_data; } ;
struct ata_host {unsigned int n_ports; struct ata_port** ports; } ;
struct adma_port_priv {scalar_t__ state; } ;


 scalar_t__ AC_ERR_DEV ;
 int ATA_BUSY ;
 int ATA_TFLAG_POLLING ;
 int DPRINTK (char*,int ,int ,int) ;
 scalar_t__ ac_err_mask (int) ;
 scalar_t__ adma_state_idle ;
 scalar_t__ adma_state_mmio ;
 int ata_ehi_clear_desc (struct ata_eh_info*) ;
 int ata_ehi_push_desc (struct ata_eh_info*,char*,int) ;
 int ata_port_abort (struct ata_port*) ;
 int ata_port_freeze (struct ata_port*) ;
 int ata_qc_complete (struct ata_queued_cmd*) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,int ) ;
 int ata_sff_check_status (struct ata_port*) ;

__attribute__((used)) static inline unsigned int adma_intr_mmio(struct ata_host *host)
{
 unsigned int handled = 0, port_no;

 for (port_no = 0; port_no < host->n_ports; ++port_no) {
  struct ata_port *ap = host->ports[port_no];
  struct adma_port_priv *pp = ap->private_data;
  struct ata_queued_cmd *qc;

  if (!pp || pp->state != adma_state_mmio)
   continue;
  qc = ata_qc_from_tag(ap, ap->link.active_tag);
  if (qc && (!(qc->tf.flags & ATA_TFLAG_POLLING))) {


   u8 status = ata_sff_check_status(ap);
   if ((status & ATA_BUSY))
    continue;
   DPRINTK("ata%u: protocol %d (dev_stat 0x%X)\n",
    ap->print_id, qc->tf.protocol, status);


   pp->state = adma_state_idle;
   qc->err_mask |= ac_err_mask(status);
   if (!qc->err_mask)
    ata_qc_complete(qc);
   else {
    struct ata_eh_info *ehi = &ap->link.eh_info;
    ata_ehi_clear_desc(ehi);
    ata_ehi_push_desc(ehi, "status 0x%02X", status);

    if (qc->err_mask == AC_ERR_DEV)
     ata_port_abort(ap);
    else
     ata_port_freeze(ap);
   }
   handled = 1;
  }
 }
 return handled;
}
