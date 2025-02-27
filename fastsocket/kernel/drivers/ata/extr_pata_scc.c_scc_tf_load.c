
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_taskfile {unsigned int flags; scalar_t__ ctl; scalar_t__ hob_feature; scalar_t__ hob_nsect; scalar_t__ hob_lbal; scalar_t__ hob_lbam; scalar_t__ hob_lbah; scalar_t__ feature; scalar_t__ nsect; scalar_t__ lbal; scalar_t__ lbam; scalar_t__ lbah; scalar_t__ device; } ;
struct ata_ioports {int device_addr; int lbah_addr; int lbam_addr; int lbal_addr; int nsect_addr; int feature_addr; int ctl_addr; } ;
struct ata_port {scalar_t__ last_ctl; struct ata_ioports ioaddr; } ;


 int ATA_TFLAG_DEVICE ;
 unsigned int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_LBA48 ;
 int VPRINTK (char*,scalar_t__,...) ;
 int ata_wait_idle (struct ata_port*) ;
 int out_be32 (int ,scalar_t__) ;

__attribute__((used)) static void scc_tf_load (struct ata_port *ap, const struct ata_taskfile *tf)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;
 unsigned int is_addr = tf->flags & ATA_TFLAG_ISADDR;

 if (tf->ctl != ap->last_ctl) {
  out_be32(ioaddr->ctl_addr, tf->ctl);
  ap->last_ctl = tf->ctl;
  ata_wait_idle(ap);
 }

 if (is_addr && (tf->flags & ATA_TFLAG_LBA48)) {
  out_be32(ioaddr->feature_addr, tf->hob_feature);
  out_be32(ioaddr->nsect_addr, tf->hob_nsect);
  out_be32(ioaddr->lbal_addr, tf->hob_lbal);
  out_be32(ioaddr->lbam_addr, tf->hob_lbam);
  out_be32(ioaddr->lbah_addr, tf->hob_lbah);
  VPRINTK("hob: feat 0x%X nsect 0x%X, lba 0x%X 0x%X 0x%X\n",
   tf->hob_feature,
   tf->hob_nsect,
   tf->hob_lbal,
   tf->hob_lbam,
   tf->hob_lbah);
 }

 if (is_addr) {
  out_be32(ioaddr->feature_addr, tf->feature);
  out_be32(ioaddr->nsect_addr, tf->nsect);
  out_be32(ioaddr->lbal_addr, tf->lbal);
  out_be32(ioaddr->lbam_addr, tf->lbam);
  out_be32(ioaddr->lbah_addr, tf->lbah);
  VPRINTK("feat 0x%X nsect 0x%X lba 0x%X 0x%X 0x%X\n",
   tf->feature,
   tf->nsect,
   tf->lbal,
   tf->lbam,
   tf->lbah);
 }

 if (tf->flags & ATA_TFLAG_DEVICE) {
  out_be32(ioaddr->device_addr, tf->device);
  VPRINTK("device 0x%X\n", tf->device);
 }

 ata_wait_idle(ap);
}
