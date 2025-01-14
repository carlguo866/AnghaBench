
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int nr_csrows; struct csrow_info** csrows; } ;
struct dimm_info {int nr_pages; int grain; int edac_mode; int dtype; int mtype; } ;
struct csrow_info {int first_page; int last_page; TYPE_1__** channels; } ;
struct TYPE_2__ {struct dimm_info* dimm; } ;


 int BIT (int) ;
 int DEV_UNKNOWN ;
 int EDAC_NONE ;
 int EDAC_SECDED ;
 int MEM_DDR ;
 int MEM_RDDR ;
 int PAGE_SHIFT ;
 scalar_t__ R82600_DRBA ;
 int ecc_enabled (int) ;
 int edac_dbg (int,char*,int,int,...) ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static void r82600_init_csrows(struct mem_ctl_info *mci, struct pci_dev *pdev,
   u8 dramcr)
{
 struct csrow_info *csrow;
 struct dimm_info *dimm;
 int index;
 u8 drbar;
 u32 row_high_limit, row_high_limit_last;
 u32 reg_sdram, ecc_on, row_base;

 ecc_on = ecc_enabled(dramcr);
 reg_sdram = dramcr & BIT(4);
 row_high_limit_last = 0;

 for (index = 0; index < mci->nr_csrows; index++) {
  csrow = mci->csrows[index];
  dimm = csrow->channels[0]->dimm;


  pci_read_config_byte(pdev, R82600_DRBA + index, &drbar);

  edac_dbg(1, "Row=%d DRBA = %#0x\n", index, drbar);

  row_high_limit = ((u32) drbar << 24);


  edac_dbg(1, "Row=%d, Boundary Address=%#0x, Last = %#0x\n",
    index, row_high_limit, row_high_limit_last);


  if (row_high_limit == row_high_limit_last)
   continue;

  row_base = row_high_limit_last;

  csrow->first_page = row_base >> PAGE_SHIFT;
  csrow->last_page = (row_high_limit >> PAGE_SHIFT) - 1;

  dimm->nr_pages = csrow->last_page - csrow->first_page + 1;


  dimm->grain = 1 << 14;
  dimm->mtype = reg_sdram ? MEM_RDDR : MEM_DDR;

  dimm->dtype = DEV_UNKNOWN;


  dimm->edac_mode = ecc_on ? EDAC_SECDED : EDAC_NONE;
  row_high_limit_last = row_high_limit;
 }
}
