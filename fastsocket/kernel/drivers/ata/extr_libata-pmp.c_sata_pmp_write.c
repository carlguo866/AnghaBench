
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ata_taskfile {int flags; int feature; int nsect; int lbal; int lbam; int lbah; int device; int protocol; int command; } ;
struct TYPE_2__ {struct ata_device* device; } ;
struct ata_port {TYPE_1__ link; } ;
struct ata_link {int pmp; struct ata_port* ap; } ;
struct ata_device {int dummy; } ;


 int ATA_CMD_PMP_WRITE ;
 int ATA_PROT_NODATA ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_LBA48 ;
 int DMA_NONE ;
 int SATA_PMP_RW_TIMEOUT ;
 unsigned int ata_exec_internal (struct ata_device*,struct ata_taskfile*,int *,int ,int *,int ,int ) ;
 int ata_tf_init (struct ata_device*,struct ata_taskfile*) ;

__attribute__((used)) static unsigned int sata_pmp_write(struct ata_link *link, int reg, u32 val)
{
 struct ata_port *ap = link->ap;
 struct ata_device *pmp_dev = ap->link.device;
 struct ata_taskfile tf;

 ata_tf_init(pmp_dev, &tf);
 tf.command = ATA_CMD_PMP_WRITE;
 tf.protocol = ATA_PROT_NODATA;
 tf.flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE | ATA_TFLAG_LBA48;
 tf.feature = reg;
 tf.device = link->pmp;
 tf.nsect = val & 0xff;
 tf.lbal = (val >> 8) & 0xff;
 tf.lbam = (val >> 16) & 0xff;
 tf.lbah = (val >> 24) & 0xff;

 return ata_exec_internal(pmp_dev, &tf, ((void*)0), DMA_NONE, ((void*)0), 0,
     SATA_PMP_RW_TIMEOUT);
}
