
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_params {int atavalid; int apiomodes; int mwdmamodes; int retired_piomode; } ;


 int ATA_FLAG_64_70 ;
 int ATA_PIO0 ;
 int ATA_PIO1 ;
 int ATA_PIO2 ;
 int ATA_PIO3 ;
 int ATA_PIO4 ;
 int ATA_RETIRED_PIO_MASK ;

int
ata_max_pmode(struct ata_params *ap)
{
    if (ap->atavalid & ATA_FLAG_64_70) {
 if (ap->apiomodes & 0x02)
     return ATA_PIO4;
 if (ap->apiomodes & 0x01)
     return ATA_PIO3;
    }
    if (ap->mwdmamodes & 0x04)
 return ATA_PIO4;
    if (ap->mwdmamodes & 0x02)
 return ATA_PIO3;
    if (ap->mwdmamodes & 0x01)
 return ATA_PIO2;
    if ((ap->retired_piomode & ATA_RETIRED_PIO_MASK) == 0x200)
 return ATA_PIO2;
    if ((ap->retired_piomode & ATA_RETIRED_PIO_MASK) == 0x100)
 return ATA_PIO1;
    if ((ap->retired_piomode & ATA_RETIRED_PIO_MASK) == 0x000)
 return ATA_PIO0;
    return ATA_PIO0;
}
