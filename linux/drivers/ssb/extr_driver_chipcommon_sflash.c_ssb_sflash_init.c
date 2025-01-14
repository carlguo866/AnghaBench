
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct ssb_sflash_tbl_e {int id; int blocksize; int numblocks; int name; } ;
struct ssb_sflash {int blocksize; int numblocks; int size; int present; int window; } ;
struct ssb_chipcommon {int capabilities; TYPE_3__* dev; } ;
struct TYPE_11__ {struct ssb_sflash* platform_data; } ;
struct TYPE_12__ {TYPE_5__ dev; TYPE_4__* resource; } ;
struct TYPE_10__ {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_9__ {TYPE_2__* bus; } ;
struct TYPE_7__ {struct ssb_sflash sflash; } ;
struct TYPE_8__ {TYPE_1__ mipscore; } ;


 int ENOTSUPP ;
 int SSB_CHIPCO_CAP_FLASHT ;
 int SSB_CHIPCO_FLASHADDR ;
 int SSB_CHIPCO_FLASHCTL_AT_STATUS ;
 int SSB_CHIPCO_FLASHCTL_ST_DP ;
 int SSB_CHIPCO_FLASHCTL_ST_RES ;
 int SSB_CHIPCO_FLASHDATA ;


 int SSB_FLASH2 ;
 int chipco_read32 (struct ssb_chipcommon*,int ) ;
 int chipco_write32 (struct ssb_chipcommon*,int ,int) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int ,int,int,int) ;
 struct ssb_sflash_tbl_e* ssb_sflash_at_tbl ;
 int ssb_sflash_cmd (struct ssb_chipcommon*,int ) ;
 TYPE_6__ ssb_sflash_dev ;
 struct ssb_sflash_tbl_e* ssb_sflash_sst_tbl ;
 struct ssb_sflash_tbl_e* ssb_sflash_st_tbl ;

int ssb_sflash_init(struct ssb_chipcommon *cc)
{
 struct ssb_sflash *sflash = &cc->dev->bus->mipscore.sflash;
 const struct ssb_sflash_tbl_e *e;
 u32 id, id2;

 switch (cc->capabilities & SSB_CHIPCO_CAP_FLASHT) {
 case 128:
  ssb_sflash_cmd(cc, SSB_CHIPCO_FLASHCTL_ST_DP);

  chipco_write32(cc, SSB_CHIPCO_FLASHADDR, 0);
  ssb_sflash_cmd(cc, SSB_CHIPCO_FLASHCTL_ST_RES);
  id = chipco_read32(cc, SSB_CHIPCO_FLASHDATA);

  chipco_write32(cc, SSB_CHIPCO_FLASHADDR, 1);
  ssb_sflash_cmd(cc, SSB_CHIPCO_FLASHCTL_ST_RES);
  id2 = chipco_read32(cc, SSB_CHIPCO_FLASHDATA);

  switch (id) {
  case 0xbf:
   for (e = ssb_sflash_sst_tbl; e->name; e++) {
    if (e->id == id2)
     break;
   }
   break;
  case 0x13:
   return -ENOTSUPP;
  default:
   for (e = ssb_sflash_st_tbl; e->name; e++) {
    if (e->id == id)
     break;
   }
   break;
  }
  if (!e->name) {
   pr_err("Unsupported ST serial flash (id: 0x%X, id2: 0x%X)\n",
          id, id2);
   return -ENOTSUPP;
  }

  break;
 case 129:
  ssb_sflash_cmd(cc, SSB_CHIPCO_FLASHCTL_AT_STATUS);
  id = chipco_read32(cc, SSB_CHIPCO_FLASHDATA) & 0x3c;

  for (e = ssb_sflash_at_tbl; e->name; e++) {
   if (e->id == id)
    break;
  }
  if (!e->name) {
   pr_err("Unsupported Atmel serial flash (id: 0x%X)\n",
          id);
   return -ENOTSUPP;
  }

  break;
 default:
  pr_err("Unsupported flash type\n");
  return -ENOTSUPP;
 }

 sflash->window = SSB_FLASH2;
 sflash->blocksize = e->blocksize;
 sflash->numblocks = e->numblocks;
 sflash->size = sflash->blocksize * sflash->numblocks;
 sflash->present = 1;

 pr_info("Found %s serial flash (size: %dKiB, blocksize: 0x%X, blocks: %d)\n",
  e->name, sflash->size / 1024, e->blocksize, e->numblocks);



 ssb_sflash_dev.resource[0].end = ssb_sflash_dev.resource[0].start +
      sflash->size;
 ssb_sflash_dev.dev.platform_data = sflash;

 return 0;
}
