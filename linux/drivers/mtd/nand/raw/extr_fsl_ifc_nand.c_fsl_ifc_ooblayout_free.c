
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total; } ;
struct nand_chip {int options; TYPE_1__ ecc; } ;
struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int writesize; int oobsize; } ;


 int ERANGE ;
 int NAND_BUSWIDTH_16 ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;

__attribute__((used)) static int fsl_ifc_ooblayout_free(struct mtd_info *mtd, int section,
      struct mtd_oob_region *oobregion)
{
 struct nand_chip *chip = mtd_to_nand(mtd);

 if (section > 1)
  return -ERANGE;

 if (mtd->writesize == 512 &&
     !(chip->options & NAND_BUSWIDTH_16)) {
  if (!section) {
   oobregion->offset = 0;
   oobregion->length = 5;
  } else {
   oobregion->offset = 6;
   oobregion->length = 2;
  }

  return 0;
 }

 if (!section) {
  oobregion->offset = 2;
  oobregion->length = 6;
 } else {
  oobregion->offset = chip->ecc.total + 8;
  oobregion->length = mtd->oobsize - oobregion->offset;
 }

 return 0;
}
