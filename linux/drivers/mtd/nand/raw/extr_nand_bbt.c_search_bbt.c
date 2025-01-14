
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int u64 ;
struct nand_chip {int bbt_erase_shift; int page_shift; int base; } ;
struct nand_bbt_descr {int options; int* pages; int maxblocks; scalar_t__* version; } ;
struct mtd_info {int writesize; int oobsize; int size; } ;
typedef size_t loff_t ;


 int NAND_BBT_LASTBLOCK ;
 int NAND_BBT_PERCHIP ;
 int NAND_BBT_VERSION ;
 size_t bbt_get_ver_offs (struct nand_chip*,struct nand_bbt_descr*) ;
 int check_pattern (scalar_t__*,int,int,struct nand_bbt_descr*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nanddev_ntargets (int *) ;
 int nanddev_target_size (int *) ;
 int pr_info (char*,int,scalar_t__) ;
 int pr_warn (char*,int) ;
 int scan_read (struct nand_chip*,scalar_t__*,size_t,int,struct nand_bbt_descr*) ;

__attribute__((used)) static int search_bbt(struct nand_chip *this, uint8_t *buf,
        struct nand_bbt_descr *td)
{
 u64 targetsize = nanddev_target_size(&this->base);
 struct mtd_info *mtd = nand_to_mtd(this);
 int i, chips;
 int startblock, block, dir;
 int scanlen = mtd->writesize + mtd->oobsize;
 int bbtblocks;
 int blocktopage = this->bbt_erase_shift - this->page_shift;


 if (td->options & NAND_BBT_LASTBLOCK) {
  startblock = (mtd->size >> this->bbt_erase_shift) - 1;
  dir = -1;
 } else {
  startblock = 0;
  dir = 1;
 }


 if (td->options & NAND_BBT_PERCHIP) {
  chips = nanddev_ntargets(&this->base);
  bbtblocks = targetsize >> this->bbt_erase_shift;
  startblock &= bbtblocks - 1;
 } else {
  chips = 1;
  bbtblocks = mtd->size >> this->bbt_erase_shift;
 }

 for (i = 0; i < chips; i++) {

  td->version[i] = 0;
  td->pages[i] = -1;

  for (block = 0; block < td->maxblocks; block++) {

   int actblock = startblock + dir * block;
   loff_t offs = (loff_t)actblock << this->bbt_erase_shift;


   scan_read(this, buf, offs, mtd->writesize, td);
   if (!check_pattern(buf, scanlen, mtd->writesize, td)) {
    td->pages[i] = actblock << blocktopage;
    if (td->options & NAND_BBT_VERSION) {
     offs = bbt_get_ver_offs(this, td);
     td->version[i] = buf[offs];
    }
    break;
   }
  }
  startblock += targetsize >> this->bbt_erase_shift;
 }

 for (i = 0; i < chips; i++) {
  if (td->pages[i] == -1)
   pr_warn("Bad block table not found for chip %d\n", i);
  else
   pr_info("Bad block table found at page %d, version 0x%02X\n",
    td->pages[i], td->version[i]);
 }
 return 0;
}
